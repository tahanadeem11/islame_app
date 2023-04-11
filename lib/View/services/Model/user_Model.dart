class UserModel{
  final String? id;
  final String? name;
  final String? dOB;
  final String? password;
  final String? confirmPassword;


  UserModel({
    this.id,
    required this.name,
    required this.dOB,
    required this.password,
    required  this.confirmPassword,
});

  toJson(){
    return {
      "Name": name,
      "DOB": dOB,
      "Password": password,
      "ConfirmPassword": confirmPassword,
    };

  }
}