import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:gap/gap.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:ictsc_sachiko/service/model/user_api.dart';
import 'package:ictsc_sachiko/ui/common/header.dart';
import 'package:ictsc_sachiko/ui/problem_list_page.dart';
import 'package:ictsc_sachiko/view_model/user_list_page_state_notifier.dart';
import 'package:url_launcher/link.dart';
import 'package:url_launcher/url_launcher.dart';

class UserListPage extends HookWidget {
  @override
  Widget build(BuildContext context) {
    final userGroupState = useProvider(userListPageProvider);

    final List<TableRow> members = [];

    userGroupState.userGroups.asMap().forEach((key, value) => value.members
        .asMap()
        .forEach((key, member) => members.add(userTableRow(context, member, value.name))));

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
                          children: members,
                        ),
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

  TableRow userTableRow(BuildContext context, Member member, String teamName) {
    return TableRow(
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Gap(8),
              SelectableText(
                member.displayName.length >= 14
                    ? member.displayName.replaceRange(14, null, '...')
                    : member.displayName,
                style: Theme.of(context).textTheme.headline6,
              ),
              const Gap(8),
              if (member.profile != null)
                Row(
                  children: [
                    // Github
                    if (member.profile!.githubId.isNotEmpty)
                      Row(
                        children: [
                          // Twitter
                          LinkIcon(
                              icon: EvaIcons.github,
                              url:
                                  'https://github.com/${member.profile!.githubId}'),
                        ],
                      ),
                    // Twitter
                    if (member.profile!.twitterId.isNotEmpty)
                      Row(
                        children: [
                          const Gap(8),
                          LinkIcon(
                              icon: EvaIcons.twitter,
                              url:
                                  'https://twitter.com/${member.profile!.twitterId}'),
                        ],
                      ),
                    // Twitter
                    if (member.profile!.facebookId.isNotEmpty)
                      Row(
                        children: [
                          const Gap(8),
                          LinkIcon(
                              icon: EvaIcons.facebook,
                              url:
                                  'https://www.facebook.com/${member.profile!.facebookId}'),
                        ],
                      ),
                  ],
                ),
            ],
          ),
        ),
        SelectableText(
          teamName.length >= 22
              ? teamName.replaceRange(22, null, '...')
              : teamName,
        ),
        SelectableText(
          (member.profile?.selfIntroduction ?? '').length >= 64
              ? member.profile!.selfIntroduction.replaceRange(64, null, '...')
              : member.profile?.selfIntroduction ?? '',
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
    return Column(
      children: [
        Link(
          uri: Uri.parse(url),
          builder: (_, __) => InkWell(
            onTap: () => launch(url),
            child: Icon(
              icon,
              color: Theme.of(context).textTheme.caption?.color,
            ),
          ),
        ),
        const Gap(8),
      ],
    );
  }
}
