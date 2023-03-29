data class Token(val type: String, val count: Int) {
  companion object {
    fun TYPE_ERC17(): String = "SOME_SMART_CONTRACT_ID"
  }

  /**
   * Subtracts given amount tokens from token.
   *
   * It applies the given holds before making the subtraction.
   *
   * Throws if the remianing token count will be negative after the subtraction.
   */
  fun canSubtract(amount: Int, holds: ArrayList<TokenHold>): Boolean {
    var balance = count - amount
    for (hold in holds) {
      balance -= hold.token.count
    }

    return balance >= 0
  }
}
