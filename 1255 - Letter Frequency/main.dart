import 'dart:io';

void main() {

  int ascii, max;
  String text;
  var letter;
  int N = int.parse(stdin.readLineSync()!);
  
  for(int x = 0; x < N; x++)
  {
    max = 0;
    text = stdin.readLineSync()!.toLowerCase();
    letter = new List<int>.generate(255, (i) => 0);

    for(int i = 0; i < text.length; i++)
    {
      if(text[i] != ' ')
      {
        ascii = text[i].codeUnitAt(0);  //Obter unidade ASCII do caracter com codeUnitAt(0)
        letter[ascii]++;
        
        if(letter[ascii] > max)
        {
          max = letter[ascii];
        }
      }
    }

    for(int c = 'a'.codeUnitAt(0); c <= 'z'.codeUnitAt(0); c++)
    {
      if(letter[c] == max)
        stdout.write(String.fromCharCode(c)); //Saída sem quebra de linha
    }
    print("");
  }
}