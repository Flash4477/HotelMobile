import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Onboarding4Widget extends StatefulWidget {
  const Onboarding4Widget({super.key});
// go to dash in method
  void gotodashboad(){

  }
  
  @override
  State<Onboarding4Widget> createState() => _Onboarding4WidgetState();
}

class _Onboarding4WidgetState extends State<Onboarding4Widget> {
  late FocusNode _unfocusNode;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _unfocusNode = FocusNode();
  }

  @override
  void dispose() {
    _unfocusNode.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => _unfocusNode.canRequestFocus
          ? FocusScope.of(context).requestFocus(_unfocusNode)
          : FocusScope.of(context).unfocus(),
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: Theme.of(context).scaffoldBackgroundColor,
        body: SafeArea(
          top: true,
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              
 Padding(
  padding: const EdgeInsets.symmetric(horizontal: 30.0),
  child: Row(
    mainAxisAlignment: MainAxisAlignment.start,
    children: const [
      Flexible(
        flex: 1, // Set a flex factor to control how much space the Text widget takes
        child: Text(
          'Tìm Kiếm Nơi Nghỉ Ngơi Ngay',
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 32),
        ),
      ),
    ],
  ),
),

           const SizedBox(height: 20,),
            Container(
        height: 40,
        width: 369,
        padding: const EdgeInsets.all(5),
        margin: const EdgeInsets.symmetric(horizontal: 25),
        decoration: BoxDecoration(
          color: const Color.fromRGBO(25, 29, 33, 1),
          borderRadius: BorderRadius.circular(4),
        ),
        child: const Center(
          child: Text(
            "Đi Đến Trang Chủ",
            style: TextStyle(
              color: Color.fromARGB(255, 255, 255, 255),
              
              fontSize: 16,
            ),
          ),
        ),
      ),
            const SizedBox(height: 5,),
            Container(
  height: 40,
  width: 369,
  padding: const EdgeInsets.all(5),
  margin: const EdgeInsets.symmetric(horizontal: 25),
  decoration: BoxDecoration(
    color: Color.fromARGB(255, 255, 255, 255),
    borderRadius: BorderRadius.circular(4),
    border: Border.all(
      color: Color.fromARGB(255, 0, 0, 0), // Black border color
      width: 1.0, // Adjust border width as desired
    ),
  ),
  child: const Center(
    child: Text(
      "Đăng Nhập",
      style: TextStyle(
        color: Color.fromARGB(255, 0, 0, 0), // Black text color
        fontSize: 16,
      ),
    ),
  ),
),
            const SizedBox(height: 50,),
              ClipRRect(
                borderRadius: BorderRadius.circular(8),
                child: Image.asset(
                  'acess/5.png',
                  width: 444,
                  height: 400,
                  fit: BoxFit.cover,
                ),
              ),
              
              
             
            ],
          ),
        ),
      ),
    );
  }
}
