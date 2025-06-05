class CreateUserModel {
  final String firstName,lastName;
  final String email, phoneNumber;
  final String password;

  CreateUserModel({
    required this.firstName,
    required this.lastName,
    required this.email,
    required this.phoneNumber,
    required this.password,
  });



  Map<String,dynamic> toJson(){
    return {
      "firstName":firstName,
      "lastName":lastName,
      "email":email,
      "phoneNumber":phoneNumber,
      "password":password
    };
  }
}