import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:animated_text_kit/animated_text_kit.dart';

void main() {
  runApp(const MyApp());
}

String twitter = 'https://twitter.com';
String github = 'https://github.com';

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Business Card'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
      backgroundColor: Colors.grey.shade900,
      appBar: AppBar(
        backgroundColor: Colors.white10,
        centerTitle: true,
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text(widget.title),
      ),
      body: SafeArea(
        child: Column(
          // mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const SizedBox(height: 33),
            const CircleAvatar(
              radius: 80.0,
              backgroundColor: Colors.transparent,
              backgroundImage: AssetImage('images/user.png'),
            ),
            const SizedBox(height: 10),
            AnimatedTextKit(
              animatedTexts: [
                TypewriterAnimatedText(
                  'Your name',
                  speed: const Duration(milliseconds: 200),
                  textStyle: TextStyle(
                      color: Colors.yellow.shade900,
                      fontFamily: 'BigShouldersStencilDisplay',
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                      letterSpacing: 2.5),
                ),
              ],
            ),
            const SizedBox(height: 5),
            AnimatedTextKit(
              animatedTexts: [
                ScaleAnimatedText(
                  'Data Scientist',
                  scalingFactor: 1.0,
                  textStyle: const TextStyle(
                      color: Colors.white70,
                      fontFamily: 'Source Code Pro',
                      fontSize: 15,
                      letterSpacing: 3.5),
                ),
                ScaleAnimatedText(
                  'Programmer',
                  textStyle: const TextStyle(
                      color: Colors.white70,
                      fontFamily: 'Source Code Pro',
                      fontSize: 15,
                      letterSpacing: 3.5),
                ),
                ScaleAnimatedText(
                  'Dreamer',
                  textStyle: const TextStyle(
                      color: Colors.white70,
                      fontFamily: 'Source Code Pro',
                      fontSize: 15,
                      letterSpacing: 3.5),
                ),
              ],
            ),
            Divider(
              thickness: 0.8,
              color: Colors.yellow.shade900,
              indent: 75,
              endIndent: 75,
            ),
            const SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                // Github
                GestureDetector(
                  onTap: () async {
                    const github = 'https://github.com';

                    if (await canLaunch(github)) {
                      await launch(github);
                    }
                  },
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: Container(
                      height: 40,
                      color: Colors.yellow.shade900,
                      padding: const EdgeInsets.all(5),
                      child: Image.asset(
                        'icons/github.png',
                        color: Colors.grey.shade900,
                      ),
                    ),
                  ),
                ),
                const SizedBox(width: 5),

                // Mail
                GestureDetector(
                  onTap: () async {
                    final toEmail = 'Your email';
                    final subject = 'Get in touch';
                    final message = ' Hello !\n Check it out!';

                    final email =
                        'mailto:$toEmail?subject=$subject&body=$message';

                    if (await canLaunch(email)) {
                      await launch(email);
                    }
                  },
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: Container(
                      height: 40,
                      color: Colors.yellow.shade900,
                      padding: const EdgeInsets.all(5),
                      child: Icon(
                        Icons.mail,
                        size: 30,
                        color: Colors.grey.shade900,
                      ),
                    ),
                  ),
                ),
                const SizedBox(width: 5),

                // Twitter
                GestureDetector(
                  onTap: () async {
                    const twitter = 'https://twitter.com';

                    if (await canLaunch(twitter)) {
                      await launch(twitter);
                    }
                  },
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: Container(
                      height: 40,
                      color: Colors.yellow.shade900,
                      padding: const EdgeInsets.all(5),
                      child: Image.asset(
                        'icons/twitter.png',
                        color: Colors.grey.shade900,
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Card(
              color: Colors.yellow.shade900,
              // padding: const EdgeInsets.all(10.0),
              margin:
                  const EdgeInsets.symmetric(vertical: 10.0, horizontal: 115.0),
              child: Padding(
                padding: EdgeInsets.all(6.0),
                child: Row(
                  // mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    // phone number
                    const SizedBox(width: 5),
                    Icon(
                      Icons.home_work_outlined,
                      color: Colors.grey.shade900,
                    ),
                    const SizedBox(width: 10),
                    Text(
                      "大蓝鲸 🐋",
                      style: TextStyle(
                          color: Colors.grey.shade900,
                          fontFamily: 'Source Code Pro',
                          fontWeight: FontWeight.bold,
                          fontSize: 15.0),
                    ),

                    // SizedBox(width: 5)
                    // email
                  ],
                ),
              ),
            ),
            Card(
              color: Colors.yellow.shade900,
              // padding: const EdgeInsets.all(5.0),
              margin: const EdgeInsets.symmetric(horizontal: 85.0),
              child: Padding(
                padding: const EdgeInsets.all(6.0),
                child: Row(
                  // mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const SizedBox(width: 5),
                    // phone number
                    Icon(
                      Icons.phone_sharp,
                      color: Colors.grey.shade900,
                    ),
                    const SizedBox(width: 15),
                    Text(
                      "+123 456 789 ",
                      style: TextStyle(
                          color: Colors.grey.shade900,
                          fontFamily: 'Source Code Pro',
                          fontWeight: FontWeight.bold,
                          fontSize: 15.0),
                    ),

                    // email
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
// _launchURL() async {
//   const url = 'https://flutter.io';
//   if (await canLaunch(url)) {
//     await launch(url);
//   } else {
//     throw 'Could not launch $url';
//   }
// }
