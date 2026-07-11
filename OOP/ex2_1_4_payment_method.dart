abstract class PaymentMethos {
  void pay(double amount);
}

class CreditCard implements PaymentMethos {
  String cardNumber;

  CreditCard(this.cardNumber);

  @override
  void pay(double amount) {
    print(
      'ชำระเงินจำนวน $amount บาท ผ่านบัตรเครดิต [หมายเลข: $cardNumber] สำเร็จ',
    );
  }
}

class CashOndelivery implements PaymentMethos {
  String address;

  CashOndelivery(this.address);

  @override
  void pay(double amount) {
    print(
      'เลือกชำระเงินปลายทางจำนวน $amount บาท [จัดส่งที่อยู่: $address] กรุณาเตรียมเงินสดให้พร้อม',
    );
  }
}

class PromptPay implements PaymentMethos {
  String phoneNumber;

  PromptPay(this.phoneNumber);

  @override
  void pay(double amount) {
    print(
      'ชำระเงินจำนวน $amount บาท ผ่าน Prompay [เบอร์: $phoneNumber] สำเร็จ',
    );
  }
}

void main() {
  List<PaymentMethos> availablePayment = [
    CreditCard('1234-5678-9012-3456'),
    PromptPay('081-234-5678'),
    CashOndelivery('99/9 หมู่ 5 ต.ท่าโพธิ์ อ.เมือง จ.พิษณุโลก'),
  ];

  double caerTotal = 2000;

  for (var payment in availablePayment) {
    payment.pay(caerTotal);
    print('---');
  }
}
