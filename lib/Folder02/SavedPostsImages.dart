// ignore_for_file: prefer_const_constructors

import 'package:circular_profile_avatar/circular_profile_avatar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class SavedPostsWalaa extends StatefulWidget {
  const SavedPostsWalaa({Key? key}) : super(key: key);

  @override
  _SavedPostsWalaaState createState() => _SavedPostsWalaaState();
}

class _SavedPostsWalaaState extends State<SavedPostsWalaa> {
  int selectedIndex = 0;
  final List<String> categories = [
    'All',
    'Texts',
    'Images',
    'Videos',
    'Locations'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: BackButton(color: Colors.black),
        elevation: 0.0,
        backgroundColor: Colors.white,
        centerTitle: true,
        title: Text(
          "Saved posts",
          style: TextStyle(color: Colors.black),
        ),
      ),
      body: Container(
        color: Colors.white,
        child: Column(
          children: [
            Container(
              //color: Colors.white,
              height: 90.0,
              width: double.infinity,
              child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: categories.length,
                  itemBuilder: (BuildContext context, int index) {
                    return GestureDetector(
                      onTap: () {
                        setState(() {
                          selectedIndex = index;
                        });
                      },
                      child: Padding(
                        padding: EdgeInsets.symmetric(
                            horizontal: 20.0, vertical: 30.0),
                        child: Text(
                          categories[index],
                          style: TextStyle(
                              color: index == selectedIndex
                                  ? Color(0xff9676FF)
                                  : Colors.grey,
                              fontSize: 20.0,
                              fontWeight: FontWeight.bold,
                              letterSpacing: 1.2),
                        ),
                      ),
                    );
                  }),
            ),
            ListTile(
              leading: CircularProfileAvatar(
                '',
                child: Image(
                  image: AssetImage('assets/Photos/omar.jpg'),
                ),
                borderColor: Colors.black,
                borderWidth: 0.0,
                elevation: 0.0,
                radius: 30,
              ),
              title: Row(
                children: [
                  Text('Omar Rafaat'),
                  SvgPicture.asset(
                    'assets/Icons/Verify.svg',
                    color: Color(0xff9676FF),
                    fit: BoxFit.fitWidth,
                  ),
                  SizedBox(
                    width: 8.0,
                  ),
                  Text('@omar'),
                  SizedBox(
                    width: 19.0,
                  ),
                  Icon(
                    Icons.bookmark,
                    color: Colors.black,
                  ),
                ],
              ),
              subtitle: Text('9 minutes ago'),
              trailing: SvgPicture.asset(
                'assets/Icons/More_vertical.svg',
                fit: BoxFit.fitWidth,
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
              child: Container(
                width: double.infinity,
                height: 350.0,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        fit: BoxFit.fitWidth,
                        image: AssetImage('assets/Photos/omar.jpg')),
                    color: Color(0xff9676FF),
                    borderRadius: BorderRadius.circular(30)),
              ),
            ),
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 38.0, vertical: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Icon_text(icon: Icons.favorite, txt: '2'),
                  Icon_text(icon: Icons.chat_outlined, txt: '2'),
                  Icon_text(icon: Icons.visibility_outlined, txt: '2'),
                  Icon_text(icon: Icons.send, txt: 'Send'),
                ],
              ),
            ),
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 20.0, vertical: 10),
              child: ListTile(
                leading: CircularProfileAvatar(
                  '',
                  child: Image(
                    image: AssetImage('assets/Photos/omar.jpg'),
                  ),
                  borderColor: Colors.black,
                  borderWidth: 0.0,
                  elevation: 0.0,
                  radius: 30,
                ),
                title: Text('Badee Saloom'),
              ),
            ),
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 20.0, vertical: 10),
              child: ListTile(
                leading: CircularProfileAvatar(
                  '',
                  child: Image(
                    image: AssetImage('assets/Photos/omar.jpg'),
                  ),
                  borderColor: Colors.black,
                  borderWidth: 0.0,
                  elevation: 0.0,
                  radius: 30,
                ),
                title: Text('Walaa Alkadamani'),
              ),
            ),
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 20.0, vertical: 10),
              child: ListTile(
                leading: CircularProfileAvatar(
                  '',
                  child: Icon(
                    Icons.person,
                    size: 50,
                  ),
                  borderColor: Colors.black,
                  borderWidth: 0.0,
                  elevation: 0.0,
                  radius: 30,
                ),
                title: Text('Alaa Baravi'),
              ),
            )
          ],
        ),
      ),
    );
  }
}

class Icon_text extends StatelessWidget {
  // const Icon_text({
  //   Key? key,
  // }) : super(key: key);
  final IconData icon;
  final String txt;

  Icon_text({required this.icon, required this.txt});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(icon),
        SizedBox(
          width: 5.0,
        ),
        Text('$txt')
      ],
    );
  }
}
