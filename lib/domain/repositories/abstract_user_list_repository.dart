import 'package:user_list/domain/entities/user.dart';

abstract class AbstractUserListRepository {
  Future<List<User>> getUsers();
}