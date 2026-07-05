double calculateArea({required double width, required double height}) {
  return width * height;
}

void main() {
  double area = calculateArea(width: 10.0, height: 5.5);
  print('Area (10.0 x 5.5) = $area');
}
