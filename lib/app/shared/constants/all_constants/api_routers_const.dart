class ApiRoutersConst {
  static const String _baseUrl = 'https://viwcode.com.br/meumoneyapi';
  static const String createSession = '$_baseUrl/sessions';
  static const String createUser = '$_baseUrl/users';
  static const String getUser = '$_baseUrl/profiles';
  static const String getBankAccounts = '$_baseUrl/bankAccounts';
  static const String getTransactionsByDateUserId = '$_baseUrl/transactions';
  static const String createBankAccount = '$_baseUrl/bankAccounts';
  static const String getBanks = '$_baseUrl/banks';
  static const String getGainsExpenses =
      '$_baseUrl/transactions/getValueGainExpense';
  static const String getCoins = '$_baseUrl/coins';
  static const String createTransaction = '$_baseUrl/transactions';
  static const String getNotificationBenford = '$_baseUrl/notifications';
  static const String getTransactionsByMonth =
      '$_baseUrl/transactions/getTransactionsByMonthYear';
}
