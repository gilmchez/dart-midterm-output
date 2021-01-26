import "dart:math";
import "dart:io";



void main() {
 int n=0;
 int j=0;
 int k=0;
 int round=1;
while(n<3) {
  print('Round: $round');

  print('Papel, Gunting, Bato! Whats your pick?');
  String choice = stdin.readLineSync();
  List games = ["Papel", "Gunting", "Bato"];
  int rand = Random().nextInt(games.length);
  String gamesbot = games[rand];

  switch(rand) {
    case 0:
      {
        if (gamesbot == "Papel" && choice == "Gunting") {
          print('Bot:${gamesbot}');
          j++;
        }
        if (gamesbot == "Papel" && choice == "Bato") {
          print('Bot:${gamesbot}');
          k++;
        }
        else if (gamesbot.compareTo(choice) == 0) {
          print('Bot:${gamesbot}-Whoops! Pareho');
        }
      }
      break;


    case 1:
      {
        if (gamesbot == "Gunting" && choice == "Papel") {
          print('Bot:${gamesbot}');
          k++;
        }
        if (gamesbot == "Gunting" && choice == "Bato") {
          print('Bot:${gamesbot}');
          j++;
        }
        else if (gamesbot.compareTo(choice) == 0) {
          print('Bot:${gamesbot}-Whoops! Pareho');
        }
      }
      break;

    case 2:
      {
        if (gamesbot == "Bato" && choice == "Papel") {
          print('Bot:${gamesbot}');
          j++;
        }
        if (gamesbot == "Bato" && choice == "Gunting") {
          print('Bot:${gamesbot}');
          k++;
        }
        else if (gamesbot.compareTo(choice) == 0) {
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
if(j>k)
{
  print('You Win!');
}
else
  {
    print('You Lose');
  }


}
