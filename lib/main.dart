import 'dart:io';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_inappwebview/flutter_inappwebview.dart';

class MyChromeSafariBrowser extends ChromeSafariBrowser {
  @override
  void onOpened() {
    if (kDebugMode) {
      print("ChromeSafari browser opened");
    }
  }

  @override
  void onCompletedInitialLoad() {
    if (kDebugMode) {
      print("ChromeSafari browser initial load completed");
    }
  }

  @override
  void onClosed() {
    if (kDebugMode) {
      print("ChromeSafari browser closed");
    }
  }
}

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  if (Platform.isAndroid) {
    await AndroidInAppWebViewController.setWebContentsDebuggingEnabled(true);
  }
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Home(),
    );
  }
}

class Home extends StatefulWidget {
  final ChromeSafariBrowser browser = MyChromeSafariBrowser();

  Home({Key? key}) : super(key: key);
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: const Text("Online Eğitim Köprüsü"),
          backgroundColor: Colors.blueAccent),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            ElevatedButton(
              style: TextButton.styleFrom(
                minimumSize: const Size(180, 70),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(0)),
                backgroundColor: const Color(0xFF00c8ff),
                surfaceTintColor: const Color(0x0f000000),
              ),
              onPressed: () {
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (context) => Screen2()));
              },
              child: const Text('1.Sınıf'),
            ),
            ElevatedButton(
              style: TextButton.styleFrom(
                minimumSize: const Size(180, 70),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(0)),
                backgroundColor: const Color(0xFF00c8ff),
                surfaceTintColor: const Color(0x0f000000),
              ),
              onPressed: () {
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (context) => Screen3()));
              },
              child: const Text('2.Sınıf'),
            ),
            ElevatedButton(
              style: TextButton.styleFrom(
                minimumSize: const Size(180, 70),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(0)),
                backgroundColor: const Color(0xFF00c8ff),
                surfaceTintColor: const Color(0x0f000000),
              ),
              onPressed: () {
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (context) => Screen4()));
              },
              child: const Text('3.Sınıf'),
            ),
            ElevatedButton(
              style: TextButton.styleFrom(
                minimumSize: const Size(180, 70),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(0)),
                backgroundColor: const Color(0xFF00c8ff),
                surfaceTintColor: const Color(0x0f000000),
              ),
              onPressed: () {
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (context) => Screen5()));
              },
              child: const Text('4.Sınıf'),
            ),
            ElevatedButton(
              style: TextButton.styleFrom(
                minimumSize: const Size(180, 70),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(0)),
                backgroundColor: const Color(0xFF00c8ff),
                surfaceTintColor: const Color(0x0f000000),
              ),
              onPressed: () {
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (context) => Screen6()));
              },
              child: const Text('5.Sınıf'),
            ),
            ElevatedButton(
              style: TextButton.styleFrom(
                minimumSize: const Size(180, 70),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(0)),
                backgroundColor: const Color(0xFF00c8ff),
                surfaceTintColor: const Color(0x0f000000),
              ),
              onPressed: () {
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (context) => Screen7()));
              },
              child: const Text('6.Sınıf'),
            ),
            ElevatedButton(
              style: TextButton.styleFrom(
                minimumSize: const Size(180, 70),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(0)),
                backgroundColor: const Color(0xFF00c8ff),
                surfaceTintColor: const Color(0x0f000000),
              ),
              onPressed: () {
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (context) => Screen8()));
              },
              child: const Text('7.Sınıf'),
            ),
            ElevatedButton(
              style: TextButton.styleFrom(
                minimumSize: const Size(180, 70),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(0)),
                backgroundColor: const Color(0xFF00c8ff),
                surfaceTintColor: const Color(0x0f000000),
              ),
              onPressed: () {
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (context) => Screen9()));
              },
              child: const Text('8.Sınıf'),
            ),
            TextButton(
                onPressed: () {
                  exit(0);
                },
                child: const Text("ÇIKIŞ"))
          ],
        ),
      ),
    );
  }
}

class Screen2 extends StatefulWidget {
  final ChromeSafariBrowser browser = MyChromeSafariBrowser();

  Screen2({Key? key}) : super(key: key);
  @override
  _Screen2State createState() => _Screen2State();
}

class _Screen2State extends State<Screen2> {
  var options = InAppBrowserClassOptions(
      crossPlatform: InAppBrowserOptions(hideUrlBar: false),
      inAppWebViewGroupOptions: InAppWebViewGroupOptions(
          crossPlatform: InAppWebViewOptions(javaScriptEnabled: true)));
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: const Text('1.Sınıf'), backgroundColor: Colors.blueAccent),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                  minimumSize: const Size(180, 90),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(0))),
              onPressed: () async {
                await widget.browser.open(
                    url: Uri.parse(
                        "https://www.dersizleyin.com/kategori/ilkokul/1-sinif/1-sinif-okuma-yazma/"),
                    options: ChromeSafariBrowserClassOptions(
                        android: AndroidChromeCustomTabsOptions(
                            shareState: CustomTabsShareState.SHARE_STATE_OFF),
                        ios: IOSSafariOptions(barCollapsingEnabled: true)));
              },
              child: const Text("OKUMA YAZMA"),
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                  minimumSize: const Size(180, 90),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(0))),
              onPressed: () async {
                await widget.browser.open(
                    url: Uri.parse(
                        "https://www.dersizleyin.com/kategori/ilkokul/1-sinif/1-sinif-matematik/"),
                    options: ChromeSafariBrowserClassOptions(
                        android: AndroidChromeCustomTabsOptions(
                            shareState: CustomTabsShareState.SHARE_STATE_OFF),
                        ios: IOSSafariOptions(barCollapsingEnabled: true)));
              },
              child: const Text("  MATEMATİK  "),
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                  minimumSize: const Size(180, 90),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(0))),
              onPressed: () async {
                await widget.browser.open(
                    url: Uri.parse(
                        "https://www.dersizleyin.com/kategori/ilkokul/1-sinif/1-sinif-hayat-bilgisi/"),
                    options: ChromeSafariBrowserClassOptions(
                        android: AndroidChromeCustomTabsOptions(
                            shareState: CustomTabsShareState.SHARE_STATE_OFF),
                        ios: IOSSafariOptions(barCollapsingEnabled: true)));
              },
              child: const Text("HAYAT BİLGİSİ"),
            )
          ],
        ),
      ),
    );
  }
}

class Screen3 extends StatefulWidget {
  final ChromeSafariBrowser browser = MyChromeSafariBrowser();

  Screen3({Key? key}) : super(key: key);
  @override
  _Screen3State createState() => _Screen3State();
}

class _Screen3State extends State<Screen3> {
  var options = InAppBrowserClassOptions(
      crossPlatform: InAppBrowserOptions(hideUrlBar: false),
      inAppWebViewGroupOptions: InAppWebViewGroupOptions(
          crossPlatform: InAppWebViewOptions(javaScriptEnabled: true)));
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: const Text('2.Sınıf'), backgroundColor: Colors.blueAccent),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                  minimumSize: const Size(180, 90),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(0))),
              onPressed: () async {
                await widget.browser.open(
                    url: Uri.parse(
                        "https://www.dersizleyin.com/kategori/ilkokul/2-sinif/ingilizce-2/"),
                    options: ChromeSafariBrowserClassOptions(
                        android: AndroidChromeCustomTabsOptions(
                            shareState: CustomTabsShareState.SHARE_STATE_OFF),
                        ios: IOSSafariOptions(barCollapsingEnabled: true)));
              },
              child: const Text("İNGİLİZCE"),
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                  minimumSize: const Size(180, 90),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(0))),
              onPressed: () async {
                await widget.browser.open(
                    url: Uri.parse(
                        "https://www.dersizleyin.com/kategori/ilkokul/2-sinif/matematik-2/"),
                    options: ChromeSafariBrowserClassOptions(
                        android: AndroidChromeCustomTabsOptions(
                            shareState: CustomTabsShareState.SHARE_STATE_OFF),
                        ios: IOSSafariOptions(barCollapsingEnabled: true)));
              },
              child: const Text("  MATEMATİK  "),
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                  minimumSize: const Size(180, 90),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(0))),
              onPressed: () async {
                await widget.browser.open(
                    url: Uri.parse(
                        "https://www.dersizleyin.com/kategori/ilkokul/2-sinif/2-sinif-hayat-bilgisi/"),
                    options: ChromeSafariBrowserClassOptions(
                        android: AndroidChromeCustomTabsOptions(
                            shareState: CustomTabsShareState.SHARE_STATE_OFF),
                        ios: IOSSafariOptions(barCollapsingEnabled: true)));
              },
              child: const Text("HAYAT BİLGİSİ"),
            )
          ],
        ),
      ),
    );
  }
}

class Screen4 extends StatefulWidget {
  final ChromeSafariBrowser browser = MyChromeSafariBrowser();

  Screen4({Key? key}) : super(key: key);
  @override
  _Screen4State createState() => _Screen4State();
}

class _Screen4State extends State<Screen4> {
  var options = InAppBrowserClassOptions(
      crossPlatform: InAppBrowserOptions(hideUrlBar: false),
      inAppWebViewGroupOptions: InAppWebViewGroupOptions(
          crossPlatform: InAppWebViewOptions(javaScriptEnabled: true)));
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: const Text('3.Sınıf'), backgroundColor: Colors.blueAccent),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                  minimumSize: const Size(180, 90),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(0))),
              onPressed: () async {
                await widget.browser.open(
                    url: Uri.parse(
                        "https://www.dersizleyin.com/kategori/ilkokul/3-sinif/ingilizce-3/"),
                    options: ChromeSafariBrowserClassOptions(
                        android: AndroidChromeCustomTabsOptions(
                            shareState: CustomTabsShareState.SHARE_STATE_OFF),
                        ios: IOSSafariOptions(barCollapsingEnabled: true)));
              },
              child: const Text("İNGİLİZCE"),
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                  minimumSize: const Size(180, 90),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(0))),
              onPressed: () async {
                await widget.browser.open(
                    url: Uri.parse(
                        "https://www.dersizleyin.com/kategori/ilkokul/3-sinif/matematik-3/"),
                    options: ChromeSafariBrowserClassOptions(
                        android: AndroidChromeCustomTabsOptions(
                            shareState: CustomTabsShareState.SHARE_STATE_OFF),
                        ios: IOSSafariOptions(barCollapsingEnabled: true)));
              },
              child: const Text("  MATEMATİK  "),
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                  minimumSize: const Size(180, 90),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(0))),
              onPressed: () async {
                await widget.browser.open(
                    url: Uri.parse(
                        "https://www.dersizleyin.com/kategori/ilkokul/3-sinif/hayat-3/"),
                    options: ChromeSafariBrowserClassOptions(
                        android: AndroidChromeCustomTabsOptions(
                            shareState: CustomTabsShareState.SHARE_STATE_OFF),
                        ios: IOSSafariOptions(barCollapsingEnabled: true)));
              },
              child: const Text("HAYAT BİLGİSİ"),
            ),
            ElevatedButton(
                style: ElevatedButton.styleFrom(
                    minimumSize: const Size(180, 90),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(0))),
                onPressed: () async {
                  await widget.browser.open(
                      url: Uri.parse(
                          "https://www.dersizleyin.com/kategori/ilkokul/3-sinif/fen-bilimleri-3/"),
                      options: ChromeSafariBrowserClassOptions(
                          android: AndroidChromeCustomTabsOptions(
                              shareState: CustomTabsShareState.SHARE_STATE_OFF),
                          ios: IOSSafariOptions(barCollapsingEnabled: true)));
                },
                child: const Text("FEN BİLİMLERİ")),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                  minimumSize: const Size(180, 90),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(0))),
              onPressed: () async {
                await widget.browser.open(
                    url: Uri.parse(
                        "https://www.dersizleyin.com/kategori/ilkokul/3-sinif/turkce-3/"),
                    options: ChromeSafariBrowserClassOptions(
                        android: AndroidChromeCustomTabsOptions(
                            shareState: CustomTabsShareState.SHARE_STATE_OFF),
                        ios: IOSSafariOptions(barCollapsingEnabled: true)));
              },
              child: const Text("TÜRKÇE"),
            )
          ],
        ),
      ),
    );
  }
}

class Screen5 extends StatefulWidget {
  final ChromeSafariBrowser browser = MyChromeSafariBrowser();

  Screen5({Key? key}) : super(key: key);
  @override
  _Screen5State createState() => _Screen5State();
}

class _Screen5State extends State<Screen5> {
  var options = InAppBrowserClassOptions(
      crossPlatform: InAppBrowserOptions(hideUrlBar: false),
      inAppWebViewGroupOptions: InAppWebViewGroupOptions(
          crossPlatform: InAppWebViewOptions(javaScriptEnabled: true)));
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: const Text('4.Sınıf'), backgroundColor: Colors.blueAccent),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                  minimumSize: const Size(180, 90),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(0))),
              onPressed: () async {
                await widget.browser.open(
                    url: Uri.parse(
                        "https://www.dersizleyin.com/kategori/ilkokul/4-sinif/ingilizce-4/"),
                    options: ChromeSafariBrowserClassOptions(
                        android: AndroidChromeCustomTabsOptions(
                            shareState: CustomTabsShareState.SHARE_STATE_OFF),
                        ios: IOSSafariOptions(barCollapsingEnabled: true)));
              },
              child: const Text("İNGİLİZCE"),
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                  minimumSize: const Size(180, 90),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(0))),
              onPressed: () async {
                await widget.browser.open(
                    url: Uri.parse(
                        "https://www.dersizleyin.com/kategori/ilkokul/4-sinif/matematik-4/"),
                    options: ChromeSafariBrowserClassOptions(
                        android: AndroidChromeCustomTabsOptions(
                            shareState: CustomTabsShareState.SHARE_STATE_OFF),
                        ios: IOSSafariOptions(barCollapsingEnabled: true)));
              },
              child: const Text("  MATEMATİK  "),
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                  minimumSize: const Size(180, 90),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(0))),
              onPressed: () async {
                await widget.browser.open(
                    url: Uri.parse(
                        "https://www.dersizleyin.com/kategori/ilkokul/4-sinif/sosyal-bilgiler-4/"),
                    options: ChromeSafariBrowserClassOptions(
                        android: AndroidChromeCustomTabsOptions(
                            shareState: CustomTabsShareState.SHARE_STATE_OFF),
                        ios: IOSSafariOptions(barCollapsingEnabled: true)));
              },
              child: const Text("SOSYAL BİLGİLER"),
            ),
            ElevatedButton(
                style: ElevatedButton.styleFrom(
                    minimumSize: const Size(180, 90),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(0))),
                onPressed: () async {
                  await widget.browser.open(
                      url: Uri.parse(
                          "https://www.dersizleyin.com/kategori/ilkokul/4-sinif/fen-bilimleri-4/"),
                      options: ChromeSafariBrowserClassOptions(
                          android: AndroidChromeCustomTabsOptions(
                              shareState: CustomTabsShareState.SHARE_STATE_OFF),
                          ios: IOSSafariOptions(barCollapsingEnabled: true)));
                },
                child: const Text("FEN BİLİMLERİ")),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                  minimumSize: const Size(180, 90),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(0))),
              onPressed: () async {
                await widget.browser.open(
                    url: Uri.parse(
                        "https://www.dersizleyin.com/kategori/ilkokul/4-sinif/turkce-4/"),
                    options: ChromeSafariBrowserClassOptions(
                        android: AndroidChromeCustomTabsOptions(
                            shareState: CustomTabsShareState.SHARE_STATE_OFF),
                        ios: IOSSafariOptions(barCollapsingEnabled: true)));
              },
              child: const Text("TÜRKÇE"),
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                  minimumSize: const Size(180, 90),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(0))),
              onPressed: () async {
                await widget.browser.open(
                    url: Uri.parse(
                        "https://www.dersizleyin.com/kategori/ilkokul/4-sinif/trafik-4/"),
                    options: ChromeSafariBrowserClassOptions(
                        android: AndroidChromeCustomTabsOptions(
                            shareState: CustomTabsShareState.SHARE_STATE_OFF),
                        ios: IOSSafariOptions(barCollapsingEnabled: true)));
              },
              child: const Text("TRAFİK"),
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                  minimumSize: const Size(180, 90),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(0))),
              onPressed: () async {
                await widget.browser.open(
                    url: Uri.parse(
                        "https://www.dersizleyin.com/kategori/ilkokul/4-sinif/insan-haklari-4/"),
                    options: ChromeSafariBrowserClassOptions(
                        android: AndroidChromeCustomTabsOptions(
                            shareState: CustomTabsShareState.SHARE_STATE_OFF),
                        ios: IOSSafariOptions(barCollapsingEnabled: true)));
              },
              child: const Text("İNSAN HAKLARI"),
            )
          ],
        ),
      ),
    );
  }
}

class Screen6 extends StatefulWidget {
  final ChromeSafariBrowser browser = MyChromeSafariBrowser();

  Screen6({Key? key}) : super(key: key);
  @override
  _Screen6State createState() => _Screen6State();
}

class _Screen6State extends State<Screen6> {
  var options = InAppBrowserClassOptions(
      crossPlatform: InAppBrowserOptions(hideUrlBar: false),
      inAppWebViewGroupOptions: InAppWebViewGroupOptions(
          crossPlatform: InAppWebViewOptions(javaScriptEnabled: true)));
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            title: const Text('5.Sınıf'), backgroundColor: Colors.blueAccent),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                    minimumSize: const Size(180, 90),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(0))),
                onPressed: () async {
                  await widget.browser.open(
                      url: Uri.parse(
                          "https://www.dersizleyin.com/kategori/ortaokul/5-sinif/ingilizce-5/"),
                      options: ChromeSafariBrowserClassOptions(
                          android: AndroidChromeCustomTabsOptions(
                              shareState: CustomTabsShareState.SHARE_STATE_OFF),
                          ios: IOSSafariOptions(barCollapsingEnabled: true)));
                },
                child: const Text("İNGİLİZCE"),
              ),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                    minimumSize: const Size(180, 90),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(0))),
                onPressed: () async {
                  await widget.browser.open(
                      url: Uri.parse(
                          "https://www.dersizleyin.com/kategori/ortaokul/5-sinif/matematik-5/"),
                      options: ChromeSafariBrowserClassOptions(
                          android: AndroidChromeCustomTabsOptions(
                              shareState: CustomTabsShareState.SHARE_STATE_OFF),
                          ios: IOSSafariOptions(barCollapsingEnabled: true)));
                },
                child: const Text("  MATEMATİK  "),
              ),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                    minimumSize: const Size(180, 90),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(0))),
                onPressed: () async {
                  await widget.browser.open(
                      url: Uri.parse(
                          "https://www.dersizleyin.com/kategori/ortaokul/5-sinif/turkce-5/"),
                      options: ChromeSafariBrowserClassOptions(
                          android: AndroidChromeCustomTabsOptions(
                              shareState: CustomTabsShareState.SHARE_STATE_OFF),
                          ios: IOSSafariOptions(barCollapsingEnabled: true)));
                },
                child: const Text("TÜRKÇE"),
              ),
              ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      minimumSize: const Size(180, 90),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(0))),
                  onPressed: () async {
                    await widget.browser.open(
                        url: Uri.parse(
                            "https://www.dersizleyin.com/kategori/ortaokul/5-sinif/fen-bilimleri-5/"),
                        options: ChromeSafariBrowserClassOptions(
                            android: AndroidChromeCustomTabsOptions(
                                shareState:
                                CustomTabsShareState.SHARE_STATE_OFF),
                            ios: IOSSafariOptions(barCollapsingEnabled: true)));
                  },
                  child: const Text("FEN BİLİMLERİ"))
            ],
          ),
        ));
  }
}

class Screen7 extends StatefulWidget {
  final ChromeSafariBrowser browser = MyChromeSafariBrowser();

  Screen7({Key? key}) : super(key: key);
  @override
  _Screen7State createState() => _Screen7State();
}

class _Screen7State extends State<Screen7> {
  var options = InAppBrowserClassOptions(
      crossPlatform: InAppBrowserOptions(hideUrlBar: false),
      inAppWebViewGroupOptions: InAppWebViewGroupOptions(
          crossPlatform: InAppWebViewOptions(javaScriptEnabled: true)));
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            title: const Text('6.Sınıf'), backgroundColor: Colors.blueAccent),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                    minimumSize: const Size(180, 90),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(0))),
                onPressed: () async {
                  await widget.browser.open(
                      url: Uri.parse(
                          "https://www.dersizleyin.com/kategori/ortaokul/6-sinif/ingilizce-6/"),
                      options: ChromeSafariBrowserClassOptions(
                          android: AndroidChromeCustomTabsOptions(
                              shareState: CustomTabsShareState.SHARE_STATE_OFF),
                          ios: IOSSafariOptions(barCollapsingEnabled: true)));
                },
                child: const Text("İNGİLİZCE"),
              ),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                    minimumSize: const Size(180, 90),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(0))),
                onPressed: () async {
                  await widget.browser.open(
                      url: Uri.parse(
                          "https://www.dersizleyin.com/kategori/ortaokul/6-sinif/matematik-6/"),
                      options: ChromeSafariBrowserClassOptions(
                          android: AndroidChromeCustomTabsOptions(
                              shareState: CustomTabsShareState.SHARE_STATE_OFF),
                          ios: IOSSafariOptions(barCollapsingEnabled: true)));
                },
                child: const Text("  MATEMATİK  "),
              ),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                    minimumSize: const Size(180, 90),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(0))),
                onPressed: () async {
                  await widget.browser.open(
                      url: Uri.parse(
                          "https://www.dersizleyin.com/kategori/ortaokul/6-sinif/turkce-6/"),
                      options: ChromeSafariBrowserClassOptions(
                          android: AndroidChromeCustomTabsOptions(
                              shareState: CustomTabsShareState.SHARE_STATE_OFF),
                          ios: IOSSafariOptions(barCollapsingEnabled: true)));
                },
                child: const Text("TÜRKÇE"),
              ),
              ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      minimumSize: const Size(180, 90),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(0))),
                  onPressed: () async {
                    await widget.browser.open(
                        url: Uri.parse(
                            "https://www.dersizleyin.com/kategori/ortaokul/6-sinif/fen-bilimleri-6/"),
                        options: ChromeSafariBrowserClassOptions(
                            android: AndroidChromeCustomTabsOptions(
                                shareState:
                                CustomTabsShareState.SHARE_STATE_OFF),
                            ios: IOSSafariOptions(barCollapsingEnabled: true)));
                  },
                  child: const Text("FEN BİLİMLERİ"))
            ],
          ),
        ));
  }
}

class Screen8 extends StatefulWidget {
  final ChromeSafariBrowser browser = MyChromeSafariBrowser();

  Screen8({Key? key}) : super(key: key);
  @override
  _Screen8State createState() => _Screen8State();
}

class _Screen8State extends State<Screen8> {
  var options = InAppBrowserClassOptions(
      crossPlatform: InAppBrowserOptions(hideUrlBar: false),
      inAppWebViewGroupOptions: InAppWebViewGroupOptions(
          crossPlatform: InAppWebViewOptions(javaScriptEnabled: true)));
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            title: const Text('7.Sınıf'), backgroundColor: Colors.blueAccent),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                    minimumSize: const Size(180, 90),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(0))),
                onPressed: () async {
                  await widget.browser.open(
                      url: Uri.parse(
                          "https://www.dersizleyin.com/kategori/ortaokul/7-sinif/ingilizce-7/"),
                      options: ChromeSafariBrowserClassOptions(
                          android: AndroidChromeCustomTabsOptions(
                              shareState: CustomTabsShareState.SHARE_STATE_OFF),
                          ios: IOSSafariOptions(barCollapsingEnabled: true)));
                },
                child: const Text("İNGİLİZCE"),
              ),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                    minimumSize: const Size(180, 90),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(0))),
                onPressed: () async {
                  await widget.browser.open(
                      url: Uri.parse(
                          "https://www.dersizleyin.com/kategori/ortaokul/7-sinif/matematik-7/"),
                      options: ChromeSafariBrowserClassOptions(
                          android: AndroidChromeCustomTabsOptions(
                              shareState: CustomTabsShareState.SHARE_STATE_OFF),
                          ios: IOSSafariOptions(barCollapsingEnabled: true)));
                },
                child: const Text("  MATEMATİK  "),
              ),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                    minimumSize: const Size(180, 90),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(0))),
                onPressed: () async {
                  await widget.browser.open(
                      url: Uri.parse(
                          "https://www.dersizleyin.com/kategori/ortaokul/7-sinif/turkce-7/"),
                      options: ChromeSafariBrowserClassOptions(
                          android: AndroidChromeCustomTabsOptions(
                              shareState: CustomTabsShareState.SHARE_STATE_OFF),
                          ios: IOSSafariOptions(barCollapsingEnabled: true)));
                },
                child: const Text("TÜRKÇE"),
              ),
              ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      minimumSize: const Size(180, 90),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(0))),
                  onPressed: () async {
                    await widget.browser.open(
                        url: Uri.parse(
                            "https://www.dersizleyin.com/kategori/ortaokul/7-sinif/fen-bilimleri-7/"),
                        options: ChromeSafariBrowserClassOptions(
                            android: AndroidChromeCustomTabsOptions(
                                shareState:
                                CustomTabsShareState.SHARE_STATE_OFF),
                            ios: IOSSafariOptions(barCollapsingEnabled: true)));
                  },
                  child: const Text("FEN BİLİMLERİ"))
            ],
          ),
        ));
  }
}

class Screen9 extends StatefulWidget {
  final ChromeSafariBrowser browser = MyChromeSafariBrowser();

  Screen9({Key? key}) : super(key: key);
  @override
  _Screen9State createState() => _Screen9State();
}

class _Screen9State extends State<Screen9> {
  var options = InAppBrowserClassOptions(
      crossPlatform: InAppBrowserOptions(hideUrlBar: false),
      inAppWebViewGroupOptions: InAppWebViewGroupOptions(
          crossPlatform: InAppWebViewOptions(javaScriptEnabled: true)));
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: const Text('8.Sınıf'), backgroundColor: Colors.blueAccent),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                  minimumSize: const Size(180, 90),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(0))),
              onPressed: () async {
                await widget.browser.open(
                    url: Uri.parse(
                        "https://www.dersizleyin.com/kategori/ortaokul/8-sinif/ingilizce-8/"),
                    options: ChromeSafariBrowserClassOptions(
                        android: AndroidChromeCustomTabsOptions(
                            shareState: CustomTabsShareState.SHARE_STATE_OFF),
                        ios: IOSSafariOptions(barCollapsingEnabled: true)));
              },
              child: const Text("İNGİLİZCE"),
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                  minimumSize: const Size(180, 90),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(0))),
              onPressed: () async {
                await widget.browser.open(
                    url: Uri.parse(
                        "https://www.dersizleyin.com/kategori/ortaokul/8-sinif/matematik-8/"),
                    options: ChromeSafariBrowserClassOptions(
                        android: AndroidChromeCustomTabsOptions(
                            shareState: CustomTabsShareState.SHARE_STATE_OFF),
                        ios: IOSSafariOptions(barCollapsingEnabled: true)));
              },
              child: const Text("  MATEMATİK  "),
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                  minimumSize: const Size(180, 90),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(0))),
              onPressed: () async {
                await widget.browser.open(
                    url: Uri.parse(
                        "https://www.dersizleyin.com/kategori/ortaokul/8-sinif/turkce-8/"),
                    options: ChromeSafariBrowserClassOptions(
                        android: AndroidChromeCustomTabsOptions(
                            shareState: CustomTabsShareState.SHARE_STATE_OFF),
                        ios: IOSSafariOptions(barCollapsingEnabled: true)));
              },
              child: const Text("TÜRKÇE"),
            ),
            ElevatedButton(
                style: ElevatedButton.styleFrom(
                    minimumSize: const Size(180, 90),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(0))),
                onPressed: () async {
                  await widget.browser.open(
                      url: Uri.parse(
                          "https://www.dersizleyin.com/kategori/ortaokul/8-sinif/fen-bilimleri-8/"),
                      options: ChromeSafariBrowserClassOptions(
                          android: AndroidChromeCustomTabsOptions(
                              shareState: CustomTabsShareState.SHARE_STATE_OFF),
                          ios: IOSSafariOptions(barCollapsingEnabled: true)));
                },
                child: const Text("FEN BİLİMLERİ"))
          ],
        ),
      ),
    );
  }
}
