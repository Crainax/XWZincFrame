//! zinc
library Panel
{
    public struct Panle
    {
        private
        {
            // 成员属性
            multiboard b;
            integer handleId;
            static multiboarditem d = null;
        }

        #define Panel_Project(row, column) \
        if (row < 1) row = 1; XWEN\
        if (column < 1) column = 1; XWEN\
        thistype.d = MultiboardGetItem(this.b, row - 1, column - 1)

        public
        {
            // 构造函数 行数 列数 标题
            static method create(integer row, integer column, string label) ->thistype {
                thistype this = thistype.allocate();
                this.b        = CreateMultiboard();
                this.handleId = GetHandleId(this.b);
                MultiboardSetRowCount(this.b, row);
                MultiboardSetColumnCount(this.b, column);
                MultiboardSetTitleText(this.b, label);
                SaveInteger(XZHT, strHash("多面板实例"), this.handleId, integer(this));
                return this;
            }
            static method byHandle(multiboard m) ->thistype {
                thistype this = 0;
                if (LoadInteger(XZHT, strHash("多面板实例"), GetHandleId(m)) > 0) {
                    return LoadInteger(XZHT, strHash("多面板实例"), GetHandleId(m));
                }
                this          = thistype.allocate();
                this.b        = m;
                this.handleId = GetHandleId(this.b);
                SaveInteger(XZHT, strHash("多面板实例"), this.handleId, integer(this));
                return this;
            }

            // 析构函数
            method destroy() {
                this.b = null;
                RemoveSavedInteger(XZHT, strHash("多面板实例"), this.handleId);
                this.deallocate();
            }
            method delete() {
                MultiboardClear(this.b);
                DestroyMultiboard(this.b);
                this.destroy();
            }
            // 清空多面板所有行和列
            method clear() {
                MultiboardClear(this.b);
            }

            // Get
            method Handle() ->multiboard { return this.b; } // 获取多面板
            method HandleId() ->integer { return this.handleId; } // 获取句柄
            method Title() ->string { return MultiboardGetTitleText(this.b); } // 获取标题
            method row() ->integer { return MultiboardGetRowCount(this.b); } // 获取行数
            method column() ->integer { return MultiboardGetColumnCount(this.b); } // 获取列数

            // Set
            method show(boolean flag) { MultiboardDisplay(this.b, flag); } // 显示/隐藏 true为显示
            method minimize(boolean flag) { MultiboardMinimize(this.b, !flag); } // 最大/最小化 true为最大化 false为最小化
            method setTitle(string text) { MultiboardSetTitleText(this.b, text); } // 设置标题
            method setRow(integer row) { MultiboardSetRowCount(this.b, row); } // 设置行数
            method setColumn(integer column) { MultiboardSetColumnCount(this.b, column); } // 设置列数
            method setTitleColor(integer r, integer g, integer b, integer a) { MultiboardSetTitleTextColor(this.b, r, g, b, a); } // 设置标题颜色 红绿蓝 透明 0-255
            method setStyle(boolean txet, boolean icons) { MultiboardSetItemsStyle(this.b, txet, icons); } // 设置所有项目风格 文字 图标 true为显示
            method setTxet(string txet) { MultiboardSetItemsValue(this.b, txet); } // 设置所有项目文本
            method setTxerColor(integer r, integer g, integer b, integer a) { MultiboardSetItemsValueColor(this.b, r, g, b, a); } // 设置所有项目文本颜色 红绿蓝 透明 0-255
            method setWidth(real width) { MultiboardSetItemsWidth(this.b, width / 100.0); } // 设置所有项目宽度 宽度为百分比
            method setIcons(string route) { MultiboardSetItemsIcon(this.b, route); } // 设置所有项目图标
            static method setShowRule(boolean flag) { MultiboardSuppressDisplay(flag); } // 设置多面板隐藏/显示模式规则，如果隐藏 则所有多面板都无法显示 true为隐藏 false为显示
            // 设置指定项目风格 文字 图标 true为显示
            method setDitemStyle(integer row, integer column, boolean txet, boolean icons) {
                Panel_Project(row, column);
                MultiboardSetItemStyle(thistype.d, txet, icons);
                MultiboardReleaseItem(thistype.d);
            }
            // 设置指定项目文本
            method setDitemTxet(integer row, integer column, string txet) {
                Panel_Project(row, column);
                MultiboardSetItemValue(thistype.d, txet);
                MultiboardReleaseItem(thistype.d);
            }
            // 设置指定项目文本颜色 红绿蓝 透明 0-255
            method setDitemTxetColor(integer row, integer column, integer r, integer g, integer b, integer a) {
                Panel_Project(row, column);
                MultiboardSetItemValueColor(thistype.d, r, g, b, a);
                MultiboardReleaseItem(thistype.d);
            }
            // 设置指定项目宽度 宽度为百分比
            method setDitemWidth(integer row, integer column, real width) {
                Panel_Project(row, column);
                MultiboardSetItemWidth(thistype.d, width / 100.0);
                MultiboardReleaseItem(thistype.d);
            }
            // 设置指定项目图标
            method setDitemIcons(integer row, integer column, string route) {
                Panel_Project(row, column);
                MultiboardSetItemIcon(thistype.d, route);
                MultiboardReleaseItem(thistype.d);
            }

            // Boolean
            method IsDisplayed() ->boolean { return IsMultiboardDisplayed(this.b); } // 是否为显示状态 显示返回true
            method IsMinimized() ->boolean { return !IsMultiboardMinimized(this.b); } // 是否为最大化状态 最大化返回true
        }
    }
}
//! endzinc
