// ignore: file_names
void main(List<String> arguments) {
  // String Manipulation
  const userInput = "sPoNgEbOb@eXaMpLe.cOm";
  final lowerCase = userInput.toLowerCase();
  print("lowerCase = $lowerCase");
  final upperCase = userInput.toUpperCase();
  print('upperCase = $upperCase');

  // Trimming
  const myUserInput = '   221B Baker Str. ';
  final trimmed = myUserInput.trim();
  print(trimmed);

  // Padding
  final time = Duration(hours: 1, minutes: 32, seconds: 57);
  final hours = time.inHours;
  final minutes = time.inMinutes % 60;
  final seconds = time.inSeconds % 60;
  final timeString = '$hours:$minutes:$seconds';
  print('timeString = $timeString');

  final myTime = Duration(hours: 1, minutes: 2, seconds: 3);
  final myHours = myTime.inHours;
  final myMinutes = '${myTime.inMinutes % 60}'.padLeft(2, "0");
  final mySeconds = '${myTime.inSeconds % 60}'.padLeft(2, "0");
  final myTimeString = '$myHours:$myMinutes:$mySeconds';
  print('myTimeString = $myTimeString');

  // Splitting and Joining
  const csvFileLine = 'Martin, Emma, 12, Paris, France';
  final fields = csvFileLine.split(',');
  print('fields = $fields');
  final joined = fields.join('-');
  print('joined = $joined');

  //Replacing
  const phrase = 'live and learn';
  final withUnderScore = phrase.replaceAll(' ', '_');
  print(withUnderScore);

  // Exercises 1
  const countryNames = 'France, USA, Germany, Benin, China, Mexico, Angola, Mongolia';
  final myFields = countryNames.split(',');
  print(myFields);
  const myPhrase = "How's the Dart book going?:]";
  final emoChanged = myPhrase.replaceAll(':]', '^^');
  print(emoChanged);
}


