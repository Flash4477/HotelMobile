import 'package:flutter/material.dart';
import 'package:hotel_des/pages/DetailPage.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  DateTime _selectedDate = DateTime.now();
  int _nights = 1;
  int _guests = 1;
  int _beds = 1;

  Future<void> _selectDate(BuildContext context) async {
    final DateTime? picked = await showDatePicker(
      context: context,
      initialDate: _selectedDate,
      firstDate: DateTime(2020),
      lastDate: DateTime(2025),
    );
    if (picked != null && picked != _selectedDate) {
      setState(() {
        _selectedDate = picked;
      });
    }
  }

  void _selectDuration(BuildContext context) async {
    final result = await Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => DurationPickerPage(),
      ),
    );
    if (result != null) {
      setState(() {
        _nights = result['nights'];
      });
    }
  }

  void _selectGuests(BuildContext context) async {
    final result = await Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => GuestPickerPage(),
      ),
    );
    if (result != null) {
      setState(() {
        _guests = result['guests'];
        _beds = result['beds'];
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              children: <Widget>[
                Image.asset(
                  'acess/backgroud.png',
                  height: 200,
                  width: double.infinity,
                  fit: BoxFit.cover,
                ),
                Positioned.fill(
                  child: Align(
                    alignment: Alignment.center,
                    child: Text(
                      'Tìm nơi nghỉ dưỡng phù hợp\n cho bạn',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 32,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ],
            ),
            _buildSearchCard(context),
            _buildSuggestedDestinations(),
          ],
        ),
      ),
    );
  }

  Widget _buildHeader() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: Text(
        'Tìm nơi nghỉ dưỡng phù hợp cho bạn',
        style: TextStyle(
          fontSize: 24,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }

  Widget _buildSearchCard(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(0.0),
      child: Container(
        padding: const EdgeInsets.all(16.0),
        decoration: BoxDecoration(
          color: Colors.grey[300],
          borderRadius: BorderRadius.circular(1),
        ),
        child: Column(
          children: [
            _buildLocationRow(),
            _buildDivider(),
            _buildDateRow(context),
            _buildDivider(),
            _buildGuestRoomRow(context),
            const SizedBox(height: 16),
            ElevatedButton(
              onPressed: () {},
              child: Text('Tìm phòng'),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildLocationRow() {
    return Row(
      children: const [
        Icon(Icons.location_on, color: Color.fromARGB(153, 0, 0, 0)),
        SizedBox(width: 16),
        Expanded(
          child: TextField(
            decoration: InputDecoration(
              hintText: 'Hochiminh City, Vietnam',
              border: InputBorder.none,
            ),
          ),
        ),
      ],
    );
  }

  Widget _buildDateRow(BuildContext context) {
    return Column(
      children: [
        GestureDetector(
          onTap: () => _selectDate(context),
          child: Row(
            children: [
              Icon(Icons.calendar_today, color: Color.fromARGB(153, 0, 0, 0)),
              const SizedBox(width: 16),
              Expanded(
                child: Text(
                  'Thứ 2, ${_selectedDate.day}/${_selectedDate.month}/${_selectedDate.year}',
                  style: TextStyle(color: Color.fromARGB(153, 0, 0, 0)),
                ),
              ),
              Icon(Icons.nights_stay, color: Color.fromARGB(153, 0, 0, 0)),
              const SizedBox(width: 16),
              Expanded(
                child: GestureDetector(
                  onTap: () => _selectDuration(context),
                  child: Text(
                    '$_nights Đêm',
                    style: TextStyle(color: Color.fromARGB(153, 0, 0, 0)),
                  ),
                ),
              ),
            ],
          ),
        ),
        const SizedBox(height: 8),
        Row(
          children: [
            const SizedBox(width: 32),
            Text(
              'Trả Phòng: Thứ 3, ${_selectedDate.add(Duration(days: _nights)).day}/${_selectedDate.add(Duration(days: _nights)).month}/${_selectedDate.add(Duration(days: _nights)).year}',
              style: TextStyle(color: Color.fromARGB(153, 0, 0, 0)),
            ),
          ],
        ),
      ],
    );
  }

  Widget _buildGuestRoomRow(BuildContext context) {
    return GestureDetector(
      onTap: () => _selectGuests(context),
      child: Row(
        children: [
          Icon(Icons.person, color: Color.fromARGB(153, 0, 0, 0)),
          const SizedBox(width: 16),
          Expanded(
            child: Text(
              '$_guests Khách',
              style: TextStyle(color: Color.fromARGB(153, 0, 0, 0)),
            ),
          ),
          Icon(Icons.bed, color: Color.fromARGB(153, 0, 0, 0)),
          const SizedBox(width: 16),
          Expanded(
            child: Text(
              '$_beds Giường',
              style: TextStyle(color: Color.fromARGB(153, 0, 0, 0)),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildDivider() {
    return const Divider(
      color: Colors.white,
      height: 20,
      thickness: 1,
    );
  }

  Widget _buildSuggestedDestinations() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(height: 16),
          Text(
            'Gợi Ý Điểm Đến',
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 16),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                _buildDestinationCard1(
                  'Beach Resort Lux',
                  'Waikiki, 4.1 miles from center',
                  'Ocean View 1 king Bed\nNo prepayment',
                  '\$720',
                  4.5,
                  ['acess/logo.png', 'acess/logo.png'],
                ),
                const SizedBox(width: 16),
                _buildDestinationCard2(
                  'Hotel Standard',
                  'San Francisco, 1.2 miles from center',
                  'Standard Room\nFree cancellation',
                  '\$650',
                  4.0,
                  ['acess/logo.png', 'acess/logo.png'],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildDestinationCard1(String title, String location, String details, String price, double rating, List<String> imagePaths) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => DetailPage(
              title: title,
              description: details,
              imagePaths: imagePaths,
            ),
          ),
        );
      },
      child: Card(
        child: Container(
          width: 250,
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Image.asset('acess/logo.png'),
              const SizedBox(height: 8),
              Text(title, style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
              const SizedBox(height: 8),
              Text(location, style: TextStyle(color: Colors.grey)),
              const SizedBox(height: 8),
              Text(details, style: TextStyle(color: Colors.grey)),
              const SizedBox(height: 8),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(price, style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
                  Row(
                    children: [
                      Icon(Icons.star, color: Colors.amber, size: 16),
                      Text(rating.toString(), style: TextStyle(color: Colors.amber)),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildDestinationCard2(String title, String location, String details, String price, double rating, List<String> imagePaths) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => DetailPage(
              title: title,
              description: details,
              imagePaths: imagePaths,
            ),
          ),
        );
      },
      child: Card(
        child: Container(
          width: 250,
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Image.asset('acess/logo.png'),
              const SizedBox(height: 8),
              Text(title, style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
              const SizedBox(height: 8),
              Text(location, style: TextStyle(color: Colors.grey)),
              const SizedBox(height: 8),
              Text(details, style: TextStyle(color: Colors.grey)),
              const SizedBox(height: 8),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(price, style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
                  Row(
                    children: [
                      Icon(Icons.star, color: Colors.amber, size: 16),
                      Text(rating.toString(), style: TextStyle(color: Colors.amber)),
                    ],
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

class DurationPickerPage extends StatelessWidget {
  const DurationPickerPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Chọn Số Đêm'),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Navigator.pop(context, {'nights': 3});
          },
          child: Text('3 Đêm'),
        ),
      ),
    );
  }
}

class GuestPickerPage extends StatelessWidget {
  const GuestPickerPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Chọn Số Khách Và Giường'),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Navigator.pop(context, {'guests': 2, 'beds': 1});
          },
          child: Text('2 Khách, 1 Giường'),
        ),
      ),
    );
  }
}
