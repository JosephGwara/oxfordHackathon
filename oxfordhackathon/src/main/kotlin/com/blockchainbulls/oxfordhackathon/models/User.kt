package com.blockchainbulls.oxfordhackathon

/**
 * Stores user information.
 * 
 * Note that the user password is not hashed.
 */
data class User(val id: Int, val username: String, val password: String) {}
