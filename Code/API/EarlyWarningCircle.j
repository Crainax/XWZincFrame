//! zinc
library EarlyWarningCircle requires Xwei
{
    #define EarlyWarningCircle_Effect   "WanJieYongHeng3Model\\Effect\\EarlyWarningCircle\\yujingquan.mdl"

    public struct EarlyWarningCircle
    {
        private
        {
            unit Source;
            real x,y,r,d,effSize;
            boolean IsAttck,IsInAttck;
            string Type,effPh;

            method destroy()
            {
                this.Source = null;
                this.deallocate();
            }
        }

        // 施法来源 中心坐标，半径范围，伤害值，是否攻击伤害，是否远程伤害，伤害类型，伤害特效，伤害特效大小，延时多少秒
        static method new(unit Source, real X, real Y, real R, real D, boolean IsAttck, boolean IsInAttck, string Type, string effPh, real effSize, real dur)
        {
            thistype this = thistype.allocate();
            Effect eff = 0;

            eff = Effect.create(EarlyWarningCircle_Effect, X, Y);
            eff.setSpeed(dur * 1.25);
            eff.setSize(R / 194.0);
            eff.timed(dur);
            
            this.Source = Source;
            this.x = X;this.y = Y;this.r = R;this.d = D;
            this.IsAttck = IsAttck;this.IsInAttck = IsInAttck;
            this.Type = Type;this.effPh = effPh;
            this.effSize = effSize;

            Timer.create(dur, false, function() {
                thistype this = Timer.thisData();
                Effect eff = 0;
                Unit un = Unit.byHandle(this.Source);
                eff = Effect.create(this.effPh, this.x, this.y);
                eff.setSize(this.effSize);
                eff.delete();
                Damage.causeRange(un, this.x, this.y, this.r, this.d, this.IsAttck, this.IsInAttck, this.Type, false, "");
                un.Null();
                this.destroy();
            }).setData(integer(this));
        }
    }
}
//! endzinc
