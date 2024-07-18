import 'package:flutter/material.dart';
import 'personal_data_page.dart';

class EditProfilePage extends StatelessWidget {
  EditProfilePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Chỉnh sửa hồ sơ'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.all(16.0),
              width: double.infinity,
              decoration: BoxDecoration(
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    color: Colors.black12,
                    blurRadius: 10,
                    spreadRadius: 5,
                  ),
                ],
              ),
              child: Row(
                children: [
                  Stack(
                    children: [
                      CircleAvatar(
                        radius: 50,
                        child: Icon(Icons.person, size: 50),
                      ),
                      Positioned(
                        right: 0,
                        bottom: 0,
                        child: CircleAvatar(
                          radius: 15,
                          backgroundColor: Colors.blue,
                          child: Icon(Icons.add, size: 20, color: Colors.white),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(width: 20),
                  Flexible(
                    child: Text(
                      'Tùy chỉnh trang cá nhân khi cập nhật ảnh đại diện',
                      style: TextStyle(fontSize: 18),
                    ),
                  ),
                ],
              ),
            ),
            buildProfileInfo(context, 'Tên cá nhân', 'Name', isPersonalName: true),
            Divider(thickness: 1, color: Colors.grey),
            buildDescription('Chạm để đổi tên và điền tên họ của bạn. Bạn có thể thay đổi thông tin tài khoản và địa chỉ email.'),
            buildProfileInfo(context, 'Tên người dùng', 'Username'),
            Divider(thickness: 1, color: Colors.grey),
            buildDescription('Tên người dùng sẽ được hiển thị trên các nhận xét mà bạn đã đăng lên.'),
            Container(
              padding: EdgeInsets.all(16.0),
              width: double.infinity,
              decoration: BoxDecoration(
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    color: Colors.black12,
                    blurRadius: 10,
                    spreadRadius: 5,
                  ),
                ],
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Tiểu sử',
                    style: TextStyle(fontSize: 18),
                  ),
                  GestureDetector(
                    onTap: () {
                      // Handle tap to edit bio
                    },
                    child: Container(
                      width: double.infinity,
                      padding: EdgeInsets.only(top: 8.0, bottom: 8.0),
                      decoration: BoxDecoration(
                        border: Border(bottom: BorderSide(color: Colors.black)),
                      ),
                      child: Text(
                        'Cho biết thêm về bạn',
                        style: TextStyle(color: Colors.grey),
                      ),
                    ),
                  ),
                  SizedBox(height: 8),
                  Text(
                    'Tối đa 150 kí tự',
                    style: TextStyle(fontSize: 12, color: Colors.grey),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget buildProfileInfo(BuildContext context, String title, String value, {bool isPersonalName = false}) {
    return GestureDetector(
      onTap: isPersonalName
          ? () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => PersonalDataPage()),
              );
            }
          : null,
      child: Container(
        padding: EdgeInsets.all(16.0),
        width: double.infinity,
        decoration: BoxDecoration(
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              color: Colors.black12,
              blurRadius: 10,
              spreadRadius: 5,
            ),
          ],
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              title,
              style: TextStyle(fontSize: 18),
            ),
            Row(
              children: [
                Text(
                  value,
                  style: TextStyle(fontSize: 18),
                ),
                Icon(Icons.chevron_right),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget buildDescription(String description) {
    return Container(
      padding: EdgeInsets.all(16.0),
      width: double.infinity,
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.black12,
            blurRadius: 10,
            spreadRadius: 5,
          ),
        ],
      ),
      child: Text(
        description,
        style: TextStyle(fontSize: 16),
      ),
    );
  }
}
