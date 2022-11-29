import 'package:webview_flutter/webview_flutter.dart';
import 'package:webview_flutter_web/webview_flutter_web.dart';



// This may be total bullshit but fuck it
void registerWebViewWebImplementation() {
  WebView.platform = WebWebViewPlatform();
}