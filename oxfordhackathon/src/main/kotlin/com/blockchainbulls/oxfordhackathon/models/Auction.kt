package com.blockchainbulls.oxfordhackathon.models

data class Auction(
    val id: Int,
    val name: String,
    val owner: Int,
    val status: Int,
    val startedTimestamp: Long,
    val reservePrice:Int,
    val wonBy: Int?,
) {
  companion object {
    fun STATUS_NOT_OPEN(): Int = 1
    fun STATUS_OPEN(): Int = 2
    fun STATUS_CLOSED(): Int = 3
  }
}
