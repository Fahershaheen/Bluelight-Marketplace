// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

interface IUserDashboard{
    function setNft(string memory _name, address nftContractAddress, uint256 tokenId, string memory iPFS) external;
    function setBuyNftData(address newOwner, bytes32 uniKey) external;
    function getNftWithBytes32(bytes32 _uniKey) external view returns(string memory _name, address nftContractAddress, uint256 tokenId, address owner, string memory iPFS);
    function getNft(address _nftContractAddress, uint256 _tokenId) external view 
        returns (bytes32 uniKey, address nftContractAddress, uint tokenId, string memory name, address owner, string memory iPFS );
    function logIn() external;
    function logOut() external;
    function checkLogIn(address _userAddr) external view returns(bool);
    function signUp(string memory _userName) external;
    function checkUser() external view returns(string memory);
    function updateUser(string memory _userName) external;
    function deleteUser() external returns(bool);
    function setAmountRecord(address user, uint curAmountSpent, uint tokenAmountSpent, uint curAmountEarned, uint tokenAmountEarned) external; 
    function userAmountDetail(address user) external view 
        returns (uint currencyEarned, uint earnedToken, uint currencySpent, uint tokenSpent);
}