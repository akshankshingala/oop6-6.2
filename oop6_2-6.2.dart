import 'dart:io';
void main(){
  stdout.write("Enter Number of Train Records : ");
  int len = int.parse(stdin.readLineSync() ?? "0");
  if(len<3){
    stdout.write("Re-Enter Number of Train Records : ");
    len = int.parse(stdin.readLineSync() ?? "0");
  }
  List<Railways> train;
  if(len >= 3){
    train = List.generate(len, (i) {
      Railways railways = new Railways();
      stdout.write("Enter Train Number : ");
      railways.setNumber = int.parse(stdin.readLineSync() ?? "0");
      stdout.write("Enter Train Name : ");
      railways.setName = stdin.readLineSync() ?? "";
      stdout.write("Enter Train Destination : ");
      railways.setDestination = stdin.readLineSync() ?? "";
      stdout.write("Enter Train Arrival Time : ");
      railways.setArrival = int.parse(stdin.readLineSync() ?? "0.0");
      print("");
      return railways;
    });
  }
  else{
    print("Invalid number of train");
    exit(0);
  }
  print("ID\tName\tDestination\tArrival");
  train.forEach((element) {
    print("${element.getNumber}\t${element.getName}\t${element.getDestination}\t\t${element.getArrival}");
  });
  stdout.write("Enter Train Details you want : ");
  int trainNum = int.parse(stdin.readLineSync() ?? "0");
  train[0].searchTrainInput(trainNum: trainNum);
}

class Railways{
  late int _train_num;
  late String _train_name;
  late String _destination;
  late int _train_arrival;

  set setNumber(int number) => _train_num = number;
  set setName(String name) => _train_name = name;
  set setDestination(String destination) => _destination = destination;
  set setArrival(int arrival) => _train_arrival = arrival;

  int get getNumber => _train_num;
  String get getName => _train_name;
  String get getDestination => _destination;
  int get getArrival => _train_arrival;

  void searchTrainInput({required int trainNum}){
    if(_train_num == trainNum){
      print("${_train_num}\t${_train_name}\t${_destination}\t${_train_arrival}");
    }else{
      print("Invalid Train Input");
  }
 }
}