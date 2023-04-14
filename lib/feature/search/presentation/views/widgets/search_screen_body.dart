import 'package:booky_app/constant.dart';
import 'package:booky_app/feature/search/presentation/views/widgets/result_list_veiw.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class SearchScreenBody extends StatelessWidget {
  const SearchScreenBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          TextField(
            decoration: InputDecoration(
                enabled: true,
                suffixIconColor: Colors.white,
                hintStyle: const TextStyle(color: Colors.white),
                enabledBorder: OutlineInputBorder(
                  borderSide: const BorderSide(color: Colors.white, width: 2.0),
                  borderRadius: BorderRadius.circular(15.0),
                ),
                suffixIcon: IconButton(
                  icon: const Icon(FontAwesomeIcons.magnifyingGlass),
                  onPressed: () {},
                ),
                // contentPadding: EdgeInsets.all(25.0),
                border: OutlineInputBorder(
                    borderSide:
                        const BorderSide(color: Colors.white, width: 2.0),
                    borderRadius: BorderRadius.circular(15.0)),
                hintText: 'Search'),
          ),
          const SizedBox(
            height: 20.0,
          ),
          Text(
            'Search Result',
            style: bodyLargeTitle,
          ),
          const SizedBox(
            height: 20.0,
          ),
          const ResultListView()
        ],
      ),
    );
  }
}
