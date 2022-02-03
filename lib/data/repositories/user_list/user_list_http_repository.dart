import 'dart:convert';

import 'package:user_list/domain/entities/user.dart';
import 'package:user_list/domain/repositories/abstract_user_list_repository.dart';
import 'package:http/http.dart' as http;

class UserListHttpRepository extends AbstractUserListRepository{
  @override
  Future<List<User>> getUsers() async {
    final url = Uri.https('jsonplaceholder.typicode.com', 'users');
    final res = await http.get(url);
    final users = (jsonDecode(res.body) as List).map((e) => User.fromMap(e)).toList();
    return users;
  }

}