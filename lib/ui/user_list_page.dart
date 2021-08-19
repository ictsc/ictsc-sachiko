import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:gap/gap.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:ictsc_sachiko/domain/user.dart';
import 'package:ictsc_sachiko/ui/common/header.dart';
import 'package:ictsc_sachiko/ui/problem_list_page.dart';
import 'package:ictsc_sachiko/view_model/common/auth_state_notifier.dart';
import 'package:url_launcher/url_launcher.dart';

class UserListPage extends HookWidget {
  @override
  Widget build(BuildContext context) {
    final auth = useProvider(authStateProvider);

    return Scaffold(
      appBar: Header(appBar: AppBar()),
      body: ListView.builder(
        shrinkWrap: true,
        physics: const ClampingScrollPhysics(),
        itemCount: 1,
        itemBuilder: (_, i) => Center(
            child: Padding(
          padding: const EdgeInsets.only(left: 8.0, right: 8.0),
          child: SizedBox(
            width: 1024,
            child: Column(
              children: [
                const Gap(24),
                Padding(
                  padding: const EdgeInsets.only(left: 16, top: 16),
                  child: Text(
                    '参加者',
                    style: Theme.of(context)
                        .textTheme
                        .headline5
                        ?.copyWith(fontWeight: FontWeight.bold),
                  ),
                ),
                const Gap(24),
                SizedBox(
                  width: 1024,
                  child: ProblemCard(
                    //   const EdgeInsets.only(left: 16, right: 16, top: 24, bottom: 24),
                    edgeInsets: EdgeInsets.zero,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Table(
                          defaultVerticalAlignment:
                              TableCellVerticalAlignment.middle,
                          border: TableBorder(
                            horizontalInside: BorderSide(
                              color: Theme.of(context).dividerColor,
                            ),
                          ),
                          columnWidths: {
                            0: const FlexColumnWidth(2),
                            1: const FlexColumnWidth(2),
                            2: const FlexColumnWidth(6),
                          },
                          children: [
                            // TODO APIから取得するようにする
                            userTableRow(context, auth.user!),
                            userTableRow(context, auth.user!),
                            userTableRow(context, auth.user!),
                            userTableRow(context, auth.user!),
                          ],
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        )),
      ),
    );
  }

  TableRow userTableRow(BuildContext context, User user) {
    return TableRow(
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Gap(8),
              SelectableText(
                user.displayName,
                style: Theme.of(context).textTheme.headline6,
              ),
              const Gap(8),
              if (user.userProfile != null)
                Row(
                  children: [
                    // Github
                    if (user.userProfile!.githubId.isNotEmpty)
                      Row(
                        children: [
                          // Twitter
                          LinkIcon(
                              icon: EvaIcons.github,
                              url:
                                  'https://github.com/${user.userProfile!.githubId}'),
                        ],
                      ),
                    // Twitter
                    if (user.userProfile!.twitterId.isNotEmpty)
                      Row(
                        children: [
                          const Gap(8),
                          LinkIcon(
                              icon: EvaIcons.twitter,
                              url:
                                  'https://twitter.com/${user.userProfile!.twitterId}'),
                        ],
                      ),
                    // Twitter
                    if (user.userProfile!.facebookId.isNotEmpty)
                      Row(
                        children: [
                          const Gap(8),
                          LinkIcon(
                              icon: EvaIcons.facebook,
                              url:
                                  'https://www.facebook.com/${user.userProfile!.facebookId}'),
                        ],
                      ),
                  ],
                ),
              const Gap(8),
            ],
          ),
        ),
        SelectableText(user.userGroup?.name ?? ''),
        SelectableText(
          user.userProfile?.selfIntroduction ?? '',
          maxLines: 2,
          minLines: 1,
        ),
      ],
    );
  }
}

class LinkIcon extends StatelessWidget {
  final String url;
  final IconData icon;

  const LinkIcon({
    Key? key,
    required this.url,
    required this.icon,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // TODO リンク
    return InkWell(
      onTap: () => launch(url),
      child: Icon(
        icon,
        color: Theme.of(context).textTheme.caption?.color,
      ),
    );
  }
}