import 'package:flutter/material.dart';

const sendButtonTextStyle = TextStyle(
  color: Colors.lightBlueAccent,
  fontWeight: FontWeight.bold,
  fontSize: 18.0,
);

const messageTextFieldDecoration = InputDecoration(
  contentPadding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
  hintText: 'Type your message here...',
  border: InputBorder.none,
);

const messageContainerDecoration = BoxDecoration(
  border: Border(
    top: BorderSide(color: Colors.lightBlueAccent, width: 2.0),
  ),
);
const Color kDesignColor = Color(0xFF4284D2);
const TextStyle bigPlanStyle = TextStyle(
  fontSize: 24,
  fontWeight: FontWeight.w800,
  // font-family: Avenir;
);
const TextStyle smallPlanStyle = TextStyle(
  fontSize: 16,
  fontWeight: FontWeight.w400,
  color: Color(0xFF515F7F),
  // font-family: Avenir;
);
// OutlineInputBorder(
//             gapPadding: 8,
//             borderSide: const BorderSide(
//               color: Color(0xFF98A2B3),
//             ),
//             borderRadius: BorderRadius.circular(8),
//           ),
const inputDecoration = InputDecoration(
  hintText: 'Enter your CHANGEME',
  hintStyle: TextStyle(
    color: Colors.blueGrey,
  ),
  contentPadding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
  border: OutlineInputBorder(
    borderRadius: BorderRadius.all(Radius.circular(32.0)),
  ),
  enabledBorder: OutlineInputBorder(
    borderSide: BorderSide(color: Colors.blueAccent, width: 1.0),
    borderRadius: BorderRadius.all(Radius.circular(32.0)),
  ),
  focusedBorder: OutlineInputBorder(
    borderSide: BorderSide(color: Colors.blueAccent, width: 2.0),
    borderRadius: BorderRadius.all(Radius.circular(32.0)),
  ),
);

const inputTextField = InputDecoration(
  filled: true,
  fillColor: Colors.grey,
  icon: Icon(
    Icons.search,
    color: Colors.grey,
  ),
  hintText: 'Enter Exercise',
  hintStyle: TextStyle(color: Colors.grey),
  border: OutlineInputBorder(
    borderRadius: BorderRadius.all(
      Radius.circular(10),
    ),
    // borderSide: BorderSide.none,
  ),
);

const bottomAppBarItem1 = BottomNavigationBarItem(
  icon: Icon(Icons.sports_gymnastics),
  label: 'Exercises',
);
const bottomAppBarItem2 = BottomNavigationBarItem(
  icon: Icon(Icons.info),
  label: 'Info',
);
const bottomAppBarItem3 = BottomNavigationBarItem(
  icon: Icon(Icons.apple_rounded),
  label: 'Nutrition',
);
const bottomAppBarItem4 = BottomNavigationBarItem(
  icon: Icon(Icons.account_circle),
  label: 'My Plans',
);
const bottomAppBarItem5 = BottomNavigationBarItem(
  icon: Icon(Icons.admin_panel_settings_rounded),
  label: 'ADMIN',
);

const bottomAppBarItem6 = BottomNavigationBarItem(
  icon: Icon(Icons.chat),
  label: 'Messages',
);
const bottomAppBarItem7 = BottomNavigationBarItem(
  icon: Icon(Icons.home),
  label: 'Home',
);
const bottomAppBarItem8 = BottomNavigationBarItem(
  icon: Icon(Icons.search),
  label: 'Search',
);
const kBlackColor = Color(0xFF1E2022);
const kGreyColor = Color(0xFF77838F);
const kFaintDesignColor = Color(0xFFF5F7FA);
const kDate = ['January','February','March','April','May','June','July','August','September','October','November','December'];
const kBlackText = TextStyle(
  fontSize: 16,
  fontWeight: FontWeight.w500,
    color: Colors.black
);
const kBigBlackText = TextStyle(
  fontSize: 24,
  fontWeight: FontWeight.w700,
);
const kGreyText = TextStyle(
  fontSize: 14,
  color: kGreyColor,
  fontWeight: FontWeight.w400,
);

const bottomContainerHeight = 80.0;
const activeCardColor = Colors.white60;
const inactiveCardColor = Color(0xFFFFFFFF);
const bottomContainerColor = Color(0xFFEB1555);

const labelTextStyle = TextStyle(
  color: Color(0xFF8D8E98),
  fontSize: 18,
);

const numberTextStyle = TextStyle(
  fontSize: 50,
  fontWeight: FontWeight.w900,
);

const largeBottomButton = TextStyle(
  fontSize: 25,
  fontWeight: FontWeight.bold,
);

const titleText = TextStyle(
  fontSize: 50,
  fontWeight: FontWeight.bold,
);
const resultTextColor = TextStyle(
  color: Color(0xff24d876),
  fontSize: 22,
  fontWeight: FontWeight.bold,
);
const bmiTextStyle = TextStyle(
  fontSize: 100,
  fontWeight: FontWeight.bold,
);
const bodyTextStyle = TextStyle(fontSize: 22);

const List<String> genderList = [
  'Male',
  'Female',
];