import 'package:flutter/material.dart';

void main() {
  runApp(const GameCompanyApp());
}

class GameCompanyApp extends StatelessWidget {
  const GameCompanyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Game Studio',
      theme: ThemeData(
        primarySwatch: Colors.deepPurple,
        fontFamily: 'Roboto',
      ),
      home: const HomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[900],
      body: SingleChildScrollView(
        child: Column(
          children: [
            // Seção 1: Header/Hero
            _buildHeroSection(),
            
            // Seção 2: Jogos em Destaque
            _buildFeaturedGamesSection(),
            
            // Seção 3: Sobre a Empresa
            _buildAboutSection(),
          ],
        ),
      ),
    );
  }

  Widget _buildHeroSection() {
    return Container(
      height: 600,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [
            Colors.deepPurple[800]!,
            Colors.grey[900]!,
          ],
        ),
      ),
      child: Stack(
        children: [
          // Background image/pattern
          Positioned.fill(
            child: Opacity(
              opacity: 0.1,
              child: Container(
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('assets/pattern.png'), // Adicione uma imagem de padrão
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
          ),
          
          // Conteúdo do Hero
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'CRIAMOS EXPERIÊNCIAS\nINCRÍVEIS',
                  style: TextStyle(
                    fontSize: 48,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                    height: 1.1,
                  ),
                ),
                const SizedBox(height: 20),
                Text(
                  'Uma empresa apaixonada por criar jogos que marcam gerações. Inovação, diversão e qualidade em cada projeto.',
                  style: TextStyle(
                    fontSize: 18,
                    color: Colors.grey[300],
                    height: 1.5,
                  ),
                ),
                const SizedBox(height: 30),
                Row(
                  children: [
                    ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.deepPurple,
                        padding: const EdgeInsets.symmetric(
                          horizontal: 32,
                          vertical: 16,
                        ),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8),
                        ),
                      ),
                      child: const Text(
                        'VER JOGOS',
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                    ),
                    const SizedBox(width: 16),
                    OutlinedButton(
                      onPressed: () {},
                      style: OutlinedButton.styleFrom(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 32,
                          vertical: 16,
                        ),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8),
                        ),
                        side: const BorderSide(color: Colors.white),
                      ),
                      child: Text(
                        'SAIBA MAIS',
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildFeaturedGamesSection() {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 80, horizontal: 24),
      color: Colors.grey[850],
      child: Column(
        children: [
          Text(
            'JOGOS EM DESTAQUE',
            style: TextStyle(
              fontSize: 32,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
          const SizedBox(height: 10),
          Text(
            'Conheça nossos títulos mais populares',
            style: TextStyle(
              fontSize: 16,
              color: Colors.grey[400],
            ),
          ),
          const SizedBox(height: 50),
          
          // Grid de jogos
          GridView.count(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            crossAxisCount: 3,
            crossAxisSpacing: 20,
            mainAxisSpacing: 20,
            childAspectRatio: 0.7,
            children: [
              _buildGameCard(
                'Cyber Nexus',
                'Ação/FPS',
                'assets/game1.jpg',
                Colors.blue,
              ),
              _buildGameCard(
                'Mythic Quest',
                'RPG/Aventura',
                'assets/game2.jpg',
                Colors.orange,
              ),
              _buildGameCard(
                'Quantum Drift',
                'Corrida/Futurista',
                'assets/game3.jpg',
                Colors.green,
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildGameCard(String title, String genre, String image, Color color) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        color: Colors.grey[800],
        boxShadow: [
          BoxShadow(
            color: color.withOpacity(0.3),
            blurRadius: 10,
            offset: const Offset(0, 5),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Placeholder para imagem do jogo
          Container(
            height: 200,
            decoration: BoxDecoration(
              borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(12),
                topRight: Radius.circular(12),
              ),
              color: color.withOpacity(0.2),
            ),
            child: Center(
              child: Icon(
                Icons.sports_esports,
                size: 60,
                color: color,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: const TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
                const SizedBox(height: 4),
                Text(
                  genre,
                  style: TextStyle(
                    fontSize: 14,
                    color: Colors.grey[400],
                  ),
                ),
                const SizedBox(height: 12),
                ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    backgroundColor: color,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(6),
                    ),
                  ),
                  child: const Text(
                    'DETALHES',
                    style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildAboutSection() {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 80, horizontal: 24),
      color: Colors.grey[900],
      child: Column(
        children: [
          Text(
            'SOBRE NÓS',
            style: TextStyle(
              fontSize: 32,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
          const SizedBox(height: 10),
          Text(
            'Conheça nossa história e missão',
            style: TextStyle(
              fontSize: 16,
              color: Colors.grey[400],
            ),
          ),
          const SizedBox(height: 50),
          
          Row(
            children: [
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Uma Jornada de Inovação',
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                    const SizedBox(height: 20),
                    Text(
                      'Fundada em 2010, nossa empresa tem se dedicado a criar experiências de jogo únicas e memoráveis. '
                      'Com uma equipe de desenvolvedores apaixonados e talentosos, já lançamos mais de 20 títulos '
                      'que conquistaram milhões de jogadores ao redor do mundo.\n\n'
                      'Nossa missão é simples: criar jogos que não apenas entretêm, mas também inspiram e conectam pessoas.',
                      style: TextStyle(
                        fontSize: 16,
                        color: Colors.grey[300],
                        height: 1.6,
                      ),
                    ),
                    const SizedBox(height: 30),
                    
                    // Estatísticas
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        _buildStatItem('20+', 'Jogos Lançados'),
                        _buildStatItem('10M+', 'Jogadores'),
                        _buildStatItem('15', 'Prêmios'),
                      ],
                    ),
                  ],
                ),
              ),
              const SizedBox(width: 60),
              
              // Placeholder para imagem da equipe
              Container(
                width: 400,
                height: 300,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  color: Colors.deepPurple.withOpacity(0.2),
                ),
                child: const Icon(
                  Icons.people_alt,
                  size: 80,
                  color: Colors.deepPurple,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildStatItem(String number, String label) {
    return Column(
      children: [
        Text(
          number,
          style: const TextStyle(
            fontSize: 32,
            fontWeight: FontWeight.bold,
            color: Colors.deepPurple,
          ),
        ),
        const SizedBox(height: 5),
        Text(
          label,
          style: TextStyle(
            fontSize: 14,
            color: Colors.grey[400],
          ),
        ),
      ],
    );
  }
}