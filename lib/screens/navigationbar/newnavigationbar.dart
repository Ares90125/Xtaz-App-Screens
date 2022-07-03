import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:persistent_bottom_nav_bar/persistent-tab-view.dart';
import 'package:photoediting/constants/colors.dart';
import 'package:photoediting/screens/screenone/screenone.dart';
import 'package:photoediting/screens/screentwo/screentwo.dart';

class NewNavigationBaar extends StatefulWidget {
  const NewNavigationBaar({Key? key}) : super(key: key);

  @override
  State<NewNavigationBaar> createState() => _NewNavigationBaarState();
}

class _NewNavigationBaarState extends State<NewNavigationBaar> {
  final _controller = PersistentTabController(initialIndex: 2);

  bool lightss = false;
  List<Widget> _buildScreens() {
    return [
      const ScreenOne(),
      const ScreenTwo(),
      const Scaffold(),
      const Scaffold(),
      const Scaffold(),
    ];
  }

  List<PersistentBottomNavBarItem> _navBarsItems() {
    return [
      PersistentBottomNavBarItem(
        icon: const Icon(
          Icons.settings_input_component_rounded,
          size: 20,
        ),
        title: ("Adjust"),
        activeColorPrimary: kblue,
        inactiveColorPrimary: kWhite,
      ),
      PersistentBottomNavBarItem(
        icon: const Icon(CupertinoIcons.settings),
        title: ("style"),
        activeColorPrimary: kblue,
        inactiveColorPrimary: kWhite,
      ),
      PersistentBottomNavBarItem(
        icon: const Icon(CupertinoIcons.double_music_note),
        title: ("Music"),
        activeColorPrimary: kblue,
        inactiveColorPrimary: kWhite,
      ),
      PersistentBottomNavBarItem(
        icon: const Icon(CupertinoIcons.mic),
        title: ("Mic"),
        activeColorPrimary: kblue,
        inactiveColorPrimary: kWhite,
      ),
      PersistentBottomNavBarItem(
        icon: const Icon(Icons.timer_outlined),
        title: ("Schedule"),
        activeColorPrimary: kblue,
        inactiveColorPrimary: kWhite,
      ),
    ];
  }

  @override
  Widget build(BuildContext context) {
    AppBar myAppbar() {
      return AppBar(
        toolbarHeight: Get.height * 0.075,
        backgroundColor: Colors.black54,
        systemOverlayStyle: const SystemUiOverlayStyle(
          statusBarColor: Colors.black,
        ),
        centerTitle: true,
        leading: Builder(
          builder: (BuildContext context) {
            return IconButton(
              icon: const Icon(
                Icons.format_list_bulleted_rounded,
                color: kblue,
              ),
              onPressed: () {
                Scaffold.of(context).openDrawer();
              },
              tooltip: MaterialLocalizations.of(context).openAppDrawerTooltip,
            );
          },
        ),
        // leading: Icon(
        //   Icons.format_list_bulleted_rounded,
        //   color: Color.fromARGB(255, 163, 184, 220),
        // ),

        title: const ImageIcon(
          AssetImage(
            'assets/menu.png',
          ),
          size: 20,
          color: kblue,
        ),
        actions: [
          Padding(
            padding: EdgeInsets.only(right: Get.width * 0.0),
            child: Builder(
              builder: (BuildContext context) {
                return IconButton(
                  icon: const Icon(
                    Icons.settings,
                    color: kblue,
                  ),
                  onPressed: () {
                    Scaffold.of(context).openEndDrawer();
                  },
                  tooltip:
                      MaterialLocalizations.of(context).openAppDrawerTooltip,
                );
              },
            ),
          ),
        ],
      );
    }

    return Scaffold(
      appBar: myAppbar(),
      endDrawer: SizedBox(
        width: Get.width * 0.7,
        child: Drawer(
          backgroundColor: kBlack,
          child: ListView(
            padding: EdgeInsets.zero,
            children: [
              SizedBox(
                height: Get.height * 0.05,
              ),
              const ListTile(
                tileColor: Colors.white10,
                title: Center(
                    child: Text(
                  'Settings',
                  style: TextStyle(color: kblue, fontSize: 17),
                )),
              ),
              ListTile(
                tileColor: Colors.black,
                leading: const Icon(
                  Icons.help_outline_rounded,
                  color: Colors.white38,
                ),
                title: const Text(
                  'Guide',
                  style: TextStyle(color: kblue, fontSize: 17),
                ),
                onTap: () {
                  Navigator.pop(context);
                },
              ),
              Divider(
                height: 1,
                thickness: 1,
                color: Colors.blue.shade200,
              ),
              ListTile(
                tileColor: Colors.black,
                leading: const Icon(
                  Icons.shopify_sharp,
                  color: Colors.white38,
                ),
                title: const Text(
                  'Shake',
                  style: TextStyle(color: kblue, fontSize: 17),
                ),
                onTap: () {},
                trailing: CupertinoSwitch(
                  value: lightss,
                  trackColor: Colors.black45,
                  activeColor: kblue,
                  onChanged: (bool value) {
                    setState(() {
                      lightss = !lightss;
                    });
                  },
                ),
              ),
              Divider(
                height: 1,
                thickness: 1,
                color: Colors.blue.shade200,
              ),
              ListTile(
                tileColor: Colors.black,
                leading: const Icon(
                  Icons.change_circle,
                  color: Colors.white38,
                ),
                title: const Text(
                  'Modify Pin Sequence',
                  style: TextStyle(color: kblue, fontSize: 17),
                ),
                onTap: () {
                  Navigator.pop(context);
                },
              ),
              Divider(
                height: 1,
                thickness: 1,
                color: Colors.blue.shade200,
              ),
              ListTile(
                tileColor: Colors.black,
                leading: const Icon(
                  Icons.arrow_circle_down_outlined,
                  color: Colors.white38,
                ),
                title: const Text(
                  'About',
                  style: TextStyle(color: kblue, fontSize: 17),
                ),
                onTap: () {
                  Navigator.pop(context);
                },
              ),
              Divider(
                height: 1,
                thickness: 1,
                color: Colors.blue.shade200,
              ),
            ],
          ),
        ),
      ),
      drawer: SizedBox(
        width: Get.width * 0.7,
        child: Drawer(
          backgroundColor: kBlack,
          child: ListView(
            padding: EdgeInsets.zero,
            children: [
              SizedBox(
                height: Get.height * 0.05,
              ),
              const ListTile(
                tileColor: Colors.white10,
                title: Center(
                    child: Text(
                  'Group Manage',
                  style: TextStyle(color: kblue, fontSize: 17),
                )),
                trailing: Icon(
                  Icons.add,
                  color: kblue,
                ),
              ),
              Container(
                height: Get.height * 0.07,
                width: double.infinity,
                color: kBlack,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    SizedBox(
                      width: Get.width * 0.005,
                    ),
                    const Icon(
                      Icons.keyboard_arrow_down_outlined,
                      color: kWhite,
                      size: 30,
                    ),
                    const Icon(
                      Icons.lightbulb_outlined,
                      color: kWhite,
                      size: 20,
                    ),
                    SizedBox(
                      width: Get.width * 0.02,
                    ),
                    const Text(
                      'My Devices',
                      style: TextStyle(
                        color: kblue,
                      ),
                    ),
                    const Spacer(),
                    const Icon(
                      Icons.lightbulb_outline,
                      color: kWhite,
                      size: 20,
                    ),
                    SizedBox(
                      width: Get.width * 0.005,
                    ),
                    const Icon(
                      Icons.refresh,
                      color: kWhite,
                      size: 30,
                    ),
                    SizedBox(
                      width: Get.width * 0.03,
                    ),
                  ],
                ),
              ),
              // ListTile(
              //   tileColor: Colors.black,
              //   leading: const Icon(
              //     Icons.help_outline_rounded,
              //     color: Colors.white38,
              //   ),
              //   title: Text(
              //     'Guide',
              //     style: TextStyle(color: kblue, fontSize: 17),
              //   ),
              //   onTap: () {
              //     Navigator.pop(context);
              //   },
              // ),
              Divider(
                height: 1,
                thickness: 1,
                color: Colors.blue.shade200,
              ),
            ],
          ),
        ),
      ),
      body: PersistentTabView(
        context,
        controller: _controller,
        screens: _buildScreens(),
        items: _navBarsItems(),
        confineInSafeArea: true,
        backgroundColor: kLightblack, // Default is Colors.white.
        handleAndroidBackButtonPress: true, // Default is true.
        resizeToAvoidBottomInset:
            true, // This needs to be true if you want to move up the screen when keyboard appears. Default is true.
        stateManagement: true, // Default is true.
        hideNavigationBarWhenKeyboardShows:
            true, // Recommended to set 'resizeToAvoidBottomInset' as true while using this argument. Default is true.
        decoration: const NavBarDecoration(
          colorBehindNavBar: Colors.white,
        ),
        popAllScreensOnTapOfSelectedTab: true,
        popActionScreens: PopActionScreensType.all,
        itemAnimationProperties: const ItemAnimationProperties(
          // Navigation Bar's items animation properties.
          duration: Duration(milliseconds: 200),
          curve: Curves.ease,
        ),
        screenTransitionAnimation: const ScreenTransitionAnimation(
          // Screen transition animation on change of selected tab.
          animateTabTransition: true,
          curve: Curves.ease,
          duration: Duration(milliseconds: 200),
        ),
        navBarStyle:
            NavBarStyle.style6, // Choose the nav bar style with this property.
      ),
    );
  }
}
