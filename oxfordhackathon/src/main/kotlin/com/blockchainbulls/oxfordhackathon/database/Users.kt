package com.blockchainbulls.oxfordhackathon;

/** Manages a collection of users. */
class Users {
  val users = arrayListOf<User>()
  var nextUserId = 0

  fun insertUser(user: User): User {
    val toInsertUser = User(makeNextUserId(), user.username, user.password)
    users.add(toInsertUser)
    return toInsertUser
  }

  fun canLogin(user: User): User {
    val out =
        users.firstNotNullOf({
          { it.takeIf { it.username == user.username && it.password == user.password } }
        })()

    return out!!
  }

  fun makeNextUserId(): Int {
    return nextUserId++
  }
}
