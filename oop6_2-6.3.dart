import 'dart:io';
class SuperMarket{
  int? _userId;
  String? _userPass;
  
  late int _itemNum;
  late String _itemName;
  late int _itemQuan;
  late int _itemTax;
  late double _itemDiscount;
  late int _itemPrice;

  set UserId(int id) => _userId = id;
  set UserPass(String password) => _userPass = password;
  
  set SetNum(int itemNum) => _itemNum = itemNum;
  set SetName(String itemName) => _itemName = itemName;
  set SetQuan(int itemQuan) => _itemQuan = itemQuan;
  set SetTax(int ItemTax) => _itemTax = ItemTax;
  set SetDiscount(double itemDiscount) => _itemDiscount = itemDiscount;
  set SetPrice(int ItemPrice) => _itemPrice = ItemPrice;

  int get GetNum => _itemNum;
  String get GetName => _itemName;
  int get GetQuan => _itemQuan;
  int get GetTax => _itemTax;
  double get GetDiscount => _itemDiscount;
  int get GetPrice => _itemPrice;

  void ValidateCred({required int userId ,required String userPass }){
    stdout.write("Verify your User ID : ");
    _userId = int.parse(stdin.readLineSync()!);
    stdout.write("Verify your User Pass : ");
    _userPass = stdin.readLineSync()!;
    print("User Password : $_userPass");
    if(_userId == userId && _userPass == userPass){
      print("User $_userId login successful");
    }else{
      print("Invalid User ID and Password");
    }
  }
}
void main(){
  print("Supermarket Billing System");
  stdout.write("Enter your User ID : ");
  int userId = int.parse(stdin.readLineSync() ?? "0");
  stdout.write("Enter your User Password : ");
  String userPass = stdin.readLineSync() ?? "";
  SuperMarket entryPoint = new SuperMarket();
  entryPoint.ValidateCred(userId: userId, userPass: userPass);
  stdout.write("Enter number of item details you want to add : ");
  int length = int.parse(stdin.readLineSync() ?? "0");
  List<SuperMarket> superMarket = List.generate(length, (index) {
    SuperMarket superMarket = new SuperMarket();
    stdout.write("Enter Item Number : ");
    superMarket.SetNum = int.parse(stdin.readLineSync() ?? "0");
    stdout.write("Enter Item Name : ");
    superMarket.SetName = stdin.readLineSync() ?? "";
    stdout.write("Enter Item Quantity : ");
    superMarket.SetQuan = int.parse(stdin.readLineSync() ?? "0");
    stdout.write("Enter Item Price : ");
    superMarket.SetPrice = int.parse(stdin.readLineSync() ?? "0");
    superMarket.SetTax = 15;
    superMarket.SetDiscount = 20;
    return superMarket;
  });
  superMarket.forEach((element) {
    print("${element.GetNum}\t${element.GetName}\t${element.GetQuan}\t${element.GetPrice}");
 });
}