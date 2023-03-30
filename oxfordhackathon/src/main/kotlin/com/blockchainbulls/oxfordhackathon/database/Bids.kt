import com.blockchainbulls.oxfordhackathon.models.Bid

object Bids: BaseDatabase<Bid>() {
  fun insert(bid: Bid): Bid {
    return Bid(0, 0, 0, 0.0)
  }

  fun listForAuction(auctionId: Int): ArrayList<Bid> {
    return arrayListOf(
      Bid(0, 0, 0, 0.0)
    )
  }
}
