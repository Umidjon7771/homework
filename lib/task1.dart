import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        textTheme: GoogleFonts.ralewayTextTheme(),
      ),
      debugShowCheckedModeBanner: false,
      home: const HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const MyCustomAppBar(),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(right: 20, left: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    firstText(),
                    secondText(),
                  ],
                ),
              ),
              const SizedBox(
                height: 8,
              ),
              mainText(),
              const SizedBox(
                height: 25,
              ),
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: lastComponents(),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Row lastComponents() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Image.asset(
          "assets/icons/music.png",
          height: 24,
          width: 24,
        ),
        const SelectableText.rich(
          TextSpan(
            text: "Page 32 of 245",
            style: TextStyle(fontSize: 14),
          ),
        ),
        Image.asset(
          "assets/icons/documents.png",
          height: 24,
          width: 24,
        ),
      ],
    );
  }

  SelectableText mainText() {
    return const SelectableText.rich(
      TextSpan(
        text:
            """Lorem ipsum dolor sit amet, consectetur adipiscing elit. Adipiscing ultrices suspendisse augue rhoncus, pretium bibendum luctus massa. Enim pellentesque diam vel at morbi non faucibus erat.\n
Tincidunt viverra metus, ac quis. Tempor eget a in sed integer. Dignissim tincidunt sed a sapien ac. Aliquam in laoreet faucibus pretium suspendisse aliquam viverra. Quis egestas lorem suspendisse enim massa sed auctor pretium. Aliquam amet amet a id. Eu a, tortor quis nunc, semper. Et varius est, ornare dui commodo varius sed. Morbi sit scelerisque odio iaculis tristique volutpat gravida sed vestibulum.\n
Lorem ipsum dolor sit amet, consectetur adipiscing elit. Diam faucibus aliquet tincidunt nunc viverra. In sed nec eget convallis netus erat interdum ultrices maecenas. Maecenas leo et venenatis varius.\n
Lorem ipsum dolor sit amet, consectetur adipiscing elit. Diam faucibus aliquet tincidunt nunc viverra. In sed nec eget convallis netus erat interdum ultrices maecenas. Maecenas leo et venenatis varius Aliquam amet amet a id. Eu a, tortor quis nunc, semper. Et varius est, ornare dui commodo varius sed. . .""",
        style: TextStyle(fontSize: 16),
      ),
    );
  }

  SelectableText secondText() {
    return const SelectableText.rich(
      TextSpan(
        text: "Chapter 3 - Lorem ipsum dolor sit amet.",
        style: TextStyle(fontSize: 18),
      ),
    );
  }

  SelectableText firstText() {
    return SelectableText.rich(
      TextSpan(
        text: "Son of the Storm",
        style: TextStyle(
            color: Colors.blue.shade800,
            fontSize: 20.0,
            fontWeight: FontWeight.w500),
      ),
    );
  }
}

class MyCustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  const MyCustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      toolbarHeight: 30,
      leading: Image.asset(
        "assets/icons/arrow_back.png",
        width: 40,
      ),
      actions: [
        Image.asset(
          "assets/icons/share.png",
          width: 40,
        ),
        const SizedBox(
          width: 50,
        ),
        Image.asset(
          "assets/icons/options.png",
          width: 40,
        ),
      ],
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(40);
}
