//! zinc
library TimeStamp
{
    public struct TimeStamp
    {
        private
        {
            // 月份 星期
            static integer MonthInt[];
            static string WeekStr[];
            // 时间戳 过滤布尔
            static integer Stamp;
            static boolean Bool;
        }

        public
        {
            // 年份 月份 天数 小时 分 秒 星期
            static integer year;
            static integer mon;
            static integer day;
            static integer hour;
            static integer min;
            static integer sec;
            static integer week;
        }

        #define TimeStamp_NS                31536000
        #define TimeStamp_LS                31622400
        #define TimeStamp_BJTIME            28800
        #define TimeStamp_BASE2015_SEC      1451606400
        #define TimeStamp_BASE2015_WEEKDAY  4

        private
        {
            static method MathMod(integer dividend,integer divisor) ->integer
            {
                integer modulus = dividend - (dividend / divisor) * divisor;
                if (modulus < 0) modulus = modulus + divisor;
                return modulus;
            }

            static method IsLeapYear(integer y) ->boolean
            {
                if (thistype.MathMod(y, 4) == 0){
                    if (thistype.MathMod(y, 100) == 0){
                        if (thistype.MathMod(y, 400) == 0){
                            return true;
                        }else{
                            return false;
                        }
                    }
                    return true;
                }
                return false;
            }

            static method UpdateDate(integer y,integer remainSec,integer dayBy2015)
            {
                boolean bIsLeap = thistype.IsLeapYear(y);
                real dayNum = I2R(remainSec) / (24*60*60);
                integer totalDay = R2I(dayNum);
                integer totalDayBase,totalMonDay,curMonDay,m;
                totalDayBase = 0,totalMonDay = 0,curMonDay = 0,m = 1;
                if ((dayNum - I2R(totalDay)) > 0) totalDay +=1;
                if (totalDay == 0) totalDay = 1;
                dayBy2015 = dayBy2015 + totalDay;
                while (m <= 12){
                    if (bIsLeap && m == 2){
                        curMonDay = thistype.MonthInt[m] + 1;
                    }else{
                        curMonDay = thistype.MonthInt[m];
                    }
                    if (totalDay <= curMonDay){
                        thistype.year = y;
                        thistype.mon = m;
                        thistype.day = totalDay;
                        thistype.hour = thistype.MathMod(R2I(remainSec / (60 * 60)), 24);
                        thistype.min = thistype.MathMod(R2I(remainSec / 60), 60);
                        thistype.sec = thistype.MathMod(remainSec, 60);
                        m = 100;
                    }
                    m +=1;
                    totalDay = totalDay - curMonDay;
                }
                thistype.week = thistype.MathMod(thistype.MathMod(dayBy2015, 7) + TimeStamp_BASE2015_WEEKDAY, 7);
            }
            
            static method GetDate(integer now)
            {
                integer remain = now - TimeStamp_BASE2015_SEC + TimeStamp_BJTIME; // 默认东八区
                integer y,baseRemain,dayBy2015,baseDayBy2015;
                y = 2016;baseRemain = 0;dayBy2015 = 0;baseDayBy2015 = 0;
                while (y <= 3000){
                    baseRemain = remain;
                    baseDayBy2015 = dayBy2015;
                    if (thistype.IsLeapYear(y)){
                        remain = remain - TimeStamp_LS;
                        dayBy2015 = dayBy2015 + 366;
                    }else{
                        remain = remain - TimeStamp_NS;
                        dayBy2015 = dayBy2015 + 365;
                    }
                    if (remain < 0){
                        thistype.UpdateDate(y, baseRemain, baseDayBy2015);
                        y = 10000;
                    }
                    y +=1;
                }
            }

            static method onInit()
            {
                // 初始化时间戳
                Timer.create(0.0, false, function() {
                    thistype.Stamp = DzAPI_Map_GetGameStartTime();
                    thistype.GetDate(thistype.Stamp);
                    Timer.create(1.0, true, function() {
                        thistype.Stamp +=1;
                        thistype.GetDate(thistype.Stamp);
                    });
                });
            }
        }

        public
        {
            // 输出当前时间
            static method showTime(integer gamerId, real dur)
            {
                string data = "[|Cffff9100系统|r] - 现在北京时间为：" + I2S(thistype.year) + "年" + I2S(thistype.mon) + "月" + I2S(thistype.day) + "日" + I2S(thistype.hour) + "时" + I2S(thistype.min) + "分" + I2S(thistype.sec) + "秒   ,星期" + thistype.WeekStr[thistype.week];
                Gamer.echo(gamerId, dur, data);
            }
            // 获取当前星期字符串
            static method getWeek() ->string
            {
                return "星期" + thistype.WeekStr[thistype.week];
            }
            // 对比两个月份天数，参数二段比参数一段更推后，那么就返回真，否则返回假
            static method IsTime(integer upperMon, integer upperDay, integer lowerMon, integer lowerDay) ->boolean
            {
                if (lowerMon > upperMon) return true;
                if (lowerMon == upperMon && lowerDay > upperDay) return true;
                return false;
            }
        }
    }
}
//! endzinc
