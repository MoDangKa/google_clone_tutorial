import 'package:flutter/material.dart';
import 'package:google_clone_tutorial/colors.dart';
import 'package:google_clone_tutorial/services/api_service.dart';
import 'package:google_clone_tutorial/widgets/search_footer.dart';
import 'package:google_clone_tutorial/widgets/search_header.dart';
import 'package:google_clone_tutorial/widgets/search_result_component.dart';
import 'package:google_clone_tutorial/widgets/search_tabs.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SearchHeader(),
            const Padding(
              padding: EdgeInsets.only(left: 150),
              child: SearchTabs(),
            ),
            const Divider(
              height: 0,
              thickness: 0.5,
            ),
            FutureBuilder(
                future: ApiService().fetchData(queryTerm: "Rivaan"),
                builder: (BuildContext context, AsyncSnapshot snapshot) {
                  if (snapshot.hasData) {
                    return Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          padding: EdgeInsets.only(left: 150, top: 12),
                          child: Text(
                            "About ${snapshot.data?['searchInformation']['formattedTotalResults']} results (${snapshot.data?['searchInformation']['formattedSearchTime']}) seconds",
                            style: const TextStyle(
                              fontSize: 15,
                              color: Color(0xFF707578),
                            ),
                          ),
                        ),
                        ListView.builder(
                          itemCount: snapshot.data?['items'].length,
                          shrinkWrap: true,
                          itemBuilder: (context, index) {
                            return Padding(
                              padding: const EdgeInsets.only(
                                left: 150,
                                top: 10,
                              ),
                              child: SearchResultComponent(
                                link: snapshot.data?['items'][index]
                                    ['formattedUrl'],
                                text: snapshot.data?['items'][index]['title'],
                                linkToGo: snapshot.data?['items'][index]
                                    ['link'],
                                desc: snapshot.data?['items'][index]['snippet'],
                              ),
                            );
                          },
                        )
                      ],
                    );
                  }
                  return const Center(
                    child: CircularProgressIndicator(),
                  );
                }),
            SizedBox(
              width: double.infinity,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  TextButton(
                    onPressed: () {},
                    child: const Text(
                      '< Prev',
                      style: TextStyle(
                        fontSize: 15,
                        color: blueColor,
                      ),
                    ),
                  ),
                  const SizedBox(width: 30),
                  TextButton(
                    onPressed: () {},
                    child: const Text(
                      'Next >',
                      style: TextStyle(
                        fontSize: 15,
                        color: blueColor,
                      ),
                    ),
                  ),
                  const SizedBox(height: 10),
                ],
              ),
            ),
            const SizedBox(height: 30),
            const SearchFooter()
          ],
        ),
      ),
    );
  }
}
