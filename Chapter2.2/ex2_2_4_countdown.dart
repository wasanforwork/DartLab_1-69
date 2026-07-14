Stream<dynamic> countdown(int from) async* {
  for (int i = from; i >= 0; i--) {
    await Future.delayed(Duration(seconds: 1));
    yield i;
  }
  yield "หมดเวลา !";
}

void main() async {
  Stream<dynamic> timeStream = countdown(5);

  await for (var value in timeStream) {
    print(value);
  }
}
