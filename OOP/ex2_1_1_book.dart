class Book {
  String? title;
  String? author;
  double? price;

  Book(this.title, this.author, this.price);

  void showDetail() {
    print("ชื่อเรื่อง $title");
    print("ผู้แต่ง $author");
    print("ราคา $price บาท");
    print('---');
  }
}

void main() {
  Book b1 = Book("Dart", "Peter", 200);
  Book b2 = Book('Python', 'Justin', 250);
  b1.showDetail();
  b2.showDetail();
}
