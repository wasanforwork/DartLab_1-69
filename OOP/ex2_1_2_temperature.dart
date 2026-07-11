class Temperature {
  double _celsius = 0;

  double get celsius => _celsius;

  set celsius(double value) {
    if (value < -273.15) {
      print('ผิดพลาด: อุณหภูมิต่ำกว่าศูนย์สัมบูรณ์ (-273.15°C) เป็นไปไม่ได้');
    } else {
      _celsius = value;
    }
  }

  double get fahrenheit => (_celsius * 9 / 5) + 32;
}

void main() {
  var temp = Temperature();

  temp.celsius = 25;
  print('อุณหภูมิปัจจุบัน ${temp.celsius}C = ${temp.fahrenheit}F');

  temp.celsius = -300;
  print('อุณหภูมิปัจจุบัน ${temp.celsius}C = ${temp.fahrenheit}F');
}
