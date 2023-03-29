
object Wallets: BaseDatabase<Wallet>() {
  fun getAvailableOf(tokenType: String, wallet: Wallet): Token {
    // TODO: Implement
  }

  fun listTokens(wallet: Wallet): ArrayList<Token> {
    
  }

  fun transfer(tokenType: String, count: Int, fromWallet: Wallet, toWallet: Wallet): Unit {
    // TODO: Implement
  }

  fun getForUser(userId: Int): Wallet {

  }

  fun createNewForUser(userId: Int): Wallet {

  }
}
