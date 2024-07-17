import 'package:flutter/material.dart';

class SecuritySettingsPage extends StatelessWidget {
  SecuritySettingsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Bảo mật tài khoản'),
      ),
      body: Column(
        children: [
          buildSecurityOption('Bảo mật tài khoản', isTitle: true),
          buildSecurityOption('Đổi mật khẩu', onTap: () {
            // Add navigation or functionality for "Đổi mật khẩu"
          }),
          buildSecurityOption('Kiểm tra bảo mật', onTap: () {
            // Add navigation or functionality for "Kiểm tra bảo mật"
          }),
          buildSecurityOption('Cảnh báo đăng nhập', onTap: () {
            // Add navigation or functionality for "Cảnh báo đăng nhập"
          }),
        ],
      ),
    );
  }

  Widget buildSecurityOption(String title, {bool isTitle = false, VoidCallback? onTap}) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: EdgeInsets.all(16.0),
        width: double.infinity,
        decoration: BoxDecoration(
          color: isTitle ? Colors.black : Colors.white,
          border: Border(
            bottom: BorderSide(
              color: Colors.grey,
              width: 1,
            ),
          ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              title,
              style: TextStyle(
                fontSize: isTitle ? 18 : 16,
                fontWeight: isTitle ? FontWeight.bold : FontWeight.normal,
                color: isTitle ? Colors.white : Colors.black,
              ),
            ),
            if (!isTitle)
              Icon(
                Icons.arrow_forward_ios,
                size: 16,
                color: Colors.black,
              ),
          ],
        ),
      ),
    );
  }
}
