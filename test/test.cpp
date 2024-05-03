

#include <iostream>
#include <string>

class User {
public:
    User(std::string username, std::string email) : username(username), email(email) {}

    std::string toString() const {
        return "User: " + username + ", Email: " + email;
    }

private:
    std::string username;
    std::string email;
};

// Example Usage
int main() {
    User user1("JohnDoe", "johndoe@example.com");
    std::cout << user1.toString() << std::endl;
    return 0;
}

