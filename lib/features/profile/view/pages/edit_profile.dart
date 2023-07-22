import 'package:flutter/material.dart';
import 'package:nike_application/core.dart';
import 'package:nike_application/features/profile/view/pages/widgets/edit_widget.dart';

class EditProfilePage extends StatefulWidget {
  const EditProfilePage({super.key});

  @override
  State<EditProfilePage> createState() => _EditProfilePageState();
}

class _EditProfilePageState extends State<EditProfilePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Image.asset(AppImages.back),
        ),
        actions: [
          GestureDetector(
            onTap: () {
              Navigator.pop(context);
            },
            child: const Center(
              child: Padding(
                padding: EdgeInsets.only(right: 20),
                child: Text(
                  'Done',
                  style: TextStyle(fontSize: 15, color: AppColors.primary),
                ),
              ),
            ),
          )
        ],
        title: const Text('Profile'),
        centerTitle: true,
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: Padding(
        padding: const EdgeInsets.fromLTRB(20, 40, 20, 40),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(child: Image.asset(AppImages.personProfile)),
            const Center(
              child: Text(
                'Lorem Ipsum',
                style: TextStyle(
                  fontSize: 20,
                ),
              ),
            ),
            const Center(
              child: Text(
                'Change Profile',
                style: TextStyle(color: AppColors.primary, fontSize: 12),
              ),
            ),
            const SizedBox(
              height: 45,
            ),
            const SizedBox(
              height: 12,
            ),
            const EditWidget(title: 'First Name', value: 'Lorem'),
            const EditWidget(title: 'Last Name', value: 'Ipsum'),
            const EditWidget(title: 'Location', value: 'Sidoarjo, Indonesia'),
            const EditWidget(
              title: 'Mobile Number',
              value: '82139488953',
              imageLeading: AppImages.profilePhone,
            ),
          ],
        ),
      ),
    );
  }
}
