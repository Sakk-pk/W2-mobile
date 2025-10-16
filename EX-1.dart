enum Skill { FLUTTER, DART, OTHER }

class Employee {
  final String _name;
  final double _baseSalary;
  final int _yearsOfExperience;
  final Skill _skill;
  Address _address;

  Employee(
    this._name,
    this._baseSalary,
    this._yearsOfExperience,
    this._skill,
    this._address,
  );

  Employee.mobileDeveloper({
    required String name,
    required int yearsOfExperience,
    required Address address,
  }) : _name = name,
       _address = address,
       _yearsOfExperience = yearsOfExperience,
       _baseSalary = 40000,
       _skill = Skill.FLUTTER;

  void printDetails() {
    print('Employee: $_name, Base Salary: \$${_baseSalary}');
  }

  String get name => _name;
  double get baseSalary => _baseSalary;
  int get yearsOfExperience => _yearsOfExperience;
  Skill get skill => _skill;
  Address get address => _address;

  void totalSalary() {
    double total = 0;
    if (_skill == Skill.FLUTTER) {
      total = _baseSalary + (_yearsOfExperience + 2000) + 50000;
    } else if (_skill == Skill.DART) {
      total = _baseSalary + (_yearsOfExperience + 2000) + 30000;
    } else {
      total = _baseSalary + (_yearsOfExperience + 2000) + 10000;
    }
    print('total salary: $total');
  }
}

class Address {
  String street;
  String city;
  String zipCode;

  Address(this.street, this.city, this.zipCode);

  void printAddress() {
    print('Address: $street, $city, $zipCode');
  }

  void main() {
    var address1 = Address('Street 1', 'City A', '12345');
    var emp1 = Employee.mobileDeveloper(
      name: 'Sokea',
      yearsOfExperience: 2,
      address: address1,
    );
    emp1.printDetails();
    emp1._address.printAddress();

    var address2 = Address('Street 2', 'City B', '67890');
    var emp2 = Employee.mobileDeveloper(
      name: 'Ronan',
      yearsOfExperience: 3,
      address: address2,
    );
    emp2.printDetails();
    emp2._address.printAddress();
  }
}
