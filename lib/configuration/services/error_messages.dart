import 'package:flutter/cupertino.dart';

import '../../common_widgets/messages/error_message.dart';

class ErrorMessagesService {
  BuildContext? _context;

  initErrorHandler(BuildContext context) {
    _context = context;
  }

  displayMessage(String text) {
    final currentContext = _context;
    if (currentContext != null) {
      showErrorMessage(currentContext, text);
    }
  }
}
