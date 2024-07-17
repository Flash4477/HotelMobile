import 'package:flutter/material.dart';
import 'package:hotel_des/pages/thank.dart';


class AddPayment extends StatefulWidget {
  const AddPayment({super.key});

  @override
  _AddPaymentState createState() => _AddPaymentState();
}

class _AddPaymentState extends State<AddPayment> {
  final _formKey = GlobalKey<FormState>();
  String cardHolderName = '';
  String cardNumber = '';
  String expiryMonth = '';
  String expiryYear = '';
  String country = '';
  String address = '';
  String city = '';
  String state = '';
  String postalCode = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Phương Thức Thanh Toán'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Form(
          key: _formKey,
          child: ListView(
            children: <Widget>[
              Text(
                'Thông Tin Thẻ',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              TextFormField(
                decoration: InputDecoration(labelText: 'Tên Chủ Thẻ*'),
                onChanged: (value) {
                  setState(() {
                    cardHolderName = value;
                  });
                },
              ),
              TextFormField(
                decoration: InputDecoration(labelText: 'Số Thẻ Tín Dụng/Thẻ Ghi Nợ*'),
                keyboardType: TextInputType.number,
                onChanged: (value) {
                  setState(() {
                    cardNumber = value;
                  });
                },
              ),
              Row(
                children: [
                  Expanded(
                    child: TextFormField(
                      decoration: InputDecoration(labelText: 'Tháng'),
                      keyboardType: TextInputType.number,
                      onChanged: (value) {
                        setState(() {
                          expiryMonth = value;
                        });
                      },
                    ),
                  ),
                  SizedBox(width: 16.0),
                  Expanded(
                    child: TextFormField(
                      decoration: InputDecoration(labelText: 'Năm'),
                      keyboardType: TextInputType.number,
                      onChanged: (value) {
                        setState(() {
                          expiryYear = value;
                        });
                      },
                    ),
                  ),
                ],
              ),
              SizedBox(height: 20),
              Text(
                'Địa chỉ thanh toán',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              TextFormField(
                decoration: InputDecoration(labelText: 'Quốc Gia*'),
                onChanged: (value) {
                  setState(() {
                    country = value;
                  });
                },
              ),
              TextFormField(
                decoration: InputDecoration(labelText: 'Địa chỉ*'),
                onChanged: (value) {
                  setState(() {
                    address = value;
                  });
                },
              ),
              TextFormField(
                decoration: InputDecoration(labelText: 'Thành Phố*'),
                onChanged: (value) {
                  setState(() {
                    city = value;
                  });
                },
              ),
              TextFormField(
                decoration: InputDecoration(labelText: 'Tỉnh/Thành*'),
                onChanged: (value) {
                  setState(() {
                    state = value;
                  });
                },
              ),
              TextFormField(
                decoration: InputDecoration(labelText: 'Mã Bưu Chính*'),
                keyboardType: TextInputType.number,
                onChanged: (value) {
                  setState(() {
                    postalCode = value;
                  });
                },
              ),
              SizedBox(height: 20),
              Row(
                children: [
                  Expanded(
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.pop(context); // Trở về trang trước đó
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.grey,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8.0),
                        ),
                      ),
                      child: Text('HUỶ'),
                    ),
                  ),
                  SizedBox(width: 16.0),
                  Expanded(
                    child: ElevatedButton(
                      onPressed: () {
                        if (_formKey.currentState!.validate()) {
                          // Chuyển sang SuccessPage khi lưu thẻ
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => ThankPage()),
                          );
                        }
                      },
                      style: ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8.0),
                        ),
                      ),
                      child: Text('LƯU THẺ'),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class SuccessPage extends StatelessWidget {
  const SuccessPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Success'),
      ),
      body: Center(
        child: Text('Payment Successful!', style: TextStyle(fontSize: 24)),
      ),
    );
  }
}

class PaymentPage1 extends StatelessWidget {
  const PaymentPage1({super.key});

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
        title: Text('Thanh Toán'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView(
          children: [
            Text(
              'Đặt phòng của bạn',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 16),
            Image.asset(
              'acess/backgroud.png', // Đảm bảo đường dẫn hình ảnh chính xác
              width: 377,
              height: 100,
              fit: BoxFit.cover,
            ),
            SizedBox(height: 16),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Beach Resort Lux',
                      style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                    ),
                    Text(
                      '4.5',
                      style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ],
            ),
            Divider(height: 32, thickness: 1),
            _buildInfoRow('Giờ nhận phòng:', '4/11/2020 (02:00 PM)'),
            _buildInfoRow('Giờ trả phòng:', '5/11/2020 (12:00 A.M)'),
            _buildInfoRow('Loại phòng:', 'Standard King Room'),
            _buildInfoRow('Số khách:', '1 khách 1 giường'),
            _buildInfoRow('Giá:', '1480\$'),
            _buildInfoRow('Tên Khách:', 'Khoa Nguyễn'),
            _buildInfoRow('Email:', 'Kalekhoa@gmail.com'),
            _buildInfoRow('Số điện thoại:', '(+84)798908122'),
            Divider(height: 32, thickness: 1),
            _buildInfoRow('Tổng:', '1490\$'),
            Text(
              'Bao Gồm Thuế',
              style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 32),
            GestureDetector(
              onTap: () {
                _showPaymentDialog(context);
              },
              child: Container(
                height: 70,
                width: 390,
                padding: const EdgeInsets.all(5),
                margin: const EdgeInsets.symmetric(horizontal: 25),
                decoration: BoxDecoration(
                  color: const Color.fromRGBO(25, 29, 33, 1),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: const Center(
                  child: Text(
                    "Thanh Toán",
                    style: TextStyle(
                      color: Color.fromARGB(255, 255, 255, 255),
                      fontSize: 24,
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

  Widget _buildInfoRow(String label, String value) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 4.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            label,
            style: TextStyle(fontSize: 16),
          ),
          Text(
            value,
            style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
          ),
        ],
      ),
    );
  }

  void _showPaymentDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Center(child: Text('Hình Thức Thanh Toán')),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              // Hàng chứa thông tin thẻ VISA
              GestureDetector(
                onTap: () {
                  Navigator.of(context).pop();
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => ThankPage()),
                  );
                },
                child: Container(
                  padding: EdgeInsets.all(8),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.5),
                        spreadRadius: 2,
                        blurRadius: 5,
                        offset: Offset(0, 3),
                      ),
                    ],
                  ),
                  child: Row(
                    children: [
                      Image.asset(
                        'acess/visa.png', // Đường dẫn đến hình ảnh visa
                        width: 50,
                        height: 30,
                      ),
                      SizedBox(width: 10),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: const [
                            Text('**** **** **** 5040'),
                            Text('Hạn: 05/28 Thẻ 1'),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 20),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.black,
                  minimumSize: Size(double.infinity, 50),
                ),
                onPressed: () {
                  // Chuyển sang màn hình AddPayment khi nhấn vào nút THÊM PHƯƠNG THỨC THANH TOÁN
                  Navigator.of(context).pop();
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => AddPayment()),
                  );
                },
                child: Text('THÊM PHƯƠNG THỨC THANH TOÁN'),
              ),
              SizedBox(height: 10),
              OutlinedButton(
                style: OutlinedButton.styleFrom(
                  minimumSize: Size(double.infinity, 50),
                  side: BorderSide(color: Colors.black),
                ),
                onPressed: () {Navigator.of(context).pop();
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => ThankPage()),
                  );
                
                },
                child: Text('TRẢ KHI NHẬN PHÒNG'),
              ),
            ],
          ),
          actions: <Widget>[
            TextButton(
              onPressed: () {
                Navigator.of(context).pop(); // Đóng dialog
              },
              child: Text('Đóng'),
            ),
          ],
        );
      },
    );
  }
}

void main() {
  runApp(MaterialApp(
    home: PaymentPage1(),
  ));
}
