import com.blockchainbulls.oxfordhackathon.models.Token

/**
 * A token holds one type of token.
 */
data class TokenHold(val token: Token, val forAuction: Int, val walletId: String) {}
