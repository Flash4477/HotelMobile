
import 'package:flutter/material.dart';
import '../pages/SearchDetailPage.dart';

class SearchPage extends StatelessWidget {
  const SearchPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              _buildSearchBar(),
              const SizedBox(height: 16),
              _buildHeader(),
              const SizedBox(height: 26),
              _buildSuggestedDestinations(context),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildSearchBar() {
    return Container(
      height:60,
      decoration: BoxDecoration(
        border: Border.all(color: Colors.black),
        borderRadius: BorderRadius.circular(8),
        color: Colors.grey[200],
      ),
      child: Center(
        child: TextField(
          style: TextStyle(fontSize: 16),
          decoration: InputDecoration(
            contentPadding: EdgeInsets.only(top: 12),
            border: InputBorder.none,
            // contentPadding: EdgeInsets.symmetric(horizontal: 20),
            hintText: 'Search for a city, area, or a hotel',
            prefixIcon: Icon(Icons.search),
            // border: OutlineInputBorder(   
            //   borderRadius: BorderRadius.circular(10),
            // ),
            
            
            
          ),
        ),
      ),
    );
  }
  Widget _buildHeader() {
    return Text(
      'Gợi Ý Điểm Đến',
      style: TextStyle(
        fontSize: 20,
        fontWeight: FontWeight.bold,
      ),
    );
  }

  Widget _buildSuggestedDestinations(BuildContext context) {
    return Column(
      children: [
        _buildDestinationCard(context, 'Vũng Tàu', 'Discover new places and find new adventures.', 'assets/vungtau.png'),
        const SizedBox(height: 16),
        _buildDestinationCard(context, 'Đà Nẵng', 'Discover new places and find new adventures.', 'assets/danang.png'),
        const SizedBox(height: 16),
        _buildDestinationCard(context, 'Huế', 'Discover new places and find new adventures.', 'assets/hue.png'),
        const SizedBox(height: 16),
        _buildDestinationCard(context, 'Hồ Chí Minh', 'Discover new places and find new adventures.', 'assets/hochiminh.png'),
        const SizedBox(height: 16),
        _buildDestinationCard(context, 'Hà Nội', 'Discover new places and find new adventures.', 'assets/hanoi.png'),
      ],
    );
  }

  Widget _buildDestinationCard(BuildContext context, String title, String description, String imagePath) {
    return InkWell(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => SearchDetailPage()),
        );
      },
      child: Container(
        padding: const EdgeInsets.all(16.0),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(15),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.2),
              spreadRadius: 2,
              blurRadius: 5,
            ),
          ],
        ),
        child: Row(
          children: [
            Container(
              width: 163,
              height: 118,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                image: DecorationImage(
                  image: AssetImage(imagePath),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            const SizedBox(width: 16),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 8),
                  Text(
                    description,
                    style: TextStyle(
                      color: Colors.grey,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
