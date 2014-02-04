#include <stdio.h>
#include <stdlib.h>

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
  
  char str[10];
  int i;
  printf("Enter a string: ");
  fgets(str, 11, stdin);
  /* remove newline, if present */
  i = strlen(str)-1;
  if( str[ i ] == '\n') 
      str[i] = '\0';
  printf("This is your string: %s\n\n", str);
  
return 0;
}