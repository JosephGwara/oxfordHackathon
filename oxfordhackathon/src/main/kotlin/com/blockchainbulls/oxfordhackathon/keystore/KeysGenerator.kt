package com.blockchainbulls.oxfordhackathon.keystore
import org.kethereum.crypto.createEthereumKeyPair


class KeysGenerator {

    fun getAddress(): String{
        val keyPair = createEthereumKeyPair()
        return keyPair.toString()
    }





}