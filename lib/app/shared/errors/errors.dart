abstract class Failure implements Exception {
  String get message;
}

class FailureGetUser extends Failure {
  @override
  final String message;
  final int statusCode;

  FailureGetUser({
    required this.message,
    required this.statusCode,
  });
}
