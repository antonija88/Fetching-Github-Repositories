import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:ingemark_app/app/models/repository.dart';
import 'package:ingemark_app/app/providers/repository_provider.dart';
import 'package:ingemark_app/app/widgets/itemCard.dart';
import 'package:ingemark_app/utility/size_config.dart';
import 'package:ingemark_app/utility/constants.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:ingemark_app/app/ui/details_screen.dart';

class Home extends StatefulHookWidget {
  static const String routName = 'home_screen';
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final _formKey = GlobalKey<FormState>();
  String q = "";
  int? page;
  int? limit;
  late ScrollController _scrollController;

  @override
  void initState() {
    super.initState();
    _scrollController = ScrollController();
    scrollListener();
  }

  void scrollListener() {
    _scrollController.addListener(() async {
      if (_scrollController.position.extentAfter < 100 &&
          !context.read(reposProvider).isLoadMore &&
          context.read(reposProvider).hasNextPage) {
        context.read(reposProvider.notifier).loadMore(q);
      }
      ;
    });
  }

  @override
  void dispose() {
    _scrollController.removeListener(scrollListener);
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    double? sizeH = SizeConfig.safeBlockVertical;
    double? sizeW = SizeConfig.safeBlockHorizontal;

    List<Repository> repos = useProvider(reposProvider).repos;
    final isLoading = useProvider(reposProvider).isLoading;
    final inputFocusNode = useFocusNode();
    final searchFocusNode = useFocusNode();
    final reposExist = repos.length > 0;
    final isLoadingMore = useProvider(reposProvider).isLoadMore;
    final hasNextPage = useProvider(reposProvider).hasNextPage;

    return Scaffold(
      appBar: AppBar(
        title: Text("Ingemark App",
            style: TextStyle(color: Colors.white54, fontSize: sizeH! * 4)),
        backgroundColor: kMainColor.withOpacity(0.8),
      ),
      body: Container(
        color: kMainColor,
        child: Form(
          key: _formKey,
          child: Column(
            children: [
              SizedBox(
                height: sizeH * 7,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: sizeW! * 6),
                child: TextFormField(
                  focusNode: inputFocusNode,
                  validator: (value) {
                    if (value!.isEmpty) {
                      return 'Enter repository name';
                    }
                    return null;
                  },
                  onSaved: (value) {
                    q = value!;
                  },
                  keyboardType: TextInputType.text,
                  style: TextStyle(fontSize: 16),
                  autofocus: false,
                  showCursor: true,
                  textInputAction: TextInputAction.next,
                  decoration: InputDecoration(
                    errorStyle: TextStyle(color: Colors.black),
                    hintText: 'Enter repository name',
                    fillColor: Colors.white,
                    filled: true,
                    border: OutlineInputBorder(
                      borderSide:
                          BorderSide(color: kMainColor, width: sizeW * 0.5),
                      borderRadius: BorderRadius.all(Radius.circular(8.0)),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: kMainColor),
                      borderRadius: BorderRadius.all(Radius.circular(8.0)),
                    ),
                    errorBorder: new OutlineInputBorder(
                      borderSide:
                          new BorderSide(color: Colors.red, width: sizeW * 0.5),
                      borderRadius: BorderRadius.all(Radius.circular(8.0)),
                    ),
                    focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                            color: Colors.green.withOpacity(0.4),
                            width: sizeW * 0.5),
                        borderRadius: BorderRadius.circular(8.0)),
                  ),
                ),
              ),
              SizedBox(
                height: sizeH * 2,
              ),
              ElevatedButton(
                  focusNode: searchFocusNode,
                  style: ElevatedButton.styleFrom(
                      primary: kMainColor.withOpacity(0.2),
                      padding: EdgeInsets.symmetric(
                          horizontal: sizeH * 4, vertical: sizeH * 1.5),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(sizeH * 1.5),
                      ),
                      textStyle: TextStyle(
                          fontSize: sizeH * 3, fontWeight: FontWeight.w500)),
                  onPressed: () {
                    if (_formKey.currentState!.validate()) {
                      _formKey.currentState!.save();
                      context
                          .read(reposProvider.notifier)
                          .getRepos(q)
                          .then((value) {
                        if (value.isEmpty) {
                          return ScaffoldMessenger.of(context).showSnackBar(
                            const SnackBar(
                              content: Text(
                                  'There is no repository under that name'),
                              duration: const Duration(seconds: 2),
                            ),
                          );
                        }
                      });
                    }
                  },
                  child: Text('Search')),
              SizedBox(
                height: sizeH * 2,
              ),
              Row(
                children: [
                  reposExist
                      ? Padding(
                          padding: EdgeInsets.symmetric(horizontal: sizeW * 5),
                          child: Text(
                            'There are ${repos.length} repositories found',
                            style: TextStyle(
                              color: Colors.white54,
                            ),
                          ),
                        )
                      : SizedBox(),
                ],
              ),
              SizedBox(
                height: sizeH * 2,
              ),
              Expanded(
                child: Container(
                  color: kMainColor,
                  child: isLoading
                      ? Center(
                          child: CircularProgressIndicator(),
                        )
                      : ListView.builder(
                          controller: _scrollController,
                          itemCount: repos.length,
                          itemBuilder: (context, index) {
                            return GestureDetector(
                                onTap: () {
                                  context
                                      .read(reposProvider.notifier)
                                      .addRepository(repos[index]);
                                  Navigator.pushNamed(
                                      context, DetailsScreen.routName);
                                },
                                child: ItemCard(repository: repos[index]));
                          }),
                ),
              ),
              isLoadingMore && hasNextPage
                  ? Padding(
                      padding: EdgeInsets.symmetric(vertical: sizeH * 2),
                      child: CircularProgressIndicator(),
                    )
                  : SizedBox(),
            ],
          ),
        ),
      ),
    );
  }
}
