import 'dart:async';
import 'package:flutter_chat_ui/flutter_chat_ui.dart';
import 'package:chat_gpt_sdk/chat_gpt_sdk.dart';
import 'package:app/chatmessage.dart';
import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';
import 'chatmessage.dart';
class AccPage extends StatefulWidget {
  const AccPage({super.key});

  @override
  State<AccPage> createState() => _AccPageState();
}

class _AccPageState extends State<AccPage> {
  final TextEditingController _controller=TextEditingController();
  final List<ChatMessage> _messages=[];

 String apiKey = "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";
    Future < void > _sendMessage() async {
        // Create Create ChatMessage Class object and pass the user input
        ChatMessage message = ChatMessage(text: _controller.text, sender: "user");
        // Refresh the page
        setState(() {
            _messages.insert(0, message);
        });
        // clear the user input from text-field
        _controller.clear();
        // Call the generateText method and store result into response
        final response = await generateText(message.text);
        // Create Create ChatMessage Class object and pass the bot output
        ChatMessage botMessage = ChatMessage(text: response.toString(), sender: "bot");
        // Refresh the page
        setState(() {
            _messages.insert(0, botMessage);
        });
    }
    Future < String > generateText(String prompt) async {
        // Here we have to create body based on the document
        try {
            Map < String, dynamic > requestBody = {
                "model": "text-davinci-003",
                "prompt": prompt,
                "temperature": 0,
                "max_tokens": 100,
            };
            // Post Api Url
            var url = Uri.parse('https://api.openai.com/v1/completions');
            //  use post method of http and pass url,headers and body according to documents
            var response = await http.post(url, headers: {
                "Content-Type": "application/json",
                "Authorization": "Bearer $apiKey"
            }, body: json.encode(requestBody)); // post call
            // Checked we get the response or not
            // if status code is 200 then Api Call is Successfully Executed
            if (response.statusCode == 200) {
                var responseJson = json.decode(response.body);
                return responseJson["choices"][0]["text"];
            } else {
                return "Failed to generate text: ${response.body}";
            }
        } catch (e) {
            return "Failed to generate text: $e";
        }
    }
    //  This method is used for making bottom user input text-field and and send icon part
    Widget _buidTextComposer() {
        return Row(children: [
            Expanded(child: TextField(controller: _controller, decoration: InputDecoration.collapsed(hintText: "Send a message"), ), ),
            IconButton(onPressed: () {
                _sendMessage();
            }, icon: Icon(Icons.send))
        ], ).px12();
    }
    @override
    Widget build(BuildContext context) {
        return Scaffold(
            // App bar
            appBar: AppBar(centerTitle: true, title: Text("GENIE:THE CHAT GPT"), ),
            // body
            body: SafeArea(child: Column(children: [
                Flexible(child: ListView.builder(padding: Vx.m8, reverse: true, itemBuilder: (context, index) {
                    return _messages[index];
                }, itemCount: _messages.length, )),
                Divider(height: 1, ),
                Container(decoration: BoxDecoration(), child: _buidTextComposer(), )
            ], ), ), );
    }
}
 