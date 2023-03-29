package com.blockchainbulls.oxfordhackathon

import org.springframework.web.bind.annotation.RequestMapping
import org.springframework.web.bind.annotation.RestController

@RestController
@RequestMapping
class UserController {

  private fun signUp(username: String, password: String): User {
    val user = Users.insertUser(User(0, username, password))
    return user
  }

  private fun loginUser(username: String, password: String): User {
    val user = Users.canLogin(username, password)
    return user
  }
}
