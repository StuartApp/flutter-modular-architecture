abstract class Failure {
  final Object cause;

  Failure(this.cause);

  @override
  String toString() {
    return '$runtimeType{cause: ${cause.runtimeType}: $cause}';
  }
}
