// ignore: file_names
void main(List<String> arguments) {
  // String Manipulation
  const userInput = "sPoNgEbOb@eXaMpLe.cOm";
  final lowerCase = userInput.toLowerCase();
  print("lowerCase = $lowerCase");
  final upperCase = userInput.toUpperCase();
  print("upperCase = $upperCase");

  // Trimming
  const myUserInput = "  221B Baker Str. ";
  final trimmed = myUserInput.trim();
  print(trimmed);

  // Padding
  final time = Duration(hours: 1, minutes: 32, seconds: 57);
  final hours = time.inHours;
  final minutes = time.inMinutes % 60;
  final seconds = time.inSeconds % 60;
  final timeString = "$hours:$minutes:$seconds";
  print("timeString = $timeString");

  final myTime = Duration(hours: 1, minutes: 2, seconds: 3);
  final myHours = myTime.inHours;
  final myMinutes = '${myTime.inMinutes % 60}'.padLeft(2, "0");
  final mySeconds = '${myTime.inSeconds % 60}'.padLeft(2, "0");
  final myTimeString = '$myHours:$myMinutes:$mySeconds';
  print('myTimeString = $myTimeString');
}


