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
  printf("--------------------------------------------\n");
  printf("| H  H   A   N   N  GGGG M   M   A   N   N |\n");
  printf("| H  H  A A  NN  N G     MM MM  A A  NN  N |\n");
  printf("| HHHH AAAAA N N N G  GG M M M AAAAA N N N |\n");
  printf("| H  H A   A N  NN G   G M   M A   A N  NN |\n");
  printf("| H  H A   A N   N  GGG  M   M A   A N   N |\n");
  printf("--------------------------------------------\n");
  printf("--------------------------------------------\n\n");
}

void showStartMsg() {
  printf("Welcome to the game Hangman!\n\n");
  printf("Player 1 has already entered a word.\n");
  printf("Player 2 now must guess the word exactly.\n");
  printf("Player 2 enters a single character.\n");
  printf("If 10 incorrect guesses have been made, Player 2 loses.\n");
  printf("Good luck!\n\n");
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
 
  /* Declaring variables */
  char guessWord[10]; /* The word that needs to be guessed */
  int wordlength;	/* Calculate the length of the guessWord */
  int errors = 0; /* Error amount, if its higher than 10 the loop stops */
  char c;	/* Player 2's guess */
  int guessedLetter = 0; /* Boolean Int. 0 = incorrect letter, 1 = correct letter */
  
  printf("Player 1 - Enter a word (max 10 characters): ");
  fgets(guessWord, 11, stdin);
  /* remove newline, if present */
  wordlength = strlen(guessWord)-1;
  if( guessWord[wordlength] == '\n') 
      guessWord[wordlength] = '\0';

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
  
  showLogo();
  showStartMsg();
  printf("Player 2 - This is the word to guess: %s\n", currentWord);
  printf("Enter the letter you want to guess: ");
  
  /* As long as the word hasn't been guessed or the errors are lower than 10: */
  while( (strcmp(currentWord, guessWord) != 0) && (errors < 10) ){
    c = getchar(); /* Retrieving the user entry */
	getchar();
	/* Checking whether entered letter (c) occurs in guessWord */
	int i;
    for (i = 0; i < wordlength; i++) {
      if (guessWord[i] == c) {
        currentWord[i] = c;
        guessedLetter = 1;
      }
    }
    /* Actions taken if the letter c doesn't occur in the guessWord and when it does */
    if (guessedLetter == 0) {
      printf("\nThat letter was incorrect.\n\n");
	  errors++;
    } else {
      printf("\nThat letter was correct.\n\n");
	  guessedLetter = 0; /* resetting guessedLetter */
     }
    /* Display the gallows and number of errors */
    printf("%s%s\n\n", "The word including the letters you guessed: ", currentWord);
    showGallows(errors);

  } // end while
  
return 0;
}
