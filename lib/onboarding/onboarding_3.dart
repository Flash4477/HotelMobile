import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Onboarding3Widget extends StatefulWidget {
  const Onboarding3Widget({super.key});

  @override
  State<Onboarding3Widget> createState() => _Onboarding3WidgetState();
}

class _Onboarding3WidgetState extends State<Onboarding3Widget> {
  late FocusNode _unfocusNode;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _unfocusNode = FocusNode();
  }

  @override
  void dispose() {
    _unfocusNode.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => _unfocusNode.canRequestFocus
          ? FocusScope.of(context).requestFocus(_unfocusNode)
          : FocusScope.of(context).unfocus(),
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: Theme.of(context).scaffoldBackgroundColor,
        body: SafeArea(
          top: true,
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(8),
                child: Image.asset(
                  'acess/4.png',
                  width: 444,
                  height: 400,
                  fit: BoxFit.cover,
                ),
              ),
              Text(
                'Dễ Dàng Thanh Toán',
                style: GoogleFonts.outfit(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Padding(
                padding: EdgeInsets.all(18),
                child: Text(
                  'Thanh toán được thực hiện dễ dàng thông qua thẻ ghi nợ, thẻ tín dụng và nhiều cách khác để thanh toán cho nơi ở của bạn.',
                  textAlign: TextAlign.center,
                  style: GoogleFonts.readexPro(
                    fontSize: 16,
                  ),
                ),
              ),
              const SizedBox(height: 200),
              Flexible(
                child: ElevatedButton(
                  onPressed: () {
                    print('Button pressed ...');
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color(0xFF393939),
                    padding: EdgeInsets.symmetric(horizontal: 64, vertical: 12),
                    textStyle: GoogleFonts.readexPro(
                      fontSize: 16,
                      color: Colors.white,
                    ),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(16),
                    ),
                    elevation: 3,
                  ),
                    child: Text(style: TextStyle(color: Colors.white),'Tiếp Tục'),                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
