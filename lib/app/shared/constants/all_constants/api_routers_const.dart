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
}
