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
      bottomNavigationBar: Theme(
    data: Theme.of(context).copyWith(
        // sets the background color of the `BottomNavigationBar`
        canvasColor: Color.fromRGBO(148, 199, 182, 1),
        // sets the active color of the `BottomNavigationBar` if `Brightness` is light
        primaryColor: Color.fromRGBO(148, 199, 182, 1),
      ), 
      
    child: BottomNavigationBar(
        showSelectedLabels: false,
        showUnselectedLabels: false,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.add), label: 'Adicionar Sintomas'),
          BottomNavigationBarItem(icon: Icon(Icons.insert_chart_outlined), label: 'Estatísticas'),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Perfil')
        ],
        currentIndex: 0,
        selectedItemColor: Theme.of(context).colorScheme.onPrimary,
        unselectedItemColor: Theme.of(context).colorScheme.onPrimary,
        // onTap: _onItemTapped, 
      ),
  ),
      
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        
        title: Text('Check Pain'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text('texto que eu gosto mais.'),
          ],  
        ),
      ),
    );
  }
}