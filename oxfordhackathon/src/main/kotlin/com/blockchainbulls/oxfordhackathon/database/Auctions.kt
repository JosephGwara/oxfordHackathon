object Auctions : BaseDatabase<Auction>() {
  fun insert(auction: Auction): Auction {}

  fun openAuction(auctionId: Int): Auction {}

  fun closeAuction(auctionId: Int): Auction {}

  /** Returns all auctions still accepting bids. */
  fun listAcceptingBids(): ArrayList<Auction> {}

  fun listNotOpen(): ArrayList<Auction> {}

  fun getWithId(auctionId: Int): Auction {
    val out = rows.firstNotNullOf({ { it.takeIf { (it.id == auctionId) } } })()
    return out!!
  }

}
