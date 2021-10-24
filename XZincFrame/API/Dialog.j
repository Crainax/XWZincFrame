//! zinc
library Dialog
{
    public struct Dialog
    {
        private
        {
            // 成员属性
            dialog dg;
            integer handleId;
            trigger click = null;
            string msg = null;
        }

        public
        {
            // 构造函数
            static method create() ->thistype {
                thistype this = thistype.allocate();
                this.dg       = DialogCreate();
                this.handleId = GetHandleId(this.dg);
                SaveInteger(XZHT, strHash("对话框实例"), this.handleId, integer(this));
                return this;
            }
            static method byHandle(dialog d) ->thistype {
                thistype this = 0;
                if (LoadInteger(XZHT, strHash("对话框实例"), GetHandleId(d)) > 0) {
                    return LoadInteger(XZHT, strHash("对话框实例"), GetHandleId(d));
                }
                this          = thistype.allocate();
                this.dg       = DialogCreate();
                this.handleId = GetHandleId(this.dg);
                SaveInteger(XZHT, strHash("对话框实例"), this.handleId, integer(this));
                return this;
            }

            // 析构函数
            method destroy() {
                this.dg = null;
                RemoveSavedInteger(XZHT, strHash("对话框实例"), this.handleId);
                this.deallocate();
            }
            method delete() {
                DialogClear(this.dg);
                DialogDestroy(this.dg);
                if (this.click != null) {
                    DestroyTrigger(this.click);
                    this.click = null;
                }
                this.destroy();
            }
            method clear() {
                DialogClear(this.dg);
                this.msg = null;
            }

            // Get
            method Handle() ->dialog { return this.dg; } // 获取对话框
            method HandleId() ->integer { return this.handleId; } // 获取句柄
            method getTitle() ->string { return this.msg; } // 获取对话框标题
            static method triggerDialog() ->thistype { return Dialog.byHandle(GetClickedDialog()); } // 事件响应 获取触发的对话框
            static method triggerButton() ->button { return GetClickedButton(); } // 事件响应 获取触发的对话框按钮

            // Set
            // 设置对话框标题 Example : this.title = text;
            method operator title= (string text) {
                DialogSetMessage(this.dg, text);
                this.msg = text;
            }
            // 添加对话框按钮
            method addButton(string text, integer Key) ->button { return DialogAddButton(this.dg, text, Key); }
            // 添加退出游戏按钮 flag = 是否显示计分屏
            method addOutButton(boolean flag, string text, integer Key) ->button { return DialogAddQuitButton(this.dg, flag, text, Key); }
            // 显示/隐藏 对话框 个人 true为显示
            method show(Gamer gm, boolean flag) {
                DialogDisplay(gm.Handle(), this.dg, flag);
                DialogSetMessage(this.dg, this.msg);
            }
            // 显示/隐藏 对话框 所有玩家
            method showAll(boolean flag) {
                DialogDisplay(GetLocalPlayer(), this.dg, flag);
                DialogSetMessage(this.dg, this.msg);
            }

            // Event
            method onClickEvent(code action) {
                if (this.click == null) {
                    this.click = CreateTrigger();
                    TriggerRegisterDialogEvent(this.click, this.dg);
                }
                TriggerAddCondition(this.click, Filter(action));
            }
        }
    }
}
//! endzinc
