package com.blockchainbulls.oxfordhackathon

import Token
import Wallets
import org.springframework.web.bind.annotation.GetMapping
import org.springframework.web.bind.annotation.RequestMapping
import org.springframework.web.bind.annotation.RequestParam
import org.springframework.web.bind.annotation.RestController

@RestController
@RequestMapping
class WalletController {
  @GetMapping("/allUserTokens")
  fun listForAuctionGet(@RequestParam(name="userId") userId: String): List<Token> {
    val userId = Integer.valueOf(userId)
    return getAllUserTokens(userId)
  }

  private fun getAllUserTokens(userId: Int): ArrayList<Token> {
    val wallet = Wallets.getForUser(userId)
    return Wallets.listTokens(wallet)
  }
}
