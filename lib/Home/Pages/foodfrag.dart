import 'package:flutter/material.dart';
import 'package:smartmealai/components/chatBubble.dart';
import 'package:chat_gpt_sdk/chat_gpt_sdk.dart';
import 'package:smartmealai/Token.dart';


class MessageData{
  String sender;
  String message;

  MessageData(this.sender, this.message){}
}
class FoodFrag extends StatefulWidget {
  const FoodFrag({super.key});

  @override
  State<FoodFrag> createState() => _FoodFragState();
}

class _FoodFragState extends State<FoodFrag> {

  final List _messages= [];
  final TextEditingController _promptController = TextEditingController();
  // late OpenAI openAI;
  // @override
  // void initState(){
  //   openAI = OpenAI.instance.build(token: Token_OpenAI);
  //   super.initState();
  // }

  final openAI = OpenAI.instance.build(token: Token_OpenAI,baseOption: HttpSetup(receiveTimeout: const Duration(seconds: 5)),enableLog: true);



  void sendPrompt(MessageData newMessage) async{
    if(_promptController.text.isNotEmpty){

      setState(() {
        _messages.add(newMessage);
      });

      final request = CompleteText(prompt:newMessage.message, model: TextDavinci3Model(), maxTokens: 200);

      final response = await openAI.onCompletion(request:request);


      setState(() {
       _messages.add(MessageData("SmartMeal AI", response!.choices.first.text.trim()));
      });
    }
  }



  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(child: _buildMessageList(),),
        _buildPromptInput()
      ],
    );
  }

  Widget _buildMessageList(){
    return ListView.builder(
      itemCount: _messages.length,
      itemBuilder:(context, index){
        return _buildMessageItem(_messages[index]);
      },
    );
  }


  Widget _buildMessageItem(MessageData data){
      var alignment = (data.sender == "user") ? Alignment.centerRight : Alignment.centerLeft;

      return Container(
        alignment: alignment,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment:
              (data.sender == "user")
                ? CrossAxisAlignment.end
                : CrossAxisAlignment.start,
            mainAxisAlignment:
            (data.sender == "user")
                ? MainAxisAlignment.end
                : MainAxisAlignment.start,
            children: [
              Text(data.sender),
              ChatBubble(message: data.message)
            ],
          ),
        ),
      );
  }


  Widget _buildPromptInput(){
    return Row(
      children: [
        Expanded(
            child: Padding(
              padding: const EdgeInsets.all(15.0),
              child: PromptField(tec: _promptController,),
            )
        ),
        
        IconButton(onPressed: () => sendPrompt(MessageData("user", _promptController.text)), icon: const Icon(Icons.arrow_circle_up, size: 40,))
      ],
    );
  }
}

class PromptField extends StatelessWidget {
  final TextEditingController tec;
  const PromptField({
    super.key,
    required this.tec
  });

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: tec,
      style: const TextStyle(
          fontSize: 14,
          fontWeight: FontWeight.normal,
          color: Color.fromRGBO(51, 54, 63, 1.0)
      ),
      cursorColor: const Color.fromRGBO(51, 54, 63, 1.0),
      decoration: InputDecoration(
        isDense: true,  // Reduces height a bit
        border: OutlineInputBorder(
          borderSide: BorderSide.none,              // No border
          borderRadius: BorderRadius.circular(14.0),
        ),
        fillColor: Colors.white,
        filled: true,
        hintText: "Enter your prompt",
        hintStyle: const TextStyle(
          fontSize: 14,
          fontWeight: FontWeight.normal,
          color: Color.fromRGBO(137, 141, 158, 1.0),
        ),
      ),
    );
  }
}
