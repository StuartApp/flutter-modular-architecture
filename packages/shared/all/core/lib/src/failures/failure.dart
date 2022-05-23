abstract class Failure {
  final Object cause;

  Failure(this.cause);

  @override
  String toString() {
    return 'Failure{cause: $cause}';
  }
}
