rsp <- function() {
  
  # assign "Rock", "Scissors", "Paper", "Quit" to actions.
  
  actions <- c("Rock", "Scissors", "Paper", "Quit")
  
  # Score board set up
  draw <- 0
  win <- 0
  lose <- 0
  
  # Winning condition is set to who have 3 wins first win!.  
  
  while(TRUE) {
    # Winning condition
    if (win == 3) {
      cat("USER WIN!!!!", "\n")
      break 
    } else if (lose == 3) {
      cat("COMPUTER WIN!!!!", "\n")
      break
    }
    
    # get user_input using readline() function
    
    user_input <- actions[as.numeric(readline("Welcome to the game!Please select \nRock[1] / Scissors[2] / Paper[3] / Quit[4] : "))]
    
    # get random com_input
    com_input <- actions[sample(1:3, 1)]
    
    # Set up control flow
    if (!(user_input %in% actions)) {
      cat("\n","Wrong input! Please try again", "\n\n")
      
    } else if (user_input == "Quit") {
      cat("\n","Thank you for playing!", "\n")
      cat("  draw = ", draw, "/ win = ", win, "/ lose = ", lose, "\n\n")
      break
      
    } else if (user_input == com_input){
      cat("Draw!", "\n")
      draw <- draw + 1
      
    } else if (user_input == "Rock" & com_input == "Scissors") {
      cat("You win!", "\n")
      win <- win + 1
      
    } else if (user_input == "Scissors" & com_input == "Paper") {
      cat("You win!", "\n")
      win <- win + 1
      
    } else if (user_input == "Paper" & com_input == "Rock") {
      cat("You win!", "\n")
      win <- win + 1
      
    } else {
      cat("You Lose!", "\n")
      lose <- lose + 1
    }  
    
    # Show result summary after each match
    cat(" ","user input: ", user_input, "\n")
    cat(" ","com input:  ", com_input, "\n")
    cat(" ","win = ", win, "/ lose = ", lose, "/ draw = ", draw, "/ total game", sum(draw, win, lose), "\n\n")
    
  }
}