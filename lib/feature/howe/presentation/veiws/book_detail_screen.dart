import 'package:booky_app/feature/howe/presentation/veiws/widgets/book_detail_screen_body.dart';
import 'package:flutter/material.dart';

class BookDetailScreen extends StatelessWidget {
  const BookDetailScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body:BookDetailScreenBody() ,
    );
  }
}
