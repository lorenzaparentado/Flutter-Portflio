import 'package:web/web.dart' as web;

bool get isWindowsPlatform =>
    web.window.navigator.userAgent.toLowerCase().contains('windows');
