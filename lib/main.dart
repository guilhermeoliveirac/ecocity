import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const SplashScreen(), // Defina a SplashScreen como home
      debugShowCheckedModeBanner: false,
    );
  }
}

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    // Navegar para a tela inicial após 3 segundos
    Future.delayed(const Duration(seconds: 3), () {
      Navigator.of(context).pushReplacement(
        MaterialPageRoute(builder: (context) => const HomeScreen()),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/CAPA.png'), // Imagem da tela de splash
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }
}

// Tela inicial após a splash
class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: Image.asset(
              'assets/logo.png', // Adicione o logo do "EcoCity"
              height: 100, // Tamanho da imagem
            ),
          ),
          const SizedBox(height: 20),
          const Text(
            'Seu app de sustentabilidade urbana',
            style: TextStyle(
              fontSize: 16,
              color: Color.fromARGB(255, 124, 124, 124),
            ),
          ),
          const SizedBox(height: 40),
          ElevatedButton(
            onPressed: () {
              // Ação do botão
            },
            style: ElevatedButton.styleFrom(
              padding: const EdgeInsets.symmetric(horizontal: 50, vertical: 15),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20),
              ),
              backgroundColor:
                  const Color.fromARGB(255, 107, 175, 19), // Cor de fundo
            ),
            child: const Text(
              'Acessar minha conta',
              style: TextStyle(
                color: Colors.white, // Cor do texto
                fontSize: 16, // Tamanho da fonte (ajuste conforme necessário)
              ),
            ),
          ),
          const SizedBox(height: 10),
          TextButton(
            onPressed: () {
              // Ação do botão "Me cadastrar"
            },
            child: const Text(
              'Me cadastrar',
              style: TextStyle(color: Color.fromARGB(255, 107, 175, 19)),
            ),
          ),
        ],
      ),
    );
  }
}
