mixin Loggable {
  void log(String msg) {
    DateTime now = DateTime.now();
    print('[$now] LOG: $msg');
  }
}

class Stack<T> with Loggable {
  final List<T> _storage = [];

  void push(T element) {
    _storage.add(element);
    log(
      'ใส่ข้อมูล "$element" เข้า Stack (จำนวนปัจจุบัน: ${_storage.length} ชิ้น)',
    );
  }

  T? pop() {
    if (_storage.isEmpty) {
      log('เตือน: พยายาม pop ข้อมูล แต่ไม่มีข้อมูลเหลือใน Stack แล้ว');
      return null;
    }
    T lastElement = _storage.removeLast();
    log(
      'นำข้อมูล "$lastElement" ออกจาก Stack (เหลือข้อมูล: ${_storage.length} ชิ้น)',
    );
    return lastElement;
  }
}

void main() {
  print('--- เริ่มต้นทดสอบ Stack พร้อมระบบ Logger ---\n');

  print('>> 1. ทดสอบสร้าง Stack สำหรับเก็บข้อความ (String) <<');
  var textStack = Stack<String>();
  textStack.push('ข้อมูลชุดที่ 1');
  textStack.push('ข้อมูลชุดที่ 2');
  textStack.pop();
  textStack.pop();
  textStack.pop();

  print('\n-----------------------------------------\n');

  print('>> 2. ทดสอบสร้าง Stack สำหรับเก็บตัวเลข (int) <<');
  var numberStack = Stack<int>();
  numberStack.push(100);
  numberStack.push(200);
  numberStack.pop();
}
