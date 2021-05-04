class ApiRoutersConst {
  static const String _baseUrl = 'https://viwcode.com.br/meumoneyapi';
  static const String createUser = '$_baseUrl/users/createUser';
  static const String createSession = '$_baseUrl/users/authenticate';
  static const String getUser = '$_baseUrl/users/showProfile';
  static const String listAllTransactionsByBankAccountId =
      '$_baseUrl/transactions/listAllByBankAccountId';
  static const String listAllTransactionsByMonthYearBankAccountId =
      '$_baseUrl/transactions/listAllByMonthYearBankAccountId';
  static const String listAllByUserIdMonthYear =
      '$_baseUrl/transactions/listAllByUserIdMonthYear';
  static const String listAllBanks = '$_baseUrl/banks';
  static const String createBankAccount =
      '$_baseUrl/bankAccounts/createBankAccount';
  static const String listAllBankAccountsByUser =
      '$_baseUrl/bankAccounts/listAllBankAccountsByUser';
  static const String listAllTransactionCategories =
      '$_baseUrl/transactionCategories/listAll';
  static const String createTransaction =
      '$_baseUrl/transactions/createTransaction';
}
