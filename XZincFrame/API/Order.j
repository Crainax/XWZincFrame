//! zinc
library Order {

    /* Has its uses:
	    * with GetIssuedOrderId() check, which (as far as I know) has no string counterpart
	    * with unit.issue###OrderById(...) to make no mistakes when spelling string orders
	    * when you need to use some unique orders you could knew from internet, but in the right way. */

    // Class that contains every known order in game that has no string counterpart
    public struct SpecialOrders {
        public {
            // This is an order with no target that opens up the build menu of a unit that can build structures.
            static constant integer buildmenu				= 851994;

            /** 851976 (cancel): This is an order with no target that is like a click on a cancel button.
            We used to be able to catch cancel clicks with this id back then but this id doesn't seem to work any more. */
            static constant integer cancel					= 851976;

            // An item targeted order that move the target item to a certain inventory slot of the ordered hero.
            static constant integer itemdrag00				= 852002;

            // An item targeted order that move the target item to a certain inventory slot of the ordered hero.
            static constant integer itemdrag01				= 852003;

            // An item targeted order that move the target item to a certain inventory slot of the ordered hero.
            static constant integer itemdrag02				= 852004;

            // An item targeted order that move the target item to a certain inventory slot of the ordered hero.
            static constant integer itemdrag03				= 852005;

            // An item targeted order that move the target item to a certain inventory slot of the ordered hero.
            static constant integer itemdrag04				= 852006;

            // An item targeted order that move the target item to a certain inventory slot of the ordered hero.
            static constant integer itemdrag05				= 852007;

            /**An order that will make the ordered hero use the item in a certain inventory slot.
	        If it's an order with no target or object or point targeted depends on the type of item. */
            static constant integer itemuse00 				= 852008;

            /** An order that will make the ordered hero use the item in a certain inventory slot.
	        If it's an order with no target or object or point targeted depends on the type of item. */
            static constant integer itemuse01			    = 852009;

            /** An order that will make the ordered hero use the item in a certain inventory slot.
	        If it's an order with no target or object or point targeted depends on the type of item. */
            static constant integer itemuse02 				= 852010;

            /** An order that will make the ordered hero use the item in a certain inventory slot.
	        If it's an order with no target or object or point targeted depends on the type of item. */
            static constant integer itemuse03 				= 852011;

            /** An order that will make the ordered hero use the item in a certain inventory slot.
	        If it's an order with no target or object or point targeted depends on the type of item. */
            static constant integer itemuse04 				= 852012;

            /** An order that will make the ordered hero use the item in a certain inventory slot.
	        If it's an order with no target or object or point targeted depends on the type of item. */
            static constant integer itemuse05 				= 852013;

            // Order for AIaa ability, which blizzard made for tome of attack, but never used it. But it can actually change caster's base attack!
            static constant integer tomeOfAttack			= 852259;

            // This is a point or object targeted order that is like a right click.
            static constant integer smart					= 851971;

            /**This is an order with no target that opens the skill menu of heroes.
	        If it is issued for a normal unit with triggers it will black out the command card for this unit, the command card will revert to normal after reselecting the unit. */
            static constant integer skillmenu				= 852000;

            /** This order is issued to units that get stunned by a spell, for example War Stomp (AOws).
	        This is probably a hold position + hold fire order. The ordered unit will be unable to move and attack.*/
            static constant integer stunned 				= 851973;
            static constant integer wandOfIllusion 		    = 852274;
        }
    }

    // Class that contains every known order in game.
    public struct OrderIds extends SpecialOrders {
        public {
        	static constant integer absorb					= 852529;
        	static constant integer acidbomb				= 852662;
        	static constant integer acolyteharvest			= 852185;
        	static constant integer ambush					= 852131;
        	static constant integer ancestralspirit			= 852490;
        	static constant integer ancestralspirittarget	= 852491;
        	static constant integer animatedead				= 852217;
        	static constant integer antimagicshell			= 852186;
        	static constant integer attack					= 851983;
        	static constant integer attackground			= 851984;
        	static constant integer attackonce				= 851985;
        	static constant integer attributemodskill		= 852576;
        	static constant integer auraunholy				= 852215;
        	static constant integer auravampiric			= 852216;
        	static constant integer autodispel				= 852132;
        	static constant integer autodispeloff			= 852134;
        	static constant integer autodispelon			= 852133;
        	static constant integer autoentangle			= 852505;
        	static constant integer autoentangleinstant		= 852506;
        	static constant integer autoharvestgold			= 852021;
        	static constant integer autoharvestlumber		= 852022;
        	static constant integer avatar					= 852086;
        	static constant integer avengerform				= 852531;
        	static constant integer awaken					= 852466;
        	static constant integer banish					= 852486;
        	static constant integer barkskin				= 852135;
        	static constant integer barkskinoff				= 852137;
        	static constant integer barkskinon				= 852136;
        	static constant integer battleroar				= 852599;
        	static constant integer battlestations			= 852099;
        	static constant integer bearform				= 852138;
        	static constant integer berserk					= 852100;
        	static constant integer blackarrow				= 852577;
        	static constant integer blackarrowoff			= 852579;
        	static constant integer blackarrowon			= 852578;
        	static constant integer blight					= 852187;
        	static constant integer blink					= 852525;
        	static constant integer blizzard				= 852089;
        	static constant integer bloodlust				= 852101;
        	static constant integer bloodlustoff			= 852103;
        	static constant integer bloodluston				= 852102;
        	static constant integer board					= 852043;
        	static constant integer breathoffire			= 852580;
        	static constant integer breathoffrost			= 852560;
        	static constant integer build					= 851994;
        	static constant integer burrow					= 852533;
        	static constant integer cannibalize				= 852188;
        	static constant integer carrionscarabs			= 852551;
        	static constant integer carrionscarabsinstant	= 852554;
        	static constant integer carrionscarabsoff		= 852553;
        	static constant integer carrionscarabson		= 852552;
        	static constant integer carrionswarm			= 852218;
        	static constant integer chainlightning			= 852119;
        	static constant integer channel					= 852600;
        	static constant integer charm					= 852581;
        	static constant integer chemicalrage			= 852663;
        	static constant integer cloudoffog				= 852473;
        	static constant integer clusterrockets			= 852652;
        	static constant integer coldarrows				= 852244;
        	static constant integer coldarrowstarg			= 852243;
        	static constant integer controlmagic			= 852474;
        	static constant integer corporealform			= 852493;
        	static constant integer corrosivebreath			= 852140;
        	static constant integer coupleinstant			= 852508;
        	static constant integer coupletarget			= 852507;
        	static constant integer creepanimatedead		= 852246;
        	static constant integer creepdevour				= 852247;
        	static constant integer creepheal				= 852248;
        	static constant integer creephealoff			= 852250;
        	static constant integer creephealon				= 852249;
        	static constant integer creepthunderbolt		= 852252;
        	static constant integer creepthunderclap		= 852253;
        	static constant integer cripple					= 852189;
        	static constant integer curse					= 852190;
        	static constant integer curseoff				= 852192;
        	static constant integer curseon					= 852191;
        	static constant integer cyclone					= 852144;
        	static constant integer darkconversion			= 852228;
        	static constant integer darkportal				= 852229;
        	static constant integer darkritual				= 852219;
        	static constant integer darksummoning			= 852220;
        	static constant integer deathanddecay			= 852221;
        	static constant integer deathcoil				= 852222;
        	static constant integer deathpact				= 852223;
        	static constant integer decouple				= 852509;
        	static constant integer defend					= 852055;
        	static constant integer detectaoe				= 852015;
        	static constant integer detonate				= 852145;
        	static constant integer devour					= 852104;
        	static constant integer devourmagic				= 852536;
        	static constant integer disassociate			= 852240;
        	static constant integer disenchant				= 852495;
        	static constant integer dismount				= 852470;
        	static constant integer dispel					= 852057;
        	static constant integer divineshield			= 852090;
        	static constant integer doom					= 852583;
        	static constant integer drain					= 852487;
        	static constant integer dreadlordinferno		= 852224;
        	static constant integer dropitem				= 852001;
        	static constant integer drunkenhaze				= 852585;
        	static constant integer earthquake				= 852121;
        	static constant integer eattree					= 852146;
        	static constant integer elementalfury			= 852586;
        	static constant integer ensnare					= 852106;
        	static constant integer ensnareoff				= 852108;
        	static constant integer ensnareon				= 852107;
        	static constant integer entangle				= 852147;
        	static constant integer entangleinstant			= 852148;
        	static constant integer entanglingroots			= 852171;
        	static constant integer etherealform			= 852496;
        	static constant integer evileye					= 852105;
        	static constant integer faeriefire				= 852149;
        	static constant integer faeriefireoff			= 852151;
        	static constant integer faeriefireon			= 852150;
        	static constant integer fanofknives				= 852526;
        	static constant integer farsight				= 852122;
        	static constant integer fingerofdeath			= 852230;
        	static constant integer firebolt				= 852231;
        	static constant integer flamestrike				= 852488;
        	static constant integer flamingarrows			= 852174;
        	static constant integer flamingarrowstarg		= 852173;
        	static constant integer flamingattack			= 852540;
        	static constant integer flamingattacktarg		= 852539;
        	static constant integer flare					= 852060;
        	static constant integer forceboard				= 852044;
        	static constant integer forceofnature			= 852176;
        	static constant integer forkedlightning			= 852587;
        	static constant integer freezingbreath			= 852195;
        	static constant integer frenzy					= 852561;
        	static constant integer frenzyoff				= 852563;
        	static constant integer frenzyon				= 852562;
        	static constant integer frostarmor				= 852225;
        	static constant integer frostarmoroff			= 852459;
        	static constant integer frostarmoron			= 852458;
        	static constant integer frostnova				= 852226;
        	static constant integer getitem					= 851981;
        	static constant integer gold2lumber				= 852233;
        	static constant integer grabtree				= 852511;
        	static constant integer harvest					= 852018;
        	static constant integer heal					= 852063;
        	static constant integer healingspray			= 852664;
        	static constant integer healingward				= 852109;
        	static constant integer healingwave				= 852501;
        	static constant integer healoff					= 852065;
        	static constant integer healon					= 852064;
        	static constant integer hex						= 852502;
        	static constant integer holdposition			= 851993;
        	static constant integer holybolt				= 852092;
        	static constant integer howlofterror			= 852588;
        	static constant integer humanbuild				= 851995;
        	static constant integer immolation				= 852177;
        	static constant integer impale					= 852555;
        	static constant integer incineratearrow			= 852670;
        	static constant integer incineratearrowoff		= 852672;
        	static constant integer incineratearrowon		= 852671;
        	static constant integer inferno					= 852232;
        	static constant integer innerfire				= 852066;
        	static constant integer innerfireoff			= 852068;
        	static constant integer innerfireon				= 852067;
        	static constant integer instant					= 852200;
        	static constant integer invisibility			= 852069;
        	static constant integer lavamonster				= 852667;
        	static constant integer lightningshield			= 852110;
        	static constant integer load					= 852046;
        	static constant integer loadarcher				= 852142;
        	static constant integer loadcorpse				= 852050;
        	static constant integer loadcorpseinstant		= 852053;
        	static constant integer locustswarm				= 852556;
        	static constant integer lumber2gold				= 852234;
        	static constant integer magicdefense			= 852478;
        	static constant integer magicleash				= 852480;
        	static constant integer magicundefense			= 852479;
        	static constant integer manaburn				= 852179;
        	static constant integer manaflareoff			= 852513;
        	static constant integer manaflareon				= 852512;
        	static constant integer manashieldoff			= 852590;
        	static constant integer manashieldon			= 852589;
        	static constant integer massteleport			= 852093;
        	static constant integer mechanicalcritter		= 852564;
        	static constant integer metamorphosis			= 852180;
        	static constant integer militia					= 852072;
        	static constant integer militiaconvert			= 852071;
        	static constant integer militiaoff				= 852073;
        	static constant integer militiaunconvert		= 852651;
        	static constant integer mindrot					= 852565;
        	static constant integer mirrorimage				= 852123;
        	static constant integer monsoon					= 852591;
        	static constant integer mount					= 852469;
        	static constant integer mounthippogryph			= 852143;
        	static constant integer move					= 851986;
        	static constant integer moveAI					= 851988;
        	static constant integer nagabuild				= 852467;
        	static constant integer neutraldetectaoe		= 852023;
        	static constant integer neutralinteract			= 852566;
        	static constant integer neutralspell			= 852630;
        	static constant integer nightelfbuild			= 851997;
        	static constant integer orcbuild				= 851996;
        	static constant integer parasite				= 852601;
        	static constant integer parasiteoff				= 852603;
        	static constant integer parasiteon				= 852602;
        	static constant integer patrol					= 851990;
        	static constant integer phaseshift				= 852514;
        	static constant integer phaseshiftinstant		= 852517;
        	static constant integer phaseshiftoff			= 852516;
        	static constant integer phaseshifton			= 852515;
        	static constant integer phoenixfire				= 852481;
        	static constant integer phoenixmorph			= 852482;
        	static constant integer poisonarrows			= 852255;
        	static constant integer poisonarrowstarg		= 852254;
        	static constant integer polymorph				= 852074;
        	static constant integer possession				= 852196;
        	static constant integer preservation			= 852568;
        	static constant integer purge					= 852111;
        	static constant integer rainofchaos				= 852237;
        	static constant integer rainoffire				= 852238;
        	static constant integer raisedead				= 852197;
        	static constant integer raisedeadoff			= 852199;
        	static constant integer raisedeadon				= 852198;
        	static constant integer ravenform				= 852155;
        	static constant integer recharge				= 852157;
        	static constant integer rechargeoff				= 852159;
        	static constant integer rechargeon				= 852158;
        	static constant integer rejuvination			= 852160;
        	static constant integer renew					= 852161;
        	static constant integer renewoff				= 852163;
        	static constant integer renewon					= 852162;
        	static constant integer repair					= 852024;
        	static constant integer repairoff				= 852026;
        	static constant integer repairon				= 852025;
        	static constant integer replenish				= 852542;
        	static constant integer replenishlife			= 852545;
        	static constant integer replenishlifeoff		= 852547;
        	static constant integer replenishlifeon			= 852546;
        	static constant integer replenishmana			= 852548;
        	static constant integer replenishmanaoff		= 852550;
        	static constant integer replenishmanaon			= 852549;
        	static constant integer replenishoff			= 852544;
        	static constant integer replenishon				= 852543;
        	static constant integer request_hero			= 852239;
        	static constant integer requestsacrifice		= 852201;
        	static constant integer restoration				= 852202;
        	static constant integer restorationoff			= 852204;
        	static constant integer restorationon			= 852203;
        	static constant integer resumebuild				= 851999;
        	static constant integer resumeharvesting		= 852017;
        	static constant integer resurrection			= 852094;
        	static constant integer returnresources			= 852020;
        	static constant integer revenge					= 852241;
        	static constant integer revive					= 852039;
        	static constant integer roar					= 852164;
        	static constant integer robogoblin				= 852656;
        	static constant integer root					= 852165;
        	static constant integer sacrifice				= 852205;
        	static constant integer sanctuary				= 852569;
        	static constant integer scout					= 852181;
        	static constant integer selfdestruct			= 852040;
        	static constant integer selfdestructoff			= 852042;
        	static constant integer selfdestructon			= 852041;
        	static constant integer sentinel				= 852182;
        	static constant integer setrally				= 851980;
        	static constant integer shadowsight				= 852570;
        	static constant integer shadowstrike			= 852527;
        	static constant integer shockwave				= 852125;
        	static constant integer silence					= 852592;
        	static constant integer sleep					= 852227;
        	static constant integer slow					= 852075;
        	static constant integer slowoff					= 852077;
        	static constant integer slowon					= 852076;
        	static constant integer soulburn				= 852668;
        	static constant integer soulpreservation		= 852242;
        	static constant integer spellshield				= 852571;
        	static constant integer spellshieldaoe			= 852572;
        	static constant integer spellsteal				= 852483;
        	static constant integer spellstealoff			= 852485;
        	static constant integer spellstealon			= 852484;
        	static constant integer spies					= 852235;
        	static constant integer spiritlink				= 852499;
        	static constant integer spiritofvengeance		= 852528;
        	static constant integer spirittroll				= 852573;
        	static constant integer spiritwolf				= 852126;
        	static constant integer stampede				= 852593;
        	static constant integer standdown				= 852113;
        	static constant integer starfall				= 852183;
        	static constant integer stasistrap				= 852114;
        	static constant integer steal					= 852574;
        	static constant integer stomp					= 852127;
        	static constant integer stoneform				= 852206;
        	static constant integer stop					= 851972;
        	static constant integer submerge				= 852604;
        	static constant integer summonfactory			= 852658;
        	static constant integer summongrizzly			= 852594;
        	static constant integer summonphoenix			= 852489;
        	static constant integer summonquillbeast		= 852595;
        	static constant integer summonwareagle			= 852596;
        	static constant integer tankdroppilot			= 852079;
        	static constant integer tankloadpilot			= 852080;
        	static constant integer tankpilot				= 852081;
        	static constant integer taunt					= 852520;
        	static constant integer thunderbolt				= 852095;
        	static constant integer thunderclap				= 852096;
        	static constant integer tornado					= 852597;
        	static constant integer townbelloff				= 852083;
        	static constant integer townbellon				= 852082;
        	static constant integer tranquility				= 852184;
        	static constant integer transmute				= 852665;
        	static constant integer unavatar				= 852087;
        	static constant integer unavengerform			= 852532;
        	static constant integer unbearform				= 852139;
        	static constant integer unburrow				= 852534;
        	static constant integer uncoldarrows			= 852245;
        	static constant integer uncorporealform			= 852494;
        	static constant integer undeadbuild				= 851998;
        	static constant integer undefend				= 852056;
        	static constant integer undivineshield			= 852091;
        	static constant integer unetherealform			= 852497;
        	static constant integer unflamingarrows			= 852175;
        	static constant integer unflamingattack			= 852541;
        	static constant integer unholyfrenzy			= 852209;
        	static constant integer unimmolation			= 852178;
        	static constant integer unload					= 852047;
        	static constant integer unloadall				= 852048;
        	static constant integer unloadallcorpses		= 852054;
        	static constant integer unloadallinstant		= 852049;
        	static constant integer unpoisonarrows			= 852256;
        	static constant integer unravenform				= 852156;
        	static constant integer unrobogoblin			= 852657;
        	static constant integer unroot					= 852166;
        	static constant integer unstableconcoction		= 852500;
        	static constant integer unstoneform				= 852207;
        	static constant integer unsubmerge				= 852605;
        	static constant integer unsummon				= 852210;
        	static constant integer unwindwalk				= 852130;
        	static constant integer vengeance				= 852521;
        	static constant integer vengeanceinstant		= 852524;
        	static constant integer vengeanceoff			= 852523;
        	static constant integer vengeanceon				= 852522;
        	static constant integer volcano					= 852669;
        	static constant integer voodoo					= 852503;
        	static constant integer ward					= 852504;
        	static constant integer waterelemental			= 852097;
        	static constant integer wateryminion			= 852598;
        	static constant integer web						= 852211;
        	static constant integer weboff					= 852213;
        	static constant integer webon					= 852212;
        	static constant integer whirlwind				= 852128;
        	static constant integer windwalk				= 852129;
        	static constant integer wispharvest				= 852214;
        }
    }

    // // Deprecated
    public struct Order extends OrderIds { }
}
//! endzinc
