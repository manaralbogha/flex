import 'package:flex/logic/bloc/chatcubit/cubit/provider_chat_cubit.dart';
import 'package:flex/logic/bloc/chatcubit/cubit/provider_chat_state.dart';
import 'package:flex/ui/helpers/app_colors.dart';
import 'package:flex/ui/helpers/size_config.dart';
import 'package:flex/ui/helpers/space_widgets.dart';
import 'package:flex/ui/screens/provider/provider%20chat/widgets/chat_item_widget.dart';
import 'package:flex/ui/widgets/custom_text_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ProviderChat extends StatelessWidget {
  ProviderChat({super.key});
  GlobalKey<FormState> formKey = GlobalKey<FormState>();
  String chatvalue = "";
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => SingleChatCubit()..scrollDown(),
      child: BlocConsumer<SingleChatCubit, SingleChatState>(
        listener: (context, state) {},
        builder: (context, state) {
          SingleChatCubit singleChatCubit = SingleChatCubit.get(context);
          return Scaffold(
            appBar: AppBar(
              title: const Text(
                "mohamed",
              ),
            ),
            body: SingleChildScrollView(
              controller: singleChatCubit.scrollController,
              child: Padding(
                padding: const EdgeInsets.only(
                    top: 20, right: 20, left: 20, bottom: 40),
                child: Column(
                  children: [
                    ListView.separated(
                      shrinkWrap: true,
                      cacheExtent: 250,
                      physics: const NeverScrollableScrollPhysics(),
                      itemBuilder: (BuildContext context, int index) {
                        return ChatTextItemWidget(
                          message: singleChatCubit.data[index]["text"],
                          check: singleChatCubit.data[index]["isme"],
                          time: singleChatCubit.data[index]["time"],
                        );
                      },
                      separatorBuilder: (BuildContext context, int index) {
                        return const VerticalSpace(1);
                      },
                      itemCount: singleChatCubit.data.length,
                    ),
                  ],
                ),
              ),
            ),
            bottomNavigationBar: Container(
              color: const Color(0xffebf4f3),
              padding: EdgeInsets.only(
                  left: 20,
                  top: 10,
                  right: 20,
                  bottom: MediaQuery.of(context).viewInsets.bottom + 10),
              child: Row(
                children: [
                  Expanded(
                    child: CustomTextField(
                      ischat: true,
                      maxLines: 20,
                      height: SizeConfig.defaultSize * 5,
                      // validator: (value) {
                      //   if (value!.trim().isEmpty) {
                      //     return "please enter avild masseage";
                      //   }

                      //   return null;
                      // },
                      onChanged: (value) {
                        chatvalue = value;
                        singleChatCubit.showSendBUtton(letters: value);
                      },
                      controller: singleChatCubit.masseageController,
                      hintText: "Type a massage",
                    ),
                  ),
                  Visibility(
                    visible: singleChatCubit.isTypeing,
                    child: IconButton(
                        onPressed: () {
                          if (chatvalue.trim().isNotEmpty) {
                            singleChatCubit.sendMasseage(
                              masseage: singleChatCubit.masseageController.text,
                            );
                          } 
                        },
                        icon: Container(
                            padding: const EdgeInsets.all(10),
                            decoration: BoxDecoration(
                              color: AppColors.defaultColor,
                              borderRadius: BorderRadius.circular(10),
                              shape: BoxShape.rectangle,
                            ),
                            child: const Icon(
                              Icons.send,
                              color: Colors.white,
                            ))),
                  )
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
