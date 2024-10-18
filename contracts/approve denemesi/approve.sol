// SPDX-License-Identifier: MIT
pragma solidity 0.8.27;
import "@openzeppelin/contracts/token/ERC20/IERC20.sol";

contract approve {
   // mapping (address => uint) private tokenAmount;
    uint public  TotalBalance;
    //Bu token adresini constructor'a ekleyerek bütün erc20 tokenleri ile deploy edebilirdim  ama test etmek için statik olarak eklemek daha mantıklı geldi
   address tokenAddress = 0x4144BF680c5D5B5a1409eF63778e003eC3220E5B;
    IERC20 token;
    constructor() {
        token= IERC20(tokenAddress);

    }
   
    function transferfromUser(address _to,uint value) public returns(bool) {
        require(token.allowance(msg.sender, address(this)) >= value);
        return token.transferFrom(msg.sender, _to, value);
       
    }
     // burdaki hata kullanıcı gönderdiğinden az transfer ederse tekrar eski gönderdiğini kullanamaz
    function sendTokenToUser(address _to,uint value) public returns(bool)
    {
       require(token.balanceOf(address(this) ) >= TotalBalance + value);
       TotalBalance = token.balanceOf(address(this)) - value;
       token.transfer(_to, value);
       return true;
    }
    function Allowence() public view  returns(uint,uint){
        uint tokens= token.balanceOf(msg.sender);
        return (token.allowance(msg.sender,address(this) ),tokens);
    }

    // Transferle yapabileceğim en mantıklı şey bu gibi geldi :/

    // function Deposit(uint value) public returns(uint){
    //         require(token.balanceOf(address(this)) == TotalBalance + value,"Hata"); 
    //         TotalBalance = token.balanceOf(address(this));
    //        return tokenAmount[msg.sender] += value;
    // }
    // function TransferWithDeposit(address _to,uint value) public returns(bool) {
    //     require(tokenAmount[msg.sender] >= value,"Yetersiz bakiye lutfen deposit yapiniz");
    //     TotalBalance -= value; 
    //     return token.transfer(_to, value);

    // }
    
}