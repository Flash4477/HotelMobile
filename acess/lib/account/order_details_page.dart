import 'package:flutter/material.dart';

class OrderDetailsPage extends StatefulWidget {
  final String imageUrl;
  final String hotelName;
  final String roomType;
  final String checkInTime;
  final String checkOutTime;
  final String price;

  OrderDetailsPage({
    required this.imageUrl,
    required this.hotelName,
    required this.roomType,
    required this.checkInTime,
    required this.checkOutTime,
    required this.price,
    Key? key,
  }) : super(key: key);

  @override
  _OrderDetailsPageState createState() => _OrderDetailsPageState();
}

class _OrderDetailsPageState extends State<OrderDetailsPage> {
  double _rating = 0;
  final TextEditingController _reviewController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Chi tiết đơn hàng'),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(8.0),
              ),
              padding: EdgeInsets.all(16.0),
              child: Row(
                children: [
                  Image.network(widget.imageUrl, width: 100, height: 100, fit: BoxFit.cover),
                  SizedBox(width: 16.0),
                  Expanded(
                    child: Text(
                      widget.hotelName,
                      style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 16.0),
            buildInfoRow(label: 'Loại phòng', value: widget.roomType),
            buildInfoRow(label: 'Thời gian nhận phòng', value: widget.checkInTime),
            buildInfoRow(label: 'Thời gian trả phòng', value: widget.checkOutTime),
            buildInfoRow(label: 'Số tiền', value: widget.price),
            SizedBox(height: 16.0),
            Text(
              'Viết đánh giá',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 8.0),
            TextField(
              controller: _reviewController,
              maxLines: 4,
              decoration: InputDecoration(
                hintText: 'Viết về trải nghiệm của bạn về căn phòng đã thuê',
                border: OutlineInputBorder(),
                contentPadding: EdgeInsets.all(8.0),
              ),
            ),
            SizedBox(height: 8.0),
            Text(
              'Tối đa 150 kí tự',
              style: TextStyle(color: Colors.grey),
            ),
            SizedBox(height: 16.0),
            Text(
              'Đánh giá chất lượng trải nghiệm',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 8.0),
            Row(
              children: List.generate(5, (index) {
                return IconButton(
                  icon: Icon(
                    index < _rating ? Icons.star : Icons.star_border,
                    color: Colors.amber,
                  ),
                  onPressed: () {
                    setState(() {
                      _rating = index + 1.0;
                    });
                  },
                );
              }),
            ),
            SizedBox(height: 16.0),
            Text(
              'Thêm ảnh hoặc video',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 8.0),
            GestureDetector(
              onTap: () {
                // Add image/video picker logic here
              },
              child: Container(
                padding: EdgeInsets.all(16.0),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(8.0),
                  border: Border.all(color: Colors.grey),
                ),
                child: Row(
                  children: [
                    Icon(Icons.add, color: Colors.black),
                    SizedBox(width: 10),
                    Text(
                      'Thêm ảnh hoặc video',
                      style: TextStyle(color: Colors.black),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 16.0),
            ElevatedButton(
              onPressed: () {
                // Add submit review logic here
              },
              child: Text('Đăng'),
            ),
          ],
        ),
      ),
    );
  }

  Widget buildInfoRow({required String label, required String value}) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(label, style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
            Text(value, style: TextStyle(fontSize: 16)),
          ],
        ),
        Divider(thickness: 1, color: Colors.grey),
        SizedBox(height: 8.0),
      ],
    );
  }
}
