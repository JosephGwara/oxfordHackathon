
object Wallets: BaseDatabase<Wallet>() {
  fun getAvailableOf(tokenType: String, wallet: Wallet): Token {
    return Token("", 1)
  }

  fun listTokens(wallet: Wallet): ArrayList<Token> {
    return arrayListOf(
      Token("", 1)
    )
  }

  fun transfer(tokenType: String, count: Int, fromWallet: Wallet, toWallet: Wallet): Unit {

  }

  fun getForUser(userId: Int): Wallet {
  return Wallet("", 0)
  }

  fun createNewForUser(userId: Int): Wallet {
    return Wallet("", 0)
  }
}
