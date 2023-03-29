package com.blockchainbulls.oxfordhackathon

import BaseDatabase

/** Manages a collection of users. */
object Users : BaseDatabase<User>() {
  fun insertUser(user: User): User {
    val toInsertUser = user.copy(id = makeNextUserId())
    rows.add(toInsertUser)
    return toInsertUser
  }

  fun canLogin(username: String, password: String): User {
    val out =
        rows.firstNotNullOf {
          { it.takeIf { (it.username == username) && (it.password == password) } }
        }()

    return out!!
  }

  fun getWithId(userId: Int): User {
    val out = rows.firstNotNullOf { { it.takeIf { (it.id == userId) } } }()
    return out!!
  }
}
