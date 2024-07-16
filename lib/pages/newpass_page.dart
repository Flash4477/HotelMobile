import 'package:flutter/material.dart';
import 'package:hotel_des/components/my_textfield.dart';


class NewpassPage extends StatelessWidget {
  NewpassPage({super.key});

  // text editing controllers
  final usernameController = TextEditingController();
  final passwordController = TextEditingController();
  final passwordConfimController = TextEditingController();

  // sign user in method
  void registerUserIn() {
    
    //  Navigator.push(context, MaterialPageRoute(builder: (context) => LoginPage(),));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 255, 255, 255),
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const SizedBox(height: 1),

             Image.asset(
                  'acess/logo.png',
                  width: 168,
                  height: 181,
                ),
              
             

              const SizedBox(height: 10),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: const [
                    Text(
                      'Điền Mật Khẩu Mới',
                      style: TextStyle(fontWeight: FontWeight.bold,),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 5),
              // password textfield
              MyTextField(
                controller: passwordController,
                hintText: 'Nhập Mật Khẩu',
                obscureText: true,
              ),
              const SizedBox(height: 10),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: const [
                    Text(
                      'Xác Nhận Mật Khẩu',
                      style: TextStyle(fontWeight: FontWeight.bold,),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 5),
              // password textfield
              MyTextField(
                controller: passwordConfimController,
                hintText: 'Nhập Lại Mật Khẩu',
                obscureText: true,
              ),
             const SizedBox(height: 10),
          

              const SizedBox(height: 40),
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
            "Đổi Mật Khẩu",
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontSize: 18,
            ),
          ),
        ),
      ),
              
              const SizedBox(height: 50),
            ],
          ),
        ),
      ),
    );
  }
}
