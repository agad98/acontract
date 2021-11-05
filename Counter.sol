// SPDX-License-Identifier: GFDL-1.3-or-later
pragma solidity 0.8.7;

contract Counter {
    
    uint public count = 0;
    
    event increment(uint value);
    event decrement(uint value);
    
    function getcount() view public returns(uint) {
        return count;
    }
    

    function add() public{
        count += 1;
        emit increment(count);
    }
    
    
    
    function take() public{
        count -= 1;
        emit decrement(count);
        
    }
        
}
