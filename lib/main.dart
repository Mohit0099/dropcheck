// import 'package:flutter/material.dart';

// void main() {
//   runApp(MyApp());
// }

// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Navigation Rail Example',
//       theme: ThemeData(
//         primarySwatch: Colors.deepPurple,
//       ),
//       home: MainLayout(),
//       onGenerateRoute: (settings) {
//         switch (settings.name) {
//           case '/home':
//             return MaterialPageRoute(builder: (context) => HomeScreen());
//           case '/rapports':
//             return MaterialPageRoute(builder: (context) => RapportsScreen());
//           case '/profile':
//             return MaterialPageRoute(builder: (context) => ProfileScreen());
//           case '/settings':
//             return MaterialPageRoute(builder: (context) => SettingsScreen());
//           default:
//             return MaterialPageRoute(builder: (context) => HomeScreen());
//         }
//       },
//     );
//   }
// }

// class MainLayout extends StatefulWidget {
//   @override
//   _MainLayoutState createState() => _MainLayoutState();
// }

// class _MainLayoutState extends State<MainLayout> {
//   bool extended = false;
//   int selectedIndex = 0;
//   final GlobalKey<NavigatorState> _navigatorKey = GlobalKey<NavigatorState>();

//   void _onDestinationSelected(int index) {
//     setState(() {
//       selectedIndex = index;
//       String route;
//       switch (index) {
//         case 0:
//           route = '/home';
//           break;
//         case 1:
//           route = '/rapports';
//           break;
//         case 2:
//           route = '/profile';
//           break;
//         case 3:
//           route = '/settings';
//           break;
//         default:
//           route = '/home';
//       }
//       _navigatorKey.currentState!.pushReplacementNamed(route);
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Row(
//         children: [
//           NavigationRail(
//             extended: extended,
//             labelType: extended
//                 ? NavigationRailLabelType.all
//                 : NavigationRailLabelType.none,
//             destinations: [
//               NavigationRailDestination(
//                 icon: Icon(Icons.home),
//                 label: Text('Home'),
//               ),
//               NavigationRailDestination(
//                 icon: Icon(Icons.bar_chart),
//                 label: Text('Rapports'),
//               ),
//               NavigationRailDestination(
//                 icon: Icon(Icons.person),
//                 label: Text('Profile'),
//               ),
//               NavigationRailDestination(
//                 icon: Icon(Icons.settings),
//                 label: Text('Settings'),
//               ),
//             ],
//             selectedIndex: selectedIndex,
//             onDestinationSelected: _onDestinationSelected,
//           ),
//           Expanded(
//             child: Navigator(
//               key: _navigatorKey,
//               onGenerateRoute: (settings) {
//                 WidgetBuilder builder;
//                 switch (settings.name) {
//                   case '/home':
//                     builder = (context) => HomeScreen();
//                     break;
//                   case '/rapports':
//                     builder = (context) => RapportsScreen();
//                     break;
//                   case '/profile':
//                     builder = (context) => ProfileScreen();
//                     break;
//                   case '/settings':
//                     builder = (context) => SettingsScreen();
//                     break;
//                   default:
//                     builder = (context) => HomeScreen();
//                     break;
//                 }
//                 return MaterialPageRoute(builder: builder);
//               },
//             ),
//           ),
//         ],
//       ),
//       floatingActionButton: FloatingActionButton(
//         onPressed: () {
//           setState(() {
//             extended = !extended;
//           });
//         },
//         child: Icon(Icons.menu),
//       ),
//     );
//   }
// }

// class HomeScreen extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(title: Text('Home')),
//       body: Center(child: Text("Welcome to the Home Screen")),
//     );
//   }
// }

// class RapportsScreen extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(title: Text('Rapports')),
//       body: Center(child: Text("Welcome to the Rapports Screen")),
//     );
//   }
// }

// class ProfileScreen extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(title: Text('Profile')),
//       body: Center(child: Text("Welcome to the Profile Screen")),
//     );
//   }
// }

// class SettingsScreen extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(title: Text('Settings')),
//       body: Center(
//           child: Container(
//               height: 300,
//               color: Colors.red,
//               child: Text("Welcome to the Settings Screen"))),
//     );
//   }
// }

// import 'package:flutter/material.dart';

// void main() {
//   runApp(MyApp());
// }

// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: DropdownExample(),
//     );
//   }
// }

// class DropdownExample extends StatefulWidget {
//   @override
//   _DropdownExampleState createState() => _DropdownExampleState();
// }

// class _DropdownExampleState extends State<DropdownExample> {
//   String? _selectedItem;

//   final List<String> _items = ['Clear Selection', 'Item 1', 'Item 2', 'Item 3'];

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Dropdown Example'),
//       ),
//       body: Center(
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: <Widget>[
//             DropdownButton<String>(
//               hint: Text('Select an item'),
//               value: _selectedItem,
//               items: _items.map((String value) {
//                 return DropdownMenuItem<String>(
//                   value: value == 'Clear Selection' ? null : value,
//                   child: Text(value),
//                 );
//               }).toList(),
//               onChanged: (String? newValue) {
//                 setState(() {
//                   _selectedItem =
//                       newValue == 'Clear Selection' ? null : newValue;

//                   print(newValue);
//                 });
//               },
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }

// import 'package:flutter/material.dart';
// import 'package:http/http.dart' as http;
// import 'dart:convert';

// void main() {
//   runApp(MyApp());
// }

// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: DropdownExample(),
//     );
//   }
// }

// class DropdownExample extends StatefulWidget {
//   @override
//   _DropdownExampleState createState() => _DropdownExampleState();
// }

// class _DropdownExampleState extends State<DropdownExample> {
//   String? _selectedItem;
//   List<String> _items = ['Clear Selection'];
//   bool _isLoading = true;

//   @override
//   void initState() {
//     super.initState();
//     _fetchItems();
//   }

//   Future<void> _fetchItems() async {
//     final response =
//         await http.get(Uri.parse('https://jsonplaceholder.typicode.com/todos'));

//     if (response.statusCode == 200) {
//       final List<dynamic> todos = json.decode(response.body);
//       setState(() {
//         _items.addAll(todos.map((todo) => todo['title'] as String).toList());
//         _isLoading = false;
//       });
//     } else {
//       throw Exception('Failed to load todos');
//     }
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Dropdown Example'),
//       ),
//       body: Center(
//         child: _isLoading
//             ? CircularProgressIndicator()
//             : Column(
//                 mainAxisAlignment: MainAxisAlignment.center,
//                 children: <Widget>[
//                   DropdownButton<String>(
//                     hint: Text('Select an item'),
//                     value: _selectedItem,
//                     items: _items.map((String value) {
//                       return DropdownMenuItem<String>(
//                         value: value == 'Clear Selection' ? null : value,
//                         child: Text(value),
//                       );
//                     }).toList(),
//                     onChanged: (String? newValue) {
//                       setState(() {
//                         _selectedItem =
//                             newValue == 'Clear Selection' ? null : newValue;
//                       });
//                     },
//                   ),
//                 ],
//               ),
//       ),
//     );
//   }
// }

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:web_dashboard_app_tut/bloctest/bloc.dart';
import 'package:web_dashboard_app_tut/bloctest/event.dart';
import 'package:web_dashboard_app_tut/bloctest/state.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: BlocProvider(
        create: (context) => TodoBloc()..add(FetchTodos()),
        child: DropdownExample(),
      ),
    );
  }
}

class DropdownExample extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Dropdown Example'),
      ),
      body: Center(
        child: BlocBuilder<TodoBloc, TodoState>(
          builder: (context, state) {
            if (state is TodoLoading) {
              return CircularProgressIndicator();
            } else if (state is TodoLoaded) {
              return Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  DropdownButton<String>(
                    hint: Text('Select an item'),
                    value: state.selectedTodo,
                    items: state.todos.map((String value) {
                      return DropdownMenuItem<String>(
                        value: value == 'Clear Selection' ? null : value,
                        child: Text(value),
                      );
                    }).toList(),
                    onChanged: (String? newValue) {
                      context.read<TodoBloc>().add(SelectTodo(newValue));
                    },
                  ),
                ],
              );
            } else if (state is TodoError) {
              return Text(state.message);
            } else {
              return Text('Something went wrong!');
            }
          },
        ),
      ),
    );
  }
}
