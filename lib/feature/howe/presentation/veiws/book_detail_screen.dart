import 'package:booky_app/feature/howe/presentation/veiws/widgets/book_detail_screen_body.dart';
import 'package:flutter/material.dart';

import '../../data/models/Book.dart';

class BookDetailScreen extends StatelessWidget {
  const BookDetailScreen({Key? key}) : super(key: key);
static const String routeName='/bookDetailScreen';
  @override
  Widget build(BuildContext context) {
    final book=ModalRoute.of(context)!.settings.arguments as Book;
    return  Scaffold(
      body:SafeArea(child: BookDetailScreenBody(book: book,)) ,
    );
  }
}
