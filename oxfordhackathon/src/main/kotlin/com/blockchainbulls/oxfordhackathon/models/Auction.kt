package com.blockchainbulls.oxfordhackathon.models

import org.kethereum.model.Address

data class Auction(
    val name: String,
    val blockDeadLine:Int,
    val reservePrice:Int,
    val metaData:String,
    val deedId: Int,
    val deedIdAddress:Address,
    val owner: Address,
    val active: Boolean,
    val finalized:Boolean,
) {
  companion object {
    fun STATUS_NOT_OPEN(): Int = 1
    fun STATUS_OPEN(): Int = 2
    fun STATUS_CLOSED(): Int = 3
  }
}
