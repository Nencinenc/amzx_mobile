import 'package:dio/dio.dart';

import '../locator.dart';
import '../services/error_messages.dart';

class NetworkErrorsInterceptor extends Interceptor {
  final errorMessagesService = getIt<ErrorMessagesService>();

  @override
  void onError(DioError err, ErrorInterceptorHandler handler) {
    final errorMessage = err.response?.data['message'];
    errorMessagesService.displayMessage(errorMessage ?? 'Operation failed');
  }
}
