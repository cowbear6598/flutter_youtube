import 'package:flutter_youtube/types/user.dart';

extension UserExtensions on User {
  DateTime get lastLoginTime => DateTime.fromMillisecondsSinceEpoch(last_login_time * 1000);
}