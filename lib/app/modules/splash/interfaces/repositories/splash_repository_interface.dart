import 'package:dartz/dartz.dart';

import '../../../../shared/errors/errors.dart';
import '../../../../shared/models/models.dart';

abstract class ISplashRepository {
  Future<Either<FailureGetUser, UserModel>> getUserApi({
    required String token,
  });
}
