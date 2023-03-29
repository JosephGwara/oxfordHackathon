package com.blockchainbulls.oxfordhackathon.api_models

data class PlaceBidRequest(val placedBy: Int, val forAuction: Int, val amount: Double) {
}