import 'package:flutter/material.dart';
import 'list_view.dart';

class SearchViewBody extends StatelessWidget {
   const SearchViewBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              children: [
                TextFormField(
                  onFieldSubmitted: (value)
                  {
                  //  cubit.getSearch(value);
                  },
                  onChanged: (value)
                  {
                 //   cubit.getSearch(value);
                  },
                  decoration: InputDecoration(
                      hintText: 'Search',
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20),
                        borderSide: const BorderSide(
                            color: Colors.white
                        ),
                      ),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                      suffixIcon: const Icon(Icons.search)
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                const ListViews(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
