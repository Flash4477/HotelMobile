import 'package:flutter/material.dart';
import 'pay_method_2.dart';
// Widget AddPayment1
class AddPayment1 extends StatelessWidget {
  const AddPayment1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Add Payment 1'),
      ),
      body: Center(
        child: Text('Đây là màn hình AddPayment1'),
      ),
    );
  }
}

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
                          // Điều hướng đến màn hình AddPayment1
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => PaymentPage1()),
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

void main() {
  runApp(MaterialApp(
    home: AddPayment(),
  ));
}
