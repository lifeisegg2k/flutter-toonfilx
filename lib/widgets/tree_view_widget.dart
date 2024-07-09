import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:animated_tree_view/animated_tree_view.dart';
import 'package:toonflix/constant/constant.dart';
import 'package:toonflix/constant/ui_constant.dart';

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
          TreeNode(
            key: "SafeArea",
            data: const SafeAreaWidget(),
          ),
          TreeNode(
            key: "AppBar",
            data: const AppBarWidget(),
          ),
          TreeNode(
            key: "TabBar, TabBarView",
            data: const TabBarViewWidget(),
          ),
          TreeNode(
            key: "Text & Icon",
            data: const TextIconWidget(),
          ),
          TreeNode(
            key: "Image",
            data: const ImageWidget(),
          ),
          TreeNode(
            key: "Align & Center",
            data: const AlignCenterWidget(),
          ),
          TreeNode(
            key: "Container",
            data: const ContainerWidget(),
          ),
          TreeNode(
            key: "SizedBox",
            data: const SizedBoxWidget(),
          ),
          TreeNode(
            key: "Padding",
            data: const PaddingWidget(),
          ),
          TreeNode(
            key: "Column",
            data: const ColumnWidget(),
          ),
          TreeNode(
            key: "Row",
            data: const RowWidget(),
          ),
          TreeNode(
            key: "FittedBox",
            data: const FittedBoxWidget(),
          ),
        ],
      ),
    TreeNode(key: "ButtonWidgets")
      ..addAll(
        [
          TreeNode(
            key: "Text/Outlined/Elevated/FilledButton",
            data: const Button1Widget(),
          ),
          TreeNode(
            key: "RawMaterial/Icon/FloatingActionButton",
            data: const Button2Widget(),
          ),
        ],
      ),
    TreeNode(key: "ViewWidgets")
      ..addAll(
        [
          TreeNode(
            key: "Stack",
            data: const StackWidget(),
          ),
          TreeNode(
            key: "Card & Tooltip",
            data: const CardTooltipWidget(),
          ),
          TreeNode(
            key: "ListTile",
            data: const ListTileWidget(),
          ),
          TreeNode(
            key: "ListView",
            data: const ListViewWidget(),
          ),
          TreeNode(
            key: "ListViewBuilder",
            data: const ListViewBuilderWidget(),
          ),
          TreeNode(
            key: "GridView",
            data: const GridViewWidget(),
          ),
          TreeNode(
            key: "GridViewBuilder",
            data: const GridViewBuilderWidget(),
          ),
          TreeNode(
            key: "SingleChildScrollView",
            data: const SingleChildScrollViewWidget(),
          ),
          TreeNode(
            key: "ScrollBar",
            data: const ScrollBarWidget(),
          ),
          TreeNode(
            key: "CircularProgressIndicator",
            data: const CircularProgressIndicatorWidget(),
          ),
          TreeNode(
            key: "RefreshIndicator",
            data: const RefreshIndicatorWidget(),
          ),
          TreeNode(
            key: "Drawer",
            data: const DrawerWidget(),
          ),
          TreeNode(
            key: "DataTable",
            data: const DataTableWidget(),
          ),
          TreeNode(
            key: "Divider",
            data: const DividerWidget(),
          ),
        ],
      ),
  ]);
