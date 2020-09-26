#!/bin/bash -x
echo "Welcome to TicTacToe game"
NULL=" "
declare -a board
function createBoard()
{
   for (( index=1; index<=9; index++ ))
   do
      board[$index]=$NULL
   done
}
function assignLetterXOrO(){
   read -p "Enter player choice X or O: " playerSymbol
   read -p "Enter computer choice X or O: " computerSymbol
}
function displayBoard()
{
   local index=1
   for (( j=0; j<3; j++ ))
   do
      echo "|---|---|---|"
      echo "| "${board[$index]}" | "${board[$index+1]}" | "${board[$index+2]}" |"
      index=$(($index+3))
   done
}
function TicTacToeGame(){
   createBoard
	assignLetterXOrO
	displayBoard
}
TicTacToeGame


