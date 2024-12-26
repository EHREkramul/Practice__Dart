import 'dart:io';

void main(){
  List accounts = [
    {
      'accountHolder': "Ekramul Haque",
      'accountNumber': "1001",
      'password': "123",
      'balance': 1000.00,
      'accountStatus': "active"
    },
    {
      'accountHolder': "John Wick",
      'accountNumber': "1002",
      'password': "123",
      'balance': 1000.00,
      'accountStatus': "active"
    }
  ];

  print("Welcome to EHR Bank PLC\nChoose an Operation:");
  print("1. Create Account");
  print("2. Login");
  print("3. Close App");

  String? choice = stdin.readLineSync(); // return String while taking input

  switch(choice){
    case '1':
      var newAccount = createAccount(accounts);
      accounts.add(newAccount);
      print("Account Created Successfully. Your Account Number is: ${accounts.last['accountNumber']}");
      login(accounts);
      break;
    case '2':
      login(accounts);
      break;
    case '3':
      print("See You Again");
      break;
    default:
      print("Invalid Option");
      break;
  }
}

Map createAccount(List accounts){
  var accountNumber = int.tryParse(accounts.last['accountNumber']!);
  accountNumber == null? accountNumber = 0: accountNumber +=1;

  print("Enter Account Holder Name:");
  var accountHolder = stdin.readLineSync();

  print("Enter Account Password:");
  var password = stdin.readLineSync();

  var newAccount = {
    'accountHolder': accountHolder.toString(),
    'accountNumber': accountNumber.toString(),
    'password': password.toString(),
    'balance': 0.00,
    'accountStatus': "active"
  };

  return newAccount;
}
void login(List accounts){
  print("Welcome to EHR Bank PLC login Page");
  bool isLoggedIn = false;
  print("Enter your account number: ");
  String? accountNumber = stdin.readLineSync();
  print("Enter your account password: ");
  String? password = stdin.readLineSync();

  int accountIndex = 0;


  for(var account in accounts){
    if(account['accountNumber'] == accountNumber && account['password'] == password){
      isLoggedIn = true;
      accountIndex = accounts.indexWhere((account) => (account['accountNumber'] == accountNumber && account['password'] == password) );
      break;
    }
  }
  if(isLoggedIn){
    while(isLoggedIn){
      print("Welcome ${accounts[accountIndex]['accountHolder']}\nChoose an Operation:");
      print("1. Withdraw");
      print("2. Deposit");
      print("3. Exit");

      String? choice = stdin.readLineSync();

      switch(choice){
        case '1':
          print("Enter Withdraw Amount:");
          String? amount = stdin.readLineSync();
          double? withdrawAmount = double.tryParse(amount!);
          withdrawAmount == null? withdrawAmount = 0.00: withdrawAmount = withdrawAmount;
          double balance = accounts[accountIndex]['balance'];

          if(withdrawAmount > balance){
            print("Insufficient Account Balance");
          }else{
            accounts[accountIndex]['balance'] = balance - withdrawAmount;
            print("Successfully Withdrawn $withdrawAmount Taka. Your current balance is ${accounts[accountIndex]['balance']}");
          }
          break;
        case '2':
          print("Enter Deposit Amount:");
          String? amount = stdin.readLineSync();
          double? depositAmount = double.tryParse(amount!);
          depositAmount == null? depositAmount = 0.00: depositAmount = depositAmount;
          double balance = accounts[accountIndex]['balance'];

          if(depositAmount < 100.00){
            print("Minimum deposit amount is 100.00 Taka");
          }else{
            accounts[accountIndex]['balance'] = balance + depositAmount;
            print("Successfully Deposited $depositAmount Taka. Your current balance is ${accounts[accountIndex]['balance']}");
          }
          break;
        case '3':
          isLoggedIn = false;
          print("Thank you. See you again");
          break;
        default:
          print("Enter a valid option");
          break;
      }
    }
  }else{
    print("Enter correct account number or password");
  }
}