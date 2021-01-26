import "dart:math";
import "dart:io";



void main() {

  print('Papel, Gunting, Bato! Whats your pick?');
  String choice = stdin.readLineSync();
  List games = ["Papel", "Gunting", "Bato"];
  int rand = Random().nextInt(games.length);
  String gamesbot=games[rand];

    if (gamesbot == "Papel" && choice == "Gunting") {
      print('${gamesbot}-You Win!');
    }
    if (gamesbot == "Papel" && choice == "Bato") {
      print('${gamesbot}-You Lose');
    }
    if (gamesbot == "Gunting" && choice == "Papel") {
      print('${gamesbot}-You Lose');
    }
    if (gamesbot == "Gunting" && choice == "Bato") {
      print('${gamesbot}-You Win!');
    }
    if (gamesbot == "Bato" && choice == "Papel") {
      print('${gamesbot}-You Win!');
    }
    if (gamesbot == "Bato" && choice == "Gunting") {
      print('${gamesbot}-You Lose');
    }
    else if (gamesbot.compareTo(choice) == 0) {
      print('${gamesbot}-Whoops! Pareho');
    }




}