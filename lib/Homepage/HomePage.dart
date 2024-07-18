
import 'package:flutter/material.dart';


class HomePage extends StatefulWidget {
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
    if (picked != null && picked != _selectedDate)
      setState(() {
        _selectedDate = picked;
      });
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
            _buildHeader(),
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
      padding: const EdgeInsets.all(16.0),
      child: Container(
        padding: const EdgeInsets.all(16.0),
        decoration: BoxDecoration(
          color: Colors.grey[300],
          borderRadius: BorderRadius.circular(10),
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
      children: [
        Icon(Icons.location_on, color: Colors.white),
        const SizedBox(width: 16),
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
              Icon(Icons.calendar_today, color: Colors.white),
              const SizedBox(width: 16),
              Expanded(
                child: Text(
                  'Thứ 2, ${_selectedDate.day}/${_selectedDate.month}/${_selectedDate.year}',
                  style: TextStyle(color: Colors.white),
                ),
              ),
              Icon(Icons.nights_stay, color: Colors.white),
              const SizedBox(width: 16),
              Expanded(
                child: GestureDetector(
                  onTap: () => _selectDuration(context),
                  child: Text(
                    '$_nights Đêm',
                    style: TextStyle(color: Colors.white),
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
              style: TextStyle(color: Colors.white),
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
          Icon(Icons.person, color: Colors.white),
          const SizedBox(width: 16),
          Expanded(
            child: Text(
              '$_guests Khách',
              style: TextStyle(color: Colors.white),
            ),
          ),
          Icon(Icons.bed, color: Colors.white),
          const SizedBox(width: 16),
          Expanded(
            child: Text(
              '$_beds Giường',
              style: TextStyle(color: Colors.white),
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
          Text(
            'Gợi Ý Điểm Đến',
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 16),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                _buildDestinationCard1('Beach Resort Lux', 'Waikiki, 4.1 miles from center', 'Ocean View 1 king Bed\nNo prepayment', '\$720', 4.5),
                const SizedBox(width: 16),
                _buildDestinationCard2('Hotel Standard', 'San Francisco, 1.2 miles from center', 'Standard Room\nFree cancellation', '\$650', 4.0),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildDestinationCard1(String title, String location, String details, String price, double rating) {
    return Card(
      child: Container(
        width: 250,
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Image.network('https://via.placeholder.com/150', fit: BoxFit.cover),
            Image.asset('acess/image/logo.png'),
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
    );
  }
}
Widget _buildDestinationCard2(String title, String location, String details, String price, double rating) {
    return Card(
      child: Container(
        width: 250,
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Image.network('https://via.placeholder.com/150', fit: BoxFit.cover),
            Image.asset('acess/image/logo.png'),
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
    );
  }

class DurationPickerPage extends StatefulWidget {
  @override
  _DurationPickerPageState createState() => _DurationPickerPageState();
}

class _DurationPickerPageState extends State<DurationPickerPage> {
  int _nights = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Chọn Số Đêm'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            for (int i = 1; i <= 6; i++)
              ListTile(
                title: Text('$i Đêm'),
                onTap: () {
                  setState(() {
                    _nights = i;
                  });
                },
                trailing: _nights == i ? Icon(Icons.check, color: Colors.blue) : null,
              ),
            Spacer(),
            ElevatedButton(
              onPressed: () {
                Navigator.pop(context, {'nights': _nights});
              },
              child: Text('Lưu'),
            ),
          ],
        ),
      ),
    );
  }
}

class GuestPickerPage extends StatefulWidget {
  @override
  _GuestPickerPageState createState() => _GuestPickerPageState();
}

class _GuestPickerPageState extends State<GuestPickerPage> {
  int _guests = 1;
  int _beds = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Số Lượng Khách'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Khách', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
            Row(
              children: [
                IconButton(
                  onPressed: () {
                    setState(() {
                      if (_guests > 1) _guests--;
                    });
                  },
                  icon: Icon(Icons.remove),
                ),
                Text('$_guests', style: TextStyle(fontSize: 18)),
                IconButton(
                  onPressed: () {
                    setState(() {
                      _guests++;
                    });
                  },
                  icon: Icon(Icons.add),
                ),
              ],
            ),
            const SizedBox(height: 16),
            Text('Giường', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
            Row(
              children: [
                IconButton(
                  onPressed: () {
                    setState(() {
                      if (_beds > 1) _beds--;
                    });
                  },
                  icon: Icon(Icons.remove),
                ),
                Text('$_beds', style: TextStyle(fontSize: 18)),
                IconButton(
                  onPressed: () {
                    setState(() {
                      _beds++;
                    });
                  },
                  icon: Icon(Icons.add),
                ),
              ],
            ),
            Spacer(),
            ElevatedButton(
              onPressed: () {
                Navigator.pop(context, {'guests': _guests, 'beds': _beds});
              },
              child: Text('Save'),
            ),
          ],
        ),
      ),
    );
  }
}
