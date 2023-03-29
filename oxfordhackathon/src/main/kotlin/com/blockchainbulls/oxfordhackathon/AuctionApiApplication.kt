package com.blockchainbulls.oxfordhackathon

import org.springframework.boot.autoconfigure.SpringBootApplication
import org.springframework.boot.runApplication

@SpringBootApplication
class AuctionApiApplication

fun main(args: Array<String>) {
    runApplication<AuctionApiApplication>(*args)
}