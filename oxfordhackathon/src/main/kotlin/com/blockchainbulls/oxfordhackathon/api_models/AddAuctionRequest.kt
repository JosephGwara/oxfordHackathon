package com.blockchainbulls.oxfordhackathon.api_models

class AddAuctionRequest(val name: String, val owner: Int, val reservePrice: Double, val tokenType: String, val tokenCount: Int) {
}