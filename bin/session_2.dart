import 'dart:math';
import 'dart:io';

void main() 
{
  List<int> randomNumbers = generateNumbers(10, 50);
  print(randomNumbers);
  int userNumber = getUserInt();
  if (isNumInList(userNumber, randomNumbers))
  {
    print('You have guessed correctly!');
  } else 
  {
    print('You have guessed incorrectly!');
  }
}

List<int> generateNumbers(int length, int max) 
{
  List<int> randomNumbers = [];

  var random = Random();

  for(int i = 0; i < length; i++) {
    randomNumbers.add(random.nextInt(max));
  }

  return randomNumbers;
}

int getUserInt() 
{
  stdout.write('Input your number: ');

  String? userInput = stdin.readLineSync();

  try {
    int number = int.parse(userInput!);
    return number;
  } catch (e) {
    print('Invalid input. Please enter a valid integer');
  }
  return getUserInt();
}

int searchNumber(int number, List<int> numberList) 
{
  for(int i = 0; i < numberList.length; i++)
  {
    if (number == numberList[i]) 
    {
      return i;
    }
  }
  return -1;
}

bool isNumInList(int number, List<int> numberList)
{
  if (searchNumber(number, numberList) != -1) {
    return true;
  }
  return false;
}