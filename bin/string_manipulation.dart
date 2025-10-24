void main(List<String> args) {
  var message = 'Hello' ' my nme is ';
  var name = 'Ray';
  print(message + name);

  final myMessage = StringBuffer();
  myMessage.write('Hello');
  myMessage.write(' my name is ');
  myMessage.write('Ray');
  print(myMessage.toString());

  // Building Strings in a Loop
  for (int i = 2; i <= 1024; i *= 2) {
    print('i = $i');
  }

  final buffer = StringBuffer();
  for (int i = 2; i < 1024; i *= 2) {
    buffer.write(i);
    buffer.write(' ');
  }
  print(buffer);

  // Checking the Contents of a String
  const text = 'I love Dart';
  print(text.contains('I'));
  print(text.startsWith('I'));
  print(text.endsWith('Dart'));
  print(text.contains('Flutter'));

  // Regular Expressions
  final regex = RegExp('cat');
  print(regex.hasMatch('concatenation')); // true
  print(regex.hasMatch('dog')); // false
  print(regex.hasMatch('cats'));  // true
  // or we can use this which has the same meaning
  print('concatenation'.contains(regex)); // true
  print('dog'.contains(regex)); // false
  print('cats'.contains(regex)); // true

  final matchSingle = RegExp('c.t');
  print(matchSingle.hasMatch('cat'));  // true
  print(matchSingle.hasMatch('cot'));  // true
  print(matchSingle.hasMatch('cut'));  // true
  print(matchSingle.hasMatch('ct'));  // false

  final optionalSingle = RegExp('c.?t');
  print(optionalSingle.hasMatch('cat')); // true
  print(optionalSingle.hasMatch('cot')); // true
  print(optionalSingle.hasMatch('cut')); // true
  print(optionalSingle.hasMatch('ct')); // true

  final oneOrMore = RegExp('wo+w');
  print(oneOrMore.hasMatch('ww')); // false
  print(oneOrMore.hasMatch('wow')); // true
  print(oneOrMore.hasMatch('wooow')); // true
  print(oneOrMore.hasMatch('wooooooow')); // true
  final zeroOrMore = RegExp('wo*w');
  print(zeroOrMore.hasMatch('ww')); // true
  print(zeroOrMore.hasMatch('wow')); // true
  print(zeroOrMore.hasMatch('wooow')); // true
  print(zeroOrMore.hasMatch('wooooooow')); // true

  const password = 'Password1234';

  final lowercase = RegExp(r'[a-z]');
  final uppercase = RegExp(r'[A-Z]');
  final number = RegExp(r'[0-9]');

  if(!password.contains(lowercase)) {
    print('Your password must have a lower case letter!');
  } else if (!password.contains(uppercase)) {
    print('Your password must have an uppercase letter!');
  } else if (!password.contains(number)) {
    print('Your password must have a number!');
  } else {
    print('Your password is OK!');
  }

  if (password.length < 12) {
    print('Your password must have at least 12 characters!');
  }

  final goodLength = RegExp(r'.{12,}');
  if (!password.contains(goodLength)) {
    print('Your password must be at least 12 characters long!');
  }

  const htmlText = '''
  <!DOCTYPE html>
  <html>
  <body>
  <h1>Dart Tutorial</h1>
  <p>Dart is my favorite language.</p>      
  </body>
  </html>
  ''';
  var heading = htmlText.substring(42, 55);
  print('heading = $heading'); // Dart Tutorial

  final start = htmlText.indexOf('<h1>') + '<h1>'.length;
  final end = htmlText.indexOf('</h1>');
  heading = htmlText.substring(start, end);
  print('heading = $heading');

  // Finding Multiple Matches
  const myText = '''
  <h1>Dart Tutorial</h1>
  <h1>Flutter Tutorial</h1>
  <h1>Other Tutorials</h1>
  ''';
  var position = 0;
  while(true) {
    var start = myText.indexOf('<h1>', position) + '<h1>'.length;
    var end = myText.indexOf('</h1>', position);
    if (start == -1 || end == -1) {
      break;
    }
    final heading = myText.substring(start, end);
    print('heading = $heading');
    position = end + '</h1>'.length;
  }

  final headings = RegExp(r'<h1>(.+)</h1>');
  final matches = headings.allMatches(myText);
  for (final match in matches) {
    print(match.group(1));
  }

  // Validate Email Address using RegExp in Dart(2)
  String validEmail = "test@example.com";
  String invalidEmail1 = "invalid-email";
  String invalidEmail2 = "user@.com";
  String invalidEmail3 = "user@domain.";

  print("'$validEmail' is valid: ${isValidEmail(validEmail)}");  // true
  print("'$invalidEmail1' is valid: ${isValidEmail(invalidEmail1)}");  // false
  print("'$invalidEmail2' is valid: ${isValidEmail(invalidEmail2)}");  // false
  print("'$invalidEmail3' is valid: ${isValidEmail(invalidEmail3)}");  // false

  // Function to extract time and lyrics using a regular expression.
  const line = '[00:12.34]Row, row, row your boat';
  final result = extractTimeAndLyrics(line);

  if (result != null) {
    print('Original String: "$line"');
    print('Extracted Time: ${result['time']}');
    print('Extracted Lyrics: ${result['lyrics']}');
  } else {
    print('No match found for the given string.');
  }

}

// Validate Email Address using RegExp in Dart(1)
bool isValidEmail(String email) {
  // A common regular expression for email validation.
  // This pattern attempts to match a typical email format.
  final emailRegex = RegExp(r'^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}$',);

  return emailRegex.hasMatch(email);
}

// Function to extract time and lyrics using a regular expression.
Map<String, String>? extractTimeAndLyrics(String line) {
  // A regex pattern to match the timestamp and lyrics.
  // Group 1: (.*?) - The content inside the square brackets (non-greedy).
  // Group 2: (.*) - Everything after the brackets.
  final regex = RegExp(r'\[(.*?)\](.*)');

  // Attempt to find a match in the input string.
  final match = regex.firstMatch(line);

  // If a match is found, extract the groups and return them in a Map.
  if (match != null) {
    return {
      'time': match.group(1)!.trim(),
      'lyrics': match.group(2)!.trim(),
    };
  }

  // If no match is found, return null.
  return null;
}