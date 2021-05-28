abstract class Failure implements Exception {
  String get message;
}

class FailureDio extends Failure {
  @override
  final String message;
  final int statusCode;

  FailureDio({
    required this.message,
    required this.statusCode,
  });
}
