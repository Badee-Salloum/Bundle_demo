// ignore_for_file: prefer_const_constructors, curly_braces_in_flow_control_structures
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:circular_profile_avatar/circular_profile_avatar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';

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
  final List<String> testPhotos = [
    'https://www.voop.nl/wp-content/uploads/2016/06/IT-Company-Sutherland-Shire.jpg',
    'data:image/jpeg;base64,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',
    'data:image/jpeg;base64,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',
  ];
  List<String> widgetList = ['A', 'B', 'C'];

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;

    /*24 is for notification bar on Android*/
    final double itemHeight = (size.height - kToolbarHeight - 24) / 2;
    final double itemWidth = size.width / 2;
    if (selectedIndex == 0)
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
        body: SingleChildScrollView(
          child: Container(
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
                  padding:
                      EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
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
                  padding: const EdgeInsets.symmetric(
                      horizontal: 38.0, vertical: 10),
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
                  padding: const EdgeInsets.symmetric(
                      horizontal: 20.0, vertical: 10),
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
                  padding: const EdgeInsets.symmetric(
                      horizontal: 20.0, vertical: 10),
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
                  padding: const EdgeInsets.symmetric(
                      horizontal: 20.0, vertical: 10),
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
        ),
      );
    else if (selectedIndex == 1)
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
        body: SingleChildScrollView(
          child: Container(
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
                GridView.count(
                  crossAxisCount: 3,
                  childAspectRatio: (itemWidth / itemHeight),
                  controller: new ScrollController(keepScrollOffset: false),
                  shrinkWrap: true,
                  scrollDirection: Axis.vertical,
                  children: widgetList.map((String value) {
                    return new Container(
                      color: Colors.green,
                      margin: new EdgeInsets.all(1.0),
                      child: new Center(
                        child: new Text(
                          value,
                          style: new TextStyle(
                            fontSize: 50.0,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    );
                  }).toList(),
                ),
              ],
            ),
          ),
        ),
      );
    else if (selectedIndex == 2)
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

              Expanded(
                child: AnimationLimiter(
                  child: GridView.count(
                    childAspectRatio: 1.0,
                    padding: const EdgeInsets.all(8.0),
                    crossAxisCount: 3, //columnCount,
                    children: List.generate(
                      100,
                      (int index) {
                        return AnimationConfiguration.staggeredGrid(
                          columnCount: 3, //columnCount,
                          position: index,
                          duration: const Duration(milliseconds: 375),
                          child: const ScaleAnimation(
                            scale: 0.5,
                            child: FadeInAnimation(
                              child: EmptyCard(),
                            ),
                          ),
                        );
                      },
                    ),
                  ),
                ),
              )

              // AnimationLimiter(
              //   child: Column(
              //     children: AnimationConfiguration.toStaggeredList(
              //       duration: const Duration(milliseconds: 375),
              //       childAnimationBuilder: (widget) => SlideAnimation(
              //         horizontalOffset: 50.0,
              //         child: FadeInAnimation(
              //           child: widget,
              //         ),
              //       ),
              //       children: YourColumnChildren(),
              //     ),
              //   ),
              // )
            ],
          ),
        ),
      );
    else if (selectedIndex == 3)
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
              Expanded(
                child: new StaggeredGridView.countBuilder(
                  crossAxisCount: 3,
                  itemCount: 8,
                  itemBuilder: (BuildContext context, int index) =>
                      new Container(
                          color: Colors.green,
                          child: new Center(
                            child: new CircleAvatar(
                              backgroundColor: Colors.white,
                              child: new Text('$index'),
                            ),
                          )),
                  staggeredTileBuilder: (int index) =>
                      new StaggeredTile.count(1, 2),
                  mainAxisSpacing: 4.0,
                  crossAxisSpacing: 4.0,
                ),
              )
            ],
          ),
        ),
      );
    else
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
              Row(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Expanded(
                    child: Image.network(testPhotos[0]),
                  ),
                  Expanded(
                    child: Image.network(testPhotos[1]),
                  ),
                  Expanded(
                    child: Image.network(testPhotos[2]),
                  ),
                ],
              ),
              // Expanded(
              //   child: new StaggeredGridView.countBuilder(
              //     crossAxisCount: 3,
              //     itemCount: testPhotos.length,
              //     itemBuilder: (BuildContext context, int index) =>
              //         new Container(
              //             color: Colors.green,
              //             child: new Image.network(testPhotos[index])),
              //     staggeredTileBuilder: (int index) =>
              //         new StaggeredTile.count(1, 2),
              //     mainAxisSpacing: 4.0,
              //     crossAxisSpacing: 4.0,
              //   ),
              // )
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

class EmptyCard extends StatelessWidget {
  final double? width;
  final double? height;

  const EmptyCard({
    Key? key,
    this.width,
    this.height,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: 50,
      margin: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 8.0),
      decoration: const BoxDecoration(
        color: Colors.red,
        borderRadius: BorderRadius.all(Radius.circular(4.0)),
        boxShadow: <BoxShadow>[
          BoxShadow(
            color: Colors.black12,
            blurRadius: 4.0,
            offset: Offset(0.0, 4.0),
          ),
        ],
      ),
    );
  }
}
