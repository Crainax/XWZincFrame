//! zinc
library RefreshAttribute requires Xwei
{
    private struct RefreshAttribute
    {
        static method action()
        {
            integer index;
            for (0 <= index <= Map_GamerIndex) {
                Gamer.user[index].hero.addStateString("力量", Gamer.user[index].hero.stateString("每秒力量") + Gamer.user[index].hero.stateString("每秒全属性"));
                Gamer.user[index].hero.addStateString("敏捷", Gamer.user[index].hero.stateString("每秒敏捷") + Gamer.user[index].hero.stateString("每秒全属性"));
                Gamer.user[index].hero.addStateString("智力", Gamer.user[index].hero.stateString("每秒智力") + Gamer.user[index].hero.stateString("每秒全属性"));
            }
        }

        static method onInit()
        {
            Timer.create(1.0, true, function thistype.action);
        }
    }
}
//! endzinc
