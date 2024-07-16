import 'package:flutter/material.dart';

class FogotpassPage extends StatelessWidget {
  FogotpassPage({super.key});

  // text editing controllers
  final usernameController = TextEditingController();
  final passwordController = TextEditingController();

  // sign user in method
  void fogotpass() {
   
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 255, 255, 255),
      body: SafeArea(
        child: Center(
          child: SingleChildScrollView( // Sử dụng SingleChildScrollView để tránh lỗi khi bàn phím xuất hiện
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const SizedBox(height: 1),

                Image.asset(
                  'acess/logo.png', // Sửa lại đường dẫn tới logo
                  width: 168,
                  height: 181,
                ),
                
                
                
                const SizedBox(height: 5),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                     Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 15.0),
                      child: TextField(
                        controller: usernameController,
                        obscureText: false,
                        decoration: InputDecoration(
                          enabledBorder: OutlineInputBorder(
                            borderSide: const BorderSide(color: Color.fromARGB(255, 0, 0, 0)),
                            borderRadius: BorderRadius.circular(20), // Đặt borderRadius cho enabledBorder
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: const Color.fromARGB(255, 0, 0, 0)),
                            borderRadius: BorderRadius.circular(20), // Đặt borderRadius cho focusedBorder
                          ),
                          fillColor: const Color.fromARGB(255, 255, 255, 255),
                          filled: true,
                          hintText: "Nhập Email",
                          hintStyle: TextStyle(color: Color.fromARGB(255, 170, 169, 169)),
                        ),
                      ),
                    ),        
                    Container(
                       height: 55,
                        width: 94,
                        padding: const EdgeInsets.all(5),
                        margin: const EdgeInsets.symmetric(horizontal: 25),
                        decoration: BoxDecoration(
                          color: const Color.fromRGBO(57, 57, 57, 20),
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: const Center(
                          child: Text(
                            "Lấy Mã",
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 18,
                            ),
                          ),
                        ),
                      ),
                  ],
                ),
                const SizedBox(height: 25),
               Container(
        height: 65,
        width: 328,
        padding: const EdgeInsets.all(20),
        margin: const EdgeInsets.symmetric(horizontal: 25),
        decoration: BoxDecoration(
          color: const Color.fromRGBO(57, 57, 57, 20),
          borderRadius: BorderRadius.circular(20),
        ),
        child: const Center(
          child: Text(
            "Xác Nhận",
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontSize: 18,
            ),
          ),
        ),
      ),
                
       
                
                
                
              ],
            ),
          ),
        ),
      ),
    );
  }
}
