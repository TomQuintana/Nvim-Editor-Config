class User {
    constructor(public username: string, public email: string) {}

    toString(): string {
        return `User: ${this.username}, Email: ${this.email}`;
    }
}

// Example Usage
const user1 = new User("JohnDoe", "johndoe@example.com");
console.log(user1.toString());
