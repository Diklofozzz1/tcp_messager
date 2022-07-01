#pragma once

#include "Message.h"

#include<list>

class PrivateChat
{
public:
    PrivateChat (int creatorId, int interlocutorId, std::list<Message> messages) 
    {
        _creatorId = creatorId;
        interlocutorId = _interlocutorId;
        messages = _messages;
    };

    void addMessage(Message message);
    std::list<Message> getMessages();

private:
    int _creatorId = 0;
    int _interlocutorId = 0;
    std::list<Message> _messages = {};
};