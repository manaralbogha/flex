// import 'package:easy_localization/easy_localization.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';

// part 'provider_chat_state.dart';

// class ProviderChatCubit extends Cubit<ProviderChatState> {
//   ProviderChatCubit() : super(SingleChatInitial());
//   late ScrollController scrollController;

//   void initScrollController() {
//     scrollController = ScrollController();
//   }

//   void scrollToBottom() {
//     scrollController.animateTo(
//       scrollController.position.maxScrollExtent,
//       duration: const Duration(milliseconds: 10),
//       curve: Curves.easeOut,
//     );
//     emit(SendMassageErrorgState());
//   }

//   bool isfirsttime = true;
//   static ProviderChatCubit get(context) => BlocProvider.of(context);
//   final TextEditingController masseageController = TextEditingController();

//   bool isTypeing = false;
//   void showSendBUtton({required String letters}) {
//     if (letters.isNotEmpty) {
//       if (letters.length > 1) {
//         return;
//       } else {
//         isTypeing = true;
//         emit(IsTypeingState());
//       }
//     } else {
//       isTypeing = false;
//       emit(IsTypeingState());
//     }
//   }

//   List<Map<String, dynamic>> data = [
//     {"isMe": true, 'time': "9:05", "massage": "hi"},
//     {"isMe": false, 'time': "9:06", "massage": "hi"},
//     {"isMe": true, 'time': "9:07", "massage": "how are you ? "},
//     {"isMe": false, 'time': "9:08", "massage": "Iam Fine "},
//     {
//       "isMe": true,
//       'time': "9:05",
//       "massage":
//           "what is your favorite movie in this time i can watch for holiday"
//     },
//     {"isMe": false, 'time': "9:06", "massage": "ary you marverl fan"},
//     {"isMe": true, 'time': "9:07", "massage": "yes  "},
//     {
//       "isMe": false,
//       'time': "9:08",
//       "massage":
//           "you can watch Iron Man Iron man 2 hulk caption america avenger age of ultorn  "
//     },
//         {"isMe": true, 'time': "9:05", "massage": "hi"},
//     {"isMe": false, 'time': "9:06", "massage": "hi"},
//     {"isMe": true, 'time': "9:07", "massage": "how are you ? "},
//     {"isMe": false, 'time': "9:08", "massage": "Iam Fine "},
//     {
//       "isMe": true,
//       'time': "9:05",
//       "massage":
//           "what is your favorite movie in this time i can watch for holiday"
//     },
//     {"isMe": false, 'time': "9:06", "massage": "ary you marverl fan"},
//     {"isMe": true, 'time': "9:07", "massage": "yes  "},
//     {
//       "isMe": false,
//       'time': "9:08",
//       "massage":
//           "you can watch Iron Man Iron man 2 hulk caption america avenger age of ultorn  "
//     },
//   ];
//   String formatTime(String dateTimeString) {
//     DateTime dateTime = DateTime.parse(dateTimeString);
//     String formattedDate = DateFormat('hh:mm a').format(dateTime);
//     return formattedDate;
//   }

//   void sendMasseage({
//     required String massage,
//   }) {
//     emit(SendMassageSuccessState());

//     data.add({
//       "isMe": true,
//       'time': formatTime(DateTime.now().toString()),
//       "massage": massage
//     });
//     masseageController.clear();
//     isTypeing = false;
//     scrollToBottom();
//     emit(SendTextState());
//     emit(SendMassageSuccessState());
//   }
// }import 'package:flutter/material.dart';

import 'package:easy_localization/easy_localization.dart';
import 'package:flex/logic/bloc/chatcubit/cubit/provider_chat_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SingleChatCubit extends Cubit<SingleChatState> {
  SingleChatCubit() : super(SingleChatInitial());

  static SingleChatCubit get(context) => BlocProvider.of(context);
  final TextEditingController masseageController = TextEditingController();
  final ScrollController scrollController = ScrollController();

  final List<Map<String, dynamic>> data = [
    {
      "text": "Hello, how are you?",
      "isme": true,
      "time": "9:05pm",
    },
    {
      "text": "I'm doing well, thank you!",
      "isme": false,
      "time": "9:10pm",
    },
    {
      "text": "What are you up to?",
      "isme": true,
      "time": "9:15pm",
    },
    {
      "text": "Just working on some coding.",
      "isme": false,
      "time": "9:20pm",
    },
    {
      "text": "Coding is fun! Anything interesting?",
      "isme": true,
      "time": "9:25pm",
    },
    {
      "text": "Yes, I'm building a new app.",
      "isme": false,
      "time": "9:30pm",
    },
    {
      "text": "That sounds exciting! What's it about?",
      "isme": true,
      "time": "9:35pm",
    },
    {
      "text": "It's a social media platform for cats.",
      "isme": false,
      "time": "9:40pm",
    },
    {
      "text": "Haha, that's unique! Tell me more.",
      "isme": true,
      "time": "9:45pm",
    },
    {
      "text": "Well, cats can share their daily adventures and photos.",
      "isme": false,
      "time": "9:50pm",
    },
    {
      "text": "Hello, how are you?",
      "isme": true,
      "time": "9:05pm",
    },
    {
      "text": "I'm doing well, thank you!",
      "isme": false,
      "time": "9:10pm",
    },
    {
      "text": "What are you up to?",
      "isme": true,
      "time": "9:15pm",
    },
    {
      "text": "Just working on some coding.",
      "isme": false,
      "time": "9:20pm",
    },
    {
      "text": "Coding is fun! Anything interesting?",
      "isme": true,
      "time": "9:25pm",
    },
    {
      "text": "Yes, I'm building a new app.",
      "isme": false,
      "time": "9:30pm",
    },
    {
      "text": "That sounds exciting! What's it about?",
      "isme": true,
      "time": "9:35pm",
    },
    {
      "text": "It's a social media platform for cats.",
      "isme": false,
      "time": "9:40pm",
    },
    {
      "text": "Haha, that's unique! Tell me more.",
      "isme": true,
      "time": "9:45pm",
    },
    {
      "text": "Well, cats can share their daily adventures and photos.",
      "isme": false,
      "time": "9:50pm",
    },
  ];
  String formatTime(String dateTimeString) {
    DateTime dateTime = DateTime.parse(dateTimeString);
    String formattedDate = DateFormat('hh:mm a').format(dateTime);
    return formattedDate;
  }

  void sendMasseage({required String masseage}) {
    data.add({
      "text": masseage,
      "isme": true,
      "time": formatTime(DateTime.now().toString())
    });
    masseageController.clear();
    scrollDown();
    isTypeing = false;
    emit(SendTextState());
  }

  void scrollDown() async {
    if (scrollController.hasClients) {
      scrollController.animateTo(
        scrollController.position.maxScrollExtent + 250,
        duration: const Duration(milliseconds: 100),
        curve: Curves.fastOutSlowIn,
      );
      emit(ScroolState());
    } else {
      await Future.delayed(const Duration(microseconds: 100));
      scrollController.animateTo(
        scrollController.position.maxScrollExtent + 250,
        duration: const Duration(milliseconds: 100),
        curve: Curves.fastOutSlowIn,
      );
      emit(ScroolState());
    }
  }

  bool isTypeing = false;
  void showSendBUtton({required String letters}) {
    if (letters.isNotEmpty) {
      if (letters.length > 1) {
        return;
      } else {
        isTypeing = true;
        emit(IsTypeingState());
      }
    } else {
      isTypeing = false;
      emit(IsTypeingState());
    }
  }

  @override
  Future<void> close() {
    masseageController.dispose();
    scrollController.dispose();
    return super.close();
  }
}
