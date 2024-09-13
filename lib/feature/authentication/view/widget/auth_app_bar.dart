part of '../.././auth_view.dart';

class _AuthAppBar extends StatelessWidget implements PreferredSizeWidget {
  const _AuthAppBar();

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: const Text('Take A Bite'),
      centerTitle: true,
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
