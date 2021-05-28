import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:flutter_modular/flutter_modular.dart';

import '../../../shared/constants/constants.dart';
import '../../../shared/errors/errors.dart';
import '../../../shared/models/models.dart';
import '../interfaces/repositories/splash_repository_interface.dart';

part 'splash_repository.g.dart';

@Injectable()
class SplashRepository implements ISplashRepository {
  final Dio _dio;

  SplashRepository(this._dio);

  @override
  Future<Either<FailureGetUser, UserModel>> getUserApi({
    required String token,
  }) async {
    try {
      _dio.options.headers["Authorization"] = "Bearer $token";
      var response = await _dio.get(
        ApiRoutersConst.getUser,
      );
      var result = UserModel.fromMap(response.data);
      return Right(result);
    } on DioError catch (error) {
      print(error);
      return Left(
        FailureGetUser(
          message: error.response!.data,
          statusCode: error.response!.statusCode!,
        ),
      );
    }
  }
}
