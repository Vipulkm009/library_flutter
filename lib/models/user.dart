class UserProfile {
  String uid;
  String name;
  String email;
  String password;

  UserProfile(
      {required this.name,
      required this.email,
      required this.password,
      this.uid = ""});
}
