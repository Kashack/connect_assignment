import 'package:connect_assignment/presentation/constants/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class ProfileNav extends StatelessWidget {
  const ProfileNav({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar:  AppBar(
        title: const Text('My profile',style: TextStyle(color: Colors.black),),
        elevation: 0,
        centerTitle: true,
        backgroundColor: Colors.transparent,
        automaticallyImplyLeading: false,
      ),
      body: Container(
        padding: const EdgeInsets.all(16),
        decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage("assets/images/profile_bg.png"),
              fit: BoxFit.fill),
        ),
        child: SafeArea(
          child: Column(
            children: [
              Container(
                height: 110,
                width: 110,
                padding: const EdgeInsets.all(8),
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.transparent,
                  border: Border.all(color: AppColors.primarySky,width: 3),
                ),
                child: Image.asset("assets/images/demo_img.png",),
              ),
              const Padding(
                padding: EdgeInsets.symmetric(vertical: 16.0),
                child: Text('Andrey Rybin',style: TextStyle(fontWeight: FontWeight.w600,fontSize: 26)),
              ),
              const Text('+799 942 912 412'),
              SizedBox(
                height: 20,
              ),
              Material(
                type: MaterialType.transparency,
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 4.0),
                      child: ListTile(
                        leading: SvgPicture.asset("assets/icons/notification_ring_icon.svg"),
                        tileColor: AppColors.tileColor,
                        title: const Center(child: Text('Notification',style: TextStyle(fontWeight: FontWeight.w500))),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15)
                        ),
                        titleAlignment: ListTileTitleAlignment.center,
                        trailing: const Icon(Icons.chevron_right),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 4.0),
                      child: ListTile(
                        leading: SvgPicture.asset("assets/icons/card_icon.svg"),
                        tileColor: AppColors.tileColor,
                        title: const Center(child: Text('Payments',style: TextStyle(fontWeight: FontWeight.w500))),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15)
                        ),
                        titleAlignment: ListTileTitleAlignment.center,
                        trailing: const Icon(Icons.chevron_right),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 4.0),
                      child: ListTile(
                        leading: SvgPicture.asset("assets/icons/shield_check_icon.svg"),
                        tileColor: AppColors.tileColor,
                        title: const Center(child: Text('Privacy Policy',style: TextStyle(fontWeight: FontWeight.w500))),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15)
                        ),
                        titleAlignment: ListTileTitleAlignment.center,
                        trailing: const Icon(Icons.chevron_right),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 4.0),
                      child: ListTile(
                        leading: SvgPicture.asset("assets/icons/trash_icon.svg"),
                        tileColor: AppColors.tileColor,
                        title: const Center(child: Text('Delete Account',style: TextStyle(fontWeight: FontWeight.w500))),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15)
                        ),
                        titleAlignment: ListTileTitleAlignment.center,
                        trailing: const Icon(Icons.chevron_right),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 4.0),
                      child: ListTile(
                        leading: SvgPicture.asset("assets/icons/lock2_icon.svg"),
                        tileColor: AppColors.tileColor,
                        title: const Center(child: Text('Reset Password',style: TextStyle(fontWeight: FontWeight.w500))),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15)
                        ),
                        titleAlignment: ListTileTitleAlignment.center,
                        trailing: const Icon(Icons.chevron_right),
                      ),
                    ),
                  ],
                ),
              ),
              const Padding(
                padding: EdgeInsets.symmetric(vertical: 8.0),
                child: Text('Terms & conditions'),
              ),
              const Padding(
                padding: EdgeInsets.symmetric(vertical: 8.0),
                child: Text('Sign out',style: TextStyle(color: Color(0xFFDC2F26),)),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
