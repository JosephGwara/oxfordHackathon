object TokenHolds : BaseDatabase<TokenHold>() {
  fun insert(tokenHold: TokenHold): TokenHold {
    return tokenHold
  }

  fun getForAuction(auctionId: Int): TokenHold {
    val out = rows.firstNotNullOf({ { it.takeIf { (it.forAuction == auctionId) } } })()
    return out!!
  }

  fun deleteForAuction(auctionId: Int): TokenHold {
    val elem = getForAuction(auctionId)
    rows.remove(elem)
    return elem
  }

  fun listForWallet(walletId: String, tokenType: String): ArrayList<TokenHold> {
    val out = rows.filter { (it.walletId == walletId && it.token.type == tokenType)}
    return ArrayList(out);
  }
}
