package com.blockchainbulls.oxfordhackathon

import Token
import Wallets
import org.springframework.web.bind.annotation.RequestMapping
import org.springframework.web.bind.annotation.RestController

@RestController
@RequestMapping
class WalletController {
  private fun getAllUserTokens(userId: Int): ArrayList<Token> {
    val wallet = Wallets.getForUser(userId)
    return Wallets.listTokens(wallet)
  }
}
