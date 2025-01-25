import 'package:flutter/material.dart';
import 'package:flutter_gemini_bot/flutter_gemini_bot.dart';
import 'package:flutter_gemini_bot/models/chat_model.dart';

void main() {
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  MyApp({Key? key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Gemini Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSwatch(primarySwatch: Colors.deepPurple),
      ),
      home: MyHomePage(title: 'UrbanBuy ChadBot'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  final String title;
  const MyHomePage({Key? key, required this.title}) : super(key: key);
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}
class _MyHomePageState extends State<MyHomePage> {
  List<ChatModel> chatList = [
  ]; // Your list of ChatModel objects
  String apiKey = 'Your Api Key'; // Your API key
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey,
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text(widget.title),
      ),
      body: FlutterGeminiChat(
        chatContext: 'you are chatbot of UrbanBuy uraban buy is a shopping app made with stack of flutter it helps user to shop tshirt,shirts,bags ,watches,shoes for all men women and kids and aslo we can order anything yes we deliver international if any user ask help with order ask for its order number',
        chatList: chatList,
        apiKey: apiKey,
      ),
    );
  }
}
