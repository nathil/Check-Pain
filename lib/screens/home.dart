import 'package:flutter/material.dart'; 

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

// void _onItemTapped(int index){
//   setState((){
//     _selectedIndex = index;
//     }
//   )
// }

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(  
      
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.add), label: 'Adicionar Sintomas'),
          BottomNavigationBarItem(icon: Icon(Icons.insert_chart_outlined), label: 'Estatísticas'),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Perfil')
        ],
        currentIndex: 0,
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        selectedItemColor: Theme.of(context).colorScheme.onPrimary,
        unselectedItemColor: Theme.of(context).colorScheme.onPrimary,
        // onTap: _onItemTapped, 
      ), 
      
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        centerTitle: true,
        title: Text('Check Pain', style: TextStyle(color: Color(0xff7F7F7F), fontSize: 16)),
        actionsPadding: EdgeInsets.only(right: 16),
        actions: [
          IconButton.filled(
            iconSize: 30,
            style: IconButton.styleFrom(backgroundColor: Color(0xff94c7b6)),
            icon: Icon(Icons.person_outline_outlined, color:Theme.of(context).colorScheme.onPrimary,), 
            onPressed:(){},
          ),
        ],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children:[
            const Text('Olá, Nome Usuário'),
          ],  
        ),
      ),
    );
  }
}