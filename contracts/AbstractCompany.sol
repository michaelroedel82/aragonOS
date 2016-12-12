pragma solidity ^0.4.6;

contract AbstractCompany {
  mapping (uint8 => address) public stocks;
  uint8 public stockIndex;

  mapping (uint256 => address) public votings;
  mapping (address => uint256) public reverseVotings;
  mapping (uint256 => uint8) public voteExecuted;
  uint256 public votingIndex;

  function setVotingExecuted(uint8 option);
  function countVotes(uint256 votingId, uint8 optionId) returns (uint256 votes, uint256 totalPossibleVotes);
  function addStock(address newStock, uint256 issue) public;
  function issueStock(uint8 _stock, uint256 _amount) public;
  function grantStock(uint8 _stock, uint256 _amount, address _recipient) public;
}
