class AuthLogin{
  final String username;
  final String password;
  final String token;
  final int userId;


  AuthLogin({
    required this.username,
    required this.password,
    required this.token,
    required this.userId,
  });

}


class AuthRegister{
  final String username;
  final String password;
  final String email;
  final String firstName;
  final String lastName;

  AuthRegister({
    required this.username,
    required this.password,
    required this.email,
    required this.firstName,
    required this.lastName,
  });
}