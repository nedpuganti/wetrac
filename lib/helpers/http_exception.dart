class HttpException implements Exception {
  final String message;

  HttpException(this.message);

  @override
  String toString() {
    return message ?? 'Could not authenticate you. Please try again later.';
    // return super.toString(); // Instance of HttpException
  }
}
