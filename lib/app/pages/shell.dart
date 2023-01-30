import 'package:flutter/material.dart';
import 'package:movies_application/app/bloc/shell_bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:movies_application/app/pages/home.dart';
import 'package:movies_application/app/pages/saved.dart';
import 'package:movies_application/app/pages/search.dart';
import 'package:movies_application/app/pages/user.dart';
import 'package:movies_application/app/widgets/bottom_bar.dart';
import 'package:movies_application/app/widgets/my_circular_progress_indicator.dart';

class Shell extends StatefulWidget {
  Shell({Key? key}) : super(key: key);

  @override
  _ShellState createState() => _ShellState();
}

class _ShellState extends State<Shell> {
  late ShellBloc bloc;
  @override
  void initState() {
    super.initState();
    bloc = ShellBloc();
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider<ShellBloc>(
      create: (context) => bloc,
      child: BlocBuilder<ShellBloc, ShellBlocState>(builder: (context, state) {
        if (state is SelectedPageShellBlocState) {
          return Scaffold(
            body: IndexedStack(
              index: state.index,
              children: [
                Home(),
                Search(),
                Saved(),
                User(),
              ],
            ),
            bottomNavigationBar: BottomBar(
              selectedIndexPage: state.index,
              onTapPage: (index) {
                bloc.add(SelectPageShellBlocEvent(index: index));
              },
            ),
          );
        } else
          return MyCircularProgressIndicator();
      }),
    );
  }
}
