#pragma once

#include<string>

class Message 
{
public:
    Message(std::string messageText, int id)
    {
        _messageText = messageText;
        _messageSenderId = id;
    };
    
private:
    int id = 0;
    std::string _messageText = "";
    int _messageSenderId = 0;
};