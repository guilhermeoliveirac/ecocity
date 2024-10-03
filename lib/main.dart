import 'package:flutter/material.dart';

import 'home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'ECOCITY',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const SplashScreen(), 
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
        MaterialPageRoute(builder: (context) => const RegisterScreen()),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/CAPA.png'), 
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }
}

// Tela inicial com botão para acessar a conta ou cadastrar
class RegisterScreen extends StatelessWidget {
  const RegisterScreen({super.key});

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
              Navigator.of(context).push(
                MaterialPageRoute(builder: (context) => const LoginScreen()),
              );
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
              // Navegar para a tela de cadastro ao clicar no botão "Me cadastrar"
              Navigator.of(context).push(
                MaterialPageRoute(builder: (context) => const SignUpScreen()),
              );
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

// TELA DE ACESSAR MINHA CONTA
class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.black),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
              child: Image.asset(
                'assets/logo.png', // Logo da "EcoCity"
                height: 100,
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
            TextField(
              decoration: const InputDecoration(
                labelText: 'E-mail:',
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(height: 20),
            TextField(
              decoration: const InputDecoration(
                labelText: 'Senha:',
                border: OutlineInputBorder(),
              ),
              obscureText: true,
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).pushReplacement(
                MaterialPageRoute(builder: (context) => const HomeScreen()),);
              },
              child: const Text('Acessar'),
              style: ElevatedButton.styleFrom(
                padding:
                    const EdgeInsets.symmetric(horizontal: 50, vertical: 15),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
                backgroundColor:
                    const Color.fromARGB(255, 107, 175, 19), // Cor de fundo
                foregroundColor: Colors.white, // Cor do texto
              ),
            ),
            const SizedBox(height: 10),
            TextButton(
              onPressed: () {
                // Ação para recuperar senha
              },
              child: const Text(
                'Esqueci minha senha',
                style: TextStyle(color: Colors.green),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

// Tela de "ME CADASTRAR"
class SignUpScreen extends StatelessWidget {
  const SignUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.black),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
              child: Image.asset(
                'assets/logo.png', // Logo da "EcoCity"
                height: 100,
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
            TextField(
              decoration: const InputDecoration(
                labelText: 'Nome completo:',
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(height: 20),
            TextField(
              decoration: const InputDecoration(
                labelText: 'E-mail:',
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(height: 20),
            TextField(
              decoration: const InputDecoration(
                labelText: 'Senha:',
                border: OutlineInputBorder(),
              ),
              obscureText: true,
            ),
            const SizedBox(height: 20),
            TextField(
              decoration: const InputDecoration(
                labelText: 'Confirme sua senha:',
                border: OutlineInputBorder(),
              ),
              obscureText: true,
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                // Ação de cadastro
                Navigator.of(context).push(
                  MaterialPageRoute(
                      builder: (context) => const SuccessScreen()),
                );
              },
              child: const Text('Cadastrar'),
              style: ElevatedButton.styleFrom(
                padding:
                    const EdgeInsets.symmetric(horizontal: 50, vertical: 15),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
                backgroundColor:
                    const Color.fromARGB(255, 107, 175, 19), // Cor de fundo
                foregroundColor: Colors.white, // Cor do texto
              ),
            ),
            const SizedBox(height: 10),
            TextButton(
              onPressed: () {
                // Ação de cadastro com Google
              },
              child: const Text(
                'Me cadastrar com o Google',
                style: TextStyle(color: Color.fromARGB(255, 107, 175, 19)),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

// Tela de sucesso após tela de cadastro
class SuccessScreen extends StatelessWidget {
  const SuccessScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                'assets/logo.png', // Insira o caminho correto do logo
                height: 100,
              ),
              const SizedBox(height: 20),
              const Text(
                'Sua conta foi cadastrada com sucesso!',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 16,
                  color: Color.fromARGB(255, 124, 124, 124),
                ),
              ),
              const SizedBox(height: 10),
              const Text(
                'Agora acesse e explore nossos serviços',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 14,
                  color: Color.fromARGB(255, 124, 124, 124),
                ),
              ),
              const SizedBox(height: 40),
              ElevatedButton(
                onPressed: () {
                  Navigator.of(context).pushReplacement(
                    MaterialPageRoute(
                        builder: (context) => const HomeScreen()),
                  );
                },
                style: ElevatedButton.styleFrom(
                  padding: const EdgeInsets.symmetric(
                      horizontal: 50, vertical: 15),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                  backgroundColor: const Color.fromARGB(255, 107, 175, 19),
                ),
                child: const Text(
                  'Acessar',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
