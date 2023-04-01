import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:qit_flutter/presentation/core/sources/assets.gen.dart';

import '../../core/blocs/auth_bloc/auth_bloc.dart';

class UserCard extends StatefulWidget {
  const UserCard({Key? key}) : super(key: key);

  @override
  State<UserCard> createState() => _UserCardState();
}

class _UserCardState extends State<UserCard> {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AuthBloc, AuthState>(builder: (context, state) {
      return Container(
        width: 1000.w,
        height: 290.h,
        padding: EdgeInsets.all(10.w),
        decoration: BoxDecoration(
            color: Theme.of(context).cardColor,
            borderRadius: BorderRadius.circular(22)),
        child: Column(
          children: [
            CircleAvatar(
              radius: 50.h,
              backgroundColor: Colors.transparent,
              child: Image.asset(
                Assets.images.person.path,
                fit: BoxFit.fill,
              ),
            ),
            ListTile(
              leading: Icon(
                Icons.email,
                color: Theme.of(context).primaryColor,
              ),
              title: Text("email".tr()),
              subtitle: Text((state as Authenticated).data.user.email),
            ),
            ListTile(
              leading: Icon(
                Icons.person,
                color: Theme.of(context).primaryColor,
              ),
              title: Text("name".tr()),
              subtitle: Text(state.data.user.name),
            ),
          ],
        ),
      );
    });
  }
}
