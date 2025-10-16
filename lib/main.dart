import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const ShuaibIslamicApp());
}

class ShuaibIslamicApp extends StatelessWidget {
  const ShuaibIslamicApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Shuaib Islamic App',
      theme: ThemeData(
        primarySwatch: Colors.green,
        textTheme: GoogleFonts.notoNastaliqUrduTextTheme(),
      ),
      home: const HomeScreen(),
    );
  }
}

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int currentIndex = 0;

  final List<Widget> screens = const [
    Center(child: Text('📖 قرآن')),
    Center(child: Text('📜 حدیث')),
    Center(child: Text('⚖️ فتاویٰ')),
    Center(child: Text('🌿 اذکار')),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Shuaib Islamic App'),
        backgroundColor: Colors.green.shade700,
      ),
      body: screens[currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: currentIndex,
        onTap: (i) => setState(() => currentIndex = i),
        selectedItemColor: Colors.green.shade800,
        unselectedItemColor: Colors.grey,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.menu_book), label: 'قرآن'),
          BottomNavigationBarItem(icon: Icon(Icons.book), label: 'حدیث'),
          BottomNavigationBarItem(icon: Icon(Icons.balance), label: 'فتاویٰ'),
          BottomNavigationBarItem(icon: Icon(Icons.spa), label: 'اذکار'),
        ],
      ),
    );
  }
}
