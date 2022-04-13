import 'package:blitetaskintern/shared/components/blue_card_widget.dart';
import 'package:blitetaskintern/shared/components/custom_bottom_navigator_widget.dart';
import 'package:blitetaskintern/shared/components/custom_row_widget.dart';
import 'package:blitetaskintern/shared/components/custom_linear_progress_widget.dart';
import 'package:blitetaskintern/shared/components/teachers_card_widget.dart';
import 'package:blitetaskintern/shared/constants/appfonts.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              CustomRowWidget(
                title: 'Message',
                widget: GestureDetector(
                    onTap: () {}, child: Image.asset('assets/images/user.png')),
              ),
              SizedBox(height: 50),
              BlueCardWidget(
                title: 'Under construction',
                subtitle: 'Included in next update',
                image: 'assets/images/timeCircle.png',
              ),
              SizedBox(height: 40),
              CustomRowWidget(
                title: '48 more needed',
                widget: Text('2/50', style: Appfonts.w40016white),
              ),
              SizedBox(height: 20),
              CustomLinearProgressWidget(),
              SizedBox(height: 20),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30),
                child: Text(
                  'Invite more students from your school to unlock this feature (when it’s launched)',
                  style: Appfonts.w40016white,
                  textAlign: TextAlign.start,
                ),
              ),
              SizedBox(height: 72),
              TeachersCardWidget(
                title: 'Teachers aren\'t on Blite',
                subtitle:
                    'Enjoy class chats, group chats, and DMs with just your friends',
                image: 'assets/images/teacher.png',
              ),
              SizedBox(height: 72),
              TeachersCardWidget(
                  title: 'Class chats',
                  subtitle:
                      'We’ll auto-create discord like group chats for each of your classes',
                  image: 'assets/images/books.png'),
              SizedBox(height: 72),
              TeachersCardWidget(
                  title: 'Group chats',
                  subtitle:
                      'Create group chats with anyone in your school right on Blite',
                  image: 'assets/images/persons.png')
            ],
          ),
        ),
      ),
      bottomNavigationBar: CustomBottomNavigatorWidget(),
    );
  }
}
