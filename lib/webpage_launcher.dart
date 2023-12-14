import 'package:flutter/material.dart';
import 'package:flutter_webview_pro/webview_flutter.dart';

class WebPageLaucnher extends StatefulWidget {
  final String url;
  const WebPageLaucnher({super.key, required this.url});

  @override
  State<WebPageLaucnher> createState() => _WebPageLaucnherState();
}

class _WebPageLaucnherState extends State<WebPageLaucnher> {

  @override
  void initState(){
    super.initState();
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(
            Icons.arrow_back,
            color: Colors.black,
          ),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        backgroundColor: Colors.white,
      ),
      body: Stack(
        children: [
          Container(
            width: MediaQuery.sizeOf(context).width,
            height: MediaQuery.sizeOf(context).height,
            child: Center(child: CircularProgressIndicator.adaptive()),
          ),
          WebView(
            initialUrl: widget.url,
            javascriptMode: JavascriptMode.unrestricted,
          ),
        ],
      ),
    );
  }
}
