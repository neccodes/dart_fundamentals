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

}