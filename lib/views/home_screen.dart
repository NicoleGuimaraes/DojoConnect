import 'package:flutter/material.dart';
import 'package:projeto/routes/app_routes.dart';
const IconData sports = IconData(0xe5e3, fontFamily: 'MaterialIcons');
class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('DojoConnect'),
        backgroundColor: Color.fromARGB(255, 175, 53, 39),
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            const UserAccountsDrawerHeader(
              decoration: BoxDecoration(
                color: Color.fromARGB(255, 175, 53, 39),
              ),
              accountName: Text('Nome do Usuário'),
              accountEmail: Text('usuario@email.com'),
              currentAccountPicture: CircleAvatar(
                backgroundColor: Colors.white,
                child: Icon(Icons.person),
              ),
            ),
            ListTile(
              leading: const Icon(Icons.dashboard),
              title: const Text('Lista de Usuários'),
              onTap: () {
                Navigator.pushNamed(context, AppRoutes.USER_LIST);
              },
            ),
            ListTile(
              leading: const Icon(Icons.settings),
              title: const Text('Configuração de conta'),
              onTap: () {
                Navigator.pushNamed(context, AppRoutes.CONFIG);
              },
            ),
            ListTile(
              leading: const Icon(Icons.note),
              title: const Text('Sobre'),
              onTap: () {
                Navigator.pushNamed(context, AppRoutes.SOBRE);
              },
            ),
            ListTile(
              leading: const Icon(Icons.question_mark_sharp),
              title: const Text('Questionário'),
              onTap: () {
                Navigator.pushNamed(context, AppRoutes.QUESTIONARIO);
              },
            ),
            ListTile(
              leading: const Icon(Icons.exit_to_app),
              title: const Text('Sair'),
              onTap: () {
                Navigator.pushNamed(context, AppRoutes.LOGIN);
              },
            ),
          ],
        ),
      ),
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('images/dojoconnect.png'),
            fit: BoxFit.cover,
          ),
        ),
        child: Center(
          
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Center(
                child: Text(
                  'Bem-vindo ao DojoConnect! ',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    backgroundColor: Colors.white.withOpacity(0.1),
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    
                  ),
                ),
              ),
              const SizedBox(
                height: 50,
                child: Text('Clique na modalidade abaixo disponível para saber mais!'),
              ),
              _buildModalidadeButton(
                onPressed: () {
                Navigator.pushNamed(context, AppRoutes.KUNGFU);
                },
                label: 'Kung Fu',
                icon: Icons.sports_martial_arts_rounded,
              ),
              _buildModalidadeButton(
                onPressed: () {
                Navigator.pushNamed(context, AppRoutes.JIUJITSU);
                },
                label: 'Jiu-Jitsu',
                icon: Icons.sports_kabaddi_rounded,
              ),
               _buildModalidadeButton(
                onPressed: () {
                Navigator.pushNamed(context, AppRoutes.BOXE);
                },
                label: 'Boxe',
                icon: Icons.sports_mma,
              ),
              
              _buildModalidadeButton(
                onPressed: () {
                  Navigator.pushNamed(context, AppRoutes.JUDO);
                },
                label: 'Judô',
                icon: Icons.sports_kabaddi_outlined,
              ),
              _buildModalidadeButton(
                onPressed: () {
                  Navigator.pushNamed(context, AppRoutes.TAICHI);
                },
                label: 'Tai Chi Chuan',
                icon: Icons.sports_gymnastics_outlined,
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildModalidadeButton({
    required VoidCallback onPressed,
    required String label,
    required IconData icon,
  }) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        foregroundColor: Colors.white, backgroundColor: Color.fromARGB(255, 175, 53, 39),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(400.0),
        ),
        padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 100.0),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Icon(icon),
          const SizedBox(width: 8.0),
          Text(label),
        ],
      ),
    );
  }
}
