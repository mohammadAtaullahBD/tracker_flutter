class User {
  User({
    required this.firstName,
    required this.lastName,
    required this.email,
    this.isVerified=false
  });
  final String firstName;
  final String lastName;
  late String fullName = firstName + lastName;
  final String email;
  bool isVerified;

}
