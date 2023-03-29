object Auctions : BaseDatabase<Auction>() {
  fun insert(auction: Auction): Auction {
    return Auction(0, "", 0, 0, 0, 0.0, 0);
  }

  fun openAuction(auctionId: Int): Auction {
    return Auction(0, "", 0, 0, 0, 0.0, 0);
  }

  fun closeAuction(auctionId: Int): Auction {
    return Auction(0, "", 0, 0, 0, 0.0, 0);
  }

  /** Returns all auctions still accepting bids. */
  fun listAcceptingBids(): ArrayList<Auction> {
    return arrayListOf(
      Auction(0, "", 0, 0, 0, 0.0, 0)
    )
  }

  fun listNotOpen(): ArrayList<Auction> {
    return arrayListOf(
      Auction(0, "", 0, 0, 0, 0.0, 0)
    )
  }

  fun getWithId(auctionId: Int): Auction {
    val out = rows.firstNotNullOf { { it.takeIf { (it.id == auctionId) } } }()
    return out!!
  }

}
