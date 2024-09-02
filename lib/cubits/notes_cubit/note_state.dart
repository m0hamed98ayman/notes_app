part of 'note_cubit.dart';

@immutable
sealed class NoteState {}

final class NoteInitial extends NoteState {}
final class NoteLoading extends NoteState {}
final class NoteSuccess extends NoteState {}
final class NoteFailed extends NoteState {
final String errMessage;
NoteFailed(this.errMessage);
}



