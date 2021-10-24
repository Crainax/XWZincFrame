//! zinc
library Vertigo requires Xwei
{
    public BuffType VertigoBuff = 0;

    #define VertigoTarArtEffect  "Abilities\\Spells\\Human\\Thunderclap\\ThunderclapTarget.mdl" // 眩晕原版模型

    private function onInit()
    {
        VertigoBuff = BuffType.create("眩晕Buff", false);
        VertigoBuff.onAdd(function() {
            Buff bf = BuffType.getBuff();
            Unit tu = 0;
            if (bf.IsRepeat()) {
                if (bf.getRepeatTime() >= bf.getTime()) {
                    bf.setTime(bf.getRepeatTime());
                }
            } else {
                tu = bf.getTarget();
                tu.vertigo(true);
                userSet(integer, bf.HandleId(), Effect, "眩晕模型", Effect.createUnit(VertigoTarArtEffect, tu, "overhead"));
                tu.Null();
            }
        });
        VertigoBuff.onRemove(function() {
            Buff bf = BuffType.getBuff();
            Unit tu = bf.getTarget();
            tu.vertigo(false);
            userGet(integer, bf.HandleId(), Effect, "眩晕模型").delete();
            tu.Null();
        });
    }
}
//! endzinc
