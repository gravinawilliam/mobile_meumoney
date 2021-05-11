import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:flutter_modular/flutter_modular.dart';

import '../../../shared/constants/constants.dart';
import '../errors/errors.dart';
import '../interfaces/authenticate_repository_interface.dart';
import '../models/create_session_model.dart';
import '../models/response_create_session_model.dart';

part 'authenticate_repository.g.dart';

@Injectable()
class AuthenticateRepository implements IAuthenticateRepository {
  final Dio _dio;

  AuthenticateRepository(this._dio);

  @override
  Future<Either<FailureAuthenticate, ResponseCreateSessionModel>> createSession(
    CreateSessionModel createSession,
  ) async {
    try {
      var response = await _dio.post(
        ApiRoutersConst.createSession,
        data: {
          "communicator": createSession.communicator,
          "password": createSession.password,
        },
      );
      var result = ResponseCreateSessionModel.fromJson(response.data);
      return Right(result);
    } on DioError catch (err) {
      print(err.response);
      return Left(
        FailureAuthenticate(
          message: err.response!.data,
          statusCode: err.response!.statusCode!,
        ),
      );
    }
  }
}
