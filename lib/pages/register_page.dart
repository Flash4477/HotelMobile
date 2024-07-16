import 'package:flutter/material.dart';
import 'package:hotel_des/components/my_textfield.dart';
import 'package:hotel_des/components/register_button.dart';
import 'package:hotel_des/pages/login_page.dart';


class RegisterPage extends StatelessWidget {
  RegisterPage({super.key});

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
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: const [
                    Text(
                      'Email',
                      style: TextStyle(fontWeight: FontWeight.bold,),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 5),
              // username textfield
              MyTextField(
                controller: usernameController,
                hintText: 'Điền Email',
                obscureText: false,
              ),

              const SizedBox(height: 10),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: const [
                    Text(
                      'Mật Khẩu',
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
          

              const SizedBox(height: 25),

              // sign in button
              RegisterButton(
                onTap: registerUserIn,
                
              ),

              const SizedBox(height: 50),
            ],
          ),
        ),
      ),
    );
  }
}
