
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes_app/cubits/add_note_cubit/add_note_cubit.dart';
import 'package:notes_app/widgets/add_note_form.dart';

class AddButtomSheet extends StatelessWidget {
  const AddButtomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider<AddNoteCubit>(
      create: (context) => AddNoteCubit(),
      child: Container(
          color: const Color(0xff303030),
          child: BlocConsumer<AddNoteCubit, AddNoteState>(
            listener: (context, state) {
              if (state is AddNoteFailed) {
                print('failed  ${state.errMessage}');
              }
              if (state is AddNoteSuccess) {
                Navigator.pop(context);
              }
            },
            builder: (context, state) {
              return AbsorbPointer(
                absorbing: state is AddNoteLoading ? true : false,
                child:  Padding(
                  padding: EdgeInsets.only(
                    left: 16.0,
                     right: 16,
                  bottom:MediaQuery.of(context).viewInsets.bottom
                  
                  ),
                  child:const SingleChildScrollView(
                    child: AddNoteForm(),
                  ),
                ),
              );
            },
          )),
    );
  }
}
