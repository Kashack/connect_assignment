import 'package:connect_assignment/presentation/constants/colors.dart';
import 'package:connect_assignment/presentation/screens/bottom_nav/profile/profile_nav.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import 'bottom_nav/home/home_nav.dart';

class BottomNav extends StatefulWidget {
  int selectIndex;
  BottomNav({super.key, this.selectIndex = 0});

  @override
  State<BottomNav> createState() => _BottomNavState();
}

class _BottomNavState extends State<BottomNav> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: bottomNavigationList[widget.selectIndex]['Navigation'],
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.white,
        selectedLabelStyle:
        const TextStyle(fontWeight: FontWeight.w500, color: AppColors.primarySky),
        unselectedLabelStyle:
        const TextStyle(fontWeight: FontWeight.w500, color: Colors.black),
        type: BottomNavigationBarType.fixed,
        showSelectedLabels: true,
        showUnselectedLabels: true,
        currentIndex: widget.selectIndex,

        onTap: (value) => setState(() {
          widget.selectIndex = value;
        }),
        items: bottomNavigationList
            .map(
              (item) {
                if(item["Name"] == "Profile"){
                  return BottomNavigationBarItem(
                    icon: Container(
                      height: 30,width: 30,
                      // padding: const EdgeInsets.all(8),
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.transparent,
                        border: Border.all(color: AppColors.grey3,width: 3),
                      ),
                      child: Image.asset("assets/images/demo_img.png",height: 20,width: 20,),

                    ),
                    label: item["Name"]
                  );
                }
                return BottomNavigationBarItem(
                    icon: SvgPicture.asset(
                      item['icon'],
                      colorFilter:
                      const ColorFilter.mode(Colors.black, BlendMode.srcIn),
                    ),
                    activeIcon: SvgPicture.asset(item['icon'],
                        colorFilter:
                        const ColorFilter.mode(AppColors.primarySky, BlendMode.srcIn)),
                    label: item['Name']);
              }
        )
            .toList(),
      ),
    );
  }
}


const List<Map<String, dynamic>> bottomNavigationList = [
  {
    'Name': 'Home',
    'icon': 'assets/icons/home_icon.svg',
    'Navigation' : HomeNav(),
  },
  {
    'Name': 'Explore',
    'icon': 'assets/icons/explore_icon.svg',
  },
  {
    'Name': 'Notification',
    'icon': 'assets/icons/notification_icon.svg',
  },
  {
    'Name': 'Profile',
    'icon': 'assets/icons/notification_icon.svg',
    'Navigation' : ProfileNav(),
  },
];
