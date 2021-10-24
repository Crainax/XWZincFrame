//! zinc
library Input
{
    public struct Input
    {
        public
        {
            // 键盘
            static constant integer KEY_A      = 0x41;
            static constant integer KEY_B      = 0x42;
            static constant integer KEY_C      = 0x43;
            static constant integer KEY_D      = 0x44;
            static constant integer KEY_E      = 0x45;
            static constant integer KEY_F      = 0x46;
            static constant integer KEY_G      = 0x47;
            static constant integer KEY_H      = 0x48;
            static constant integer KEY_I      = 0x49;
            static constant integer KEY_J      = 0x4A;
            static constant integer KEY_K      = 0x4B;
            static constant integer KEY_L      = 0x4C;
            static constant integer KEY_M      = 0x4D;
            static constant integer KEY_N      = 0x4E;
            static constant integer KEY_O      = 0x4F;
            static constant integer KEY_P      = 0x50;
            static constant integer KEY_Q      = 0x51;
            static constant integer KEY_R      = 0x52;
            static constant integer KEY_S      = 0x53;
            static constant integer KEY_T      = 0x54;
            static constant integer KEY_U      = 0x55;
            static constant integer KEY_V      = 0x56;
            static constant integer KEY_W      = 0x57;
            static constant integer KEY_X      = 0x58;
            static constant integer KEY_Y      = 0x59;
            static constant integer KEY_Z      = 0x5A;
            static constant integer KEY_F1     = 0x70;
            static constant integer KEY_F2     = 0x71;
            static constant integer KEY_F3     = 0x72;
            static constant integer KEY_F4     = 0x73;
            static constant integer KEY_F5     = 0x74;
            static constant integer KEY_F6     = 0x75;
            static constant integer KEY_F7     = 0x76;
            static constant integer KEY_F8     = 0x77;
            static constant integer KEY_F9     = 0x78;
            static constant integer KEY_F10    = 0x79;
            static constant integer KEY_F11    = 0x7A;
            static constant integer KEY_F12    = 0x7B;
            static constant integer KEY_TAB    = 0x9;   // 切换键
            static constant integer KEY_ENTER  = 0xD;   // 回车键
            static constant integer KEY_SHIFT  = 0x10;  // Shift键
            static constant integer KEY_CTRL   = 0x11;  // Ctrl键
            static constant integer KEY_ALT    = 0x12;  // Alt键
            static constant integer KEY_ESC    = 0x1B;  // Esc键
            static constant integer KEY_SPACE  = 0x20;  // 删除退格键
            static constant integer KEY_SLASH  = 0xBF;  // 正斜杠 \\
            static constant integer KEY_BACKSL = 0xDC;  // 反斜杠 //
            static constant integer KEY_LEFT   = 0x25;  // ←
            static constant integer KEY_UP     = 0x26;  // ↑
            static constant integer KEY_RIGHT  = 0x27;  // →
            static constant integer KEY_DOWN   = 0x28;  // ↓
            // 大键盘 数字键
            static constant integer KEY_0 = 0x30;
            static constant integer KEY_1 = 0x31;
            static constant integer KEY_2 = 0x32;
            static constant integer KEY_3 = 0x33;
            static constant integer KEY_4 = 0x34;
            static constant integer KEY_5 = 0x35;
            static constant integer KEY_6 = 0x36;
            static constant integer KEY_7 = 0x37;
            static constant integer KEY_8 = 0x38;
            static constant integer KEY_9 = 0x39;
            // 小键盘 数字键
            static constant integer KEY_NUM_0 = 0x60;
            static constant integer KEY_NUM_1 = 0x61;
            static constant integer KEY_NUM_2 = 0x62;
            static constant integer KEY_NUM_3 = 0x63;
            static constant integer KEY_NUM_4 = 0x64;
            static constant integer KEY_NUM_5 = 0x65;
            static constant integer KEY_NUM_6 = 0x66;
            static constant integer KEY_NUM_7 = 0x67;
            static constant integer KEY_NUM_8 = 0x68;
            static constant integer KEY_NUM_9 = 0x69;

            // 按键状态 【注意，网易的按键注册，如果是按下状态 那么一直按住会一直多次频发的触发，所以需要自己增加间隔】
            static constant integer DOWN = 1;   // 按下
            static constant integer UP   = 0;   // 松开
        }

        public
        {
            static method triggerKey()->integer{ return DzGetTriggerKey(); } // 事件响应 获取触发的键码
        }
    }
}
//! endzinc
