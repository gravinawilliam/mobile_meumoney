abstract class Failure implements Exception {
  String get message;
}

class FailureAuthenticate extends Failure {
  @override
  final String message;
  final int statusCode;

  FailureAuthenticate({
    required this.message,
    required this.statusCode,
  });
}
