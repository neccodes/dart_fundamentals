void main(List<String> args) {
  print('Data fetching started...');
  fetchData().then((_) {
    print('Future task completed.');
  });
  print("Moving ahead...");
}

Future<void> fetchData() async {
  // Simulate a network call or a long-running task
  await Future.delayed(Duration(seconds: 2));
  print('Data fetched successfully!');
}