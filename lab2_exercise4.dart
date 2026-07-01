void main() {
  // 2.
  String? middleName;

  //3.
  String city = 'Nakhon Sawan';

  // 4.
  int middleNameLength = middleName?.length ?? 0;
  print('Middle name length: ${middleNameLength}');

  // 5.
  print('City length: ${city?.length}');

  // 6.
  middleName ??= 'N/A';
  print('Middle name aftter assignment: $middleName');
}
