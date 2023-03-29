package com.blockchainbulls.oxfordhackathon

import com.blockchainbulls.oxfordhackathon.api_models.UsernamePassword
import org.springframework.web.bind.annotation.PostMapping
import org.springframework.web.bind.annotation.RequestBody
import org.springframework.web.bind.annotation.RequestMapping
import org.springframework.web.bind.annotation.RestController

@RestController
@RequestMapping
class UserController {

  @PostMapping("/signUp")
  fun signUpPost(@RequestBody credentials: UsernamePassword): User {
    return signUp(credentials.username, credentials.password)
  }

  @PostMapping("/login")
  fun loginPost(@RequestBody credentials: UsernamePassword): User {
    return loginUser(credentials.username, credentials.password)
  }

  private fun signUp(username: String, password: String): User {
    return Users.insertUser(User(0, username, password))
  }

  private fun loginUser(username: String, password: String): User {
    return Users.canLogin(username, password)
  }
}
