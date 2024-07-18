import 'package:flutter/material.dart';
import 'package:hotel_des/Homepage/HomePage.dart';
import 'package:hotel_des/botton_nav_with_animated_icons.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: ThankPage(),
    );
  }
}

class ThankPage extends StatelessWidget {
  const ThankPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.chevron_left),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
        title: Text('Đặt Phòng Thành Công'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Đặt Phòng Thành Công',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 16),
            Text(
              'Chúng tôi sẽ gửi cho bạn Thông tin đặt phòng của bạn. Vui lòng kiểm tra email và tin nhắn văn bản.',
              style: TextStyle(fontSize: 16),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 32),
            Image.asset(
              'acess/thank.png',
              width: 366,
              height: 338,
              fit: BoxFit.cover,
            ),
            SizedBox(height: 32),
            GestureDetector(
              onTap: () {
                  Navigator.of(context).pop();
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => BottomNavWithAnimatedIcons()),
                  );
                },
              child: Container(
                height: 50,
                width: double.infinity,
                padding: const EdgeInsets.all(5),
                margin: const EdgeInsets.symmetric(horizontal: 25),
                decoration: BoxDecoration(
                  color: const Color.fromRGBO(25, 29, 33, 1),
                  borderRadius: BorderRadius.circular(16),
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
            ),
          ],
        ),
      ),
      
    );
  }
}
