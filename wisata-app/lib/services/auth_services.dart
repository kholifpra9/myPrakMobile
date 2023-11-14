import 'package:wisata_app/models/user.dart';

class AuthService {
  final List<UserModel> _users = [
    UserModel(email: 'user1@gmail.com', password: 'password'),
    UserModel(email: 'user2@gmail.com', password: 'password'),
  ];
  Future<UserModel> login(String email, String password) async {
    final user = _users.firstWhere(
      (user) => user.email == email && user.password == password,
      orElse: () => UserModel(email: '', password: ''),
    );

    return user;
  }
}