import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_inappwebview/flutter_inappwebview.dart';
import 'package:webview_flutter_plus/webview_flutter_plus.dart';

Future main() async {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(new MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => new _MyAppState();
}

class _MyAppState extends State<MyApp> {
  late InAppWebViewController webView;

  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('InAppWebView Example'),
        ),
        body: Container(
          child: WebViewPlus(
            javascriptMode: JavascriptMode.unrestricted,
            onWebViewCreated: (controller) {
              controller.loadString(r"""
             <html lang="en">
              <body>
              "<img src='https://onemillionlandlord.ng/wp-content/uploads/2020/10/Onike-Yaba.jpg'><p><span style=\"background-color: transparent; color: rgb(0, 0, 0);\">MAL is mLaw's file or hub for lawyers and senior persons in the legal industry to give pieces of advice to lawyers who are currently in active practice as well as lawyers who left active practice and may want to return back to practicing law.</span></p><p><br></p><p><span style=\"background-color: transparent; color: rgb(0, 0, 0);\">Each advice is generally in an easy-to-consume question format and can cover a broad range of topics, for example:</span></p><ul><li><span style=\"background-color: transparent;\">How do I rejig my CV after a long spell outside active litigation practice?</span></li><li><span style=\"background-color: transparent;\">How do I avoid intimidation in court?</span></li><li><span style=\"background-color: transparent;\">How do I form good relationships with court registrars?</span></li></ul><p><br></p><p><span style=\"background-color: transparent; color: rgb(0, 0, 0);\">With that in mind, you can contribute to MAL by simply scrolling to the bottom of this Note, then tapping the '</span><strong style=\"background-color: transparent; color: rgb(0, 0, 0);\">Footnotes</strong><span style=\"background-color: transparent; color: rgb(0, 0, 0);\">' text and following the instructions</span><sup>1</sup> <span style=\"background-color: transparent; color: rgb(0, 0, 0);\">.</span></p><p><br></p><p><span style=\"background-color: transparent; color: rgb(0, 0, 0);\">Thank you.</span></p>"
              </body>
             </html>
      """);
            },
          ),
        ),
      ),
    );
  }
}
