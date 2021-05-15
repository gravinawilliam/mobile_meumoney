import 'package:dartz/dartz.dart';

import '../errors/errors.dart';
import '../models/create_session_model.dart';
import '../models/response_create_session_model.dart';

abstract class IAuthenticateRepository {
  Future<Either<FailureAuthenticate, ResponseCreateSessionModel>> createSession(
    CreateSessionModel createSession,
  );
}
