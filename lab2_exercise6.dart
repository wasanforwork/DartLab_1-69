import 'dart:math';

double calculateAreaRegtangle({
  required double width,
  required double height,
}) => width * height;

double calculateAreaTriangle({required double base, required double height}) =>
    0.5 * base * height;

double calculatevolumeCylinder({
  required double radius,
  required double height,
}) => pi * pow(radius, 2) * height;

void main() {
  double areareg = calculateAreaRegtangle(width: 10.0, height: 5.5);
  double areatri = calculateAreaTriangle(base: 10.0, height: 5.5);
  double volumecy = calculatevolumeCylinder(radius: 10.0, height: 5.5);
  print('Area Regtangle: $areareg');
  print('Area Triangle: $areatri');
  print('Volume Cylender: ${volumecy.toStringAsFixed(2)}');
}
