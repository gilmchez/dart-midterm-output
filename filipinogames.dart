import "dart:math";
import "dart:io";



void main() {
  int n = 0;
  int j = 0;
  int k = 0;
  int round = 1;
  while (n < 3) {
    bool equalsIgnoreCase(String string1, String string2) {
      return string1?.toLowerCase() == string2?.toLowerCase();

    }
    print('Round: $round');

    print('Papel, Gunting, Bato! Whats your pick?');
    String choice = stdin.readLineSync();


    List games = ["Papel", "Gunting", "Bato"];

    int rand = Random().nextInt(games.length);
    String gamesbot = games[rand];



      switch (rand) {
        case 0:
          {

            if (gamesbot == "Papel" && equalsIgnoreCase(choice, "Gunting")) {
              print('Bot:${gamesbot}');
              j++;
            }
            if (gamesbot == "Papel" && equalsIgnoreCase(choice, "Bato")) {
              print('Bot:${gamesbot}');
              k++;
            }
            else if (equalsIgnoreCase(choice, gamesbot)) {
              print('Bot:${gamesbot}-Whoops! Pareho');
            }
          }
          break;


        case 1:
          {
            if (gamesbot == "Gunting" && equalsIgnoreCase(choice, "Papel")) {
              print('Bot:${gamesbot}');
              k++;
            }
            if (gamesbot == "Gunting" && equalsIgnoreCase(choice, "Bato")) {
              print('Bot:${gamesbot}');
              j++;
            }
            else if (equalsIgnoreCase(choice, gamesbot)) {
              print('Bot:${gamesbot}-Whoops! Pareho');
            }
          }
          break;

        case 2:
          {
            if (gamesbot == "Bato" && equalsIgnoreCase(choice, "Papel")) {
              print('Bot:${gamesbot}');
              j++;
            }
            if (gamesbot == "Bato" && equalsIgnoreCase(choice, "Gunting")) {
              print('Bot:${gamesbot}');
              k++;
            }
            else if (equalsIgnoreCase(choice, gamesbot)) {
              print('Bot:${gamesbot}-Whoops! Pareho');
            }
          }
          break;
      }


      n++;
      round++;


    }


      print('Your Score: $j');
      print('Bot Score: $k');
      if (j > k) {
        print('You Win!');
      }
      if (j==k) {
        print('Its Atay!');
      }
      if (j<k) {
      print('You Lose!');
      }
    }



