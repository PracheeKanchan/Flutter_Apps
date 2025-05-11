import 'package:flutter/material.dart';
import 'package:multiprovider/myapp.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context){
      return CounterModel();
     },
     child: MaterialApp(
      home: NewScreen(),
     ),
    );
  }
}
class NewScreen extends StatefulWidget {
  const NewScreen({super.key});

  @override
  State<NewScreen> createState() => _NewScreenState();
}

class _NewScreenState extends State<NewScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Center(child: Text("${Provider.of<CounterModel>(context).counter}"),),
          ElevatedButton(onPressed: (){
            Provider.of<CounterModel>(context,listen: false).changeData();
          }, child: const Text("Data increment"))
        ],
      ),
    );
  }
}

class CounterModel extends ChangeNotifier{
  int counter=0;
  //CounterModel({required this.counter});
  void changeData(){
    counter++;
    notifyListeners();
  }
}