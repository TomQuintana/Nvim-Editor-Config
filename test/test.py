class User:
    def __init__(self, username, email):
        self.username = username
        self.email = email

    def __str__(self):
        return f"User: {self.username}, Email: {self.email}"


# Example Usage
user1 = User("user1", "")
