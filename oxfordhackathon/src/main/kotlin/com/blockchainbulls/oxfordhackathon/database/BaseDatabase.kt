open class BaseDatabase<T> {
  val rows = arrayListOf<T>()
  var nextUserId = 0

  protected fun makeNextUserId(): Int {
    return nextUserId++
  }
}
