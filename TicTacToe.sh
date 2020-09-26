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
function TicTacToeGame(){
   createBoard
	assignLetterXOrO
}
TicTacToeGame


