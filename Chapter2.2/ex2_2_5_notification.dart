import 'dart:async';

void main() {
  StreamController<String> controller = StreamController<String>();

  controller.stream.listen(
    (notification) {
      print("Notification: $notification");
    },
    onDone: () {
      print("Stream closed. No more notifications.");
    },
  );

  controller.add("คุณได้รับข้อความใหม่");
  controller.add("ระบบตรวจพบการล็อกอินใหม่");
  controller.add("การอัปเดตระบบเสร็จสิ้น");

  controller.close();
}
