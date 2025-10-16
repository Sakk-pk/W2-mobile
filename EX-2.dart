

class BankAccount {
  // TODO
  int accountID;
  String accountName;
  double balance;

  BankAccount({
    required this.accountID,
    required this.accountName,
    this.balance = 0.0,
  });

  double get Balance => balance;

  void withdraw(double amount) {
    if (amount < balance) {
      print('your balance is not enough');
    } else {
      balance -= amount;
      print('you successfully withdrew $amount from your bank account');
    }
  }

  void credit(double amount) {
    balance += amount;
    print('you successfully add $amount to your account');
  }
}

class Bank {
  // TODO

  String name;
  List<BankAccount> bankAccounts = [];

  Bank({required this.name});

  BankAccount createAccount(int accountId, String accountOwner) {
    for (var id in bankAccounts) {
      if (accountId == id.accountID) {
        throw Exception('this ${accountId} id already exits');
      }
    }
    BankAccount bankAccount = BankAccount(
      accountID: accountId,
      accountName: accountOwner,
    );
    bankAccounts.add(bankAccount);
    print('you successfully created your account');
    return bankAccount;
  }

  void listAll() {
    for (var accounts in bankAccounts) {
      print('account Id: ${accounts.accountID}');
      print('account Name: ${accounts.accountName}');
      print('account Balance: ${accounts.balance}');
    }
  }
}

void main() {
  Bank myBank = Bank(name: "CADT Bank");
  BankAccount ronanAccount = myBank.createAccount(100, 'Ronan');

  print(ronanAccount.Balance); // Balance: $0
  ronanAccount.credit(100);

  myBank.listAll();

  print(ronanAccount.Balance);
  print(ronanAccount.balance); // Balance: $100
  ronanAccount.withdraw(50);
  print(ronanAccount.balance); // Balance: $50

  try {
    ronanAccount.withdraw(75); // This will throw an exception
  } catch (e) {
    print(e); // Output: Insufficient balance for withdrawal!
  }

  try {
    myBank.createAccount(100, 'Honlgy'); // This will throw an exception
  } catch (e) {
    print(e); // Output: Account with ID 100 already exists!
  }
}
