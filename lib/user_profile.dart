import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class UserProfile extends StatelessWidget {
  const UserProfile({Key? key}) : super(key: key);

  final double backgroundImageHeight = 280;
  final double profileImageHeight = 75;

  @override
  Widget build(BuildContext context) {
    final double _top = backgroundImageHeight - profileImageHeight - 20 / 2;
    return Scaffold(
      body: ListView(
        padding: EdgeInsets.zero,
        children: [buildImages(_top), buildContent()],
      ),
    );
  }

  Stack buildImages(double _top) {
    return Stack(
      clipBehavior: Clip.none,
      alignment: Alignment.center,
      children: [
        Container(
          margin: EdgeInsets.only(bottom: profileImageHeight - 20 / 2),
          child: backgroundImage(),
        ),
        Positioned(
          child: profileImage(),
          top: _top,
        ),
      ],
    );
  }

  Column buildContent() {
    return Column(
      children: [
        const Text(
          "Recep Sevim",
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
        ),
        const SizedBox(
          height: 10,
        ),
        const Text(
          "Flutter Software Engineer",
          style: TextStyle(fontWeight: FontWeight.w400, fontSize: 25),
        ),
        const SizedBox(
          height: 10,
        ),
        SizedBox(
          width: 175,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              buildSocialIcons(FontAwesomeIcons.github),
              buildSocialIcons(FontAwesomeIcons.twitter),
              buildSocialIcons(FontAwesomeIcons.linkedin)
            ],
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        const Divider(),
        SizedBox(
          width: 275,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              profileDetail("10", "Project"),
              profileDetail("40", "Following"),
              profileDetail("30", "Followers"),
            ],
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        const Divider(),
        const SizedBox(
          height: 10,
        ),
        const Text(
          "About",
          textAlign: TextAlign.start,
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 25,
          ),
        ),
        const Padding(
          padding: EdgeInsets.all(15.0),
          child: Text(
            "I am Recep. I live in Turkey. I am a computer engineering student at Dumlupınar University. I love Flutter and i try to be better on Flutter. I love teamwork and look forward to new projects together",
            style: TextStyle(fontWeight: FontWeight.w400, fontSize: 20),
          ),
        ),
        const Padding(
          padding: EdgeInsets.all(15.0),
          child: Text(
            "My mission is to create beautiful apps for Android & Ios with Flutter. I will continue to improve myself in flutter. I love flutter because it's amazing",
            style: TextStyle(fontWeight: FontWeight.w400, fontSize: 20),
          ),
        ),
      ],
    );
  }

  Column profileDetail(String header, String content) {
    return Column(
      children: [
        Text(
          header,
          style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
        ),
        Text(
          content,
          style: const TextStyle(fontWeight: FontWeight.w500, fontSize: 20),
        )
      ],
    );
  }

  backgroundImage() => Container(
        color: Colors.black,
        height: backgroundImageHeight,
        width: double.infinity,
        child: Image.network(
            "https://c4.wallpaperflare.com/wallpaper/632/34/549/technology-monitor-alpha-coders-binary-wallpaper-preview.jpg"),
      );

  profileImage() => CircleAvatar(
        radius: profileImageHeight,
        child: Image.asset(
          "assets/profile_image.png",
        ),
      );

  buildSocialIcons(IconData icon) => CircleAvatar(
        radius: 25,
        child: Center(
          child: Icon(
            icon,
            size: 32,
          ),
        ),
      );
}
