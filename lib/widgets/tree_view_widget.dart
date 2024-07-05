import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:animated_tree_view/animated_tree_view.dart';
import 'package:toonflix/constant/constant.dart';
import 'package:toonflix/widgets/ui/safe_area_widget.dart';

const showSnackBar = false;
const expandChildrenOnReady = false;

class TreeViewWidget extends StatefulWidget {
  const TreeViewWidget({
    super.key,
  });

  @override
  TreeViewWidgetState createState() => TreeViewWidgetState();
}

class TreeViewWidgetState extends State<TreeViewWidget> {
  TreeViewController? _controller;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: ValueListenableBuilder<bool>(
        valueListenable: sampleTree.expansionNotifier,
        builder: (context, isExpanded, _) {
          return FloatingActionButton.extended(
            onPressed: () {
              if (sampleTree.isExpanded) {
                _controller?.collapseNode(sampleTree);
              } else {
                _controller?.expandAllChildren(sampleTree);
              }
            },
            label: isExpanded
                ? const Text("Collapse all")
                : const Text("Expand all"),
          );
        },
      ),
      body: TreeView.simple(
        tree: sampleTree,
        showRootNode: true,
        expansionIndicatorBuilder: (context, node) =>
            ChevronIndicator.rightDown(
          tree: node,
          color: Colors.blue[700],
          padding: const EdgeInsets.all(8),
        ),
        indentation: const Indentation(style: IndentStyle.squareJoint),
        onItemTap: (item) {
          if (kDebugMode) print("Item tapped: ${item.key}");

          if (showSnackBar) {
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(
                content: Text("Item tapped: ${item.key}"),
                duration: const Duration(milliseconds: 750),
              ),
            );
          }
        },
        onTreeReady: (controller) {
          _controller = controller;
          if (expandChildrenOnReady) controller.expandAllChildren(sampleTree);
        },
        builder: (context, node) => Card(
          color: colorMapper[node.level.clamp(0, colorMapper.length - 1)]!,
          child: ListTile(
            leading: const Icon(Icons.widgets_outlined),
            // trailing: const Icon(Icons.more_vert_sharp),
            trailing: Visibility(
              visible: node.level == 2,
              child: const Icon(
                Icons.more_vert_sharp,
                color: AppColors.lightBlue,
              ),
            ),
            onTap: () {
              if (node.data != null && node.level == 2) {
                onDetailView(context, node.data);
              }
            },
            // print("{$node.key}")
            title: onDisplay(node),
          ),
        ),
      ),
    );
  }

  void onDetailView(BuildContext context, Widget widget) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => widget,
      ),
    );
  }

  Text onDisplay(TreeNode<dynamic> n) {
    late Text rv;

    switch (n.level) {
      case 1:
        rv = Text(n.key);
        break;
      case 2:
        rv = Text("Widget - ${n.key}");
        break;
      default:
        rv = const Text("Widget Sample");
        break;
    }
    return rv;
  }
}

final sampleTree = TreeNode.root()
  ..addAll([
    TreeNode(key: "Basic Widgets")
      ..addAll(
        [
          TreeNode(key: "SafeArea", data: const SafeAreaWidget()),
          TreeNode(key: "AppBar"),
          TreeNode(key: "TabBar, TabBarView"),
          TreeNode(key: "Text"),
          TreeNode(key: "Icon"),
          TreeNode(key: "Image"),
          TreeNode(key: "Align"),
          TreeNode(key: "Center"),
          TreeNode(key: "Container"),
          TreeNode(key: "SizedBox"),
          TreeNode(key: "Padding"),
          TreeNode(key: "Column"),
          TreeNode(key: "Row"),
          TreeNode(key: "FittedBox"),
        ],
      ),
    TreeNode(key: "ButtonWidgets")
      ..addAll(
        [
          TreeNode(key: "TextButton"),
          TreeNode(key: "OutlinedButton"),
          TreeNode(key: "ElevatedButton"),
          TreeNode(key: "FilledButton"),
          TreeNode(key: "RawMaterialButton"),
          TreeNode(key: "IconButton"),
          TreeNode(key: "FloatingActionButton"),
        ],
      ),
    TreeNode(key: "ViewWidgets")
      ..addAll(
        [
          TreeNode(key: "Stack"),
          TreeNode(key: "Card"),
          TreeNode(key: "ListTile"),
          TreeNode(key: "ListView"),
          TreeNode(key: "GridView"),
          TreeNode(key: "SingleChildScrollView"),
          TreeNode(key: "ScrollBar"),
          TreeNode(key: "CircularProgressIndicator"),
          TreeNode(key: "RefreshIndicator"),
          TreeNode(key: "Drawer"),
          TreeNode(key: "DataTable"),
          TreeNode(key: "Tooltip"),
          TreeNode(key: "Divider"),
        ],
      ),
  ]);
