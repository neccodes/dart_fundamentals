import 'dart:math';

void main(List<String> args) {
  const doesOneEqualToTwo = (1==2);
  print(doesOneEqualToTwo);  // false 

  var a;
  print(a.runtimeType);
  print("Code process occured...");
  a = 15;
  print(a.runtimeType);

  dynamic b;
  List mixedDataTypeList = ["String", 15, true, 3.14];
  Random random = new Random();
  b = mixedDataTypeList.elementAt(random.nextInt(4));
  print("dynamic a variable value : $b");
  print("dynamic a variable data type : ${b.runtimeType}");
}