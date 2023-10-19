// SPDX-License-Identifier: SEE LICENSE IN LICENSE
pragma solidity 0.8.19;

contract UserRegistration {
    struct User {
        bool isRegistered;
        address userAddress;
    }

    mapping(address => User) public users;

    event UserRegistered(address indexed userAddress);

    function registerUser() public {
        require(!users[msg.sender].isRegistered, "User is already registered");
        User storage newUser = users[msg.sender];
        newUser.isRegistered = true;
        newUser.userAddress = msg.sender;
        emit UserRegistered(msg.sender);
    }

    function isUserRegistered() public view returns (bool) {
        return users[msg.sender].isRegistered;
    }
}
