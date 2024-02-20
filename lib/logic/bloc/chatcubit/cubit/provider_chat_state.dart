
abstract class SingleChatState {}


final class SingleChatInitial extends SingleChatState {}
final class SendTextState extends SingleChatState {}

final class IsTypeingState extends SingleChatState {}
final class ScroolState extends SingleChatState {}