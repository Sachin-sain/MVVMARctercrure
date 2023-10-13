class AppException implements Exception{
  late final message;
  late final prefix;
  AppException({this.message, this.prefix});
  String toString(){
    return '$prefix$message';
  }
}

class InternetException extends AppException{
  InternetException([String? message]):super(message: 'No internet');
}

class RequestTimeOutException extends AppException{
  RequestTimeOutException([String? message]):super(message: 'Request Time Out');
}
class ServerException extends AppException{
  ServerException([String? message]):super(message: 'Internal Server Error');

}
class InvalidUrlException extends AppException{
  InvalidUrlException([String? message]):super(message: 'Invalid Url');

}
class FetchDataException extends AppException{
  FetchDataException([String? message]):super(message: 'Error while communicating');

}