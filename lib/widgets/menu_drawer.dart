import 'package:flutter/material.dart';
import 'package:metarizz/helper.dart';
import 'package:metarizz/widgets/book_selection.dart';

class MenuDrawer extends StatelessWidget {
  const MenuDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.4,
      width: MediaQuery.of(context).size.width,
      child: Drawer(
        backgroundColor: Helperfnc.drawerBGColor,
        child: SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Container(
            padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    //menuicon
                    IconButton(
                      icon: const Icon(
                        Icons.menu,
                        color: Helperfnc.appBarColor,
                      ),
                      onPressed: () {},
                    ),
                    const Text(
                      'e-Hadith Navigation & Settings',
                      style: TextStyle(
                        color: Helperfnc.appBarColor,
                        fontSize: 20,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ],
                ),
                Row(
                  children: [
                    const Text(
                      "Hadith Book : Sahih Al-Bukhari",
                      style: TextStyle(
                        color: Helperfnc.appBarColor,
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    const SizedBox(width: 20),
                    
                    ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Helperfnc.drawerSelectedButtonBGColor,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(5),
                        ),
                        padding: const EdgeInsets.symmetric(
                          horizontal: 20,
                          vertical: 10,
                        ),
                      ),
                      child: const Text(
                        'Choose Alternate',
                        style: TextStyle(
                          color: Helperfnc.appBarColor,
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 10),
                Row(
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const BookSelection(
                          bookName: 'Volume 08',
                          isSelected: false,
                        ),
                        Row(
                          children: [
                            const BookSelection(
                              bookName: 'Volume 01',
                              isSelected: true,
                            ),

                            
                            IconButton(
                              icon: const Icon(
                                Icons.keyboard_arrow_down,
                                color: Helperfnc.drawerSelectedButtonBGColor,
                              ),
                              onPressed: () {},
                            ),
                          ],
                        ),
                        const BookSelection(
                          bookName: 'Volume 02',
                          isSelected: false,
                        ),
                        const BookSelection(
                          bookName: 'Volume 03',
                          isSelected: false,
                        ),
                      ],
                    ),
                    const SizedBox(width: 20),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const BookSelection(
                          bookName: 'Book 08',
                          isSelected: false,
                        ),
                        Row(
                          children: [
                            const BookSelection(
                              bookName: 'Book 01',
                              isSelected: true,
                            ),

                            
                            IconButton(
                              icon: const Icon(
                                Icons.keyboard_arrow_down,
                                color: Helperfnc.drawerSelectedButtonBGColor,
                              ),
                              onPressed: () {},
                            ),
                          ],
                        ),
                        const BookSelection(
                          bookName: 'Book 02',
                          isSelected: false,
                        ),
                        const BookSelection(
                          bookName: 'Book 03',
                          isSelected: false,
                        ),
                      ],
                    ),
                    const SizedBox(width: 20),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const BookSelection(
                          bookName: 'Hadith 08',
                          isSelected: false,
                        ),
                        Row(
                          children: [
                            const BookSelection(
                              bookName: 'Hadith 01',
                              isSelected: true,
                            ),

                            
                            IconButton(
                              icon: const Icon(
                                Icons.keyboard_arrow_down,
                                color: Helperfnc.drawerSelectedButtonBGColor,
                              ),
                              onPressed: () {},
                            ),
                          ],
                        ),
                        const BookSelection(
                          bookName: 'Hadith 02',
                          isSelected: false,
                        ),
                        const BookSelection(
                          bookName: 'Hadith 03',
                          isSelected: false,
                        ),
                      ],
                    )
                  ],
                ),
                const SizedBox(height: 10),
                Row(
                  children: [
                    Column(
                      children: [
                        const Text(
                          'Hadith Language',
                          style: TextStyle(
                            color: Helperfnc.appBarColor,
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            IconButton(
                              icon: const Icon(
                                Icons.arrow_back_ios,
                                color: Helperfnc.drawerSelectedButtonBGColor,
                              ),
                              onPressed: () {},
                            ),
                            ElevatedButton(
                              onPressed: () {},
                              style: ElevatedButton.styleFrom(
                                backgroundColor: Helperfnc.drawerButtonBGColor,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(5),
                                ),
                                padding: const EdgeInsets.symmetric(
                                  horizontal: 20,
                                  vertical: 10,
                                ),
                              ),
                              child: const Text(
                                'English',
                                style: TextStyle(
                                  color: Helperfnc.drawerSelectedButtonBGColor,
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                            IconButton(
                              icon: const Icon(
                                Icons.arrow_forward_ios,
                                color: Helperfnc.drawerSelectedButtonBGColor,
                              ),
                              onPressed: () {},
                            ),
                          ],
                        ),
                      ],
                    ),
                    const SizedBox(width: 120),
                    Container(
                      padding: const EdgeInsets.all(5),
                      decoration: BoxDecoration(
                        color: Helperfnc.drawerSelectedButtonBGColor,
                        borderRadius: BorderRadius.circular(5),
                      ),
                      child: const Icon(
                        Icons.favorite,
                        color: Helperfnc.drawerButtonBGColor,
                      ),
                    ),
                    const SizedBox(width: 15),
                    const Text(
                      textAlign: TextAlign.start,
                      'Go to\nFavorites',
                      style: TextStyle(
                        color: Helperfnc.drawerTextColor,
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
