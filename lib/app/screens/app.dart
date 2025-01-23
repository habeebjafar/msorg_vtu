import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import 'home/views/home_screen.dart';

class App extends StatefulWidget {
  const App({super.key});

  @override
  State<App> createState() => _AppState();
}

class _AppState extends State<App> {
  @override
  void initState() {
    super.initState();
  }

  // List of pages to display for each tab
  int _currentIndex = 0; // Keeps track of the selected tab
  bool selectedColor = false;
  final List<Widget> _pages = [
    const HomeScreen(),
    const Center(child: Text('Receipt')),
    const Center(child: Text('Wallet')),
    const Center(child: Text('Account')),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      bottomNavigationBar: BottomAppBar(
        // shape: const CircularNotchedRectangle(),
        // notchMargin: 16,
        notchMargin: 0,
        shadowColor: Colors.white,
        color: Colors.white,
        padding: const EdgeInsets.all(0),
        elevation: 10,
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          decoration: const BoxDecoration(
              color: Color(0xFF191919),
              borderRadius: BorderRadius.vertical(top: Radius.circular(24))),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              _buttonNavWidgetSvg(
                  assetName: 'assets/svgs/home-alt.svg', index: 0),
              _buttonNavWidgetSvg(
                  assetName: 'assets/svgs/receipt.svg', index: 1),
              // const SizedBox(width: 48), // Space for FAB
              _buttonNavWidgetSvg(
                  assetName: 'assets/svgs/wallet.svg', index: 2),
              _buttonNavWidgetSvg(assetName: 'assets/svgs/user.svg', index: 3),
            ],
          ),
        ),
      ),
      body: _pages[_currentIndex],
    );
  }

  Widget _buttonNavWidgetSvg({String? assetName, index}) {
    return GestureDetector(
      onTap: () {
        setState(() {
          _currentIndex = index;
        });
      },
      child: Container(
        padding:
            const EdgeInsetsDirectional.symmetric(horizontal: 13, vertical: 6),
        decoration: BoxDecoration(
            color: const Color(0xFFA60B09)
                .withOpacity(_currentIndex == index ? 1 : 0),
            borderRadius: BorderRadius.circular(30)),
        child: SvgPicture.asset(
          assetName!,
          // height: 24,
          width: 24,
          // colorFilter: _currentIndex == index
          //     ? const ColorFilter.mode(
          //         Colors.red,
          //         BlendMode.srcIn,
          //       )
          //     : null,
        ),
      ),
    );
  }
}
