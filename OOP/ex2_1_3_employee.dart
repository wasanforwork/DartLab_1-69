class Employee {
  String name;

  Employee(this.name);

  double calculateSalary() {
    return 0.0;
  }
}

class FullTimeEmployee extends Employee {
  double monthlySalary;

  FullTimeEmployee(String name, this.monthlySalary) : super(name);

  @override
  double calculateSalary() {
    return monthlySalary;
  }
}

class PartTimeEmployee extends Employee {
  double hourlyRate;
  int hoursWorked;

  PartTimeEmployee(String name, this.hourlyRate, this.hoursWorked)
    : super(name);

  @override
  double calculateSalary() {
    return hourlyRate * hoursWorked;
  }
}

void main() {
  List<Employee> employee = [
    FullTimeEmployee('สมชาย', 25000),
    PartTimeEmployee('สมหญิง', 150, 80),
  ];

  print('รายงานการจ่ายเงินเดือนพนักงาน');
  for (var emp in employee) {
    print('${emp.name} เงินเดือนที่ได้รับ: ${emp.calculateSalary()} บาท');
  }
}
