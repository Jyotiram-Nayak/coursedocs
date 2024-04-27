
// tic tac toe 
import React, { useState } from 'react';
import { createRoot } from 'react-dom/client';

const squareStyle = {
width : "50px",
height : "50px",
fontSize : "20"
}

const Square = ({value, onClick,winner}) => {
return (
  <button onClick={()=>onClick(value)} 
  style={squareStyle} disabled={value !== null || winner !== "None"}>{value}</button>
)
}

const Board = () =>{
  const[player,setPlayer]=useState("x")
  const[winner,setWinner]=useState("None")
  const[board,setBoard] = useState(()=>Array(9).fill(null))

  const matches = [
      [0,1,2],
      [3,4,5],
      [6,7,8],
      [0,3,6],
      [1,4,7],
      [2,5,8],
      [0,4,8],
      [2,4,6]
    ] 

  const checkWinner = (newBoard) =>{
    for(let i = 0 ;i < matches.length;i++){
      const [a,b,c]=matches[i]
      if(
        newBoard[a] === player &&
        newBoard[b] === player &&
        newBoard[c] === player  
      ) {
      return true
      }
    }
    return false
  }

  const onClick = (index) =>{
    const newBoard = [...board]
    newBoard[index] = player
    setBoard(newBoard)

    if(checkWinner(newBoard)){
      setWinner(player)
      alert(`${player} is winner`)
    }
    else{
    setPlayer(player === "x" ? "o" : "x") 
    }
  }

  const reset = () => {
    setBoard(Array(9).fill(null))
    setPlayer("x")
    setWinner("None")
  } 

return(
    <div>
      <div>Next Player: {player}</div>
      <div>Winner: {winner}</div>
      <div>
        <button onClick={reset}>Reset</button>
      </div>
      <div className="row">
        <div className="boart-row">
            <Square value={board[0]} onClick={()=>onClick(0)} winner={winner}/>
            <Square value={board[1]} onClick={()=>onClick(1)} winner={winner}/> 
            <Square value={board[2]} onClick={()=>onClick(2)} winner={winner}/>
        </div> 
        <div className="boart-row"> 
            <Square value={board[3]} onClick={()=>onClick(3)} winner={winner}/>
            <Square value={board[4]} onClick={()=>onClick(4)} winner={winner}/>
            <Square value={board[5]} onClick={()=>onClick(5)} winner={winner}/>
        </div> 
        <div className="boart-row"> 
            <Square value={board[6]} onClick={()=>onClick(6)} winner={winner}/>
            <Square value={board[7]} onClick={()=>onClick(7)} winner={winner}/>
            <Square value={board[8]} onClick={()=>onClick(8)} winner={winner}/>
        </div>

      </div>
    </div>
  )
}  
  

const Game = () => {
  return (
    <div>
      <div>
        <Board/>
      </div>
    </div>
  );
}

const container = document.getElementById('root');
const root = createRoot(container);
root.render(<Game />);





