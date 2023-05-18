#include "apex.h"


int main(int argc, int argv){
    auto cli = apx::clinet::GRPCCLient(host, port);
    auto rsp = cli.send("the data content of x");
    std::cout << "retuen code:" << rsp.code << "return message:" << rsp.message;
}
