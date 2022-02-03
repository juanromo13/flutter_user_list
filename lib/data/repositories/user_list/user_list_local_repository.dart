import 'package:user_list/domain/entities/user.dart';
import 'package:user_list/domain/repositories/abstract_user_list_repository.dart';

class UserListLocalRepository extends AbstractUserListRepository {
  @override
  Future<List<User>> getUsers() async {
    return List.generate(10, (index) => User(username: 'chiro$index', email: 'chiro$index@gmail.com') );
  }

}