package com.blockchainbulls.oxfordhackathon

import org.springframework.web.bind.annotation.RequestMapping
import org.springframework.web.bind.annotation.RestController
import Auctions
import Bid
import Auction
import Wallets
import TokenHold
import TokenHolds
import Token
import Bids
import com.blockchainbulls.oxfordhackathon.api_models.AddAuctionRequest
import org.springframework.web.bind.annotation.GetMapping
import org.springframework.web.bind.annotation.PostMapping
import org.springframework.web.bind.annotation.PutMapping
import org.springframework.web.bind.annotation.RequestBody

const val ONE_MINUTE_IN_MILLIS = 60000;
const val FIFTEEN_MINUTE_IN_MILLIS = ONE_MINUTE_IN_MILLIS * 15;

@RestController
@RequestMapping
class AuctionController {

  @PostMapping("/addAuction")
  fun addAuctionPost(@RequestBody request: AddAuctionRequest): Auction {
    return addAuction(request.name, request.owner, request.reservePrice, request.tokenType, request.tokenCount)
  }

  @GetMapping("/listOpenForBidding")
  fun listOpenForBiddingGet(): List<Auction> {
    return listOpenForBidding()
  }

  @PutMapping("cronOpenAuctions")
  fun cronOpenAuctionsPut() {
    return cronOpenAuctions()
  }

  @PutMapping("cronCloseAuctions")
  fun cronCloseAuctionsPut() {
    return cronCloseAuctions()
  }

  private fun addAuction(name: String, owner: Int, reservePrice: Double, tokenType: String, tokenCount: Int): Auction {
    // Check if user can fund this auction
    val wallet = Wallets.getForUser(owner);
    val availableTokens = Wallets.getAvailableOf(tokenType, wallet);
    val holds = TokenHolds.listForWallet(wallet.address, tokenType);

    if(availableTokens.canSubtract(tokenCount, holds)) {
      throw IllegalStateException("Balance will be negative. Balance cannot be negative.");
    }

    // Insert new auction
    val insertedAuction = Auctions.insert(Auction(0, name, owner, Auction.STATUS_NOT_OPEN(), 0, reservePrice, null));

    // Hold funds
    val heldToken = Token(tokenType, tokenCount);
    TokenHolds.insert(TokenHold(heldToken, insertedAuction.id, wallet.address));

    return insertedAuction;
  }

  private fun listOpenForBidding(): ArrayList<Auction> {
    return Auctions.listAcceptingBids();
  }

  /**
   * Open all auctions that are not yet opened but have received their first bid
   * 
   * Should be run automatically at least once a minute.
   */
  private fun cronOpenAuctions(): Unit {
    for(auction in Auctions.listNotOpen()) {
      val bids = Bids.listForAuction(auction.id);
      if(bids.size > 0) {
        Auctions.openAuction(auction.id);
      }
    }
  }

  /**
   * Close all actions that have been open for more than 15 minutes. 
   * 
   * Should be run automatically at least once a minute.
   */
  private fun cronCloseAuctions() {
    for(auction in Auctions.listAcceptingBids()) {
      val elapsedMillis = System.currentTimeMillis() - auction.startedTimestamp;

      if(elapsedMillis > FIFTEEN_MINUTE_IN_MILLIS) {
        Auctions.closeAuction(auction.id)
        TokenHolds.deleteForAuction(auction.id);
      }
    }
  }

}
