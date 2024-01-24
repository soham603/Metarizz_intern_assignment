import 'package:flutter/material.dart';
import 'package:metarizz/helper.dart';
import 'package:metarizz/widgets/information_card.dart';
import 'package:metarizz/widgets/menu_drawer.dart';
import 'package:provider/provider.dart';

class BookList extends StatefulWidget {
  const BookList({super.key});

  @override
  State<BookList> createState() => _BookListState();
}

class _BookListState extends State<BookList> {
  late bool isFavorited;
  bool isPreviousClicked = false;
  bool isNextClicked = true;
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    isFavorited = false;
  }

  @override
  Widget build(BuildContext context) {
    final mediaQuery = MediaQuery.of(context);
    return SafeArea(
      child: Scaffold(
        endDrawer: const MenuDrawer(),
        key: _scaffoldKey,
        appBar: AppBar(
          automaticallyImplyLeading: false,
          leadingWidth: 51,
          leading: IconButton(
            icon: const Icon(
              Icons.arrow_back_ios,
              color: Helperfnc.bottomNavigationBarGradientLightColor,
            ),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
          title: const Text(
            'e-Hadith Books List',
            style: TextStyle(color: Helperfnc.bottomNavigationBarGradientLightColor),
          ),
          actions: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Stack(
                alignment: Alignment.center,
                children: <Widget>[
                  Positioned(
                    child: Image.asset(
                      'assets/images/Colorchangelogo.png',
                      width: 40,
                      height: 40,
                    ),
                  ),
                  Positioned(
                    child: IconButton(
                      icon: const Icon(
                        Icons.settings,
                        color: Helperfnc.appBarColor,
                      ),
                      onPressed: () {
                        Provider.of<ThemeNotifier>(context, listen: false).toggleTheme();
                      },
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
        drawer: const MenuDrawer(),
        body: SingleChildScrollView(
          child: SizedBox(
            height: mediaQuery.size.height * 0.9,
            child: Column(
              children: [
                const SizedBox(height: 10),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Expanded(
                      child: Text(
                        'Sahih Al-Bukhari',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Helperfnc.searchBoxColor,
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),

                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 5),
                      child: Container(
                        color: Helperfnc.menuBG,
                        child: Align(
                          alignment: Alignment.centerRight,
                          child: IconButton(
                            icon: const Icon(
                              Icons.menu,
                              size: 30,
                              color: Helperfnc.restaurantCardGradientColor,
                            ),
                            onPressed: () {
                              _scaffoldKey.currentState!.openEndDrawer();
                            },
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 30),
                const Text(
                  '1. Revelation',
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: Helperfnc.drawerTextColor,
                  ),
                ),
                const SizedBox(height: 20),
                Padding(
                  padding: const EdgeInsets.only(left: 20),
                  child: Row(
                    children: [
                      const Text(
                        'Narrated',
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: Color.fromRGBO(38, 102, 99, 1),
                        ),
                      ),
                      const Text(
                        ' by Umar bin Al-Khattab',
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: Helperfnc.appBarColor,
                        ),
                      ),
                      Expanded(
                        child: Align(
                          alignment: Alignment.centerRight,
                          child: IconButton(
                            icon: Icon(
                              Icons.favorite,
                              color: isFavorited ? Colors.red : Colors.white,
                            ),
                            onPressed: () {
                              setState(() {
                                isFavorited = !isFavorited;
                              });
                            },
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 20),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Text(
                    """I heard Allah's Messenger صلى الله عليه وسلم ( saying, "The reward of deeds  depends upon the intentions and  every person will get the reward  according to what he has intended. So whoever emigrated for worldily  benefits or for a woman to marry, his emigration was for what he emigrated for.""",
                    textAlign: TextAlign.justify,
                    style: TextStyle(
                      fontSize: 20,
                      //color: Helperfnc.paragraphTextColor,
                      color: Provider.of<ThemeNotifier>(context).getParagraphTextColor(),
                    ),
                  ),
                ),
                const SizedBox(height: 20),
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        '- previous',
                        style: TextStyle(
                          color: Helperfnc.navigationButtonOff,
                        ),
                      ),
                      Text(
                        '- next',
                        style: TextStyle(
                          color: Helperfnc.navigationButtonOn,
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 20),
                Expanded(
                  child: Container(
                    height: 60,
                    decoration: BoxDecoration(
                      color: Provider.of<ThemeNotifier>(context).getInformationCardColor(),
                      borderRadius: const BorderRadius.only(
                        topLeft: Radius.circular(30),
                        topRight: Radius.circular(30),
                      ),
                    ),
                    child: const Padding(
                      padding: EdgeInsets.all(20.0),
                      child: SingleChildScrollView(
                        child: Column(
                          children: [
                            InformationCard(
                              title: 'Reference',
                              value: 'Sahih Al-Bukhari',
                            ),
                            InformationCard(
                              title: 'In-Book',
                              value: 'Book 1 , Hadith 1',
                            ),
                            InformationCard(
                              title: 'USC-MSA\nweb\n(English)\nreference',
                              value: 'Vol. 1, Book 1, Hadith 1',
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
        bottomNavigationBar: Container(
          height: 60,
          decoration: const BoxDecoration(
            color: Colors.blue,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(5),
              topRight: Radius.circular(5),
            ),
            gradient: LinearGradient(
              colors: [
                Helperfnc.bottomNavigationBarGradientDarkColoe,
                Helperfnc.bottomNavigationBarGradientLightColor,
              ],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
          ),
        ),
      ),
    );
  }
}
