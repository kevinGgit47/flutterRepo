class Employee {
  String profile;
  String username;
  String email;
  int balance;
  String behavior;

  Employee({this.profile, this.username, this.email, this.balance, this.behavior});

  Employee.fromJson(Map<String, dynamic> json){
    profile = json['profile'];
    username = json['username'];
    email = json['email'];
    balance = json['balance'];
    behavior = json['behavior'];
  }
}