#include <iostream>
#include<boost/asio.hpp>

using namespace std;
using namespace boost::asio;

static const int port = 8080;

int main (){
	boost::asio::io_service io;

	while(true){
		ip::tcp::iostream buffer;
		ip::tcp::acceptor accept( io , ip::tcp::endpoint(ip::tcp::v4(),port ));
		accept.accept(*buffer.rdbuf());
	
		std::string temp;
		buffer >> temp;
		if(temp == "quit"){
			buffer << ">>bye" << std::endl;
			break;
		}
		buffer << ">>" << temp << std::endl;
		cout << temp << endl;
	}
}

