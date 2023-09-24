
import 'package:flutter_youtube/extensions/schemas/user.dart';

extension UserExtensions on User {
  DateTime get lastLoginTime => DateTime.fromMillisecondsSinceEpoch(last_login_time * 1000);
}