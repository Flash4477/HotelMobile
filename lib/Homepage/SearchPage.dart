
// import 'package:flutter/material.dart';



// class SearchPage extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         backgroundColor: Colors.transparent,
//         elevation: 0,
//       ),
//       body: SingleChildScrollView(
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: [
//             _buildSearchBar(),
//             _buildSuggestedDestinations(),
//           ],
//         ),
//       ),
//     );
//   }

//   Widget _buildSearchBar() {
//     return Padding(
//       padding: const EdgeInsets.all(16.0),
//       child: TextField(
//         decoration: InputDecoration(
//           prefixIcon: Icon(Icons.search),
//           hintText: 'Hochiminh City, Vietnam',
//           border: OutlineInputBorder(
//             borderRadius: BorderRadius.circular(10.0),
//           ),
//           filled: true,
//           fillColor: Colors.grey[200],
//         ),
//       ),
//     );
//   }

//   Widget _buildSuggestedDestinations() {
//     return Padding(
//       padding: const EdgeInsets.symmetric(horizontal: 16.0),
//       child: Column(
//         crossAxisAlignment: CrossAxisAlignment.start,
//         children: [
//           _buildDestinationCard(
//             imageUrl: 'https://via.placeholder.com/400x200',
//             title: 'Beach Resort Lux',
//             location: 'TP. Hồ Chí Minh',
//             price: '\$830',
//             rating: 4.8,
//             town: 'SAIGON TOWN',
//           ),
//           const SizedBox(height: 16),
//           _buildDestinationCard(
//             imageUrl: 'https://via.placeholder.com/400x200',
//             title: 'Lux Hotel',
//             location: 'TP. Hồ Chí Minh',
//             price: '\$830',
//             rating: 4.8,
//             town: 'Sóng Dữ Pear',
//           ),
//         ],
//       ),
//     );
//   }

//   Widget _buildDestinationCard({
//     required String imageUrl,
//     required String title,
//     required String location,
//     required String price,
//     required double rating,
//     required String town,
//   }) {
//     return Card(
//       shape: RoundedRectangleBorder(
//         borderRadius: BorderRadius.circular(10),
//       ),
//       elevation: 5,
//       child: Column(
//         crossAxisAlignment: CrossAxisAlignment.start,
//         children: [
//           ClipRRect(
//             borderRadius: BorderRadius.vertical(top: Radius.circular(10)),
//             child: Stack(
//               children: [
//                 Image.network(imageUrl, width: double.infinity, height: 200, fit: BoxFit.cover),
//                 Positioned(
//                   top: 8,
//                   left: 8,
//                   child: Container(
//                     padding: EdgeInsets.symmetric(horizontal: 8, vertical: 4),
//                     decoration: BoxDecoration(
//                       color: Colors.black54,
//                       borderRadius: BorderRadius.circular(10),
//                     ),
//                     child: Text(
//                       town,
//                       style: TextStyle(color: Colors.white),
//                     ),
//                   ),
//                 ),
//                 Positioned(
//                   bottom: 8,
//                   right: 8,
//                   child: Container(
//                     padding: EdgeInsets.symmetric(horizontal: 8, vertical: 4),
//                     decoration: BoxDecoration(
//                       color: Colors.black54,
//                       borderRadius: BorderRadius.circular(10),
//                     ),
//                     child: Row(
//                       children: [
//                         Icon(Icons.star, color: Colors.amber, size: 16),
//                         SizedBox(width: 4),
//                         Text(
//                           rating.toString(),
//                           style: TextStyle(color: Colors.white),
//                         ),
//                       ],
//                     ),
//                   ),
//                 ),
//               ],
//             ),
//           ),
//           Padding(
//             padding: const EdgeInsets.all(16.0),
//             child: Column(
//               crossAxisAlignment: CrossAxisAlignment.start,
//               children: [
//                 Text(
//                   location,
//                   style: TextStyle(color: Colors.grey),
//                 ),
//                 const SizedBox(height: 8),
//                 Text(
//                   title,
//                   style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
//                 ),
//                 const SizedBox(height: 8),
//                 Text(
//                   price,
//                   style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
//                 ),
//               ],
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }


// import 'package:flutter/material.dart';
// import 'package:carousel_slider/carousel_slider.dart';

// class SearchPage extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         backgroundColor: Colors.transparent,
//         elevation: 0,
//       ),
//       body: SingleChildScrollView(
//         child: Padding(
//           padding: const EdgeInsets.all(16.0),
//           child: Column(
//             crossAxisAlignment: CrossAxisAlignment.start,
//             children: [
//               _buildSearchBar(),
//               const SizedBox(height: 16),
//               _buildHeader(),
//               const SizedBox(height: 16),
//               _buildSuggestedDestinations(context),
//             ],
//           ),
//         ),
//       ),
//     );
//   }

//   Widget _buildSearchBar() {
//     return TextField(
//       decoration: InputDecoration(
//         hintText: 'Search for a city, area, or a hotel',
//         prefixIcon: Icon(Icons.search),
//         border: OutlineInputBorder(
//           borderRadius: BorderRadius.circular(10),
//         ),
//         filled: true,
//         fillColor: Colors.grey[200],
//       ),
//     );
//   }

//   Widget _buildHeader() {
//     return Text(
//       'Gợi Ý Điểm Đến',
//       style: TextStyle(
//         fontSize: 24,
//         fontWeight: FontWeight.bold,
//       ),
//     );
//   }

//   Widget _buildSuggestedDestinations(BuildContext context) {
//     return Column(
//       children: [
//         _buildDestinationCard(context, 'Vũng Tàu', 'Discover new places and find new adventures.', 'acess/image/logo.png'),
//         const SizedBox(height: 16),
//         _buildDestinationCard(context, 'Đà Nẵng', 'Discover new places and find new adventures.', 'acess/image/logo.png'),
//         const SizedBox(height: 16),
//         _buildDestinationCard(context, 'Huế', 'Discover new places and find new adventures.', 'acess/image/logo.png'),
//         const SizedBox(height: 16),
//         _buildDestinationCard(context, 'Hồ Chí Minh', 'Discover new places and find new adventures.', 'acess/image/logo.png'),
//         const SizedBox(height: 16),
//         _buildDestinationCard(context, 'Hà Nội', 'Discover new places and find new adventures.', 'acess/image/logo.png'),
//       ],
//     );
//   }

//   Widget _buildDestinationCard(BuildContext context, String title, String description, String imagePath) {
//     return GestureDetector(
//       onTap: () {
//         Navigator.push(
//           context,
//           MaterialPageRoute(
//             builder: (context) => DetailPage(
//               title: title,
//               description: description,
//               imagePath: imagePath,
//             ),
//           ),
//         );
//       },
//       child: Container(
//         padding: const EdgeInsets.all(16.0),
//         decoration: BoxDecoration(
//           color: Colors.white,
//           borderRadius: BorderRadius.circular(15),
//           boxShadow: [
//             BoxShadow(
//               color: Colors.grey.withOpacity(0.2),
//               spreadRadius: 2,
//               blurRadius: 5,
//             ),
//           ],
//         ),
//         child: Row(
//           children: [
//             Container(
//               width: 60,
//               height: 60,
//               decoration: BoxDecoration(
//                 borderRadius: BorderRadius.circular(10),
//                 image: DecorationImage(
//                   image: AssetImage(imagePath),
//                   fit: BoxFit.cover,
//                 ),
//               ),
//             ),
//             const SizedBox(width: 16),
//             Expanded(
//               child: Column(
//                 crossAxisAlignment: CrossAxisAlignment.start,
//                 children: [
//                   Text(
//                     title,
//                     style: TextStyle(
//                       fontSize: 18,
//                       fontWeight: FontWeight.bold,
//                     ),
//                   ),
//                   const SizedBox(height: 8),
//                   Text(
//                     description,
//                     style: TextStyle(
//                       color: Colors.grey,
//                     ),
//                   ),
//                 ],
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }

// class DetailPage extends StatelessWidget {
//   final String title;
//   final String description;
//   final String imagePath;

//   const DetailPage({
//     required this.title,
//     required this.description,
//     required this.imagePath,
//   });
  
//     @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text(title),
//         backgroundColor: Colors.transparent,
//         elevation: 0,
//         leading: IconButton(
//           icon: Icon(Icons.arrow_back, color: Colors.black),
//           onPressed: () => Navigator.of(context).pop(),
//         ),
//         actions: [
//           IconButton(
//             icon: Icon(Icons.favorite_border, color: Colors.black),
//             onPressed: () {},
//           ),
//         ],
//       ),
//       body: SingleChildScrollView(
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: [
//             Stack(
//               children: [
//                 Image.asset('acess/image/logo.png', width: double.infinity, height: 200, fit: BoxFit.cover),
//                 Positioned(
//                   bottom: 16,
//                   left: 16,
//                   child: Row(
//                     children: [
//                       CircleAvatar(
//                         backgroundImage: AssetImage('acess/image/logo.png'),
//                       ),
//                       SizedBox(width: 8),
//                       CircleAvatar(
//                         backgroundImage: AssetImage('acess/image/logo.png'),
//                       ),
//                       SizedBox(width: 8),
//                       CircleAvatar(
//                         backgroundImage: AssetImage('acess/image/logo.png'),
//                       ),
//                       SizedBox(width: 8),
//                       CircleAvatar(
//                         backgroundImage: AssetImage('acess/image/logo.png'),
//                       ),
//                     ],
//                   ),
//                 ),
//               ],
//             ),
//             Padding(
//               padding: const EdgeInsets.all(16.0),
//               child: Column(
//                 crossAxisAlignment: CrossAxisAlignment.start,
//                 children: [
//                   Text(
//                     'Beach Resort Lux',
//                     style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
//                   ),
//                   SizedBox(height: 8),
//                   Row(
//                     children: [
//                       Icon(Icons.star, color: Colors.amber),
//                       Text('4.8'),
//                       Spacer(),
//                       Text(
//                         'Địa điểm hàng đầu: Được khách gần đây đánh giá cao (4.8 sao)',
//                         style: TextStyle(color: Colors.grey),
//                       ),
//                     ],
//                   ),
//                   SizedBox(height: 16),
//                   Text('Tiện Nghi', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
//                   SizedBox(height: 8),
//                   Wrap(
//                     spacing: 30,
//                     runSpacing: 30,
//                     children: [
//                       _buildAmenityIcon(Icons.wifi, 'Wifi'),
//                       _buildAmenityIcon(Icons.pool, 'Hồ Bơi'),
//                       _buildAmenityIcon(Icons.local_bar, 'Bar / Lounge'),
//                       _buildAmenityIcon(Icons.fitness_center, 'Gym'),
//                       _buildAmenityIcon(Icons.room_service, 'Dọn Phòng'),
//                       _buildAmenityIcon(Icons.local_parking, 'Giữ Xe'),
//                       _buildAmenityIcon(Icons.restaurant, 'Nhà Máy'),
//                       _buildAmenityIcon(Icons.breakfast_dining, 'Bữa Sáng'),
//                       _buildAmenityIcon(Icons.local_laundry_service, 'Giặt Giũ'),
//                     ],
//                   ),
//                   SizedBox(height: 16),
//                   Text('Mô Tả Khách Sạn', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
//                   SizedBox(height: 8),
//                   Text(
//                     'Nếu dự định có một kỳ nghỉ dài, thì Citadines Bayfront Nha Trang chính là lựa chọn dành cho quý khách. Với đầy đủ tiện nghi với chất lượng dịch vụ tuyệt vời, Citadines Bayfront Nha Trang sẽ khiến quý khách cảm thấy thoải mái như ở nhà vậy.\n\n'
//                     'Khách sạn này là nơi tốt nhất dành cho những ai mong muốn một nơi thanh bình, thư thái để ẩn mình khỏi đám đông ồn ào, xô bồ.\n\n'
//                     'Dịch vụ hướng dẫn song hành với hàng loạt các nghi tinh phong phú sẽ đem đến cho quý khách trải nghiệm của một kỳ nghỉ viên mãn nhất.\n\n'
//                     'Trung tâm thể dục của khách sạn là một trong những tiện nghi không thể bỏ qua khi lưu trú tại đây.\n\n'
//                     'Hưởng thụ một ngày thư thái đầy thú vị và tận hưởng các dịch vụ tại hồ bơi của khách sạn trong kỳ nghỉ vui bất tận.\n\n'
//                     'Quầy tiếp tân 24 giờ luôn sẵn sàng phục vụ quý khách từ thủ tục nhận phòng đến trả phòng hay bất kỳ yêu cầu nào. Nếu cần giúp đỡ xin hãy liên hệ đội ngũ tiếp tân, chúng tôi luôn sẵn sàng hỗ trợ quý khách.\n\n'
//                     'Tận hưởng những món ăn yêu thích với phong cách ẩm thực đặc biệt từ Citadines Bayfront Nha Trang chỉ dành riêng cho quý khách.\n\n'
//                     'Song WiFi phủ khắp các khu vực chung của khách sạn cho phép quý khách luôn kết nối với gia đình và bạn bè.\n\n'
//                     'Citadines Bayfront Nha Trang là khách sạn sở hữu đầy đủ tiện nghi và dịch vụ xuất sắc theo nhận định của hầu hết khách lưu trú.\n\n'
//                     'Tận hưởng trải nghiệm lưu trú xa hoa đầy thú vị không đâu sánh bằng tại Citadines Bayfront Nha Trang.',
//                     style: TextStyle(height: 1.5),
//                   ),
//                   SizedBox(height: 16),
//                   Text('Chính Sách Lưu Trú', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
//                   SizedBox(height: 8),
//                   Text(
//                     'Giờ nhận phòng/trả phòng\n\nNhận phòng từ 12:00\nTrả phòng trước 12:00\n\n'
//                     'Giấy Tờ Bắt Buộc\n\nKhi nhận phòng, bạn cần cung cấp Giấy Chứng nhận Kết Hôn. Vui lòng mang theo các giấy tờ cần thiết dưới dạng bản cứng.\n\n'
//                     'Hướng Dẫn Nhận Phòng Chung\n\n'
//                     'Trẻ em dưới 6 tuổi được ở miễn phí nếu sử dụng giường sẵn có.\n'
//                     'Trẻ em từ 6 tuổi trở lên (sử dụng giường sẵn có) sẽ phải trả phụ phí khi nhận phòng.\n'
//                     'Trẻ em từ 11 tuổi trở lên được tính là người lớn và phải sử dụng giường phụ. Phí giường phụ phụ thuộc vào loại phòng bạn chọn.\n'
//                     'Tất cả các yêu cầu đặc biệt đều dựa vào tình trạng phòng trống. Có thể phát sinh phụ phí.\n'
//                     'Để biết thêm thông tin cụ thể, vui lòng liên hệ với chỗ nghỉ để biết thêm chi tiết.\n\n'
//                     'Khách sẽ được chỗ nghỉ yêu cầu cung cấp giấy tờ khai báo y tế đầy đủ (sàng lọc PCR COVID-19, được cấp trong vòng 72 giờ trước khi nhận phòng). Yêu cầu này sẽ được thực hiện cho tất cả các đặt phòng có ngày đến trước ngày 31 tháng 7 năm 2021.',
//                     style: TextStyle(height: 1.5),
//                   ),
//                   SizedBox(height: 16),
//                   Center(
//                     child: ElevatedButton(
//                       onPressed: () {},
//                       child: Text('Chọn Phòng'),
//                       style: ElevatedButton.styleFrom(
//                         padding: EdgeInsets.symmetric(horizontal: 32, vertical: 16),
//                         textStyle: TextStyle(fontSize: 16),
//                       ),
//                     ),
//                   ),
//                 ],
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }

//   Widget _buildAmenityIcon(IconData icon, String label) {
//         return Container(
//       width: 70,
//       child: Column(
//         children: [
//           Icon(icon, size: 50),
//           SizedBox(height: 10),
//           Text(label, textAlign: TextAlign.center, style: TextStyle(fontSize: 15)),
//         ],
//       ),
//     );
//   }
// }
// import 'package:flutter/material.dart';
// import 'package:carousel_slider/carousel_slider.dart';

// class SearchPage extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         backgroundColor: Colors.transparent,
//         elevation: 0,
//       ),
//       body: SingleChildScrollView(
//         child: Padding(
//           padding: const EdgeInsets.all(16.0),
//           child: Column(
//             crossAxisAlignment: CrossAxisAlignment.start,
//             children: [
//               _buildSearchBar(),
//               const SizedBox(height: 16),
//               _buildHeader(),
//               const SizedBox(height: 16),
//               _buildSuggestedDestinations(context),
//             ],
//           ),
//         ),
//       ),
//     );
//   }

//   Widget _buildSearchBar() {
//     return TextField(
//       decoration: InputDecoration(
//         hintText: 'Search for a city, area, or a hotel',
//         prefixIcon: Icon(Icons.search),
//         border: OutlineInputBorder(
//           borderRadius: BorderRadius.circular(10),
//         ),
//         filled: true,
//         fillColor: Colors.grey[200],
//       ),
//     );
//   }

//   Widget _buildHeader() {
//     return Text(
//       'Gợi Ý Điểm Đến',
//       style: TextStyle(
//         fontSize: 24,
//         fontWeight: FontWeight.bold,
//       ),
//     );
//   }

//   Widget _buildSuggestedDestinations(BuildContext context) {
//     return Column(
//       children: [
//         _buildDestinationCard(context, 'Vũng Tàu', 'Discover new places and find new adventures.', 'acess/image/logo.png'),
//         const SizedBox(height: 16),
//         _buildDestinationCard(context, 'Đà Nẵng', 'Discover new places and find new adventures.', 'acess/image/logo.png'),
//         const SizedBox(height: 16),
//         _buildDestinationCard(context, 'Huế', 'Discover new places and find new adventures.', 'acess/image/logo.png'),
//         const SizedBox(height: 16),
//         _buildDestinationCard(context, 'Hồ Chí Minh', 'Discover new places and find new adventures.', 'acess/image/logo.png'),
//         const SizedBox(height: 16),
//         _buildDestinationCard(context, 'Hà Nội', 'Discover new places and find new adventures.', 'acess/image/logo.png'),
//       ],
//     );
//   }

//   Widget _buildDestinationCard(BuildContext context, String title, String description, String imagePath) {
//     return GestureDetector(
//       onTap: () {
//         Navigator.push(
//           context,
//           MaterialPageRoute(
//             builder: (context) => DetailPage(
//               title: title,
//               description: description,
//               imagePaths: [
//                 'acess/image/logo.png',
//                 'acess/image/logo.png',
//                 'acess/image/logo.png',
//                 'acess/image/logo.png',
//               ],
//             ),
//           ),
//         );
//       },
//       child: Container(
//         padding: const EdgeInsets.all(16.0),
//         decoration: BoxDecoration(
//           color: Colors.white,
//           borderRadius: BorderRadius.circular(15),
//           boxShadow: [
//             BoxShadow(
//               color: Colors.grey.withOpacity(0.2),
//               spreadRadius: 2,
//               blurRadius: 5,
//             ),
//           ],
//         ),
//         child: Row(
//           children: [
//             Container(
//               width: 60,
//               height: 60,
//               decoration: BoxDecoration(
//                 borderRadius: BorderRadius.circular(10),
//                 image: DecorationImage(
//                   image: AssetImage(imagePath),
//                   fit: BoxFit.cover,
//                 ),
//               ),
//             ),
//             const SizedBox(width: 16),
//             Expanded(
//               child: Column(
//                 crossAxisAlignment: CrossAxisAlignment.start,
//                 children: [
//                   Text(
//                     title,
//                     style: TextStyle(
//                       fontSize: 18,
//                       fontWeight: FontWeight.bold,
//                     ),
//                   ),
//                   const SizedBox(height: 8),
//                   Text(
//                     description,
//                     style: TextStyle(
//                       color: Colors.grey,
//                     ),
//                   ),
//                 ],
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }

// class DetailPage extends StatelessWidget {
//   final String title;
//   final String description;
//   final List<String> imagePaths;

//   const DetailPage({
//     required this.title,
//     required this.description,
//     required this.imagePaths,
//   });

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text(title),
//         backgroundColor: Colors.transparent,
//         elevation: 0,
//         leading: IconButton(
//           icon: Icon(Icons.arrow_back, color: Colors.black),
//           onPressed: () => Navigator.of(context).pop(),
//         ),
//         actions: [
//           IconButton(
//             icon: Icon(Icons.favorite_border, color: Colors.black),
//             onPressed: () {},
//           ),
//         ],
//       ),
//       body: SingleChildScrollView(
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: [
//             CarouselSlider(
//               options: CarouselOptions(
//                 height: 200,
//                 autoPlay: true,
//                 enlargeCenterPage: true,
//                 aspectRatio: 16 / 9,
//                 viewportFraction: 0.8,
//               ),
//               items: imagePaths.map((path) {
//                 return Builder(
//                   builder: (BuildContext context) {
//                     return Image.asset(
//                       path,
//                       fit: BoxFit.cover,
//                       width: double.infinity,
//                     );
//                   },
//                 );
//               }).toList(),
//             ),
//             Padding(
//               padding: const EdgeInsets.all(16.0),
//               child: Column(
//                 crossAxisAlignment: CrossAxisAlignment.start,
//                 children: [
//                   Text(
//                     'Beach Resort Lux',
//                     style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
//                   ),
//                   SizedBox(height: 8),
//                   Row(
//                     children: [
//                       Icon(Icons.star, color: Colors.amber),
//                       Text('4.8'),
//                       Spacer(),
//                       Text(
//                         'Địa điểm hàng đầu: Được khách gần đây đánh giá cao (4.8 sao)',
//                         style: TextStyle(color: Colors.grey),
//                       ),
//                     ],
//                   ),
//                   SizedBox(height: 16),
//                   Text('Tiện Nghi', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
//                   SizedBox(height: 8),
//                   Wrap(
//                     spacing: 30,
//                     runSpacing: 30,
//                     children: [
//                       _buildAmenityIcon(Icons.wifi, 'Wifi'),
//                       _buildAmenityIcon(Icons.pool, 'Hồ Bơi'),
//                       _buildAmenityIcon(Icons.local_bar, 'Bar / Lounge'),
//                       _buildAmenityIcon(Icons.fitness_center, 'Gym'),
//                       _buildAmenityIcon(Icons.room_service, 'Dọn Phòng'),
//                       _buildAmenityIcon(Icons.local_parking, 'Giữ Xe'),
//                       _buildAmenityIcon(Icons.restaurant, 'Nhà Máy'),
//                       _buildAmenityIcon(Icons.breakfast_dining, 'Bữa Sáng'),
//                       _buildAmenityIcon(Icons.local_laundry_service, 'Giặt Giũ'),
//                     ],
//                   ),
//                   SizedBox(height: 16),
//                   Text('Mô Tả Khách Sạn', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
//                   SizedBox(height: 8),
//                   Text(
//                     'Nếu dự định có một kỳ nghỉ dài, thì Citadines Bayfront Nha Trang chính là lựa chọn dành cho quý khách. Với đầy đủ tiện nghi với chất lượng dịch vụ tuyệt vời, Citadines Bayfront Nha Trang sẽ khiến quý khách cảm thấy thoải mái như ở nhà vậy.\n\n'
//                     'Khách sạn này là nơi tốt nhất dành cho những ai mong muốn một nơi thanh bình, thư thái để ẩn mình khỏi đám đông ồn ào, xô bồ.\n\n'
//                     'Dịch vụ hướng dẫn song hành với hàng loạt các nghi tinh phong phú sẽ đem đến cho quý khách trải nghiệm của một kỳ nghỉ viên mãn nhất.\n\n'
//                     'Trung tâm thể dục của khách sạn là một trong những tiện nghi không thể bỏ qua khi lưu trú tại đây.\n\n'
//                     'Hưởng thụ một ngày thư thái đầy thú vị và tận hưởng các dịch vụ tại hồ bơi của khách sạn trong kỳ nghỉ vui bất tận.\n\n'
//                     'Quầy tiếp tân 24 giờ luôn sẵn sàng phục vụ quý khách từ thủ tục nhận phòng đến trả phòng hay bất kỳ yêu cầu nào. Nếu cần giúp đỡ xin hãy liên hệ đội ngũ tiếp tân, chúng tôi luôn sẵn sàng hỗ trợ quý khách.\n\n'
//                     'Tận hưởng những món ăn yêu thích với phong cách ẩm thực đặc biệt từ Citadines Bayfront Nha Trang chỉ dành riêng cho quý khách.\n\n'
//                     'Song WiFi phủ khắp các khu vực chung của khách sạn cho phép quý khách luôn kết nối với gia đình và bạn bè.\n\n'
//                     'Citadines Bayfront Nha Trang là khách sạn sở hữu đầy đủ tiện nghi và dịch vụ xuất sắc theo nhận định của hầu hết khách lưu trú.\n\n'
//                     'Tận hưởng trải nghiệm lưu trú xa hoa đầy thú vị không đâu sánh bằng tại Citadines Bayfront Nha Trang.',
//                     style: TextStyle(height: 1.5),
//                   ),
//                   SizedBox(height: 16),
//                   Text('Chính Sách Lưu Trú', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
//                   SizedBox(height: 8),
//                   Text(
//                     'Giờ nhận phòng/trả phòng\n\nNhận phòng từ 12:00\nTrả phòng trước 12:00\n\n'
//                     'Giấy Tờ Bắt Buộc\n\nKhi nhận phòng, bạn cần cung cấp Giấy Chứng nhận Kết Hôn. Vui lòng mang theo các giấy tờ cần thiết dưới dạng bản cứng.\n\n'
//                     'Hướng Dẫn Nhận Phòng Chung\n\n'
//                     'Trẻ em dưới 6 tuổi được ở miễn phí nếu sử dụng giường sẵn có.\n'
//                     'Trẻ em từ 6 tuổi trở lên (sử dụng giường sẵn có) sẽ phải trả phụ phí khi nhận phòng.\n'
//                     'Trẻ em từ 11 tuổi trở lên được tính là người lớn và phải sử dụng giường phụ. Phí giường phụ phụ thuộc vào loại phòng bạn chọn.\n'
//                     'Tất cả các yêu cầu đặc biệt đều dựa vào tình trạng phòng trống. Có thể phát sinh phụ phí.\n'
//                     'Để biết thêm thông tin cụ thể, vui lòng liên hệ với chỗ nghỉ để biết thêm chi tiết.\n\n'
//                     'Khách sẽ được chỗ nghỉ yêu cầu cung cấp giấy tờ khai báo y tế đầy đủ (sàng lọc PCR COVID-19, được cấp trong vòng 72 giờ trước khi nhận phòng). Yêu cầu này sẽ được thực hiện cho tất cả các đặt phòng có ngày đến trước ngày 31 tháng 7 năm 2021.',
//                     style: TextStyle(height: 1.5),
//                   ),
//                   SizedBox(height: 16),
//                   Center(
//                     child: ElevatedButton(
//                       onPressed: () {},
//                       child: Text('Chọn Phòng'),
//                       style: ElevatedButton.styleFrom(
//                         padding: EdgeInsets.symmetric(horizontal: 32, vertical: 16),
//                         textStyle: TextStyle(fontSize: 16),
//                       ),
//                     ),
//                   ),
//                 ],
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }

//   Widget _buildAmenityIcon(IconData icon, String label) {
//     return Container(
//       width: 70,
//       child: Column(
//         children: [
//           Icon(icon, size: 50),
//           SizedBox(height: 10),
//           Text(label, textAlign: TextAlign.center, style: TextStyle(fontSize: 15)),
//         ],
//       ),
//     );
//   }
// }

// import 'package:flutter/material.dart';
// import 'package:hotel_des/Homepage/SH.dart';
// import '../pages/SearchDetailPage.dart';

// class SearchPage extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         backgroundColor: Colors.transparent,
//         elevation: 0,
//       ),
//       body: SingleChildScrollView(
//         child: Padding(
//           padding: const EdgeInsets.all(16.0),
//           child: Column(
//             crossAxisAlignment: CrossAxisAlignment.start,
//             children: [
//               _buildSearchBar(),
//               const SizedBox(height: 16),
//               _buildHeader(),
//               const SizedBox(height: 16),
//               _buildSuggestedDestinations(),
//             ],
//           ),
//         ),
//       ),
//     );
//   }

//   Widget _buildSearchBar() {
//     return TextField(
//       decoration: InputDecoration(
//         hintText: 'Search for a city, area, or a hotel',
//         prefixIcon: Icon(Icons.search),
//         border: OutlineInputBorder(
//           borderRadius: BorderRadius.circular(10),
//         ),
//         filled: true,
//         fillColor: Colors.grey[200],
//       ),
//     );
//   }

//   Widget _buildHeader() {
//     return Text(
//       'Gợi Ý Điểm Đến',
//       style: TextStyle(
//         fontSize: 24,
//         fontWeight: FontWeight.bold,
//       ),
//     );
//   }

//   Widget _buildSuggestedDestinations() {
//     return Column(
//       children: [
//         _buildDestinationCard('Vũng Tàu', 'Discover new places and find new adventures.', 'assets/vungtau.png'),
//         const SizedBox(height: 16),
//         _buildDestinationCard('Đà Nẵng', 'Discover new places and find new adventures.', 'assets/danang.png'),
//         const SizedBox(height: 16),
//         _buildDestinationCard('Huế', 'Discover new places and find new adventures.', 'assets/hue.png'),
//         const SizedBox(height: 16),
//         _buildDestinationCard('Hồ Chí Minh', 'Discover new places and find new adventures.', 'assets/hochiminh.png'),
//         const SizedBox(height: 16),
//         _buildDestinationCard('Hà Nội', 'Discover new places and find new adventures.', 'assets/hanoi.png'),
//       ],
//     );
//   }

//   Widget _buildDestinationCard(String title, String description, String imagePath,) {
//     return InkWell(
//       onTap: () {
//         // ignore: non_constant_identifier_names
//         Navigator.push(  () as BuildContext, MaterialPageRoute(builder: (contex) =>Sh()));
//       },
//       child: Container(
//         padding: const EdgeInsets.all(16.0),
//         decoration: BoxDecoration(
//           color: Colors.white,
//           borderRadius: BorderRadius.circular(15),
//           boxShadow: [
//             BoxShadow(
//               color: Colors.grey.withOpacity(0.2),
//               spreadRadius: 2,
//               blurRadius: 5,
//             ),
//           ],
//         ),
//         child: Row(
//           children: [
//             Container(
//               width: 60,
//               height: 60,
//               decoration: BoxDecoration(
//                 borderRadius: BorderRadius.circular(10),
//                 image: DecorationImage(
//                   image: AssetImage(imagePath),
//                   fit: BoxFit.cover,
//                 ),
//               ),
//             ),
//             const SizedBox(width: 16),
//             Expanded(
//               child: Column(
//                 crossAxisAlignment: CrossAxisAlignment.start,
//                 children: [
//                   Text(
//                     title,
//                     style: TextStyle(
//                       fontSize: 18,
//                       fontWeight: FontWeight.bold,
//                     ),
//                   ),
//                   const SizedBox(height: 8),
//                   Text(
//                     description,
//                     style: TextStyle(
//                       color: Colors.grey,
//                     ),
//                   ),
//                 ],
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }

import 'package:flutter/material.dart';
import '../pages/SearchDetailPage.dart';

class SearchPage extends StatelessWidget {
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
