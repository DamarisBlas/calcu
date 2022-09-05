import 'package:flutter/material.dart';

import 'bloc.dart';

class BlocProvider<T extends Bloc> extends StatefulWidget{
final Widget child;
final T bloc;
BlocProvider({Key? key, required this.bloc, required this.child}):super(key: key);

static T of<T extends Bloc>(BuildContext context){
  final BlocProvider<T> provider=context.findAncestorWidgetOfExactType()!;
  return provider.bloc;
}


@override
  State<StatefulWidget> createState(){
  return _BlocProviderState();
}
}
class _BlocProviderState extends State<BlocProvider>{
  @override
  Widget build(BuildContext context) {
  return widget.child;
  }
@override
void dispose(){
  widget.bloc.dispose();
  super.dispose();
}
}