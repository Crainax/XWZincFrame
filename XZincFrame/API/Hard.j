//! zinc
library Hard
{
    public struct Hard
    {
        private
        {
            // 成员属性
            static boolean keyBool[];
            static boolean mouseWheelBool    = false;
            static boolean mouseMoveBool     = false;
            static boolean windowResizeBool  = false;
            static boolean updateCallBool    = false;

            static Vec3 camUp = 0;

            static method worldToView(Vec3 worldPos, Vec3 camPos, Vec3 camTarget) -> Vec3
            {
                Vec3 zS = Vec3.difference(camTarget, camPos);
                Vec3 zaxis = zS.norm;
                Vec3 xS = Vec3.crossProduct(thistype.camUp, zaxis);
                Vec3 xaxis = xS.norm;
                Vec3 yaxis = Vec3.crossProduct(zaxis, xaxis);
                real x = worldPos.x*xaxis.x + worldPos.y*xaxis.y + worldPos.z*xaxis.z - 1*xaxis.dot(camPos);
                real y = worldPos.x*yaxis.x + worldPos.y*yaxis.y + worldPos.z*yaxis.z - 1*yaxis.dot(camPos);
                real z = worldPos.x*zaxis.x + worldPos.y*zaxis.y + worldPos.z*zaxis.z - 1*zaxis.dot(camPos);
                Vec3 ans = Vec3.create(-x, y, z);
                zS.destroy();
                xS.destroy();
                zaxis.destroy();
                xaxis.destroy();
                yaxis.destroy();
                return ans;
            }

            static method onInit()
            {
                thistype.camUp = Vec3.create(0.0, 0.0, 1.0);
            }
        }

        public
        {
            // Get
            static method mouseGameX() ->real { return DzGetMouseTerrainX(); } // 获取鼠标在游戏内的X坐标
            static method mouseGameY() ->real { return DzGetMouseTerrainY(); } // 获取鼠标在游戏内的Y坐标
            static method mouseGameZ() ->real { return DzGetMouseTerrainZ(); } // 获取鼠标在游戏内的Z坐标
            static method mouseX() ->integer { return DzGetMouseX(); } // 获取鼠标在屏幕的X坐标
            static method mouseY() ->integer { return DzGetMouseY(); } // 获取鼠标在屏幕的Y坐标
            static method mouseXRelative() ->integer { return DzGetMouseXRelative(); } // 获取鼠标游戏窗口坐标X
            static method mouseYRelative() ->integer { return DzGetMouseYRelative(); } // 获取鼠标游戏窗口坐标Y
            static method windowWidth() ->integer { return DzGetWindowWidth(); } // 获取War3窗口宽度
            static method windowHeight() ->integer { return DzGetWindowHeight(); } // 获取War3窗口高度
            static method windowX() ->integer { return DzGetWindowX(); } // 获取魔兽窗口X坐标
            static method windowY() ->integer { return DzGetWindowY(); } // 获取魔兽窗口Y坐标
            static method getKey() ->integer { return DzGetTriggerKey(); } // 事件响应 - 获取触发的按键ID
            static method getWheelValue() ->integer { return DzGetWheelDelta(); } // 事件响应 - 获取滚轮变化值
            static method mouseUnit() ->Unit { return Unit.byHandle(DzGetUnitUnderMouse()); } // 获取鼠标指向的单位
            static method mouseItem() ->Item { return Item.byHandle(Turn.item(GetHandleId(DzGetUnitUnderMouse()))); } // 获取鼠标指向的物品

            static method mouseGameVec3() ->Vec3 { return Vec3.create(DzGetMouseTerrainX(), DzGetMouseTerrainY(), DzGetMouseTerrainZ()); } // 获取鼠标在游戏内的向量信息

            // 游戏坐标转换屏幕坐标
            static method worldToScreenLocal(Vec3 v) ->Vec3
            {
                Vec3 camPos = Vec3.create(GetCameraEyePositionX(), GetCameraEyePositionY(), GetCameraEyePositionZ());
                Vec3 camTarget = Vec3.create(GetCameraTargetPositionX(), GetCameraTargetPositionY(), GetCameraTargetPositionZ());
                Vec3 res = thistype.worldToView(v, camPos, camTarget);
                real clipHalfLength = math.tan(GetCameraField(CAMERA_FIELD_FIELD_OF_VIEW) / 2);
                real n = 0.4 / clipHalfLength;
                res.x = n * res.x / res.z / 0.75;
                res.y = n * res.y / res.z / 0.75 + 0.05;
                res.z = 1;
                camPos.destroy();
                camTarget.destroy();
                return res;
            }

            // Set
            static method setMousePos(integer x, integer y) { DzSetMousePos(x, y); } // 设置鼠标位置
            static method setMemory(integer address, real value) { DzSetMemory(address, value); } // 设置内存地址数值

            // Boolean
            static method IsKeyDown(integer Key) ->boolean { return DzIsKeyDown(Key); } // 判断按键是否按下
            static method IsMouseGame() ->boolean { return DzIsMouseOverUI(); } // 鼠标是否在游戏UI内
            static method IsWindowActive() ->boolean { return DzIsWindowActive(); } // 判断游戏窗口是否处于激活状态

            // 硬件事件 code是异步执行的。只有触发的玩家环境下执行了action
            // 注册异步鼠标事件, 无法在本地环境内执行触发器 status = 触发方式，0为松开 1为按下 , btn = 鼠标键， 1为左键 2为右键
            static method mouseEvent(integer btn, integer status, code action) {
                if (thistype.keyBool[btn + status + 1]) return;
                thistype.keyBool[btn + status + 1] = true;
                DzTriggerRegisterMouseEventByCode(null, btn, status, false, action);
            }
            // 注册异步按键事件，无法在本地环境内执行触发器 status = 触发方式，0为松开 1为按下
            static method keyEvent(integer keyData, integer status, code action) {
                if (thistype.keyBool[keyData + status + 1]) return;
                thistype.keyBool[keyData + status + 1] = true;
                DzTriggerRegisterKeyEventByCode(null, keyData, status, false, action);
            }
            // 注册异步鼠标滚轮事件，无法在本地环境内执行触发器
            static method mouseWheelEvent(code action) {
                if (thistype.mouseWheelBool) return;
                thistype.mouseWheelBool = true;
                DzTriggerRegisterMouseWheelEventByCode(null, false, action);
            }
            // 注册异步鼠标移动事件，无法在本地环境内执行触发器
            static method mouseMoveEvent(code action) {
                if (thistype.mouseMoveBool) return;
                thistype.mouseMoveBool = true;
                DzTriggerRegisterMouseMoveEventByCode(null, false, action);
            }
            // 注册异步窗口大小变化事件，无法在本地环境内执行触发器
            static method windowResizeEvent(code action) {
                if (thistype.windowResizeBool) return;
                thistype.windowResizeBool = true;
                DzTriggerRegisterWindowResizeEventByCode(null, false, action);
            }
            // 注册异步界面更新绘制事件，无法在本地环境内执行触发器
            static method updateCallEvent(code action) {
                if (thistype.updateCallBool) return;
                thistype.updateCallBool = true;
                DzFrameSetUpdateCallbackByCode(action);
            }
        }
    }
}
//! endzinc
