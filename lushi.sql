-- phpMyAdmin SQL Dump
-- version 3.2.0.1
-- http://www.phpmyadmin.net
--
-- 主机: localhost
-- 生成日期: 2014 年 09 月 16 日 12:09
-- 服务器版本: 5.5.25
-- PHP 版本: 5.2.10

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";

--
-- 数据库: `lushi`
--

-- --------------------------------------------------------

--
-- 表的结构 `actions`
--

CREATE TABLE IF NOT EXISTS `actions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `gid` varchar(20) NOT NULL,
  `pid` varchar(50) NOT NULL,
  `name` varchar(50) NOT NULL,
  `actionjson` varchar(500) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=9533 ;

--
-- 转存表中的数据 `actions`
--


-- --------------------------------------------------------

--
-- 表的结构 `cards`
--

CREATE TABLE IF NOT EXISTS `cards` (
  `imageid` varchar(50) NOT NULL,
  `name` varchar(50) NOT NULL,
  `type` varchar(50) NOT NULL,
  `job` varchar(50) NOT NULL,
  `rate` varchar(50) NOT NULL,
  `groupcode` varchar(50) NOT NULL,
  `race` varchar(50) NOT NULL,
  `cost` int(11) NOT NULL,
  `attack` int(11) NOT NULL,
  `blood` int(11) NOT NULL,
  `effects` varchar(300) NOT NULL,
  `split` int(11) NOT NULL,
  `join` int(11) NOT NULL,
  `effectcode` varchar(300) NOT NULL,
  `targetcode` varchar(300) NOT NULL,
  PRIMARY KEY (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `cards`
--

INSERT INTO `cards` (`imageid`, `name`, `type`, `job`, `rate`, `groupcode`, `race`, `cost`, `attack`, `blood`, `effects`, `split`, `join`, `effectcode`, `targetcode`) VALUES
('neutral/Ancient+Watcher.png', '上古看守者', '随从', '中立', '稀有', '专家级', '', 2, 4, 5, '无法攻击。', 200, 100, '', ''),
('druid/Soul+of+the+Forest.png', '丛林之魂', '法术', '德鲁伊', '普通', '专家级', '', 4, 0, 0, '使你的随从获得“亡语：召唤一个2/2的树人。”', 5, 40, '', ''),
('druid/Keeper+of+the+Grove.png', '丛林守护者', '随从', '德鲁伊', '稀有', '专家级', '', 4, 2, 4, '抉择：造成2点伤害；或者沉默一个随从。', 20, 100, '', ''),
('neutral/Jungle+Panther.png', '丛林猎豹', '随从', '中立', '普通', '专家级', '野兽', 3, 4, 2, '潜行', 5, 40, '', ''),
('warrior/Cruel+Taskmaster.png', '严酷的监工', '随从', '战士', '普通', '专家级', '', 2, 2, 2, '战吼：对一个随从造成1点伤害，并使其获得+2攻击力。', 5, 40, '', ''),
('paladin/Eye+for+an+Eye.png', '以眼还眼', '法术', '圣骑士', '普通', '专家级', '', 1, 0, 0, '奥秘：当你的英雄受到伤害时，对敌方英雄造成等量的伤害。', 5, 40, '', ''),
('neutral/Questing+Adventurer.png', '任务达人', '随从', '中立', '稀有', '专家级', '', 3, 2, 2, '每当你使用一张牌时，便获得+1/+1。', 20, 100, '', ''),
('neutral/Illidan+Stormrage.png', '伊利丹·怒风', '随从', '中立', '传说', '专家级', '恶魔', 6, 7, 5, '每当你使用一张牌时，召唤一个2/1的埃辛诺斯烈焰。', 400, 1600, '', ''),
('neutral/Ysera.png', '伊瑟拉', '随从', '中立', '传说', '专家级', '龙', 9, 4, 12, '在你的回合结束时，获得一张梦境牌。', 400, 1600, '', ''),
('rogue/Master+of+Disguise.png', '伪装大师', '随从', '潜行者', '稀有', '专家级', '', 4, 4, 4, '战吼：使一个友方随从获得潜行。', 20, 100, '', ''),
('rogue/Preparation.png', '伺机待发', '法术', '潜行者', '史诗', '专家级', '', 0, 0, 0, '在本回合中，你所施放的下一个法术的法力值消耗减少（3）点。', 100, 400, '', ''),
('neutral/War+Golem.png', '作战傀儡', '随从', '中立', '基本', '基本级', '', 7, 7, 7, '', 0, 0, '', ''),
('neutral/Gnomish+Inventor.png', '侏儒发明家', '随从', '中立', '基本', '基本级', '', 4, 2, 4, '战吼：抽一张牌。', 0, 0, 'takecard(1)', ''),
('paladin/Hand+of+Protection.png', '保护之手', '法术', '圣骑士', '基本', '基本级', '', 1, 0, 0, '使一个随从获得圣盾。', 0, 0, 'shield($target)', 'choice(selfminions,enemyminions)'),
('priest/Prophet+Velen.png', '先知维纶', '随从', '牧师', '传说', '专家级', '', 7, 7, 7, '使你的法术牌和英雄技能的伤害和治疗效果翻倍。', 400, 1600, '', ''),
('shaman/Ancestral+Spirit.png', '先祖之魂', '法术', '萨满', '稀有', '专家级', '', 2, 0, 0, '选择一个随从，当该随从被消灭时，它将返回战场。', 20, 100, '', ''),
('shaman/Ancestral+Healing.png', '先祖治疗', '法术', '萨满', '基本', '基本级', '', 0, 0, 0, '为一个随从恢复所有生命值并使其获得嘲讽。', 0, 0, 'cure($target,$target.maxlife);taunt($target)', 'choice(selfminions,enemyminions)'),
('priest/Lightwell.png', '光明之泉', '随从', '牧师', '稀有', '专家级', '', 2, 0, 5, '在你的回合开始时，随机为一个受到伤害的友方角色恢复3点生命值。', 20, 100, '', ''),
('priest/Lightspawn.png', '光耀之子', '随从', '牧师', '普通', '专家级', '', 4, 0, 5, '该随从的攻击力等同于其生命值。', 5, 40, '', ''),
('neutral/Molten+Giant.png', '全副武装', '法术', '战士', '基本', '英雄级', '', 2, 0, 0, '获得2点护甲值', 0, 0, 'guardadd(selfhero,2)', ''),
('paladin/Sword+of+Justice.png', '公正之剑', '武器', '圣骑士', '史诗', '专家级', '', 3, 1, 5, '每当你召唤一个随从，使它获得+1/+1，这把武器失去1点耐久度。', 100, 400, '', ''),
('hunter/Unleash+the+Hounds.png', '关门放狗', '法术', '猎人', '普通', '专家级', '', 3, 0, 0, '战场上每有一个敌方随从，便召唤一个1/1并具有冲锋的猎犬。', 40, 40, '', ''),
('rogue/SI7+Agent.png', '军情七处特工', '随从', '潜行者', '稀有', '专家级', '', 3, 3, 3, '连击：造成2点伤害。', 20, 100, '', ''),
('hunter/Freezing+Trap.png', '冰冻陷阱', '法术', '猎人', '普通', '专家级', '', 2, 0, 0, '奥秘：当一个敌方随从进攻时，将其移回其拥有者的手中，并使其法力值消耗增加（2）点。', 5, 40, '', ''),
('mage/Ice+Lance.png', '冰枪术', '法术', '法师', '普通', '专家级', '', 1, 0, 0, '使一个角色冻结，如果它已经被冻结，则改为对其造成4点伤害。', 5, 40, '', ''),
('mage/Cone+of+Cold.png', '冰锥术', '法术', '法师', '普通', '专家级', '', 4, 0, 0, '冻结一个随从和其相邻的随从，并对它们造成1点伤害。', 40, 40, '', ''),
('neutral/Frost+Elemental.png', '冰霜元素', '随从', '中立', '普通', '专家级', '', 6, 5, 5, '战吼：冻结一个角色。', 5, 40, '', ''),
('mage/Frost+Nova.png', '冰霜新星', '法术', '法师', '基本', '基本级', '', 3, 0, 0, '冻结所有敌方随从。', 0, 0, 'freeze(enemyminions)', ''),
('shaman/Frost+Shock.png', '冰霜震击', '法术', '萨满', '基本', '基本级', '', 1, 0, 0, '对一个敌方角色造成1点伤害，并使其冻结。', 0, 0, 'freeze($target);damage($target,1+$extra)', 'choice(enemyminions,enemyhero)'),
('neutral/Chillwind+Yeti.png', '冰风雪人', '随从', '中立', '基本', '基本级', '', 4, 4, 5, '', 0, 0, '', ''),
('warrior/Charge.png', '冲锋', '法术', '战士', '基本', '基本级', '', 3, 0, 0, '使一个友方随从获得+2攻击力和冲锋', 0, 0, 'attackadd($target,2);rush($target)', 'choice(selfminions)'),
('rogue/Cold%20Blood.png', '冷血', '法术', '潜行者', '普通', '专家级', '', 1, 0, 0, '使一个随从获得+2攻击力；连击：改为获得+4攻击力。', 5, 40, '', ''),
('neutral/Cairne+Bloodhoof.png', '凯恩·血蹄', '随从', '中立', '传说', '专家级', '', 6, 4, 5, '亡语：召唤一个4/5的贝恩·血蹄。', 400, 1600, '', ''),
('rogue/Fan%20of%20Knives.png', '刀扇', '法术', '潜行者', '基本', '基本级', '', 3, 0, 0, '对所有敌方随从造成1点伤害，抽一张牌。', 0, 0, 'damage(enemyminions,1+$extra);takecard(1)', ''),
('paladin/Guardian+of+Kings.png', '列王守卫', '随从', '圣骑士', '基本', '基本级', '', 7, 5, 6, '战吼：为你的英雄恢复6点生命值。', 0, 0, 'cure(selfhero,6)', ''),
('druid/Druid+of+the+Claw.png', '利爪德鲁伊', '随从', '德鲁伊', '普通', '专家级', '', 5, 4, 4, '抉择：冲锋；或者+2生命值并具有嘲讽。', 5, 40, '', ''),
('rogue/Assassin%27s+Blade.png', '刺客之刃', '武器', '潜行者', '基本', '基本级', '', 5, 3, 4, '', 0, 0, '', ''),
('rogue/Assassinate.png', '刺杀', '法术', '潜行者', '基本', '基本级', '', 5, 0, 0, '消灭一个敌方随从。', 0, 0, 'destroy($target)', 'choice(enemyminions)'),
('rogue/Eviscerate.png', '刺骨', '法术', '潜行者', '普通', '专家级', '', 2, 0, 0, '造成2点伤害；连击：改为造成4点伤害。', 5, 40, '', ''),
('neutral/Razorfen+Hunter.png', '剃刀猎手', '随从', '中立', '基本', '基本级', '', 3, 2, 3, '战吼：召唤一个1/1的野猪。', 0, 0, 'call(''野猪1'')', ''),
('rogue/Blade+Flurry.png', '剑刃乱舞', '法术', '潜行者', '稀有', '专家级', '', 2, 0, 0, '摧毁你的武器，对所有敌方角色造成等同于其攻击力的伤害。', 20, 100, '', ''),
('warlock/Power+Overwhelming.png', '力量的代价', '法术', '术士', '普通', '专家级', '', 1, 0, 0, '直到回合结束，使一个友方随从获得+4/+4，然后将其消灭。', 5, 40, '', ''),
('paladin/Blessing+of+Might.png', '力量祝福', '法术', '圣骑士', '基本', '基本级', '', 1, 0, 0, '使一个随从获得+3攻击力。', 0, 0, 'attackadd($target,3)', 'choice(selfminions,enemyminions)'),
('neutral/Gadgetzan+Auctioneer.png', '加基森拍卖师', '随从', '中立', '稀有', '专家级', '', 5, 4, 4, '每当你施放一个法术时，抽一张牌。', 20, 100, '', ''),
('warlock/Lord+Jaraxxus.png', '加拉克苏斯大王', '随从', '术士', '传说', '专家级', '恶魔', 9, 3, 15, '战吼：消灭你的英雄，并用加拉克苏斯大王替换他。', 400, 1600, '', ''),
('hunter/Animal+Companion.png', '动物伙伴', '法术', '猎人', '基本', '基本级', '', 3, 0, 0, '随机召唤一个野兽伙伴。', 0, 0, 'randomcall(''米莎'',''雷欧克'',''霍弗'')', ''),
('rogue/Kidnapper.png', '劫持者', '随从', '潜行者', '史诗', '专家级', '', 6, 5, 3, '连击：将一个随从移回其拥有者的手牌。', 100, 400, '', ''),
('neutral/Molten+Giant.png', '匕首精通', '武器', '潜行者', '基本', '英雄级', '', 2, 1, 2, '', 0, 0, '', ''),
('priest/Northshire+Cleric.png', '北郡牧师', '随从', '牧师', '基本', '基本级', '', 1, 1, 3, '每当一个随从获得治疗时，抽1张牌。', 0, 0, 'cureevent({if(isminion($eventtarget)){takecard(1)}})', ''),
('warrior/Upgrade.png', '升级！', '法术', '战士', '稀有', '专家级', '', 1, 0, 0, '如果你有一把武器，使它获得+1/+1。否则，装备一把1/3的武器。', 20, 100, '', ''),
('neutral/Southsea+Deckhand.png', '南海船工', '随从', '中立', '普通', '专家级', '海盗', 1, 2, 1, '当你装备一把武器时，该随从获得冲锋。', 5, 40, '', ''),
('neutral/Southsea+Captain.png', '南海船长', '随从', '中立', '史诗', '专家级', '海盗', 3, 3, 3, '你的其他海盗获得+1/+1。', 100, 400, '', ''),
('shaman/Forked+Lightning.png', '叉状闪电', '法术', '萨满', '普通', '专家级', '', 1, 0, 0, '对2个随机敌方随从造成2点伤害，过载：（2）', 5, 40, '', ''),
('paladin/Blessed+Champion.png', '受祝福的勇士', '法术', '圣骑士', '稀有', '专家级', '', 5, 0, 0, '使一个随从的攻击力翻倍。', 20, 100, '', ''),
('mage/PolyMorph.png', '变形术', '法术', '法师', '基本', '基本级', '', 4, 0, 0, '使一个随从变形成为1/1的绵羊。', 0, 0, 'replace($target,''绵羊'')', 'choice(selfminions,enemyminions)'),
('neutral/Gurubashi+Berserker.png', '古拉巴什狂暴者', '随从', '中立', '基本', '基本级', '', 5, 2, 7, '每当该随从受到伤害时，获得+3攻击力。', 0, 0, 'damageevent({if($eventtarget==$this){attackadd($this,3)}})', ''),
('neutral/Abusive+Sergeant.png', '叫嚣的中士', '随从', '中立', '基本', '专家级', '', 1, 2, 1, '战吼：本回合中，使一个随从获得+2攻击力。', 40, 40, 'attackadd($target,2);endevent({attackadd($target,-2)})', 'choiceornone(selfminions,enemyminions)'),
('warlock/Summoning+Portal.png', '召唤传送门', '随从', '术士', '普通', '专家级', '', 4, 0, 4, '你的随从牌法力值消耗减少（2）点，但不能少于（1）点。', 5, 40, '', ''),
('neutral/Molten+Giant.png', '召唤图腾', '法术', '萨满', '基本', '英雄级', '', 2, 0, 0, '随机召唤一个图腾', 0, 0, 'randomcall(''召唤图腾1'',''召唤图腾2'',''召唤图腾3'')', ''),
('neutral/Molten+Giant.png', '召唤图腾1', '随从', '萨满', '基本', '附属级', '', 0, 0, 2, '嘲讽', 0, 0, 'taunt($this)', ''),
('neutral/Molten+Giant.png', '召唤图腾2', '随从', '萨满', '基本', '附属级', '', 0, 1, 1, '', 0, 0, '', ''),
('neutral/Molten+Giant.png', '召唤图腾3', '随从', '萨满', '基本', '附属级', '', 0, 0, 2, '法术伤害+1', 0, 0, 'initeventcardevent({addattack(magiccards,1)})', ''),
('neutral/Molten+Giant.png', '召唤镜像', '随从', '法师', '基本', '附属级', '', 0, 0, 2, '嘲讽', 0, 0, 'taunt($this)', ''),
('warlock/Drain+Life.png', '吸取生命', '法术', '术士', '基本', '基本级', '', 3, 0, 0, '造成2点伤害，为你的英雄恢复2点生命值。', 0, 0, 'damage($target,2+$extra);cure(selfhero,2)', 'choice(selfhero,selfminions,enemyminions,enemyhero)'),
('warrior/Commanding+Shout.png', '命令怒吼', '法术', '战士', '稀有', '专家级', '', 2, 0, 0, '在本回合中，你的随从的生命值无法被降到1点以下。抽一张牌。', 20, 100, '', ''),
('neutral/Harrison+Jones.png', '哈里森·琼斯', '随从', '中立', '传说', '专家级', '', 5, 5, 4, '战吼：摧毁对手的武器，并抽数量等同于其耐久度的牌。', 400, 1600, '', ''),
('shaman/Bloodlust.png', '嗜血', '法术', '萨满', '基本', '基本级', '', 5, 0, 0, '在本回合中，使你的随从获得+3攻击力。', 0, 0, 'attackadd(selfminions,3);endevent({attackadd(selfminions,-3)})', ''),
('neutral/Raid+Leader.png', '团队领袖', '随从', '中立', '基本', '基本级', '', 3, 2, 2, '你的其他随从获得+1攻击力。', 0, 0, 'initeventminioncreateevent({addattack(filter(selfminions,$$!=$this),1)})', ''),
('shaman/Totemic+Might.png', '图腾之力', '法术', '萨满', '基本', '基本级', '', 0, 0, 0, '使你的图腾获得+2生命值。', 0, 0, 'lifeadd(filter(selfminions,$$.race==''图腾''),2)', ''),
('shaman/Earth+Elemental.png', '土元素', '随从', '萨满', '史诗', '专家级', '', 5, 7, 8, '嘲讽，过载：（3）', 100, 400, '', ''),
('neutral/Lightwarden.png', '圣光护卫者', '随从', '中立', '基本', '专家级', '', 1, 1, 2, '每当一个角色获得治疗时，便获得+2攻击力。', 20, 100, 'cureevent({attackadd($this,2)})', ''),
('paladin/Holy+Light.png', '圣光术', '法术', '圣骑士', '基本', '基本级', '', 2, 0, 0, '恢复6点生命值。', 0, 0, 'cure(selfhero,6)', ''),
('paladin/Light%27s%20Justice.png', '圣光的正义', '武器', '圣骑士', '基本', '基本级', '', 1, 1, 4, '', 0, 0, '', ''),
('priest/Temple+Enforcer.png', '圣殿执行者', '随从', '牧师', '普通', '专家级', '', 6, 6, 6, '战吼：使一个友方随从获得+3生命值。', 5, 40, '', ''),
('paladin/Lay+on+Hands.png', '圣疗术', '法术', '圣骑士', '史诗', '专家级', '', 8, 0, 0, '恢复8点生命值，抽3张牌。', 100, 400, '', ''),
('warlock/Hellfire.png', '地狱烈焰', '法术', '术士', '基本', '基本级', '', 4, 0, 0, '对所有角色造成3点伤害。', 0, 0, 'damage(union(selfhero,selfminions,enemyminions,enemyhero),3+$extra)', ''),
('druid/Ironbark+Protector.png', '埃隆巴克保护者', '随从', '德鲁伊', '基本', '基本级', '', 8, 8, 8, '嘲讽', 0, 0, 'taunt($this)', ''),
('druid/Cenarius.png', '塞纳留斯', '随从', '德鲁伊', '传说', '专家级', '', 9, 5, 8, '抉择：使你的所有其他随从获得+2/+2；或者召唤2个2/2并具有嘲讽的树人。', 400, 1600, '', ''),
('paladin/Avenging+Wrath.png', '复仇之怒', '法术', '圣骑士', '史诗', '专家级', '', 6, 0, 0, '造成8点伤害，随机分配给敌方角色。', 100, 400, '', ''),
('hunter/Multi-Shot.png', '多重射击', '法术', '猎人', '基本', '基本级', '', 4, 0, 0, '对两个随机敌方随从造成3点伤害。', 0, 0, 'damage(random2(enemyminions),3+$extra)', 'doublechoice(enemyminions)'),
('neutral/Nightblade.png', '夜刃刺客', '随从', '中立', '基本', '基本级', '', 5, 4, 4, '战吼：对敌方英雄造成3点伤害。', 0, 0, 'damage(enemyhero,3)', ''),
('neutral/Earthen+Ring+Farseer.png', '大地之环先知', '随从', '中立', '普通', '专家级', '', 3, 3, 3, '战吼：恢复3点生命值。', 5, 40, '', ''),
('shaman/Earth+Shock.png', '大地震击', '法术', '萨满', '普通', '专家级', '', 1, 0, 0, '沉默一个随从，然后对其造成1点伤害。', 5, 40, '', ''),
('neutral/Archmage.png', '大法师', '随从', '中立', '基本', '基本级', '', 6, 4, 7, '法术伤害+1', 0, 0, 'initeventcardevent({addattack(magiccards,1)})', ''),
('mage/Archmage+Antonidas.png', '大法师安东尼达斯', '随从', '法师', '传说', '专家级', '', 7, 5, 7, '每当你施放一个法术时，将一张“火球术”法术牌置入你的手牌。', 400, 1600, '', ''),
('paladin/Consecration.png', '奉献', '法术', '圣骑士', '基本', '基本级', '', 4, 0, 0, '对所有敌人造成2点伤害。', 0, 0, 'damage(union(enemyminions,enemyhero),2+$extra)', ''),
('neutral/Onyxia.png', '奥妮克希亚', '随从', '中立', '传说', '专家级', '龙', 9, 8, 8, '战吼：召唤数个1/1的雏龙，直到你的随从数量达到上限。', 400, 1600, '', ''),
('paladin/Aldor+Peacekeeper.png', '奥尔多卫士', '随从', '圣骑士', '稀有', '专家级', '', 3, 3, 3, '战吼：使一个敌方随从的攻击力变为1。', 20, 100, '', ''),
('neutral/Arcane+Golem.png', '奥术傀儡', '随从', '中立', '稀有', '专家级', '', 3, 4, 2, '冲锋，战吼：使你的对手获得一个法力水晶。', 20, 100, '', ''),
('hunter/Arcane+Shot.png', '奥术射击', '法术', '猎人', '基本', '基本级', '', 1, 0, 0, '造成2点伤害。', 0, 0, 'damage($target,2+$extra)', 'choice(selfhero,selfminions,enemyminions,enemyhero)'),
('mage/Arcane+Intellect.png', '奥术智慧', '法术', '法师', '基本', '基本级', '', 3, 0, 0, '抽2张牌。', 0, 0, 'takecard(2)', ''),
('mage/Arcane+Missiles.png', '奥术飞弹', '法术', '法师', '基本', '基本级', '', 1, 0, 0, '造成3点伤害，随机分配给敌方角色。', 0, 0, 'repeat({damage(random(enemyhero,enemyminions),1)},3+$extra)', ''),
('neutral/Secretkeeper.png', '奥秘守护者', '随从', '中立', '稀有', '专家级', '', 1, 1, 2, '每当有一张奥秘牌被揭示时，便获得+1/+1。', 20, 100, '', ''),
('priest/Auchenai+Soulpriest.png', '奥金尼灵魂祭司', '随从', '牧师', '稀有', '专家级', '', 4, 3, 5, '你的恢复生命值的牌和技能改为造成等量的伤害。', 20, 100, '', ''),
('warrior/Arcanite+Reaper.png', '奥金斧', '武器', '战士', '基本', '基本级', '', 5, 5, 2, '', 0, 0, '', ''),
('shaman/Hex.png', '妖术', '法术', '萨满', '基本', '基本级', '', 3, 0, 0, '使一个随从变形成为一个0/1并具有嘲讽的青蛙。', 0, 0, 'replace($target,''青蛙'')', 'choice(selfminions,enemyminions)'),
('neutral/Coldlight+Seer.png', '寒光先知', '随从', '中立', '稀有', '专家级', '鱼人', 3, 2, 3, '战吼：使所有其他鱼人获得+2生命值。', 20, 100, '', ''),
('neutral/Coldlight+Oracle.png', '寒光智者', '随从', '中立', '稀有', '专家级', '鱼人', 3, 2, 2, '战吼：每个玩家抽2张牌。', 20, 100, '', ''),
('mage/Ice+Block.png', '寒冰屏障', '法术', '法师', '史诗', '专家级', '', 3, 0, 0, '奥秘：当你的英雄将要承受致命伤害时，防止这些伤害，并使其在本回合中获得免疫。', 100, 400, '', ''),
('mage/Ice+Barrier.png', '寒冰护体', '法术', '法师', '普通', '专家级', '', 3, 0, 0, '奥秘：当你的英雄受到攻击时，获得8点护甲值。', 5, 40, '', ''),
('mage/Frostbolt.png', '寒冰箭', '法术', '法师', '基本', '基本级', '', 2, 0, 0, '对一个角色造成3点伤害，并使其冻结。', 0, 0, 'freeze($target);damage($target,3+$extra)', 'choice(selfhero,selfminions,enemyminions,enemyhero)'),
('neutral/Pint-Sized+Summoner.png', '小个子召唤师', '随从', '中立', '稀有', '专家级', '', 2, 2, 2, '你每个回合使用的第一张随从牌的法力值消耗减少（1）点。', 20, 100, '', ''),
('neutral/Wisp.png', '小精灵', '随从', '中立', '普通', '专家级', '', 0, 1, 1, '', 5, 40, '', ''),
('neutral/Imp+Master.png', '小鬼召唤师', '随从', '中立', '稀有', '专家级', '', 3, 1, 5, '在你的回合结束时，对该随从造成1点伤害，并召唤一个1/1的小鬼。', 20, 100, '', ''),
('shaman/Dust+Devil.png', '尘魔', '随从', '萨满', '普通', '专家级', '', 1, 3, 1, '风怒，过载：（2）', 5, 40, '', ''),
('neutral/Mountain+Giant.png', '山岭巨人', '随从', '中立', '史诗', '专家级', '', 12, 8, 8, '你每有一张其他手牌，该牌的法力值消耗便减少（1）点。', 100, 400, '', ''),
('neutral/Magma+Rager.png', '岩浆暴怒者', '随从', '中立', '基本', '基本级', '', 3, 5, 1, '', 0, 0, '', ''),
('paladin/Noble+Sacrifice.png', '崇高牺牲', '法术', '圣骑士', '普通', '专家级', '', 1, 0, 0, '奥秘：当一个敌人攻击时，召唤一个2/1的防御者，并使其成为攻击的目标。', 5, 40, '', ''),
('neutral/Tinkmaster+Overspark.png', '工匠大师欧沃斯巴克', '随从', '中立', '传说', '专家级', '', 3, 3, 3, '战吼：使另一个随机随从变形成为一个5/5的恐龙或一个1/1的松鼠。', 1600, 1600, '', ''),
('neutral/Novice+Engineer.png', '工程师学徒', '随从', '中立', '基本', '基本级', '', 2, 1, 1, '战吼：抽一张牌。', 0, 0, 'takecard(1)', ''),
('neutral/Voodoo+Doctor.png', '巫医', '随从', '中立', '基本', '基本级', '', 1, 2, 1, '战吼：恢复2点生命值。', 0, 0, 'cure($target,2)', 'choice(selfminions,enemyminions,enemyhero,selfhero)'),
('mage/Sorcerer%27s+Apprentice.png', '巫师学徒', '随从', '法师', '普通', '专家级', '', 2, 3, 2, '你的法术的法力值消耗减少（1）点。', 5, 40, '', ''),
('neutral/Sylvanas+Windrunner.png', '希尔瓦娜斯·风行者', '随从', '中立', '传说', '专家级', '', 6, 5, 5, '亡语：控制一个随机敌方随从。', 1600, 1600, '', ''),
('neutral/Emperor+Cobra.png', '帝王眼镜蛇', '随从', '中立', '稀有', '专家级', '野兽', 3, 2, 3, '消灭任何受到该随从伤害的随从。', 20, 100, '', ''),
('neutral/Young+Priestess.png', '年轻的女祭司', '随从', '中立', '稀有', '专家级', '', 1, 2, 1, '在你的回合结束时，使另一个随机友方随从获得+1生命值。', 20, 100, '', ''),
('neutral/Youthful+Brewmaster.png', '年轻的酒仙', '随从', '中立', '普通', '专家级', '', 2, 3, 2, '战吼：使一个友方随从从战场上移回你的手牌。', 5, 40, '', ''),
('neutral/Ancient+Mage.png', '年迈的法师', '随从', '中立', '稀有', '专家级', '', 4, 2, 5, '战吼：使相邻的随从获得法术伤害+1。', 20, 100, '', ''),
('neutral/Ancient+Brewmaster.png', '年迈的酒仙', '随从', '中立', '普通', '专家级', '', 4, 5, 4, '战吼：使一个友方随从从战场上移回你的手牌。', 5, 40, '', ''),
('neutral/Young%20Dragonhawk.png', '幼龙鹰', '随从', '中立', '普通', '专家级', '野兽', 1, 1, 1, '风怒', 5, 40, '', ''),
('warrior/Kor%27kron+Elite.png', '库卡隆精英卫士', '随从', '战士', '基本', '基本级', '', 4, 4, 3, '冲锋', 0, 0, 'rush($this)', ''),
('rogue/Sinister+Strike.png', '影袭', '法术', '潜行者', '基本', '基本级', '', 1, 0, 0, '对敌方英雄造成3点伤害。', 0, 0, 'damage(enemyhero,3+$extra)', ''),
('neutral/Molten+Giant.png', '德鲁伊变形术', '法术', '德鲁伊', '基本', '英雄级', '', 2, 0, 0, '本回合+1攻击力，+1护甲值', 0, 0, 'attackadd(selfhero,1);endevent({attackadd(selfhero,-1)});guardadd(selfhero,1)', ''),
('priest/Inner+Fire.png', '心灵之火', '法术', '牧师', '普通', '专家级', '', 1, 0, 0, '使一个随从的攻击力等同于其生命值。', 5, 40, '', ''),
('priest/Mind+Vision.png', '心灵视界', '法术', '牧师', '基本', '基本级', '', 1, 0, 0, '随机复制你的对手手牌中的一张牌，将其置入你的手牌。', 0, 0, 'copyhandcard(1)', ''),
('priest/Mind+Blast.png', '心灵震爆', '法术', '牧师', '基本', '基本级', '', 2, 0, 0, '对敌方英雄造成5点伤害。', 0, 0, 'damage(enemyhero,5+$extra)', ''),
('paladin/Repentance.png', '忏悔', '法术', '圣骑士', '普通', '专家级', '', 1, 0, 0, '奥秘：当你的对手召唤一个随从，使该随从的生命值降为1。', 5, 40, '', ''),
('warrior/Inner+Rage.png', '怒火中烧', '法术', '战士', '普通', '专家级', '', 0, 0, 0, '对一个随从造成1点伤害，该随从获得+2攻击力。', 5, 40, '', ''),
('priest/Thoughtsteal.png', '思维窃取', '法术', '牧师', '普通', '专家级', '', 3, 0, 0, '复制对手的牌库中的2张牌，并将其置入你的手牌。', 5, 40, '', ''),
('neutral/Dread+Corsair.png', '恐怖海盗', '随从', '中立', '普通', '专家级', '海盗', 4, 3, 3, '嘲讽，你的武器每有1点攻击力，该牌的法力值消耗便减少（1）点。', 5, 40, '', ''),
('warlock/Dread+Infernal.png', '恐惧地狱火', '随从', '术士', '基本', '基本级', '恶魔', 6, 6, 6, '战吼：对所有其他角色造成1点伤害。', 0, 0, 'damage(filter(union(selfhero,selfminions,enemyminions,enemyhero),$$!=$this),1)', ''),
('neutral/Dire+Wolf+Alpha.png', '恐狼前锋', '随从', '中立', '普通', '专家级', '野兽', 2, 2, 2, '相邻的随从获得+1攻击力。', 5, 40, '', ''),
('neutral/Spiteful+Smith.png', '恶毒铁匠', '随从', '中立', '普通', '专家级', '', 5, 4, 6, '激怒：你的武器获得+2攻击力。', 5, 40, '', ''),
('warlock/Demonfire.png', '恶魔之火', '法术', '术士', '普通', '专家级', '', 2, 0, 0, '对一个随从造成2点伤害，如果该随从是友方恶魔，则改为使其获得+2/+2。', 5, 40, '', ''),
('warlock/Felguard.png', '恶魔卫士', '随从', '术士', '稀有', '专家级', '恶魔', 3, 3, 5, '嘲讽，战吼：摧毁你的一个法力水晶。', 20, 100, '', ''),
('warlock/Sense+Demons.png', '感知恶魔', '法术', '术士', '普通', '专家级', '', 3, 0, 0, '从你的牌库中随机将2张恶魔牌置入你的手牌。', 5, 40, '', ''),
('druid/Wrath.png', '愤怒', '法术', '德鲁伊', '普通', '专家级', '', 2, 0, 0, '抉择：对一个随从造成3点伤害；或者造成1点伤害并抽一张牌。', 5, 40, '', ''),
('paladin/Hammer+of+Wrath.png', '愤怒之锤', '法术', '圣骑士', '基本', '基本级', '', 4, 0, 0, '造成3点伤害，抽一张牌。', 0, 0, 'damage($target,3+$extra);takecard(1)', 'choice(selfhero,selfminions,enemyminions,enemyhero)'),
('neutral/Angry+Chicken.png', '愤怒的小鸡', '随从', '中立', '稀有', '专家级', '野兽', 1, 1, 1, '激怒：+5攻击力。', 20, 100, '', ''),
('neutral/Abomination.png', '憎恶', '随从', '中立', '稀有', '专家级', '', 5, 4, 4, '嘲讽，亡语：对所有角色造成2点伤害。', 20, 100, '', ''),
('druid/Ancient+of+War.png', '战争古树', '随从', '德鲁伊', '史诗', '专家级', '', 7, 5, 5, '抉择：+5生命值并具有嘲讽；或者+5攻击力。', 100, 400, '', ''),
('neutral/Loot+Hoarder.png', '战利品贮藏者', '随从', '中立', '普通', '专家级', '', 2, 2, 1, '亡语：抽一张牌。', 5, 40, '', ''),
('warrior/Battle+Rage.png', '战斗怒火', '法术', '战士', '普通', '专家级', '', 2, 0, 0, '每有一个受到伤害的友方角色，便抽一张牌。', 5, 40, '', ''),
('warrior/Warsong+Commander.png', '战歌指挥官', '随从', '战士', '基本', '基本级', '', 3, 2, 3, '每当你召唤一个攻击力小于等于3的随从，使该随从获得冲锋。', 0, 0, 'minioncreateevent({rush(filter($eventsource,$$.attack<=3))})', ''),
('warlock/Twisting+Nether.png', '扭曲虚空', '法术', '术士', '史诗', '专家级', '', 8, 0, 0, '消灭所有随从。', 20, 400, '', ''),
('mage/Spellbender.png', '扰咒术', '法术', '法师', '史诗', '专家级', '', 3, 0, 0, '奥秘：当一个敌方法术以一个随从为目标时，召唤一个1/3的随从并使其成为新的目标。', 100, 400, '', ''),
('neutral/Alarm-o-Bot.png', '报警机器人', '随从', '中立', '稀有', '专家级', '', 3, 0, 3, '在你的回合开始时，随机将你的手牌中的一张随从牌与该随从交换。', 20, 100, '', ''),
('neutral/Ravenholdt+Assassin.png', '拉文霍德刺客', '随从', '中立', '稀有', '专家级', '', 7, 7, 5, '潜行', 20, 100, '', ''),
('neutral/Shieldbearer.png', '持盾卫士', '随从', '中立', '普通', '专家级', '', 1, 0, 4, '嘲讽', 5, 40, '', ''),
('priest/Mindgames.png', '控心术', '法术', '牧师', '史诗', '专家级', '', 4, 0, 0, '随机复制对手的牌库中的一张随从牌，并将其置入战场。', 100, 400, '', ''),
('paladin/Tirion+Fordring.png', '提里奥·弗丁', '随从', '圣骑士', '传说', '专家级', '', 8, 6, 6, '圣盾，嘲讽，亡语：装备一把5/3的灰烬使者。', 400, 1600, '', ''),
('druid/Bite.png', '撕咬', '法术', '德鲁伊', '稀有', '专家级', '', 4, 0, 0, '使你的英雄获得4点护甲值，并在本回合中获得+4攻击力。', 20, 100, '', ''),
('neutral/Demolisher.png', '攻城车', '随从', '中立', '稀有', '专家级', '', 3, 1, 4, '在你的回合开始时，对1个随机敌人造成2点伤害。', 20, 100, '', ''),
('paladin/Redemption.png', '救赎', '法术', '圣骑士', '普通', '专家级', '', 1, 0, 0, '奥秘：当一个你的随从死亡时，使其回到战场，并具有1点生命值。', 5, 40, '', ''),
('warrior/Execute.png', '斩杀', '法术', '战士', '基本', '基本级', '', 1, 0, 0, '消灭一个受过伤害的敌方随从。', 0, 0, 'destroy($target)', 'choice(filter(enemyminions,$$.life!=$$.maxlife))'),
('warrior/Whirlwind.png', '旋风斩', '法术', '战士', '基本', '基本级', '', 1, 0, 0, '对所有随从造成1点伤害。', 0, 0, 'damage(union(selfminions,enemyminions),1+$extra)', ''),
('shaman/Unbound+Elemental.png', '无羁元素', '随从', '萨满', '普通', '专家级', '', 3, 2, 4, '每当你使用一张具有过载的牌，便获得+1/+1。', 5, 40, '', ''),
('neutral/Faceless+Manipulator.png', '无面操纵者', '随从', '中立', '史诗', '专家级', '', 5, 3, 3, '战吼：选择一个随从，成为它的复制。', 100, 400, '', ''),
('neutral/Sunfury+Protector.png', '日怒保卫者', '随从', '中立', '稀有', '专家级', '', 2, 2, 3, '战吼：使邻近的随从获得嘲讽。', 20, 100, '', ''),
('druid/Starfire.png', '星火术', '法术', '德鲁伊', '基本', '基本级', '', 6, 0, 0, '造成5点伤害，抽1张牌。', 0, 0, 'damage($target,5+$extra);takecard(1)', 'choice(selfhero,selfminions,enemyminions,enemyhero)'),
('druid/Starfall.png', '星辰坠落', '法术', '德鲁伊', '稀有', '专家级', '', 5, 0, 0, '抉择：对一个随从造成5点伤害；或者对所有敌方随从造成2点伤害。', 20, 100, '', ''),
('paladin/Blessing+of+Wisdom.png', '智慧祝福', '法术', '圣骑士', '普通', '专家级', '', 1, 0, 0, '选择一个随从，每当它进行攻击时，抽一张牌。', 5, 40, '', ''),
('priest/Shadowform.png', '暗影形态', '法术', '牧师', '史诗', '专家级', '', 3, 0, 0, '你的英雄技能变为“造成2点伤害”，如果已经处于暗影形态下：改为“造成3点伤害”。', 100, 400, '', ''),
('rogue/Shadowstep.png', '暗影步', '法术', '潜行者', '普通', '专家级', '', 0, 0, 0, '使一个友方随从移回你的手牌，它的法力值消耗减少（2）点。', 5, 40, '', ''),
('warlock/Shadowflame.png', '暗影烈焰', '法术', '术士', '稀有', '专家级', '', 4, 0, 0, '消灭一个友方随从，对所有敌方随从造成等同于其攻击力的伤害。', 20, 100, '', ''),
('priest/Shadow+Madness.png', '暗影狂乱', '法术', '牧师', '稀有', '专家级', '', 4, 0, 0, '直到回合结束，获得一个攻击力小于或等于3的敌方随从的控制权。', 20, 100, '', ''),
('warlock/Shadow+Bolt.png', '暗影箭', '法术', '术士', '基本', '基本级', '', 3, 0, 0, '对一个随从造成4点伤害。', 0, 0, 'damage($target,4+$extra)', 'choice(selfminions,enemyminions)'),
('priest/Shadow+Word+Death.png', '暗言术：灭', '法术', '牧师', '基本', '基本级', '', 3, 0, 0, '消灭一个攻击力大于或等于5的随从。', 0, 0, 'destroy($target)', 'choice(filter(union(selfminions,enemyminions),$$.attack>=5))'),
('priest/Shadow+Word+Pain.png', '暗言术：痛', '法术', '牧师', '基本', '基本级', '', 2, 0, 0, '消灭一个攻击力小于或等于3的随从。', 0, 0, 'destroy($target)', 'choice(filter(union(selfminions,enemyminions),$$.attack<=3))'),
('neutral/Grimscale+Oracle.png', '暗鳞先知', '随从', '中立', '基本', '基本级', '鱼人', 1, 1, 1, '所有其他鱼人获得+1攻击力。', 0, 0, 'initeventminioncreateevent({addattack(filter(filter(union(selfminions,enemyminions),$$.race==''鱼人''),$$!=$this),1)})', ''),
('neutral/Darkscale%20Healer.png', '暗鳞治愈者', '随从', '中立', '基本', '基本级', '', 5, 4, 5, '战吼：为所有友方角色恢复2点生命值。', 0, 0, 'cure(union(selfhero,selfminions),2)', ''),
('neutral/Twilight+Drake.png', '暮光幼龙', '随从', '中立', '稀有', '专家级', '龙', 4, 4, 1, '战吼：你每有一张手牌，便获得+1生命值。', 20, 100, '', ''),
('warrior/Frothing+Berserker.png', '暴乱狂战士', '随从', '战士', '稀有', '专家级', '', 3, 2, 4, '每当一个随从受到伤害时，便获得+1攻击力。', 20, 100, '', ''),
('neutral/Raging+Worgen.png', '暴怒的狼人', '随从', '中立', '普通', '专家级', '', 3, 3, 3, '激怒：+1攻击力并具有风怒', 5, 40, '', ''),
('neutral/Stormwind+Champion.png', '暴风城勇士', '随从', '中立', '基本', '基本级', '', 7, 6, 6, '你的其他随从获得+1/+1。', 0, 0, 'initeventminioncreateevent({addattack(filter(selfminions,$$!=$this),1)});initeventminioncreateevent({addlife(filter(selfminions,$$!=$this),1)})', ''),
('neutral/Stormwind+Knight.png', '暴风城骑士', '随从', '中立', '基本', '基本级', '', 4, 2, 5, '冲锋', 0, 0, 'rush($this)', ''),
('mage/Blizzard.png', '暴风雪', '法术', '法师', '稀有', '专家级', '', 6, 0, 0, '对所有敌方随从造成2点伤害，并使其冻结。', 100, 100, '', ''),
('hunter/King+Krush.png', '暴龙王克鲁什', '随从', '猎人', '传说', '专家级', '野兽', 9, 8, 8, '冲锋', 400, 1600, '', ''),
('druid/Moonfire.png', '月火术', '法术', '德鲁伊', '基本', '基本级', '', 0, 0, 0, '造成1点伤害。', 0, 0, 'damage($target,1+$extra)', 'choice(selfhero,selfminions,enemyminions,enemyhero)'),
('warlock/Doomguard.png', '末日守卫', '随从', '术士', '稀有', '专家级', '恶魔', 5, 5, 7, '冲锋，战吼：随机弃2张牌。', 20, 100, '', ''),
('warlock/Bane+of+Doom.png', '末日灾祸', '法术', '术士', '史诗', '专家级', '', 5, 0, 0, '对一个角色造成2点伤害，如果末日灾祸杀死该角色，随机召唤一个恶魔。', 10, 400, '', ''),
('neutral/Doomsayer.png', '末日预言者', '随从', '中立', '史诗', '专家级', '', 2, 0, 7, '在你的回合开始时，消灭所有随从。', 100, 400, '', ''),
('hunter/Animal+Companion.png', '机械幼龙', '随从', '中立', '基本', '附属级', '', 0, 2, 1, '', 0, 0, '', ''),
('neutral/Dragonling+Mechanic.png', '机械幼龙技工', '随从', '中立', '基本', '基本级', '', 4, 2, 4, '战吼：召唤一个2/1的机械幼龙。', 0, 0, 'call(''机械幼龙'')', ''),
('hunter/Kill+Command.png', '杀戮命令', '法术', '猎人', '基本', '基本级', '', 3, 0, 0, '造成3点伤害，如果你有任何野兽在场上，则改为造成5点伤害。', 0, 0, 'damage($target,3+$extra);if(notempty(filter(selfminions,$$.race==''野兽''))){damage($target,2)}', 'choice(selfhero,selfminions,enemyminions,enemyhero)'),
('neutral/Gelbin+Mekkatorque.png', '格尔宾·梅卡托克', '随从', '中立', '传说', '专家级', '', 6, 6, 6, '战吼：进行一次惊人的发明。', 400, 1600, '', ''),
('warrior/Grommash+Hellscream.png', '格罗玛什·地狱咆哮', '随从', '战士', '传说', '专家级', '', 8, 4, 9, '冲锋，激怒：+6攻击力', 400, 1600, '', ''),
('neutral/Gruul.png', '格鲁尔', '随从', '中立', '传说', '专家级', '', 8, 7, 7, '在每个回合结束时，获得+1/+1。', 400, 1600, '', ''),
('hunter/Timber+Wolf.png', '森林狼', '随从', '猎人', '基本', '基本级', '野兽', 1, 1, 1, '你的其他野兽获得+1攻击力。', 0, 0, 'initeventminioncreateevent({addattack(filter(filter(selfminions,$$.race==''野兽''),$$!=$this),1)})', ''),
('neutral/Sen%27jin+Shieldmasta.png', '森金持盾卫士', '随从', '中立', '基本', '基本级', '', 4, 3, 5, '嘲讽', 0, 0, 'taunt($this)', ''),
('druid/Swipe.png', '横扫', '法术', '德鲁伊', '基本', '基本级', '', 4, 0, 0, '对一个敌人造成4点伤害，并对所有其他敌人造成1点伤害。', 0, 0, 'damage($target,3);damage(union(enemyhero,enemyminions),1+$extra)', 'choice(enemyhero,enemyminions)'),
('neutral/Molten+Giant.png', '次级治疗术', '法术', '牧师', '基本', '英雄级', '', 2, 0, 0, '恢复2点生命值', 0, 0, 'cure($target,2)', 'choice(selfhero,selfminions,enemyminions,enemyhero)'),
('neutral/Deathwing.png', '死亡之翼', '随从', '中立', '传说', '专家级', '龙', 10, 12, 12, '战吼：消灭所有其他随从，并弃掉你的手牌。', 400, 1600, '', ''),
('warlock/Mortal+Coil.png', '死亡缠绕', '法术', '术士', '基本', '基本级', '', 1, 0, 0, '对一个随从造成1点伤害，如果死亡缠绕将其杀死，抽一张牌。', 0, 0, 'damage($target,1+$extra);if($target.life<=0){takecard(1)}', 'choice(selfminions,enemyminions)'),
('rogue/Perdition%27s+Blade.png', '毁灭之刃', '武器', '潜行者', '稀有', '专家级', '', 3, 2, 2, '战吼：造成1点伤害。连击：改为造成2点伤害。', 20, 100, '', ''),
('shaman/Doomhammer.png', '毁灭之锤', '武器', '萨满', '史诗', '专家级', '', 5, 2, 8, '风怒，过载：（2）', 100, 400, '', ''),
('rogue/Shiv.png', '毒刃', '法术', '潜行者', '基本', '基本级', '', 2, 0, 0, '造成1点伤害，抽一张牌。', 0, 0, 'damage($target,1+$extra);takecard(1)', 'choice(selfhero,selfminions,enemyminions,enemyhero)'),
('hunter/Snake+Trap.png', '毒蛇陷阱', '法术', '猎人', '史诗', '专家级', '', 2, 0, 0, '奥秘：每当你的随从受到攻击时，召唤3条1/1的蛇。', 100, 400, '', ''),
('neutral/The+Beast.png', '比斯巨兽', '随从', '中立', '传说', '专家级', '野兽', 6, 9, 7, '亡语：为你的对手召唤1个3/3的芬克·恩霍尔。', 400, 1600, '', ''),
('mage/Water+Elemental.png', '水元素', '随从', '法师', '基本', '基本级', '', 4, 3, 6, '冻结任何受到水元素伤害的随从。', 0, 0, 'damageevent({if($eventsource==$this){freeze($eventtarget)}})', ''),
('priest/Silence.png', '沉默', '法术', '牧师', '普通', '专家级', '', 0, 0, 0, '沉默一个随从。', 5, 40, '', ''),
('priest/Circle+of+Healing.png', '治疗之环', '法术', '牧师', '普通', '专家级', '', 0, 0, 0, '为所有随从恢复4点生命值。', 5, 40, '', ''),
('druid/Healing+Touch.png', '治疗之触', '法术', '德鲁伊', '基本', '基本级', '', 3, 0, 0, '恢复8点生命值。', 0, 0, 'cure($target,8)', 'choice(selfhero,selfminions,enemyminions,enemyhero)'),
('neutral/Fen+Creeper.png', '沼泽爬行者', '随从', '中立', '普通', '专家级', '', 5, 3, 6, '嘲讽', 5, 40, '', ''),
('shaman/Mana+Tide+Totem.png', '法力之潮图腾', '随从', '萨满', '稀有', '专家级', '', 3, 0, 3, '在你的回合结束时，抽一张牌。', 20, 100, '', ''),
('neutral/Mana+Wraith.png', '法力怨魂', '随从', '中立', '稀有', '专家级', '', 2, 2, 2, '召唤所有随从的法力值消耗增加（1）点。', 20, 100, '', ''),
('mage/Mana+Wyrm.png', '法力浮龙', '随从', '法师', '普通', '专家级', '', 1, 1, 3, '每当你施放一个法术时，便获得+1攻击力。', 5, 40, '', ''),
('mage/Counterspell.png', '法术反制', '法术', '法师', '稀有', '专家级', '', 3, 0, 0, '奥秘：当你的对手施放法术时，反制该法术。', 20, 100, '', ''),
('neutral/Sea+Giant.png', '海巨人', '随从', '中立', '史诗', '专家级', '', 10, 8, 8, '战场上每有一个其他随从，该牌的法力值消耗便减少（1）点。', 100, 400, '', ''),
('rogue/Vanish.png', '消失', '法术', '潜行者', '基本', '基本级', '', 6, 0, 0, '将所有随从移回其拥有者的手牌。', 0, 0, 'returnback(union(selfminions,enemyminions))', ''),
('neutral/River+Crocolisk.png', '淡水鳄', '随从', '中立', '基本', '基本级', '野兽', 2, 2, 3, '', 0, 0, '', ''),
('warlock/Pit+Lord.png', '深渊领主', '随从', '术士', '史诗', '专家级', '恶魔', 4, 5, 6, '战吼：对你的英雄造成5点伤害。', 100, 400, '', ''),
('neutral/Lorewalker+Cho.png', '游学者周卓', '随从', '中立', '传说', '专家级', '', 2, 0, 4, '每当一个玩家施放一个法术时，复制该法术，将其置入另一个玩家的手牌。', 400, 1600, '', ''),
('druid/Nourish.png', '滋养', '法术', '德鲁伊', '稀有', '专家级', '', 5, 0, 0, '抉择：获得2个法力水晶；或者抽3张牌。', 20, 100, '', ''),
('druid/Innervate.png', '激活', '法术', '德鲁伊', '基本', '基本级', '', 0, 0, 0, '仅在本回合中，获得2个法力水晶。', 0, 0, 'poweradd(2)', ''),
('shaman/Fire+Elemental.png', '火元素', '随从', '萨满', '基本', '基本级', '', 6, 6, 5, '战吼：造成3点伤害。', 0, 0, 'damage($target,3)', 'choice(enemyminions,enemyhero,selfminions,selfhero)'),
('neutral/Molten+Giant.png', '火焰冲击', '法术', '法师', '基本', '英雄级', '', 2, 0, 0, '造出1点伤害。', 0, 0, 'damage($target,1)', 'choice(selfhero,selfminions,enemyminions,enemyhero)'),
('mage/Fireball.png', '火球术', '法术', '法师', '基本', '基本级', '', 4, 0, 0, '造成6点伤害。', 0, 0, 'damage($target,6+$extra)', 'choice(selfhero,selfminions,enemyminions,enemyhero)'),
('shaman/Flame+tongue+Totem.png', '火舌图腾', '随从', '萨满', '基本', '基本级', '', 2, 0, 3, '相邻的随从获得+2攻击力。', 0, 0, 'initeventminioncreateeventminionlostevent({addattack(adjacent,2)})', ''),
('neutral/Leeroy+Jenkins.png', '火车王里诺艾', '随从', '中立', '传说', '专家级', '', 4, 6, 2, '冲锋，战吼：为你的对手召唤2只1/1的雏龙。', 400, 1600, '', ''),
('warlock/Soulfire.png', '灵魂之火', '法术', '术士', '基本', '基本级', '', 0, 0, 0, '造成4点伤害，随机弃一张牌。', 0, 0, 'damage($target,4+$extra);dropcard(1)', 'choice(selfhero,selfminions,enemyminions,enemyhero)'),
('warlock/Siphon+Soul.png', '灵魂虹吸', '法术', '术士', '稀有', '专家级', '', 6, 0, 0, '消灭一个随从，为你的英雄恢复3点生命值。', 20, 100, '', ''),
('mage/Pyroblast.png', '炎爆术', '法术', '法师', '史诗', '专家级', '', 10, 0, 0, '造成10点伤害。', 400, 400, '', ''),
('neutral/Ragnaros+the+Firelord.png', '炎魔之王拉格纳罗斯', '随从', '中立', '传说', '专家级', '', 8, 8, 8, '无法攻击，在你的回合结束时，对一个随机敌人造成8点伤害。', 400, 1600, '', ''),
('warrior/Fiery+War+Axe.png', '炽炎战斧', '武器', '战士', '基本', '基本级', '', 2, 3, 2, '', 0, 0, '', ''),
('neutral/Sunwalker.png', '烈日行者', '随从', '中立', '稀有', '专家级', '', 6, 4, 5, '嘲讽，圣盾。', 20, 100, '', ''),
('warlock/Flame+Imp.png', '烈焰小鬼', '随从', '术士', '普通', '专家级', '恶魔', 1, 3, 2, '战吼：对你的英雄造成3点伤害。', 40, 40, '', ''),
('mage/Flamestrike.png', '烈焰风暴', '法术', '法师', '基本', '基本级', '', 7, 0, 0, '对所有敌方随从造成4点伤害。', 0, 0, 'damage(enemyminions,4+$extra)', ''),
('hunter/Flare.png', '照明弹', '法术', '猎人', '稀有', '专家级', '', 1, 0, 0, '所有随从失去潜行，摧毁所有敌方奥秘，抽一张牌。', 20, 100, '', ''),
('shaman/Lava+Burst.png', '熔岩爆裂', '法术', '萨满', '稀有', '专家级', '', 3, 0, 0, '造成5点伤害，过载：（2）', 20, 100, '', ''),
('neutral/Molten+Giant.png', '熔核巨人', '随从', '中立', '史诗', '专家级', '', 20, 8, 8, '你的英雄每受到1点伤害，这张牌的法力值消耗便减少（1）点。', 100, 400, '', ''),
('neutral/Core+Hound.png', '熔火恶犬', '随从', '中立', '基本', '基本级', '', 7, 9, 5, '', 0, 0, '', ''),
('hunter/Explosive+Shot.png', '爆炸射击', '法术', '猎人', '稀有', '专家级', '', 5, 0, 0, '对一个随从造成5点伤害，并对其相邻的随从造成2点伤害。', 20, 100, '', ''),
('hunter/Explosive+Trap.png', '爆炸陷阱', '法术', '猎人', '普通', '专家级', '', 2, 0, 0, '奥秘：当你的英雄受到攻击，对所有敌人造成2点伤害。', 5, 40, '', ''),
('druid/Claw.png', '爪击', '法术', '德鲁伊', '基本', '基本级', '', 1, 0, 0, '使你的英雄获得2点护甲值，并在本回合中获得+2攻击力。', 0, 0, 'guardadd(selfhero,2);attackadd(selfhero,2);endevent({attackadd(selfhero,-2)})', ''),
('neutral/Tauren+Warrior.png', '牛头人战士', '随从', '中立', '普通', '专家级', '', 3, 2, 3, '嘲讽，激怒：+3攻击力。', 5, 40, '', ''),
('warlock/Sacrificial+Pact.png', '牺牲契约', '法术', '术士', '基本', '基本级', '', 0, 0, 0, '牺牲一个恶魔，为你的英雄恢复5点生命值。', 0, 0, 'destroy($target);cure(selfhero,5)', 'choice(filter(union(selfminions,enemyminions),$$.race==''恶魔''))'),
('neutral/Stampeding+Kodo.png', '狂奔科多兽', '随从', '中立', '稀有', '专家级', '野兽', 5, 3, 5, '战吼：随机消灭一个攻击力小于或等于2的敌方随从。', 20, 100, '', ''),
('warrior/Rampage.png', '狂暴', '法术', '战士', '普通', '专家级', '', 2, 0, 0, '使一个受过伤害的随从获得+3/+3。', 5, 40, '', ''),
('hunter/Bestrial+Wrath.png', '狂野怒火', '法术', '猎人', '史诗', '专家级', '', 1, 0, 0, '在本回合中，使一只野兽获得+2攻击力并具有免疫。', 100, 400, '', ''),
('neutral/Wild+Pyromancer.png', '狂野炎术师', '随从', '中立', '稀有', '专家级', '', 2, 3, 2, '每当你施放一个法术时，对所有随从造成1点伤害。', 20, 100, '', ''),
('neutral/Kobold+Geomancer.png', '狗头人地卜师', '随从', '中立', '基本', '基本级', '', 2, 2, 2, '法术伤害+1', 0, 0, 'initeventcardevent({addattack(magiccards,1)})', ''),
('hunter/Snipe.png', '狙击', '法术', '猎人', '普通', '专家级', '', 2, 0, 0, '奥秘：当你的对手召唤一个随从，对该随从造成4点伤害。', 5, 40, '', ''),
('neutral/Worgen+Infiltrator.png', '狼人渗透者', '随从', '中立', '普通', '专家级', '', 1, 2, 1, '潜行', 5, 40, '', ''),
('neutral/Wolfrider.png', '狼骑兵', '随从', '中立', '基本', '基本级', '', 3, 3, 1, '冲锋', 0, 0, 'rush($this)', ''),
('hunter/Hunter%27s%20Mark.png', '猎人印记', '法术', '猎人', '基本', '基本级', '', 0, 0, 0, '使一个随从的生命值变为1。', 0, 0, 'lifeset($target,1)', 'choice(selfminions,enemyminions)'),
('warrior/Slam.png', '猛击', '法术', '战士', '普通', '专家级', '', 2, 0, 0, '对一个随从造成2点伤害，如果它依然存活，则抽一张牌。', 5, 40, '', ''),
('neutral/Big+Game+Hunter.png', '王牌猎人', '随从', '中立', '史诗', '专家级', '', 3, 4, 2, '战吼：消灭一个攻击力大于或等于7的随从。', 100, 400, '', ''),
('paladin/Blessing+of+Kings.png', '王者祝福', '法术', '圣骑士', '基本', '基本级', '', 4, 0, 0, '使一个随从获得+4/+4。（+4攻击力/+4生命值）', 0, 0, 'attackadd($target,4);lifeadd($target,4)', 'choice(selfminions,enemyminions)'),
('neutral/Malygos.png', '玛里苟斯', '随从', '中立', '传说', '专家级', '龙', 9, 4, 12, '法术伤害+5', 400, 1600, '', ''),
('neutral/Molten+Giant.png', '生命分流', '法术', '术士', '基本', '英雄级', '', 2, 0, 0, '抽一张牌并受到2点伤害', 0, 0, 'takecard(1);damage(selfhero,2)', ''),
('paladin/Equality.png', '生而平等', '法术', '圣骑士', '稀有', '专家级', '', 2, 0, 0, '将所有随从的生命值变为1。', 20, 100, '', ''),
('neutral/Mad+Bomber.png', '疯狂投弹者', '随从', '中立', '普通', '专家级', '', 2, 3, 2, '战吼：造成3点伤害，随机分配于其他角色身上。', 5, 40, '', ''),
('neutral/Crazed+Alchemist.png', '疯狂的炼金师', '随从', '中立', '稀有', '专家级', '', 2, 2, 2, '战吼：使一个随从的攻击力和生命值互换。', 20, 100, '', ''),
('rogue/Sprint.png', '疾跑', '法术', '潜行者', '基本', '基本级', '', 7, 0, 0, '抽4张牌。', 0, 0, 'takecard(4)', ''),
('neutral/Silver+Hand+Knight.png', '白银之手骑士', '随从', '中立', '普通', '专家级', '', 5, 4, 4, '战吼：召唤一个2/2的侍从。', 5, 40, '', ''),
('neutral/Molten+Giant.png', '白银新兵', '随从', '圣骑士', '基本', '英雄级', '', 2, 1, 1, '', 0, 0, '', ''),
('warrior/Shield%20Block.png', '盾牌格挡', '法术', '战士', '基本', '基本级', '', 3, 0, 0, '获得5点护甲值，抽一张牌。', 0, 0, 'guardadd(selfhero,5);takecard(1)', ''),
('warrior/Shield+Slam.png', '盾牌猛击', '法术', '战士', '史诗', '专家级', '', 1, 0, 0, '你每有1点护甲值，便对一个随从造成1点伤害。', 100, 400, '', ''),
('priest/Power+Word+Shield.png', '真言术：盾', '法术', '牧师', '基本', '基本级', '', 1, 0, 0, '使一个随从获得+2生命值。 抽一张牌。', 0, 0, 'lifeadd($target,2);takecard(1)', 'choice(selfminions,enemyminions)'),
('paladin/Truesilver+Champion.png', '真银圣剑', '武器', '圣骑士', '基本', '基本级', '', 4, 4, 2, '每当你的英雄进攻时，为其恢复2点生命值。', 0, 0, 'attackevent({if($eventsource==selfhero){cure(selfhero,2)}})', ''),
('druid/Ancient+of+Lore.png', '知识古树', '随从', '德鲁伊', '史诗', '专家级', '', 7, 5, 5, '抉择：抽2张牌；或恢复5点生命值。', 100, 400, '', ''),
('shaman/Rockbiter+Weapon.png', '石化武器', '法术', '萨满', '基本', '基本级', '', 1, 0, 0, '在本回合中，使一个友方角色获得+3攻击力。', 0, 0, 'attackadd($target,3);endevent({attackadd($target,-3)})', 'choice(selfhero,selfminions)'),
('neutral/Boulderfist+Ogre.png', '石拳食人魔', '随从', '中立', '基本', '基本级', '', 6, 6, 7, '', 0, 0, '', ''),
('neutral/Stonetusk+Boar.png', '石牙野猪', '随从', '中立', '基本', '基本级', '野兽', 1, 1, 1, '冲锋', 0, 0, 'rush($this)', ''),
('neutral/Spellbreaker.png', '破法者', '随从', '中立', '普通', '专家级', '', 4, 4, 3, '战吼：沉默一个随从。', 5, 40, '', '');
INSERT INTO `cards` (`imageid`, `name`, `type`, `job`, `rate`, `groupcode`, `race`, `cost`, `attack`, `blood`, `effects`, `split`, `join`, `effectcode`, `targetcode`) VALUES
('neutral/Shattered+Sun+Cleric.png', '破碎残阳祭司', '随从', '中立', '基本', '基本级', '', 3, 3, 2, '战吼：使一个友方随从获得+1/+1。', 0, 0, 'attackadd($target,1);lifeadd($target,1)', 'choiceornone(selfminions)'),
('neutral/Azure+Drake.png', '碧蓝幼龙', '随从', '中立', '稀有', '专家级', '龙', 5, 4, 4, '法术伤害+1，战吼：抽一张牌。', 20, 100, '', ''),
('priest/Holy+Fire.png', '神圣之火', '法术', '牧师', '稀有', '专家级', '', 6, 0, 0, '造成5点伤害。为你的英雄恢复5点生命值。', 20, 100, '', ''),
('priest/Divine+Spirit.png', '神圣之灵', '法术', '牧师', '基本', '基本级', '', 2, 0, 0, '使一个随从的生命值翻倍。', 0, 0, 'lifedouble($target)', 'choice(selfminions,enemyminions)'),
('priest/Holy+Smite.png', '神圣惩击', '法术', '牧师', '基本', '基本级', '', 1, 0, 0, '造成2点伤害。', 0, 0, 'damage($target,2+$extra)', 'choice(selfminions,enemyminions,enemyhero)'),
('paladin/Holy+Wrath.png', '神圣愤怒', '法术', '圣骑士', '稀有', '专家级', '', 5, 0, 0, '抽一张牌，并造成等同于其法力值消耗的伤害。', 20, 100, '', ''),
('priest/Holy+Nova.png', '神圣新星', '法术', '牧师', '基本', '基本级', '', 5, 0, 0, '对所有敌方角色造成2点伤害，为所有友方角色恢复#2点生命值。', 0, 0, 'damage(union(enemyminions,enemyhero),2+$extra);cure(union(selfminions,selfhero),2)', ''),
('paladin/Divine+Favor.png', '神恩术', '法术', '圣骑士', '稀有', '专家级', '', 3, 0, 0, '抽若干数量的牌，直到你的手牌数量等同于你的对手的手牌数量。', 20, 100, '', ''),
('priest/Cabal+Shadow+Priest.png', '秘教暗影祭司', '随从', '牧师', '史诗', '专家级', '', 6, 4, 5, '战吼：获得一个攻击力小于或等于2的敌方随从的控制权。', 100, 400, '', ''),
('neutral/Molten+Giant.png', '稳固射击', '法术', '猎人', '基本', '英雄级', '', 2, 0, 0, '对敌方英雄造成2点伤害 ', 0, 0, 'damage(enemyhero,2)', ''),
('neutral/King+Mukla.png', '穆克拉', '随从', '中立', '传说', '专家级', '野兽', 3, 5, 5, '战吼：使你的对手获得2个香蕉。', 400, 1600, '', ''),
('neutral/Lord+of+the+Arena.png', '竞技场主宰', '随从', '中立', '基本', '基本级', '', 6, 6, 5, '嘲讽', 0, 0, 'taunt($this)', ''),
('neutral/Millhouse+Manastorm.png', '米尔豪斯·法力风暴', '随从', '中立', '传说', '专家级', '', 2, 4, 4, '战吼：下个回合敌方法术的法力值消耗为（0）点。', 400, 1600, '', ''),
('hunter/Animal+Companion.png', '米莎', '随从', '猎人', '基本', '附属级', '野兽', 0, 4, 4, '嘲讽', 0, 0, 'taunt($this)', ''),
('neutral/Elven+Archer.png', '精灵弓箭手', '随从', '中立', '基本', '基本级', '', 1, 1, 1, '战吼：造成1点伤害。', 0, 0, 'damage($target,1)', 'choice(selfminions,enemyminions,enemyhero,selfhero)'),
('neutral/Faerie+Dragon.png', '精灵龙', '随从', '中立', '普通', '专家级', '龙', 2, 3, 2, '无法成为法术或者英雄技能的目标。', 5, 40, '', ''),
('priest/Mind+Control.png', '精神控制', '法术', '牧师', '基本', '基本级', '', 10, 0, 0, '获得一个敌方随从的控制权。', 0, 0, 'control($target)', 'choice(enemyminions)'),
('neutral/Mind+Control+Tech.png', '精神控制技师', '随从', '中立', '稀有', '专家级', '', 3, 3, 3, '战吼：如果你的对手拥有4个或者更多随从，随机控制其中一个。', 20, 100, '', ''),
('neutral/Elite+Tauren+Chieftain.png', '精英牛头人酋长', '随从', '中立', '传说', '纪念', '', 5, 5, 5, '战吼：让两位玩家都具有摇滚的能力！（双方各获得一张强力和弦牌）', 0, 0, '', ''),
('neutral/Violet+Teacher.png', '紫罗兰教师', '随从', '中立', '稀有', '专家级', '', 4, 3, 5, '每当你施放一个法术时，召唤一个1/1的紫罗兰学徒。', 20, 100, '', ''),
('neutral/Nat+Pagle.png', '纳特·帕格', '随从', '中立', '传说', '专家级', '', 2, 0, 4, '在你的回合开始时，你有50%的几率抽一张牌。', 1600, 1600, '', ''),
('warrior/Brawl.png', '绝命乱斗', '法术', '战士', '史诗', '专家级', '', 5, 0, 0, '随机选择一个随从，消灭除了该随从外的所有其他随从。', 100, 400, '', ''),
('neutral/Oasis%20Snapjaw.png', '绿洲钳嘴龟', '随从', '中立', '基本', '基本级', '野兽', 4, 2, 7, '', 0, 0, '', ''),
('neutral/Captain+Greenskin.png', '绿皮船长', '随从', '中立', '传说', '专家级', '海盗', 5, 5, 4, '战吼：使你的武器获得+1/+1。', 400, 1600, '', ''),
('priest/Mass+Dispel.png', '群体驱散', '法术', '牧师', '稀有', '专家级', '', 4, 0, 0, '沉默所有敌方随从，抽一张牌。', 20, 100, '', ''),
('neutral/Old+Murk+Eye.png', '老瞎眼', '随从', '中立', '传说', '奖励', '鱼人', 4, 2, 4, '冲锋，在战场上每有一个其他鱼人便获得+1攻击力。', 0, 0, '', ''),
('rogue/Patient+Assassin.png', '耐心的刺客', '随从', '潜行者', '史诗', '专家级', '', 2, 1, 1, '潜行，消灭任何受到该随从伤害的随从。', 100, 400, '', ''),
('mage/Kirin+Tor+Mage.png', '肯瑞托法师', '随从', '法师', '稀有', '专家级', '', 3, 4, 3, '战吼：在本回合中，你使用的下一个奥秘的法力值消耗为（0）点。', 20, 100, '', ''),
('rogue/Backstab.png', '背刺', '法术', '潜行者', '基本', '基本级', '', 0, 0, 0, '对一个未受伤害的随从造成2点伤害。', 0, 0, 'damage($target,2+$extra)', 'choice(filter(union(selfminions,enemyminions),$$.life==$$.maxlife))'),
('rogue/Betrayal.png', '背叛', '法术', '潜行者', '普通', '专家级', '', 2, 0, 0, '一个敌方随从对其相邻的随从造成等同于其攻击力的伤害。', 5, 40, '', ''),
('neutral/Flesheating+Ghoul.png', '腐肉食尸鬼', '随从', '中立', '普通', '专家级', '', 3, 2, 3, '每当一个随从死亡时，获得+1攻击力。', 5, 40, '', ''),
('warlock/Corruption.png', '腐蚀术', '法术', '术士', '基本', '基本级', '', 1, 0, 0, '选择一个敌方随从，在你的回合开始时，消灭该随从。', 0, 0, 'beginevent({destroy($target)})', 'choice(enemyminions)'),
('druid/Force+of+Nature.png', '自然之力', '法术', '德鲁伊', '史诗', '专家级', '', 6, 0, 0, '召唤3个2/2并具有冲锋的树人，在回合结束时，消灭这些树人。', 100, 400, '', ''),
('druid/Mark+of+Nature.png', '自然印记', '法术', '德鲁伊', '普通', '专家级', '', 3, 0, 0, '抉择：使一个随从获得+4攻击力；或者+4生命值并具有嘲讽。', 5, 40, '', ''),
('druid/Naturalize.png', '自然平衡', '法术', '德鲁伊', '普通', '专家级', '', 1, 0, 0, '消灭一个随从，你的对手抽两张牌。', 5, 40, '', ''),
('hunter/Deadly+shot.png', '致命射击', '法术', '猎人', '普通', '专家级', '', 3, 0, 0, '随机消灭一个敌方随从。', 5, 40, '', ''),
('rogue/Deadly+Poison.png', '致命药膏', '法术', '潜行者', '基本', '基本级', '', 1, 0, 0, '使你的武器获得+2攻击力。', 0, 0, 'attackadd($target,2)', 'choice(selfweapon)'),
('warrior/Mortal+Strike.png', '致死打击', '法术', '战士', '稀有', '专家级', '', 4, 0, 0, '造成4点伤害；如果你的英雄的生命值小于或等于12点，则改为造成6点伤害。', 20, 100, '', ''),
('neutral/Captains+Parrot.png', '船长的鹦鹉', '随从', '中立', '史诗', '奖励', '野兽', 2, 1, 1, '战吼：随机从你的牌库中将一张海盗牌置入你的手牌。', 0, 0, '', ''),
('rogue/Edwin%20VanCleef.png', '艾德温·范克里夫', '随从', '潜行者', '传说', '专家级', '', 3, 2, 2, '连击：在本回合中，使用此牌前每打出一张其他牌，便获得+2/+2。', 400, 1600, '', ''),
('neutral/Priestess+of+Elune.png', '艾露恩的女祭司', '随从', '中立', '普通', '专家级', '', 6, 5, 4, '战吼：为你的英雄恢复4点生命值。', 5, 40, '', ''),
('hunter/Tundra+Rhino.png', '苔原犀牛', '随从', '猎人', '基本', '基本级', '野兽', 5, 2, 5, '你的野兽获得冲锋。', 0, 0, 'rush(filter(selfminions,$$.race==''野兽''))', ''),
('neutral/Acolyte+of+Pain.png', '苦痛侍僧', '随从', '中立', '普通', '专家级', '', 3, 1, 3, '每当该随从受到伤害时，抽一张牌。', 5, 40, '', ''),
('warrior/Heroic+Strike.png', '英勇打击', '法术', '战士', '基本', '基本级', '', 2, 0, 0, '在本回合中，使你的英雄获得+4攻击力。', 0, 0, 'attackadd(selfhero,4);endevent({attackadd(selfhero,-4)})', ''),
('neutral/Stranglethorn+Tiger.png', '荆棘谷猛虎', '随从', '中立', '普通', '专家级', '野兽', 5, 5, 5, '潜行', 5, 40, '', ''),
('neutral/Thrallmar+Farseer.png', '萨尔玛先知', '随从', '中立', '普通', '专家级', '', 3, 2, 3, '风怒', 5, 40, '', ''),
('mage/Vaporize.png', '蒸发', '法术', '法师', '稀有', '专家级', '', 3, 0, 0, '奥秘：当一个随从攻击你的英雄，将其消灭。', 20, 100, '', ''),
('neutral/Bluegill+Warrior.png', '蓝腮战士', '随从', '中立', '基本', '基本级', '鱼人', 2, 2, 1, '冲锋', 0, 0, 'rush($this)', ''),
('neutral/Booty+Bay+Bodyguard.png', '藏宝海湾保镖', '随从', '中立', '基本', '基本级', '', 5, 5, 4, '嘲讽', 0, 0, 'taunt($this)', ''),
('mage/Ethereal+Arcanist.png', '虚灵奥术师', '随从', '法师', '稀有', '专家级', '', 4, 3, 3, '当你在回合结束时控制一个奥秘，该随从便获得+2/+2。', 20, 100, '', ''),
('warlock/Void+Terror.png', '虚空恐魔', '随从', '术士', '稀有', '专家级', '恶魔', 3, 3, 3, '战吼：消灭该随从两侧的随从，并获得他们的攻击力和生命值。', 20, 100, '', ''),
('warlock/Voidwalker.png', '虚空行者', '随从', '术士', '基本', '基本级', '恶魔', 1, 1, 3, '嘲讽', 0, 0, 'taunt($this)', ''),
('warrior/Gorehowl.png', '血吼', '武器', '战士', '史诗', '专家级', '', 7, 7, 1, '攻击随从不会消耗耐久度，改为降低1点攻击力。', 100, 400, '', ''),
('neutral/Bloodsail+Corsair.png', '血帆海盗', '随从', '中立', '稀有', '专家级', '海盗', 1, 1, 2, '战吼：使对手的武器失去1点耐久度。', 20, 100, '', ''),
('neutral/Bloodsail+raider.png', '血帆袭击者', '随从', '中立', '普通', '专家级', '海盗', 2, 2, 3, '战吼：获得等同于你的武器攻击力的攻击力。', 5, 40, '', ''),
('neutral/Bloodfen+Raptor.png', '血沼迅猛龙', '随从', '中立', '基本', '基本级', '野兽', 2, 3, 2, '', 0, 0, '', ''),
('neutral/Bloodmage+Thalnos.png', '血法师萨尔诺斯', '随从', '中立', '传说', '专家级', '', 2, 1, 1, '法术伤害+1，亡语：抽一张牌。', 400, 1600, '', ''),
('neutral/Scarlet+Crusader.png', '血色十字军战士', '随从', '中立', '普通', '专家级', '', 3, 3, 1, '圣盾', 5, 40, '', ''),
('neutral/Blood+Knight.png', '血骑士', '随从', '中立', '史诗', '专家级', '', 3, 3, 3, '战吼：所有随从失去圣盾。每有一个随从失去圣盾，便获得+3/+3。', 100, 400, '', ''),
('rogue/Headcrack.png', '裂颅之击', '法术', '潜行者', '稀有', '专家级', '', 3, 0, 0, '对敌方英雄造成2点伤害；连击：在下个回合将其移回你的手牌。', 20, 100, '', ''),
('shaman/Far+Sight.png', '视界术', '法术', '萨满', '史诗', '专家级', '', 3, 0, 0, '抽一张牌，该牌的法力值消耗减少（3）点。', 100, 400, '', ''),
('hunter/Gladiator%27s+Longbow.png', '角斗士的长弓', '武器', '猎人', '史诗', '专家级', '', 7, 5, 2, '你的英雄在攻击时具有免疫。', 100, 400, '', ''),
('neutral/Cult+Master.png', '诅咒教派领袖', '随从', '中立', '普通', '专家级', '', 4, 4, 2, '每当你的其他随从死亡时，抽一张牌。', 5, 40, '', ''),
('hunter/Misdirection.png', '误导', '法术', '猎人', '稀有', '专家级', '', 2, 0, 0, '奥秘：当一个角色攻击你的英雄时，改为该角色攻击另一个随机角色。', 20, 100, '', ''),
('neutral/Nozdormu.png', '诺兹多姆', '随从', '中立', '传说', '专家级', '龙', 9, 8, 8, '所有玩家只有15秒的时间来进行他们的回合。', 400, 1600, '', ''),
('paladin/Humility.png', '谦逊', '法术', '圣骑士', '基本', '基本级', '', 1, 0, 0, '使一个随从的攻击力变为1。', 0, 0, 'attackset($target,1)', 'choice(selfminions,enemyminions)'),
('neutral/Injured+Blademaster.png', '负伤剑圣', '随从', '中立', '稀有', '专家级', '', 3, 4, 7, '战吼：对自身造成4点伤害。', 20, 100, '', ''),
('neutral/Dalaran+Mage.png', '达拉然法师', '随从', '中立', '基本', '基本级', '', 3, 1, 4, '法术伤害+1', 0, 0, 'initeventcardevent({addattack(magiccards,1)})', ''),
('neutral/Baron+Geddon.png', '迦顿男爵', '随从', '中立', '传说', '专家级', '', 7, 7, 5, '在你的回合结束时，对所有其他角色造成2点伤害。', 400, 1600, '', ''),
('rogue/Defias+Ringleader.png', '迪菲亚头目', '随从', '潜行者', '普通', '专家级', '', 2, 2, 2, '连击：召唤一个2/1的迪菲亚强盗。', 5, 40, '', ''),
('hunter/Tracking.png', '追踪术', '法术', '猎人', '基本', '基本级', '', 1, 0, 0, '检视你的牌库顶的3张牌，将1张置入手牌，弃掉其余牌。', 0, 0, 'checkcard(3)', ''),
('neutral/Acidic+Swamp+Ooze.png', '酸性沼泽软泥怪', '随从', '中立', '基本', '基本级', '', 2, 3, 2, '战吼：摧毁你的对手的武器。', 0, 0, 'destroy(enemyweapon)', ''),
('druid/Power+of+the+Wild.png', '野性之力', '法术', '德鲁伊', '普通', '专家级', '', 2, 0, 0, '抉择：使你的随从获得+1/+1；或者召唤一个3/2的猎豹。', 5, 40, '', ''),
('druid/Mark+of+the+Wild.png', '野性印记', '法术', '德鲁伊', '基本', '基本级', '', 2, 0, 0, '使一个随从获得嘲讽和+2/+2。（+2攻击力/+2生命值）', 0, 0, 'taunt($target);attackadd($target,2);lifeadd($target,2)', 'choice(selfminions,enemyminions)'),
('druid/Wild+Growth.png', '野性成长', '法术', '德鲁伊', '基本', '基本级', '', 2, 0, 0, '获得一个空的法力水晶。', 0, 0, 'maxpoweradd(1)', ''),
('shaman/Feral+Spirit.png', '野性狼魂', '法术', '萨满', '稀有', '专家级', '', 3, 0, 0, '召唤2个2/3并具有嘲讽的幽灵狼。过载：（2）', 20, 100, '', ''),
('hunter/Animal+Companion.png', '野猪1', '随从', '中立', '基本', '附属级', '野兽', 0, 1, 1, '', 0, 0, '', ''),
('druid/Savagery.png', '野蛮之击', '法术', '德鲁伊', '稀有', '专家级', '', 1, 0, 0, '对一个随从造成等同于你的英雄攻击力的伤害。', 20, 100, '', ''),
('druid/Savage+Roar.png', '野蛮咆哮', '法术', '德鲁伊', '基本', '基本级', '', 3, 0, 0, '在本回合中，使你的所有角色获得+2攻击力。', 0, 0, 'attackadd(union(selfhero,selfminions),2);endevent({attackadd(union(selfhero,selfminions),-2)})', ''),
('neutral/Ironbeak+Owl.png', '铁喙猫头鹰', '随从', '中立', '普通', '专家级', '野兽', 2, 2, 1, '战吼：沉默一个随从。', 5, 40, '', ''),
('neutral/Ironforge+Rifleman.png', '铁炉堡火枪手', '随从', '中立', '基本', '基本级', '', 3, 2, 2, '战吼：造成1点伤害。', 0, 0, 'damage($target,1)', 'choice(selfminions,enemyminions,enemyhero,selfhero)'),
('neutral/Ironfur+Grizzly.png', '铁鬃灰熊', '随从', '中立', '基本', '基本级', '野兽', 3, 3, 3, '嘲讽', 0, 0, 'taunt($this)', ''),
('neutral/Silvermoon+Guardian.png', '银月城卫兵', '随从', '中立', '普通', '专家级', '', 4, 3, 3, '圣盾', 5, 40, '', ''),
('neutral/Silverback+Patriarch.png', '银背族长', '随从', '中立', '基本', '基本级', '野兽', 3, 1, 4, '嘲讽', 0, 0, 'taunt($this)', ''),
('neutral/Argent+Squire.png', '银色侍从', '随从', '中立', '普通', '专家级', '', 1, 1, 1, '圣盾', 5, 40, '', ''),
('paladin/Argent+Protector.png', '银色保卫者', '随从', '圣骑士', '普通', '专家级', '', 2, 2, 2, '战吼：使一个其他友方随从获得圣盾。', 5, 40, '', ''),
('neutral/Argent+Commander.png', '银色指挥官', '随从', '中立', '稀有', '专家级', '', 6, 4, 2, '冲锋，圣盾。', 100, 100, '', ''),
('neutral/Master+Swordsmith.png', '铸剑师', '随从', '中立', '稀有', '专家级', '', 2, 1, 3, '在你的回合结束时，随机使另一个友方随从获得+1攻击力。', 20, 100, '', ''),
('warrior/Armorsmith.png', '铸甲师', '随从', '战士', '稀有', '专家级', '', 2, 1, 4, '每当一个友方随从受到伤害，便获得1点护甲值。', 20, 100, '', ''),
('mage/Mirror%20Image.png', '镜像', '法术', '法师', '基本', '基本级', '', 1, 0, 0, '召唤两个0/2，并具有嘲讽的随从。', 0, 0, 'call(''召唤镜像'');call(''召唤镜像'')', ''),
('mage/Mirror+Entity.png', '镜像实体', '法术', '法师', '普通', '专家级', '', 3, 0, 0, '奥秘：当你的对手打出一张随从牌，召唤一个该随从的复制。', 5, 40, '', ''),
('hunter/Savannah+Highmane.png', '长鬃草原狮', '随从', '猎人', '稀有', '专家级', '野兽', 6, 6, 5, '亡语：召唤两个2/2的土狼。', 20, 100, '', ''),
('shaman/Lightning+Bolt.png', '闪电箭', '法术', '萨满', '普通', '专家级', '', 1, 0, 0, '造成3点伤害，过载：（1）', 5, 40, '', ''),
('shaman/Lightning+Storm.png', '闪电风暴', '法术', '萨满', '稀有', '专家级', '', 3, 0, 0, '对所有敌方随从造成2到3点伤害，过载：（2）', 20, 100, '', ''),
('neutral/Goldshire+Footman.png', '闪金镇步兵', '随从', '中立', '基本', '基本级', '', 1, 1, 2, '嘲讽', 0, 0, 'taunt($this)', ''),
('rogue/Sap.png', '闷棍', '法术', '潜行者', '基本', '基本级', '', 2, 0, 0, '将一个敌方随从移回你的对手的手牌。', 0, 0, 'returnback($target)', 'choice(enemyminions)'),
('neutral/Defender+of+Argus.png', '阿古斯防御者', '随从', '中立', '稀有', '专家级', '', 4, 2, 3, '战吼：使相邻的随从获得+1/+1和嘲讽。', 100, 100, '', ''),
('warrior/Arathi+Weaponsmith.png', '阿拉希武器匠', '随从', '战士', '普通', '专家级', '', 4, 3, 3, '战吼：装备一把2/2的武器。', 5, 40, '', ''),
('neutral/Amani+Berserker.png', '阿曼尼狂战士', '随从', '中立', '普通', '专家级', '', 2, 2, 3, '激怒：+3攻击力', 5, 40, '', ''),
('neutral/Alexstrasza.png', '阿莱克丝塔萨', '随从', '中立', '传说', '专家级', '龙', 9, 8, 8, '战吼：使一个英雄的剩余生命值成为15。', 400, 1600, '', ''),
('rogue/Conceal.png', '隐藏', '法术', '潜行者', '普通', '专家级', '', 1, 0, 0, '直到你的下个回合，使所有友方随从获得潜行。', 5, 40, '', ''),
('hunter/Animal+Companion.png', '雷欧克', '随从', '猎人', '基本', '附属级', '野兽', 0, 2, 4, '你的其他友方随从增加1点攻击力', 0, 0, 'initeventminioncreateevent({addattack(filter(selfminions,$$!=$this),1)})', ''),
('neutral/Stormpike+Commando.png', '雷矛特种兵', '随从', '中立', '基本', '基本级', '', 5, 4, 2, '战吼：造成2点伤害。', 0, 0, 'damage($target,2)', 'choice(selfminions,enemyminions,enemyhero,selfhero)'),
('shaman/Stormforged+Axe.png', '雷铸战斧', '武器', '萨满', '普通', '专家级', '', 2, 2, 3, '过载：（1）', 5, 40, '', ''),
('hunter/Animal+Companion.png', '霍弗', '随从', '猎人', '基本', '附属级', '野兽', 0, 4, 2, '冲锋', 0, 0, 'rush($this)', ''),
('neutral/Hogger.png', '霍格', '随从', '中立', '传说', '专家级', '', 6, 4, 4, '在你的回合结束时，召唤一个2/2并具有嘲讽的豺狼人。', 400, 1600, '', ''),
('neutral/Frostwolf+Grunt.png', '霜狼步兵', '随从', '中立', '基本', '基本级', '', 2, 2, 2, '嘲讽', 0, 0, 'taunt($this)', ''),
('neutral/Frostwolf+Warlord.png', '霜狼督军', '随从', '中立', '基本', '基本级', '', 5, 4, 4, '战吼：战场上每有1个其他友方随从，便获得+1/+1。', 0, 0, 'attackadd($this,count(selfminions));lifeadd($this,count(selfminions))', ''),
('warrior/Cleave.png', '顺劈斩', '法术', '战士', '基本', '基本级', '', 2, 0, 0, '对2个随机敌方随从造成2点伤害。', 0, 0, 'damage(random2(enemyminions),2+$extra)', 'doublechoice(enemyminions)'),
('shaman/Windfury.png', '风怒', '法术', '萨满', '基本', '基本级', '', 2, 0, 0, '使一个随从获得风怒。', 0, 0, 'windrage($target)', 'choice(selfminions,enemyminions)'),
('neutral/Windfury+Harpy.png', '风怒鹰身人', '随从', '中立', '普通', '专家级', '', 6, 4, 5, '风怒', 5, 40, '', ''),
('shaman/Windspeaker.png', '风语者', '随从', '萨满', '基本', '基本级', '', 4, 3, 3, '战吼：使一个友方随从获得风怒。', 0, 0, 'windrage($target)', 'choiceornone(selfminions)'),
('neutral/Venture+COMercenary.png', '风险投资公司雇佣兵', '随从', '中立', '普通', '专家级', '', 5, 7, 6, '你的随从牌的法力值消耗增加（3）点。', 5, 40, '', ''),
('shaman/Al%27Akir+the+Windlord.png', '风领主奥拉基尔', '随从', '萨满', '传说', '专家级', '', 8, 3, 5, '风怒，冲锋，圣盾，嘲讽', 400, 1600, '', ''),
('neutral/Knife+Juggler.png', '飞刀杂耍者', '随从', '中立', '稀有', '专家级', '', 2, 3, 2, '每当你召唤一个随从时，对一个随机敌方角色造成1点伤害。', 20, 100, '', ''),
('neutral/Ogre+Magi.png', '食人魔法师', '随从', '中立', '基本', '基本级', '', 4, 4, 4, '法术伤害+1', 0, 0, 'initeventcardevent({addattack(magiccards,1)})', ''),
('hunter/Scavenging+Hyena.png', '食腐土狼', '随从', '猎人', '普通', '专家级', '野兽', 2, 2, 2, '每当一个友方野兽死亡时，便获得+2/+1。', 5, 40, '', ''),
('hunter/Starving+Buzzard.png', '饥饿的秃鹫', '随从', '猎人', '基本', '基本级', '野兽', 2, 2, 1, '每当你召唤一个野兽，抽一张牌。', 0, 0, 'minioncreateevent({if($eventsource.race==''野兽''){takecard(1)}})', ''),
('hunter/Houndmaster.png', '驯兽师', '随从', '猎人', '基本', '基本级', '', 4, 4, 3, '战吼：使一个友方野兽获得+2/+2并获得嘲讽。', 0, 0, 'if($target!=none){attackadd($target,2);lifeadd($target,2);taunt($target)}', 'choiceornone(filter(selfminions,$$.race==''野兽''))'),
('warlock/Succubus.png', '魅魔', '随从', '术士', '基本', '基本级', '恶魔', 2, 4, 3, '战吼：随机弃一张牌。', 0, 0, 'dropcard(1)', ''),
('neutral/Mogu%27shan+Warden.png', '魔古山守望者', '随从', '中立', '普通', '专家级', '', 4, 1, 7, '嘲讽', 5, 40, '', ''),
('mage/Arcane+Explosion.png', '魔爆术', '法术', '法师', '基本', '基本级', '', 2, 0, 0, '对所有敌方随从造成1点伤害。', 0, 0, 'damage(enemyminions,1+$extra)', ''),
('neutral/Mana+Addict.png', '魔瘾者', '随从', '中立', '稀有', '专家级', '', 2, 1, 3, '在本回合中，每当你施放一个法术，便获得+2攻击力。', 20, 100, '', ''),
('hunter/Animal+Companion.png', '鱼人1', '随从', '中立', '基本', '附属级', '鱼人', 0, 1, 1, '', 0, 0, '', ''),
('neutral/Murloc+Tidecaller.png', '鱼人招潮者', '随从', '中立', '稀有', '专家级', '鱼人', 1, 1, 2, '每当有玩家召唤一个鱼人时，便获得+1攻击力。', 20, 100, '', ''),
('neutral/Hungry+Crab.png', '鱼人杀手蟹', '随从', '中立', '史诗', '专家级', '野兽', 1, 1, 2, '战吼：消灭一个鱼人，并获得+2/+2。', 100, 400, '', ''),
('neutral/Murloc+Tidehunter.png', '鱼人猎潮者', '随从', '中立', '基本', '基本级', '鱼人', 2, 2, 1, '战吼：召唤一个1/1的鱼人斥候。', 0, 0, 'call(''鱼人1'')', ''),
('neutral/Murloc+Raider.png', '鱼人袭击者', '随从', '中立', '基本', '基本级', '鱼人', 1, 2, 1, '', 0, 0, '', ''),
('neutral/Murloc+Warleader.png', '鱼人领军', '随从', '中立', '史诗', '专家级', '鱼人', 3, 3, 3, '所有其他鱼人获得+2/+1。', 100, 400, '', ''),
('neutral/Reckless+Rocketeer.png', '鲁莽火箭兵', '随从', '中立', '基本', '基本级', '', 6, 5, 2, '冲锋', 0, 0, 'rush($this)', ''),
('warlock/Blood+Imp.png', '鲜血小鬼', '随从', '术士', '普通', '专家级', '恶魔', 1, 0, 1, '潜行，在你的回合结束时，随机使一个其他友方随从获得+1生命值。', 40, 40, '', ''),
('hunter/Eaglehorn+Bow.png', '鹰角弓', '武器', '猎人', '稀有', '专家级', '', 3, 3, 2, '每当有一张奥秘牌被揭示时，便获得+1耐久度。', 20, 100, '', ''),
('neutral/Harvest+Golem.png', '麦田傀儡', '随从', '中立', '普通', '专家级', '', 3, 2, 3, '亡语：召唤一个2/1的损坏的傀儡。', 5, 40, '', ''),
('neutral/Leper+Gnome.png', '麻疯侏儒', '随从', '中立', '普通', '专家级', '', 1, 2, 1, '亡语：对敌方英雄造成2点伤害。', 5, 40, '', ''),
('neutral/Dark+Iron+Dwarf.png', '黑铁矮人', '随从', '中立', '普通', '专家级', '', 4, 4, 4, '战吼：本回合中，使一个随从获得+2攻击力。', 40, 40, '', ''),
('neutral/The+Black+Knight.png', '黑骑士', '随从', '中立', '传说', '专家级', '', 6, 4, 5, '战吼：消灭一个具有嘲讽的随从。', 400, 1600, '', '');

-- --------------------------------------------------------

--
-- 表的结构 `effects`
--

CREATE TABLE IF NOT EXISTS `effects` (
  `name` varchar(50) NOT NULL,
  `type` varchar(50) NOT NULL,
  `choicetype` varchar(50) NOT NULL,
  `effectset` varchar(500) NOT NULL,
  `count` int(11) NOT NULL,
  `target` varchar(100) NOT NULL,
  `targetype` varchar(20) NOT NULL,
  `minminioncount` int(11) NOT NULL,
  `holdtime` varchar(20) NOT NULL,
  PRIMARY KEY (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `effects`
--

INSERT INTO `effects` (`name`, `type`, `choicetype`, `effectset`, `count`, `target`, `targetype`, `minminioncount`, `holdtime`) VALUES
('全副武装', 'guardadd', '', '', 2, 'selfhero', '', 0, 'forever'),
('变形术加护甲', 'guardadd', '', '', 1, 'selfhero', '', 0, 'temp'),
('变形术加攻击', 'attackadd', '', '', 1, 'selfhero', '', 0, 'temp'),
('召唤图腾', 'choice', 'rand', '召唤图腾1_召唤图腾2_召唤图腾3', 0, '', '', 0, ''),
('嘲讽', 'taunt', '', '', 0, 'self', '', 0, ''),
('德鲁伊变形术', 'union', '', '变形术加攻击_变形术加护甲', 0, '', '', 0, ''),
('抽牌1', 'draw', '', '', 1, '', '', 0, ''),
('次级治疗术', 'cure', 'user', '', 2, 'selfhero_selfminion_enemyminion_enemyhero', 'user', 0, ''),
('法术伤害+1', 'magicdamage', '', '', 1, '', '', 0, ''),
('火焰冲击', 'damage', 'user', '', 1, 'selfminion_enemyminion_enemyhero', 'user', 0, ''),
('生命分流', 'union', '', '抽牌1_自我伤害2', 0, '', '', 0, ''),
('稳固射击', 'damage', '', '', 2, 'enemyhero', '', 0, ''),
('自我伤害2', 'damage', '', '', 2, 'selfhero', '', 0, '');

-- --------------------------------------------------------

--
-- 表的结构 `events`
--

CREATE TABLE IF NOT EXISTS `events` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `gid` varchar(50) NOT NULL,
  `uid` varchar(50) NOT NULL,
  `name` varchar(20) NOT NULL,
  `eventsource` varchar(50) NOT NULL,
  `eventtarget` varchar(50) NOT NULL,
  `thisvalue` varchar(50) NOT NULL,
  `target` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2646 ;

--
-- 转存表中的数据 `events`
--


-- --------------------------------------------------------

--
-- 表的结构 `gamecards`
--

CREATE TABLE IF NOT EXISTS `gamecards` (
  `dbid` int(11) NOT NULL AUTO_INCREMENT,
  `id` varchar(50) NOT NULL,
  `gid` varchar(20) NOT NULL,
  `uid` varchar(50) NOT NULL,
  `cardname` varchar(50) NOT NULL,
  `type` varchar(10) NOT NULL,
  `state` varchar(1000) NOT NULL,
  PRIMARY KEY (`dbid`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=511 ;

--
-- 转存表中的数据 `gamecards`
--

INSERT INTO `gamecards` (`dbid`, `id`, `gid`, `uid`, `cardname`, `type`, `state`) VALUES
(451, 'g1', '1410869099921', 'g61', '圣光的正义', 'trash', ''),
(452, 'g2', '1410869099921', 'g61', '列王守卫', 'hand', ''),
(453, 'g3', '1410869099921', 'g61', '保护之手', 'trash', ''),
(454, 'g4', '1410869099921', 'g61', '冰风雪人', 'trash', ''),
(455, 'g5', '1410869099921', 'g61', '侏儒发明家', 'pack', ''),
(456, 'g6', '1410869099921', 'g61', '铁鬃灰熊', 'pack', ''),
(457, 'g7', '1410869099921', 'g61', '力量祝福', 'pack', ''),
(458, 'g8', '1410869099921', 'g61', '古拉巴什狂暴者', 'pack', ''),
(459, 'g9', '1410869099921', 'g61', '银背族长', 'pack', ''),
(460, 'g10', '1410869099921', 'g61', '真银圣剑', 'pack', ''),
(461, 'g11', '1410869099921', 'g61', '巫医', 'pack', ''),
(462, 'g12', '1410869099921', 'g61', '圣光护卫者', 'pack', ''),
(463, 'g13', '1410869099921', 'g61', '圣光术', 'pack', ''),
(464, 'g14', '1410869099921', 'g61', '机械幼龙技工', 'pack', ''),
(465, 'g15', '1410869099921', 'g61', '大法师', 'pack', ''),
(466, 'g16', '1410869099921', 'g61', '达拉然法师', 'pack', ''),
(467, 'g17', '1410869099921', 'g61', '夜刃刺客', 'pack', ''),
(468, 'g18', '1410869099921', 'g61', '工程师学徒', 'pack', ''),
(469, 'g19', '1410869099921', 'g61', '精灵弓箭手', 'pack', ''),
(470, 'g20', '1410869099921', 'g61', '鲁莽火箭兵', 'pack', ''),
(471, 'g21', '1410869099921', 'g61', '暗鳞先知', 'pack', ''),
(472, 'g22', '1410869099921', 'g61', '暗鳞治愈者', 'pack', ''),
(473, 'g23', '1410869099921', 'g61', '暴风城勇士', 'pack', ''),
(474, 'g24', '1410869099921', 'g61', '雷矛特种兵', 'pack', ''),
(475, 'g25', '1410869099921', 'g61', '食人魔法师', 'pack', ''),
(476, 'g26', '1410869099921', 'g61', '霜狼督军', 'pack', ''),
(477, 'g27', '1410869099921', 'g61', '淡水鳄', 'pack', ''),
(478, 'g28', '1410869099921', 'g61', '熔火恶犬', 'pack', ''),
(479, 'g29', '1410869099921', 'g61', '狗头人地卜师', 'pack', ''),
(480, 'g30', '1410869099921', 'g61', '狼骑兵', 'pack', ''),
(481, 'g31', '1410869099921', 'g62', '狼骑兵', 'hand', ''),
(482, 'g32', '1410869099921', 'g62', '侏儒发明家', 'hand', ''),
(483, 'g33', '1410869099921', 'g62', '愤怒之锤', 'hand', ''),
(484, 'g34', '1410869099921', 'g62', '蓝腮战士', 'hand', ''),
(485, 'g35', '1410869099921', 'g62', '列王守卫', 'hand', ''),
(486, 'g36', '1410869099921', 'g62', '剃刀猎手', 'pack', ''),
(487, 'g37', '1410869099921', 'g62', '狗头人地卜师', 'pack', ''),
(488, 'g38', '1410869099921', 'g62', '熔火恶犬', 'pack', ''),
(489, 'g39', '1410869099921', 'g62', '谦逊', 'pack', ''),
(490, 'g40', '1410869099921', 'g62', '团队领袖', 'pack', ''),
(491, 'g41', '1410869099921', 'g62', '圣光护卫者', 'pack', ''),
(492, 'g42', '1410869099921', 'g62', '圣光术', 'pack', ''),
(493, 'g43', '1410869099921', 'g62', '破碎残阳祭司', 'pack', ''),
(494, 'g44', '1410869099921', 'g62', '力量祝福', 'pack', ''),
(495, 'g45', '1410869099921', 'g62', '石拳食人魔', 'pack', ''),
(496, 'g46', '1410869099921', 'g62', '奉献', 'pack', ''),
(497, 'g47', '1410869099921', 'g62', '冰风雪人', 'pack', ''),
(498, 'g48', '1410869099921', 'g62', '叫嚣的中士', 'pack', ''),
(499, 'g49', '1410869099921', 'g62', '保护之手', 'pack', ''),
(500, 'g50', '1410869099921', 'g62', '鲁莽火箭兵', 'pack', ''),
(501, 'g51', '1410869099921', 'g62', '暗鳞先知', 'pack', ''),
(502, 'g52', '1410869099921', 'g62', '工程师学徒', 'pack', ''),
(503, 'g53', '1410869099921', 'g62', '达拉然法师', 'pack', ''),
(504, 'g54', '1410869099921', 'g62', '暴风城骑士', 'pack', ''),
(505, 'g55', '1410869099921', 'g62', '石牙野猪', 'pack', ''),
(506, 'g56', '1410869099921', 'g62', '森金持盾卫士', 'pack', ''),
(507, 'g57', '1410869099921', 'g62', '淡水鳄', 'pack', ''),
(508, 'g58', '1410869099921', 'g62', '绿洲钳嘴龟', 'pack', ''),
(509, 'g59', '1410869099921', 'g62', '作战傀儡', 'pack', ''),
(510, 'g60', '1410869099921', 'g62', '鱼人猎潮者', 'pack', '');

-- --------------------------------------------------------

--
-- 表的结构 `games`
--

CREATE TABLE IF NOT EXISTS `games` (
  `id` varchar(20) NOT NULL,
  `winmoney` int(11) NOT NULL,
  `turn` int(11) NOT NULL,
  `round` int(11) NOT NULL DEFAULT '70',
  `trashcards` varchar(3000) NOT NULL DEFAULT '',
  `username1` varchar(50) NOT NULL,
  `uid1` varchar(50) NOT NULL,
  `job1` varchar(50) NOT NULL,
  `power1` int(11) NOT NULL DEFAULT '0',
  `maxpower1` int(11) NOT NULL DEFAULT '0',
  `username2` varchar(50) NOT NULL,
  `uid2` varchar(50) NOT NULL,
  `job2` varchar(50) NOT NULL,
  `power2` int(11) NOT NULL DEFAULT '0',
  `maxpower2` int(11) NOT NULL DEFAULT '0',
  `end1` int(11) NOT NULL DEFAULT '0',
  `end2` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `games`
--

INSERT INTO `games` (`id`, `winmoney`, `turn`, `round`, `trashcards`, `username1`, `uid1`, `job1`, `power1`, `maxpower1`, `username2`, `uid2`, `job2`, `power2`, `maxpower2`, `end1`, `end2`) VALUES
('1410869099921', 20, 1, 71, '', 'wangyi', 'g61', '圣骑士', -5, 1, 'wangyi2', 'g62', '圣骑士', 1, 1, 0, 0);

-- --------------------------------------------------------

--
-- 表的结构 `hero`
--

CREATE TABLE IF NOT EXISTS `hero` (
  `job` varchar(50) NOT NULL,
  `name` varchar(50) NOT NULL,
  `blood` int(11) NOT NULL,
  `cost` int(11) NOT NULL,
  `skillname` varchar(50) NOT NULL,
  `skillremark` varchar(100) NOT NULL,
  PRIMARY KEY (`job`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `hero`
--

INSERT INTO `hero` (`job`, `name`, `blood`, `cost`, `skillname`, `skillremark`) VALUES
('圣骑士', '乌瑟尔?光明使者', 30, 2, '白银新兵', '召唤一个1/1的白银之手新兵'),
('德鲁伊', '玛法里奥?怒风', 30, 2, '德鲁伊变形术', '本回合+1攻击力，+1护甲值'),
('战士', '加尔鲁什?地狱咆哮', 30, 2, '全副武装', '获得2点护甲值 '),
('术士', '古尔丹', 30, 2, '生命分流', '抽一张牌并受到2点伤害'),
('法师', '吉安娜?普罗德摩尔', 30, 2, '火焰冲击', '造出1点伤害'),
('潜行者', '瓦莉拉?萨古纳尔', 30, 2, '匕首精通', '装备一把1/2的匕首'),
('牧师', '安杜因?乌瑞恩', 30, 2, '次级治疗术', '恢复2点生命值'),
('猎人', '雷克萨', 30, 2, '稳固射击', '对敌方英雄造成2点伤害 '),
('萨满', '萨尔', 30, 2, '召唤图腾', '随机召唤一个图腾');

-- --------------------------------------------------------

--
-- 表的结构 `herominion`
--

CREATE TABLE IF NOT EXISTS `herominion` (
  `dbid` int(11) NOT NULL AUTO_INCREMENT,
  `id` varchar(50) NOT NULL,
  `gid` varchar(20) NOT NULL,
  `job` varchar(50) NOT NULL,
  `attack` int(11) NOT NULL,
  `blood` int(11) NOT NULL,
  `guard` int(11) NOT NULL,
  `state` varchar(1000) NOT NULL,
  PRIMARY KEY (`dbid`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=16 ;

--
-- 转存表中的数据 `herominion`
--

INSERT INTO `herominion` (`dbid`, `id`, `gid`, `job`, `attack`, `blood`, `guard`, `state`) VALUES
(14, 'g61', '1410869099921', '圣骑士', 0, 30, 0, 'attackcount:0'),
(15, 'g62', '1410869099921', '圣骑士', 0, 29, 0, 'attackcount:1');

-- --------------------------------------------------------

--
-- 表的结构 `listeners`
--

CREATE TABLE IF NOT EXISTS `listeners` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `gid` varchar(20) NOT NULL,
  `uid` varchar(50) NOT NULL,
  `eventid` int(11) NOT NULL,
  `removeeventids` varchar(100) NOT NULL,
  `effectcode` varchar(300) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=863 ;

--
-- 转存表中的数据 `listeners`
--


-- --------------------------------------------------------

--
-- 表的结构 `minion`
--

CREATE TABLE IF NOT EXISTS `minion` (
  `dbid` int(11) NOT NULL AUTO_INCREMENT,
  `id` varchar(50) NOT NULL,
  `gid` varchar(20) NOT NULL,
  `uid` varchar(50) NOT NULL,
  `cardname` varchar(50) NOT NULL,
  `imageid` varchar(50) NOT NULL,
  `race` varchar(50) NOT NULL,
  `attack` int(11) NOT NULL,
  `blood` int(11) NOT NULL,
  `maxblood` int(11) NOT NULL,
  `state` varchar(1000) NOT NULL,
  `outstate` varchar(1000) NOT NULL,
  `indexcount` int(11) NOT NULL,
  PRIMARY KEY (`dbid`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=1214 ;

--
-- 转存表中的数据 `minion`
--

INSERT INTO `minion` (`dbid`, `id`, `gid`, `uid`, `cardname`, `imageid`, `race`, `attack`, `blood`, `maxblood`, `state`, `outstate`, `indexcount`) VALUES
(1213, 'g140', '1410869099921', 'g61', '冰风雪人', 'neutral/Chillwind+Yeti.png', '', 4, 5, 5, 'attackable:true,attackcount:1,action:init,shield:true', '', 0);

-- --------------------------------------------------------

--
-- 表的结构 `packs`
--

CREATE TABLE IF NOT EXISTS `packs` (
  `name` varchar(50) NOT NULL,
  `cards` varchar(1500) NOT NULL,
  `job` varchar(50) NOT NULL,
  PRIMARY KEY (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `packs`
--

INSERT INTO `packs` (`name`, `cards`, `job`) VALUES
('萨满1', '尘魔__尘魔__闪电箭__闪电箭__冰霜震击__冰霜震击__叉状闪电__叉状闪电__大地震击__大地震击__石化武器__石化武器__风怒__风怒__先祖之魂__先祖之魂__火舌图腾__火舌图腾__雷铸战斧__雷铸战斧__妖术__妖术__视界术__视界术__无羁元素__无羁元素__火元素__火元素__毁灭之锤__毁灭之锤', '萨满');

-- --------------------------------------------------------

--
-- 表的结构 `users`
--

CREATE TABLE IF NOT EXISTS `users` (
  `username` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `money` int(11) NOT NULL DEFAULT '0',
  `dust` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `users`
--

INSERT INTO `users` (`username`, `password`, `money`, `dust`) VALUES
('aaaa', 'aa', 1, 0),
('aaaaa', 'aa', 0, 0),
('aaaaaa', 'aa', 0, 0),
('aaaaaaa', 'aa', 0, 0),
('wangyi', 'wangyi', 5, 0),
('wangyi2', 'wangyi2', 0, 0);

-- --------------------------------------------------------

--
-- 表的结构 `weapon`
--

CREATE TABLE IF NOT EXISTS `weapon` (
  `dbid` int(11) NOT NULL AUTO_INCREMENT,
  `id` varchar(50) NOT NULL,
  `gid` varchar(20) NOT NULL,
  `uid` varchar(50) NOT NULL,
  `attack` int(11) NOT NULL,
  `blood` int(11) NOT NULL,
  `state` varchar(1000) NOT NULL,
  PRIMARY KEY (`dbid`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=14 ;

--
-- 转存表中的数据 `weapon`
--

INSERT INTO `weapon` (`dbid`, `id`, `gid`, `uid`, `attack`, `blood`, `state`) VALUES
(12, 'g63', '1410869099921', 'g61', 1, 3, ''),
(13, 'g64', '1410869099921', 'g62', 0, 0, '');
