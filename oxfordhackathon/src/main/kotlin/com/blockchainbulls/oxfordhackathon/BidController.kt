package com.blockchainbulls.oxfordhackathon

import org.springframework.web.bind.annotation.RequestMapping
import org.springframework.web.bind.annotation.RestController
import Auctions
import Bid

@RestController
@RequestMapping
class BidsController {
  private fun placeBid(placedBy: Int, forAuction: Int, amount: Double): Bid {
    val auction = Auctions.getWithId(forAuction)
    if((amount < auction.reservePrice)) {
      throw IllegalArgumentException("Cannot bid at lower than the reserve price");
    }

    return Bids.insert(Bid(0, placedBy, forAuction, amount))
  }

  private fun listForAuction(auctionId: Int): ArrayList<Bid> {
    return Bids.listForAuction(auctionId)
  }

}
