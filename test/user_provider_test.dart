import 'package:flutter_test/flutter_test.dart';
import 'package:user_list/data/repositories/user_list/user_list_http_repository.dart';
import 'package:user_list/domain/providers/user_list_provider.dart';

void main() {
  test('test users', () async {
    final provider = UserListProvider(UserListHttpRepository());
    await provider.getUsers();
    expect(provider.users.length, 10);
  });
}