package com.blockchainbulls.oxfordhackathon.models

data class Bid(
    val id: Int,
    val placedBy: Int,
    val forAuction: Int,
    val amount: Double,
) {}
