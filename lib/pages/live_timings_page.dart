import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class LiveTimingsPage extends StatefulWidget {
  const LiveTimingsPage({super.key});

  @override
  State<LiveTimingsPage> createState() => _LiveTimingsPageState();
}

class _LiveTimingsPageState extends State<LiveTimingsPage> {
  late WebViewController controller;

  @override
  void initState() {
    super.initState();
    // Initialize WebViewController
    controller = WebViewController()
      ..setJavaScriptMode(JavaScriptMode.unrestricted)
      ..setBackgroundColor(const Color(0x00000000))
      ..setNavigationDelegate(
        NavigationDelegate(
          onProgress: (int progress) {
            // Update loading bar or show progress indicator
            print('Loading progress: $progress%');
          },
          onPageStarted: (String url) {
            print('Page started loading: $url');
          },
          onPageFinished: (String url) {
            print('Page finished loading: $url');
          },
          onHttpError: (HttpResponseError error) {
            print('HTTP error: ${error}');
          },
          onWebResourceError: (WebResourceError error) {
            print('Web resource error: ${error.description}');
          },
          onNavigationRequest: (NavigationRequest request) {
            if (request.url.startsWith('https://www.youtube.com/')) {
              return NavigationDecision.prevent;
            }
            return NavigationDecision.navigate;
          },
        ),
      )
      ..loadRequest(Uri.parse('https://f1-dash.com/dashboard'));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black, // Black transparent color
        title: const Text(
            'Live Timings',
          style: TextStyle(
            color: Colors.white
          ),
        ),
        automaticallyImplyLeading: false, // Remove back button
      ),
      body: WebViewWidget(controller: controller),
    );
  }
}
