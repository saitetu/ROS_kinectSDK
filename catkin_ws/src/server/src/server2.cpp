#include <ros/ros.h>
#include <std_msgs/String.h>

#include <iostream>
#include <boost/asio.hpp>
#include <boost/bind.hpp>

namespace asio = boost::asio;
using asio::ip::tcp;
ros::Publisher pub;

class Server {
    asio::io_service& io_service_;
    tcp::acceptor acceptor_;
    tcp::socket socket_;
    asio::streambuf receive_buff_;
public:
    Server(asio::io_service& io_service)
        : io_service_(io_service),
          acceptor_(io_service, tcp::endpoint(tcp::v4(), 8080)),
          socket_(io_service) {}

    void start()
    {
        start_accept();
    }

private:
    // 接続待機
    void start_accept()
    {
        acceptor_.async_accept(
            socket_,
            boost::bind(&Server::on_accept, this, asio::placeholders::error));
    }

    // 接続待機完了
    void on_accept(const boost::system::error_code& error)
    {
        if (error) {
            std::cout << "accept failed: " << error.message() << std::endl;
            return;
        }

        start_receive();
    }

    // メッセージ受信
    void start_receive()
    {
        boost::asio::async_read(
            socket_,
            receive_buff_,
            asio::transfer_at_least(1),
            boost::bind(&Server::on_receive, this,
                        asio::placeholders::error, asio::placeholders::bytes_transferred));
    }

    // 受信完了
    // error : エラー情報
    // bytes_transferred : 受信したバイト数
    void on_receive(const boost::system::error_code& error, size_t bytes_transferred)
    {
    
	std::cout << "message received" << std::endl;
	    if (error && error != boost::asio::error::eof) {
            std::cout << "receive failed: " << error.message() << std::endl;
        }
        else {
            const char* data = asio::buffer_cast<const char*>(receive_buff_.data());
            std::cout << data << std::endl;
	    std_msgs::String msg;
	    msg.data = data;
	    pub.publish(msg);
            receive_buff_.consume(receive_buff_.size());
        }
    }
};

int main(int argc,char **argv)
{
 while(1){
    ros::init(argc,argv,"server2");
    ros::NodeHandle n;
    pub = n.advertise<std_msgs::String>("kinect",1000);
    ros::Rate loop_rate(10);
    asio::io_service io_service;
    Server server(io_service);

    server.start();
    io_service.run();
 }
}

