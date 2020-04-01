pragma solidity >=0.4.21 <0.7.0;

contract Counter {
    
    event CounterIncrementedEvent(int count);
    event CounterDecrementedEvent(int count);

    int private count = 0;

    function incrementCounter() public {
        count += 1;
        emit CounterIncrementedEvent(count);
    }

    function decrementCounter() public {
        count -= 1;
        emit CounterDecrementedEvent(count);
    }

    function getCount() public view returns (int) {
        return count;
    }
}