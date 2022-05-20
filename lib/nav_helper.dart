// ignore: avoid_web_libraries_in_flutter
import 'dart:developer';
import 'dart:html' as html;

/// we are using html navigation since
/// flutter_webview navigation listener does not
/// catch navigation on single page web app
class HtmlNavHelper {
  const HtmlNavHelper();

  void navigate(String path) {
    final Uri launchUri = Uri(
      scheme: html.window.location.protocol.replaceAll(':', ''),
      host: html.window.document.baseUri,
      port: int.tryParse(html.window.location.port) ??
          (html.window.location.protocol == 'http:' ? 80 : 443),
      path: path,
    );
    html.window.open(launchUri.toString(), '_self');
  }

  String? getQueryParametersMsg() {
    return Uri.base.queryParameters['msg'];
  }

  void goToSentPage() {
    navigate('/sent');
  }

  void goToMainPage() {
    navigate('/');
  }
}
