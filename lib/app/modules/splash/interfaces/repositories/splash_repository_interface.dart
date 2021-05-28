import 'package:dartz/dartz.dart';

import '../../../../shared/errors/errors.dart';
import '../../../../shared/models/models.dart';

abstract class ISplashRepository {
  Future<Either<FailureDio, UserModel>> getUserApi({
    required String token,
  });
}
