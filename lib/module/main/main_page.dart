
import 'package:fish_redux/fish_redux.dart';
import 'package:flutter/material.dart';
import 'package:flutter_fly_plout/module/home/page.dart';
import 'package:flutter_fly_plout/module/mine/page.dart';

class MainPage extends StatefulWidget{

  MainPage({Key key}):super(key:key);

  @override
  _MainPageState createState()  => _MainPageState();

}

class _MainPageState extends State<MainPage>{

  int _selectedIndex = 0;
  final _widgetOption = [
    Text('Index 0 : 首页'),
    Text('Index 1 : 课程'),
    Text('Index 2 : 我的'),
  ];

  List<Page> pages = [
    HomePage(),
    //BookAudioVideoPage(),
    //GroupPage(),
    //shopPageWidget,
    MinePage()
  ];

  final itemNames = [
    _Item('首页', 'assets/images/ic_tab_home_active.png', 'assets/images/ic_tab_home_normal.png'),
    //_Item('书影音', 'assets/images/ic_tab_subject_active.png', 'assets/images/ic_tab_subject_normal.png'),
    // _Item('小组', 'assets/images/ic_tab_group_active.png', 'assets/images/ic_tab_group_normal.png'),
    //_Item('市集', 'assets/images/ic_tab_shiji_active.png', 'assets/images/ic_tab_shiji_normal.png'),
    _Item('我的', 'assets/images/ic_tab_profile_active.png', 'assets/images/ic_tab_profile_normal.png')
  ];

  List<BottomNavigationBarItem> itemList;

  @override
  void initState() {
    super.initState();
    //print('initState _ContainerPageState');

    if (itemList == null) {
      itemList = itemNames
          .map((item) => BottomNavigationBarItem(
          icon: Image.asset(
            item.normalIcon,
            width: 30.0,
            height: 30.0,
          ),
          title: Text(
            item.name,
            style: TextStyle(fontSize: 10.0),
          ),
          activeIcon: Image.asset(item.activeIcon, width: 30.0, height: 30.0)))
          .toList();
    }
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: Center(
        child:  pages[_selectedIndex].buildPage(null)
      ),

      bottomNavigationBar: BottomNavigationBar(
        items: itemList,
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
      ),
    );
  }

  void _onItemTapped(int index){
    setState(() {
      _selectedIndex = index;
    });
  }

}

class _Item {
  String name, activeIcon, normalIcon;
  _Item(this.name, this.activeIcon, this.normalIcon);
}