#include <iostream>
#include <fstream>
#include <w32api/windows.h>

int main(int argc,char *agrv[])
{
    char cmd;

    std::cout<<"HD0:/";
    std::cin>>cmd;

    if (cmd = 'Ver')
    {
        std::cout<<"FB terminal Version 0.4"<<std::endl;
    } else if (cmd = 'main'){
        system("C:/Users/sasha/Desktop/system/main.exe");
    } else {
        std::cout<<"command not found\n";
    }

    return cmd = 'exit';
}
