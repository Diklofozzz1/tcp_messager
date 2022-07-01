#pragma once

#include <string>

class User 
{
public: 
    ~User() = default;
protected:
    int id = 0;
    std::string _name = "";
    std::string _password = "";
};


// #include "IUser.h"

// class User : public IUser
// {
// public:

// };