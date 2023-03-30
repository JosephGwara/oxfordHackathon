package com.blockchainbulls.oxfordhackathon

import org.springframework.web.bind.annotation.RequestMapping
import org.springframework.web.bind.annotation.RestController
import Auctions
import com.blockchainbulls.oxfordhackathon.models.Bid
import com.blockchainbulls.oxfordhackathon.api_models.PlaceBidRequest
import org.springframework.web.bind.annotation.GetMapping
import org.springframework.web.bind.annotation.PostMapping
import org.springframework.web.bind.annotation.RequestBody
import org.springframework.web.bind.annotation.RequestParam

@RestController
@RequestMapping
class BidsController {

  @PostMapping("/placeBid")
  fun placeBidPost(@RequestBody request: PlaceBidRequest): Bid {
    return placeBid(request.placedBy, request.forAuction, request.amount);
  }

  @GetMapping("/listForAuction")
  fun listForAuctionGet(@RequestParam(name="auctionId") auctionId: String): List<Bid> {
    val auctionIdInt = Integer.valueOf(auctionId)
    return listForAuction(auctionIdInt)
  }

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
