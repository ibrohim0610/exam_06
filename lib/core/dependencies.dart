import 'package:exam_6/core/client.dart';
import 'package:exam_6/data/repository/auth_repository.dart';
import 'package:exam_6/data/repository/home_repository.dart';
import 'package:provider/provider.dart';
import 'package:provider/single_child_widget.dart';

List<SingleChildWidget> providers = [
  Provider(create: (context)=>ApiClient()),
  Provider(create: (context)=>AuthRepository(client: context.read())),
  Provider(create: (context)=>HomeRepository(client: context.read()))
];