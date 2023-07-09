
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:islame_app_new_design/juzz/lib/configs/app.dart';
import 'package:islame_app_new_design/juzz/lib/configs/app_dimensions.dart';
import 'package:islame_app_new_design/juzz/lib/configs/app_typography.dart';
import 'package:islame_app_new_design/juzz/lib/configs/configs.dart';
import 'package:islame_app_new_design/juzz/lib/cubits/bookmarks/cubit.dart';
import 'package:islame_app_new_design/juzz/lib/providers/app_provider.dart';
import 'package:islame_app_new_design/juzz/lib/screens/surah/surah_index_screen.dart';
import 'package:islame_app_new_design/juzz/lib/utils/assets.dart';
import 'package:islame_app_new_design/juzz/lib/widgets/app/title.dart';
import 'package:islame_app_new_design/juzz/lib/widgets/button/app_back_button.dart';
import 'package:islame_app_new_design/juzz/lib/widgets/custom_image.dart';
import 'package:islame_app_new_design/juzz/lib/widgets/loader/loading_shimmer.dart';
import 'package:provider/provider.dart';

class BookmarksScreen extends StatefulWidget {
  const BookmarksScreen({Key? key}) : super(key: key);

  @override
  State<BookmarksScreen> createState() => _BookmarksScreenState();
}

class _BookmarksScreenState extends State<BookmarksScreen> {
  @override
  void initState() {
    final bookmarkCubit = BookmarkCubit.cubit(context);
    bookmarkCubit.fetch();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    App.init(context);
    final appProvider = Provider.of<AppProvider>(context);
    final bookmarkCubit = BookmarkCubit.cubit(context);

    return Scaffold(
      backgroundColor: appProvider.isDark ? Colors.grey[850] : Colors.white,
      body: SafeArea(
        child: Stack(
          children: [
            if (!appProvider.isDark)
              CustomImage(
                opacity: 0.3,
                height: AppDimensions.normalize(60),
                imagePath: StaticAssets.sajda,
              ),
            const AppBackButton(),
            const CustomTitle(
              title: 'Bookmarks',
            ),
            Container(
              margin: EdgeInsets.only(
                top: MediaQuery.of(context).size.height * 0.22,
              ),
              child: BlocBuilder<BookmarkCubit, BookmarkState>(
                builder: (context, state) {
                  if (state is BookmarkFetchLoading) {
                    return const Center(
                      child: LoadingShimmer(
                        text: 'Getting your bookmarks...',
                      ),
                    );
                  } else if (state is BookmarkFetchSuccess &&
                      state.data!.isEmpty) {
                    return Center(
                      child: Text(
                        'No Bookmarks yet!',
                        style: AppText.b1b!.copyWith(
                          color: AppTheme.c!.text,
                        ),
                      ),
                    );
                  } else if (state is BookmarkFetchSuccess) {
                    return ListView.separated(
                      separatorBuilder: (context, index) => const Divider(
                        color: Color(0xffee8f8b),
                      ),
                      itemCount: bookmarkCubit.state.data!.length,
                      itemBuilder: (context, index) {
                        final chapter = bookmarkCubit.state.data![index];
                        return SurahTile(
                          chapter: chapter,
                        );
                      },
                    );
                  }
                  return Center(
                    child: Text(
                      state.message!,
                      style: AppText.b1b!.copyWith(
                        color: AppTheme.c!.text,
                      ),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
