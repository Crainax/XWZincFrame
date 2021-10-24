//! zinc
library String requires Base
{
    public constant real FONT_SIZE  =  0.024;

    // 目前 默认的颜色为橙色
    public struct StringPara
    {
        string str = "";    // 显示内容
        Unit un = 0;        // 绑定单位
        real x = 0.0;       // 绑定坐标
        real y = 0.0;       // 绑定坐标
        real z = 0.0;       // 高度
        integer id = -1;    // 显示玩家ID
        real size = 0.02;   // 文字大小
        integer r = 255;    // 红色
        integer g = 165;    // 绿色
        integer b = 0;      // 蓝色
        real speedX = 0.0;  // X速率
        real speedY = 0.05; // Y速率

        // 创建到单位
        static method new(string Str, Unit whichUnit, integer gId) ->thistype
        {
            thistype this = thistype.allocate();
            this.str = Str;
            this.un = whichUnit;
            this.id = gId;
            return this;
        }

        // 创建到坐标
        static method create(string Str, real X, real Y, real Z, integer gId) ->thistype
        {
            thistype this = thistype.allocate();
            this.str = Str;
            this.x = X;
            this.y = Y;
            this.z = Z;
            this.id = gId;
            return this;
        }
    }

    public struct String
    {
        private
        {
            // 成员属性
            texttag s;
            boolean timedBool = false;
            boolean permanent = false;
        }

        public
        {
            // 构造函数
            static method create() ->thistype {
                thistype this = thistype.allocate();
                this.s = CreateTextTag();
                return this;
            }
            static method byHandle(texttag t) ->thistype {
                thistype this = thistype.allocate();
                this.s = t;
                return this;
            }
            // 创建漂浮文字到单位头上 文字内容 绑定单位 异步显示玩家ID[-1为同步显示] 文字大小 红色 绿色 蓝色 X速率 Y速率 <0时为默认值 , 如果是限时删除 必须记得用timed方法
            static method newUnit(StringPara para) ->thistype {
                thistype this = thistype.allocate();
                this.s = CreateTextTag();
                SetTextTagVisibility(this.s, false);
                SetTextTagText(this.s, para.str, para.size);
                SetTextTagColor(this.s, para.r, para.g, para.b, 255);
                SetTextTagPosUnit(this.s, para.un.Handle(), 90.0);
                SetTextTagVelocity(this.s, para.speedX, para.speedY);
                if (para.id == -1) {
                    SetTextTagVisibility(this.s, true);
                } else if (Player(para.id) == GetLocalPlayer()) {
                    SetTextTagVisibility(this.s, true);
                }
                para.destroy();
                return this;
            }
            // 创建漂浮文字在指定坐标 文字内容 坐标位置 高度 异步显示玩家ID[-1为同步显示] 文字大小 红色 绿色 蓝色 X速率 Y速率 <0时为默认值 , 如果是限时删除 必须记得用timed方法
            static method newPoint(StringPara para) ->thistype {
                thistype this = thistype.allocate();
                this.s = CreateTextTag();
                SetTextTagVisibility(this.s, false);
                SetTextTagText(this.s, para.str, para.size);
                SetTextTagColor(this.s, para.r, para.g, para.b, 255);
                SetTextTagPos(this.s, para.x, para.y, para.z);
                SetTextTagVelocity(this.s, para.speedX, para.speedY);
                if (para.id == -1) {
                    SetTextTagVisibility(this.s, true);
                } else if (Player(para.id) == GetLocalPlayer()) {
                    SetTextTagVisibility(this.s, true);
                }
                para.destroy();
                return this;
            }

            // 析构函数
            method Null() {
                if (!this.timedBool) {
                    this.s = null;
                    this.deallocate();
                }
            }
            method delete() {
                DestroyTextTag(this.s);
                this.Null();
            }
            method timed(real dur) {
                if (this.permanent) {
                    this.timedBool = true;
                    Timer.create(dur, false, function() {
                        thistype this = Timer.thisData();
                        this.timedBool = false;
                        this.delete();
                    }).setData(integer(this));
                } else {
                    this.setPermanent(false);
                    this.setLife(dur);
                    this.Null();
                }
            }

            // Set
            method setText(string text, real size) { SetTextTagText(this.s, text, size); } // 改变文字内容同时设置大小
            method setPoint(real x, real y, real z) { SetTextTagPos(this.s, x, y, z); } // 改变位置(坐标)
            method setUnit(Unit u, real z) { SetTextTagPosUnit(this.s, u.Handle(), z); } // 改变位置(单位)
            method SetColor(integer r, integer g, integer b, integer a) { SetTextTagColor(this.s, r, g, b, a); } // 改变颜色 红绿蓝 透明 0-255
            // 改变速率 对移动后的漂浮文字设置速率,该漂浮文字会先回到原点再向设定的角度移动.这里的1约等于游戏中的1800速度
            method SetVelocity(real speedX, real speedY) { SetTextTagVelocity(this.s, speedX, speedY); }
            method show(boolean flag) { SetTextTagVisibility(this.s, flag); } // 显示/隐藏 true为显示
            method suspend(boolean flag) { SetTextTagSuspended(this.s, flag); } // 暂停/恢复 暂停状态暂停漂浮文字的移动和生命计时. true为暂停
            method setPermanent(boolean flag) { this.permanent = flag;SetTextTagPermanent(this.s, flag); } // 设置是否为永久 true为永久
            method tagAge(real age) { SetTextTagAge(this.s, age); } // 设置已存在时间 该动作并不影响永久性漂浮文字
            method setLife(real life) { SetTextTagLifespan(this.s, life); } // 设置显示时间 该动作并不影响永久性漂浮文字
            method setFadepoint(real time) { SetTextTagFadepoint(this.s, time); } // 设置消逝时间点 该动作并不影响永久性漂浮文字.当漂浮文字存在时间到达该值时会开始淡化消逝

            // Boolean
            method IsPermanent() ->boolean { return this.permanent; } // 是否为永久漂浮文字
        }

        /**
            ** 匹配模式
            x: （这里 x 不能是 魔法字符 ^$()%.[]*+-? 中的一员） 表示字符 x 自身。
            .: （一个点）可表示任何字符
            %a: 表示任何字母。
            %c: 表示任何控制字符。
            %d: 表示任何数字。
            %g: 表示任何除空白符外的可打印字符。
            %l: 表示所有小写字母。
            %p: 表示所有标点符号。
            %s: 表示所有空白字符。
            %u: 表示所有大写字母。
            %w: 表示所有字母及数字。
            %x: 表示所有 16 进制数字符号。
            %x: （这里的 x 是任意非字母或数字的字符） 表示字符 x。 这是对魔法字符转义的标准方法。 
                所有非字母或数字的字符 （包括所有标点，也包括非魔法字符） 都可以用前置一个 '%' 放在模式串中表示自身。
            ** 模式条目
            单个字符类跟一个 '*'， 将匹配零或多个该类的字符。 这个条目总是匹配尽可能长的串；
            单个字符类跟一个 '+'， 将匹配一或更多个该类的字符。 这个条目总是匹配尽可能长的串；
            单个字符类跟一个 '-'， 将匹配零或更多个该类的字符。 和 '*' 不同， 这个条目总是匹配尽可能短的串；
            单个字符类跟一个 '?'， 将匹配零或一个该类的字符。 只要有可能，它会匹配一个；
            %n， 这里的 n 可以从 1 到 9； 这个条目匹配一个等于 n 号捕获物（后面有描述）的子串。
        */
        public
        {
            static method ID2S(integer id) ->string { return EXExecuteScript("string.pack('>I4'," + I2S(id) + ") "); } // 'A000' -> "A000"
            static method S2ID(string id) ->integer { return S2I(EXExecuteScript("string.unpack('>I4', '" + id + "')")); } // "A000" -> 'A000'
            static method len(string str) ->integer { return StringLength(str); } // 字符串长度
            static method O2S(integer orderId) ->string { return OrderId2String(orderId); } // 转换命令ID整数为字符串ID
            static method S2O(string str) ->integer { return OrderId(str); } // 转换字符串ID为命令ID整数
            static method U2S(integer unitId) ->string { return UnitId2String(unitId); } // 'Hmkg'-->"mountainking"
            static method S2U(string str) ->integer { return UnitId(str); } // "mountainking"-->'Hmkg'
            static method toUpper(string str) ->string { return StringCase(str, true); } // 转换大写
            static method toLower(string str) ->string { return StringCase(str, false); } // 转换小写
            static method localString(string str) ->string { return GetLocalizedString(str); } // 获取ui\\framedef\\globalstrings.fdf中定义的字符串
            static method reverse(string str) ->string { return EXExecuteScript("string.reverse('" + str + "')"); } // 倒序字符串
            // 查找字符串pattern出现的起始位置
            static method find(string str, string pattern, integer init, string Bool) ->integer {
                string Code;
                Code = EXExecuteScript("string.find('" + str + "', '" + pattern + "', " + I2S(init) + ", " + Bool + ")");
                if (Code == null) {
                    return -1;
                }
                return S2I(Code);
            }
            // 替换字符串，替换str里面的pattern内容为value，count为替换次数，少于1则是代表替换所有
            static method gsub(string str, string pattern, string value, integer count) ->string {
                string Code = "";
                if (count < 1) {
                    Code = EXExecuteScript("string.gsub('" + str + "', '" + pattern + "', '" + value + "')");
                } else {
                    Code = EXExecuteScript("string.gsub('" + str + "', '" + pattern + "', '" + value + "', " + I2S(count) + ")");
                }
                return Code;
            }
            // 寻找字符串，从str里面寻找pattern，起始寻找位置init，找到返回位置，失败返回-1，起始位置可以是负数，负数则是从结尾开始倒序寻找
            static method seek(string str, string pattern, integer init) ->integer {
                integer value = -1;
                if (init < 0) {
                    init = init * -1;
                    value = thistype.find(thistype.reverse(str), thistype.reverse(pattern), init, "true");
                    if (value == -1) return value;
                    value = thistype.len(str) - value;
                } else {
                    value = thistype.find(str, pattern, init, "true");
                }
                return value;
            }
            // 匹配字符串，从str里面根据pattern去匹配字符串，匹配成功返回匹配内容，失败返回null，起始匹配位置init，可以是负数，pattern类型为匹配模式
            // 匹配的规则，只能够正序匹配，如果起始位置为负数，那么就是从结尾开始算起，但依然是正序，而不是倒序。如-1 则是倒数第一位 -2 则是倒数第二位
            // String.match("abcd12345efg", "%d%d", 1); -> "12" , String.match("基础攻击+5000|n基础防御+100", "基础防御.(%d*%.?%d*)", 1); -> "100"
            static method match(string str, string pattern, integer init) ->string {
                return EXExecuteScript("string.match('" + str + "', '" + pattern + "', " + I2S(init) + ")");
            }
            // 截取字符串，截取str内容，从Start位置截取到End位置，Start和End位置都可以为负数，-1则为字符串长度
            static method sub(string str, integer start, integer end) ->string {
                return EXExecuteScript("string.sub('" + str + "', " + I2S(start) + ", " + I2S(end) + ")");
            }

            // 事件响应
            static method chat() ->string { return GetEventPlayerChatString(); } // 输入的聊天信息
            static method matched() ->string { return GetEventPlayerChatStringMatched(); } // 匹配的聊天信息
            static method syncData() ->string { return DzGetTriggerSyncData(); } // 同步的数据
        }
    }
}
//! endzinc
