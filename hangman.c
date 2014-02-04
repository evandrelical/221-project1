#include <stdlib.h>
#include <stdio.h>
#include <string.h>

/*******************************************
 *
 * Source code originally written by Graphix (now defunct). 
 * http://www.hangman.symbolwebdesign.nl 
 * Contact: info@symbolwebdesign.nl
 * 
 * Code obtained from 
 * www.daniweb.com/software-development/c/code/267241/hangman-source-code-c
 * 
 ********************************************/
 
void showLogo() {
  printf("--------------------------------------------\n");
  printf("| #  #   #   #   #  #### #   #   #   #   # |\n");
  printf("| #  #  # #  ##  # #     ## ##  # #  ##  # |\n");
  printf("| #### ##### # # # #  ## # # # ##### # # # |\n");
  printf("| #  # #   # #  ## #   # #   # #   # #  ## |\n");
  printf("| #  # #   # #   #  ###  #   # #   # #   # |\n");
  printf("--------------------------------------------\n\n");
}

void showStartMsg() {
  printf("Welcome to the game Hangman!\n\n");
  printf("Player 1 enters a word and Player 2 guesses it.\n");
  printf("Player 2 enters a single lower or upper-case character.\n");
  printf("If 10 incorrect guesses have been made, Player 1 wins.\n\n");
}

void showGallows(int i) {
  switch (i) {
  case 0 :
    printf("Amount of wrong letters: %d\n\n", i);
    printf("\n");
    printf("\n");
    printf("\n");
    printf("\n");
    printf("\n");
    printf("\n");
    printf("____________\n\n");
    break;
  case 1 :
    printf("Amount of wrong letters: %d\n\n", i);
    printf("\n");
    printf("  |\n");
    printf("  |\n");
    printf("  |\n");
    printf("  |\n");
    printf("  |\n");
    printf("__|_________\n\n");
    break;
  case 2 :
    printf("Amount of wrong letters: %d\n\n", i);
    printf("  _______\n");
    printf("  |\n");
    printf("  |\n");
    printf("  |\n");
    printf("  |\n");
    printf("  |\n");
    printf("__|_________\n\n");
    break;
  case 3 :
    printf("Amount of wrong letters: %d\n\n", i);
    printf("  _______\n");
    printf("  |/\n");
    printf("  |\n");
    printf("  |\n");
    printf("  |\n");
    printf("  |\n");
    printf("__|_________\n\n");
    break;
  case 4 :
    printf("Amount of wrong letters: %d\n\n", i);
    printf("  _______\n");
    printf("  |/   | \n");
    printf("  |    O \n");
    printf("  |\n");
    printf("  |\n");
    printf("  |\n");
    printf("__|_________\n\n");
    break;
  case 5 :
    printf("Amount of wrong letters: %d\n\n", i);
    printf("  _______\n");
    printf("  |/   | \n");
    printf("  |    O \n");
    printf("  |    |\n");
    printf("  |    |\n");
    printf("  |\n");
    printf("__|_________\n\n");
    break;
  case 6 :
    printf("Amount of wrong letters: %d\n\n", i);
    printf("  _______\n");
    printf("  |/   | \n");
    printf("  |    O \n");
    printf("  |   \\|\n");
    printf("  |    | \n");
    printf("  |\n");
    printf("__|_________\n\n");
    break;
  case 7 :
    printf("Amount of wrong letters: %d\n\n", i);
    printf("  _______\n");
    printf("  |/   | \n");
    printf("  |    O \n");
    printf("  |   \\|/\n");
    printf("  |    | \n");
    printf("  |\n");
    printf("__|_________\n\n");
    break;
  case 8 :
    printf("Amount of wrong letters: %d\n\n", i);
    printf("  _______\n");
    printf("  |/   | \n");
    printf("  |    O \n");
    printf("  |   \\|/\n");
    printf("  |    | \n");
    printf("  |   /\n");
    printf("__|_________\n\n");
    break;
  case 9 :
    printf("Amount of wrong letters: %d\n\n", i);
    printf("  _______\n");
    printf("  |/   | \n");
    printf("  |    O \n");
    printf("  |   \\|/\n");
    printf("  |    | \n");
    printf("  |   / \\\n");
    printf("__|_________\n\n");
    break;
  case 10 :
    printf("Amount of wrong letters: %d\n\n", i);
    printf("  _______\n");
    printf("  |/   | \n");
    printf("  |    X \n");
    printf("  |   \\|/\n");
    printf("  |    | \n");
    printf("  |   / \\\n");
    printf("__|_________\n\n");
    break;
  }
}

int main() {
  showLogo();
  showStartMsg();
  
  char guessWord[10]; /* The word that needs to be guessed */
  int wordlength;	/* Calculate the length of the guessWord */
  printf("Enter a word (max 10 characters): ");
  fgets(guessWord, 11, stdin);
  /* remove newline, if present */
  wordlength = strlen(guessWord)-1;
  if( guessWord[wordlength] == '\n') 
      guessWord[wordlength] = '\0';
  printf("This is your word: %s\n\n", guessWord);
  
  /* Creating the dotword (name: currentWord) */
  char* currentWord = malloc( wordlength );
  int t;
  for (t = 0; t <= wordlength; t++) {
    if (t == wordlength) {
      currentWord[t] = '\0';
    } else {
      currentWord[t] =  '.';
    }
  }
  
  /* Currentword check: printf("Currentword: \"%s\"", currentWord); */
  /* Declaring variables */
  int errors = 0; /* Error amount, if its higher than 10 the loop stops */
  int guessedLetter = 0; /* Boolean Int. 0 = incorrect letter, 1 = correct letter */
  printf("This is the word you need to guess: %s\n", currentWord);
return 0;
}