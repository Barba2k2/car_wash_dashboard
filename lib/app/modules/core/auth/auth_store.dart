import 'package:mobx/mobx.dart';

import '../../../core/local_storage/local_storage.dart';
part 'auth_store.g.dart';

class AuthStore = AuthStoreBase with _$AuthStore;

abstract class AuthStoreBase with Store {
  final LocalStorage _localStorage;

  AuthStoreBase({
    required LocalStorage localStorage,
  }) : _localStorage = localStorage;
}