using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Threading;
using System.IO;
using System.Net.Sockets;
using System.Net;


class Socketclient
{
    public void sendtcp(string sendMsg)
    {

        string ipOrHost = "127.0.0.1";

        int port = 8080;
        System.Net.Sockets.TcpClient tcp =
            new System.Net.Sockets.TcpClient(ipOrHost, port);
        Console.WriteLine("サーバー({0}:{1})と接続しました({2}:{3})。",
            ((System.Net.IPEndPoint)tcp.Client.RemoteEndPoint).Address,
            ((System.Net.IPEndPoint)tcp.Client.RemoteEndPoint).Port,
            ((System.Net.IPEndPoint)tcp.Client.LocalEndPoint).Address,
            ((System.Net.IPEndPoint)tcp.Client.LocalEndPoint).Port);
        System.Net.Sockets.NetworkStream ns = tcp.GetStream();

        ns.ReadTimeout = 10000;
        ns.WriteTimeout = 10000;

        System.Text.Encoding enc = System.Text.Encoding.UTF8;
        byte[] sendBytes = enc.GetBytes(sendMsg + '\n');
        ns.Write(sendBytes, 0, sendBytes.Length);
        Console.WriteLine(sendMsg);
        System.IO.MemoryStream ms = new System.IO.MemoryStream();
        byte[] resBytes = new byte[256];
        int resSize = 0;
        resSize = ns.Read(resBytes, 0, resBytes.Length);

        if (resSize == 0)
        {
            Console.WriteLine("サーバーが切断しました。");
        }

        string resMsg = enc.GetString(ms.GetBuffer(), 0, (int)ms.Length);
        ms.Close();
        //末尾の\nを削除
        resMsg = resMsg.TrimEnd('\n');
        Console.WriteLine(resMsg);

        //閉じる
        ns.Close();
        tcp.Close();
     
    }
}

