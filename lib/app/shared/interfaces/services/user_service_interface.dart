abstract class IUserService {
  Future<String?> getCurrentToken();
  Future<void> saveCurrentToken({required String token});
}
