import 'package:flutter/material.dart';

class ResultScreen extends StatefulWidget {
  const ResultScreen({super.key, required this.result});
  final int result;

  @override
  State<ResultScreen> createState() => _ResultScreenState();
}

class _ResultScreenState extends State<ResultScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        elevation: 10,
        centerTitle: true,
        title: const Text("Result" ,
          style: TextStyle(
            fontSize: 30,
            color: Colors.black,
            fontWeight: FontWeight.bold,
          ),),
        leading: IconButton(onPressed: (){
          Navigator.of(context).pop();
        },
        icon: const Icon(Icons.arrow_back_ios , color: Colors.black,),),
      ),
      body: SizedBox(
        width: MediaQuery.sizeOf(context).width,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            widget.result==10?const Text("Your answer is true" ,
            style: TextStyle(
            fontSize: 20,
            color: Colors.black,
        fontWeight: FontWeight.bold,
        ),) :
            const Text("Your answer is wrong the correct is 10",
              style: TextStyle(
                fontSize: 20,
                color: Colors.black,
                fontWeight: FontWeight.bold,
              ),),
          ],
        ),
      ),
    );
  }
}
