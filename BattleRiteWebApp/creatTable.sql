DROP TABLE Champion;
DROP TABLE Skill;
DROP TABLE BattleRite;

CREATE TABLE Champion(
	ChampionName 	VARCHAR (50) PRIMARY KEY,
	ChampionBio		VARCHAR (2500),
	Image			VARCHAR (200) 
);

CREATE TABLE Skill(
	SkillName 		VARCHAR (50) PRIMARY KEY,
	ChampionName 	VARCHAR (50),
	Keybinding 		VARCHAR (5),
	Description 	VARCHAR (500),
	EneryGain		INTEGER (2),
	Cooldown		DECIMAL (4,2),
	EnergyCost		INTEGER (2),
	CastTime		DECIMAL (4,2),
	SkillType 		VARCHAR (25),
	Image			VARCHAR (200)  
);

CREATE TABLE BattleRite(
	BattleRiteName 	VARCHAR (50) PRIMARY KEY,
	ChampionName 	VARCHAR (50),
	Description 	VARCHAR (500),
	BattleRiteType 	VARCHAR (25),
	Image			VARCHAR (200) 
);

INSERT INTO Champion (ChampionName, ChampionBio, Image)
VALUES ('Alysia' , 'From the frozen north comes the ice sculptor Alysia. Her power allows her to wield ice with both grace and deadly precision. She can damage and freeze her enemies from a distance, while shielding her allies with ice. Obsessed with shapes and form, she left her icy fortress of solitude to seek inspiration in the arena.', 'https://d1u5p3l4wpay3k.cloudfront.net/battlerite_gamepedia_en/6/6d/Alysia_Portrait.png?version=b6bb7d024dbd986a3971b789c9a4f70d');

INSERT INTO Champion (ChampionName, ChampionBio, Image)
VALUES('Ashka','A masked creature specialized in dark sorcery and pyro-kinetic powers. Casting devastating fire spells on his opponents, staying away from close combat. Don’t be fooled by his size, Ashka’s inner demon strikes fear into all who face him.','https://d1u5p3l4wpay3k.cloudfront.net/battlerite_gamepedia_en/3/33/Ashka_Portrait.png?version=62a459f3d2fd2ae884aa75c65db2308b');

INSERT INTO Champion (ChampionName, ChampionBio, Image)
VALUES('Destiny','An elite sky ranger from the secluded, invisible city of Enza. Many years of rigorous combat training using Magi-tech weaponry makes Destiny an agile and deadly force to be reckoned with. Fed up with the strict regulations of living in Enza, Destiny often escapes the city to blow off some steam and have fun in the arena.','https://d1u5p3l4wpay3k.cloudfront.net/battlerite_gamepedia_en/e/ec/Destiny_Portrait.png?version=7798095975b403aca28eaef05988ea63');

INSERT INTO Champion (ChampionName, ChampionBio, Image)
VALUES('Ezmo','Ezmo was once imprisoned by the warlock, Aradu The Reserved, but managed to escape when his captor was too engrossed in reading his tome. Ezmo sealed Aradu\'s soul within the book, creating the Lost Soul Grimoire, and has carried it ever since. When he isn\'t playing tricks on people, Ezmo is searching for a way back to his home dimension.','https://d1u5p3l4wpay3k.cloudfront.net/battlerite_gamepedia_en/6/64/Ezmo_Portrait.png?version=aaaa0257e50ab288ea20084079ee1a5d');

INSERT INTO Champion (ChampionName, ChampionBio, Image)
VALUES('Iva','A scavenger from the outer realms. Iva has engineered her own arsenal of weapons. Firing crazy rockets or unleashing a storm of bullets is her way of greeting her opponents in the Arena.','https://d1u5p3l4wpay3k.cloudfront.net/battlerite_gamepedia_en/d/dc/Iva_Portrait.png?version=acd00a76b53208366cf7dfd714e37bb3');

INSERT INTO Champion (ChampionName, ChampionBio, Image)
VALUES('Jade','A mysterious gunslinger with a score to settle. Born with eagle-eyes and armed with a lethal sniper rifle, Jade’s pinpoint accuracy is a serious threat for anyone who enters the arena. For close encounters she prefers a good old combination of stealth and homemade revolvers. The rumor says Jade joined the arena games to find the villain who killed her brother. Will she complete her dark quest of vengeance?','https://d1u5p3l4wpay3k.cloudfront.net/battlerite_gamepedia_en/7/7e/Jade_Portrait.png?version=93387fa0f2ba5084eceafc80b25b9a1a');

INSERT INTO Champion (ChampionName, ChampionBio, Image)
VALUES('Jumong','Jumong is a trophy collector who has wandered the wildlands in the pursuit of a worthy challenge. No longer content with hunting the great beasts of the world, has led him to enter the arena looking for a new type of prey. He traps his foes and ends them with a well placed shot from his mighty bow.','https://d1u5p3l4wpay3k.cloudfront.net/battlerite_gamepedia_en/7/74/Jumong_Portrait.png?version=2757dbb8e54b8a60abe8b9be70bf19d6');

INSERT INTO Champion (ChampionName, ChampionBio, Image)
VALUES('Taya','An exceptionally swift hunter wielding a razor sharp boomerang. By shaping the wind around her taya is able to increase her speed and control her boomerang with deadly precision.','https://d1u5p3l4wpay3k.cloudfront.net/battlerite_gamepedia_en/2/26/Taya_Portrait.png?version=ae2a6a6b3f0e4666428c12ad5dcbbbe8');

INSERT INTO Champion (ChampionName, ChampionBio, Image)
VALUES('Varesh','A being formed by the energies of others. Varesh uses his power to weaken and disrupt his enemies. By combining his powers he is able to unleash devastating attacks.','https://d1u5p3l4wpay3k.cloudfront.net/battlerite_gamepedia_en/2/20/Varesh_Portrait.png?version=f64ad2b5a1ce4864095cfb6e110dba13');

INSERT INTO Champion (ChampionName, ChampionBio, Image)
VALUES('Bakko','Bakko has a proud history, filled with bravery and courage. Most known for saving hundreds of people from getting slaughtered by the giants in the north. A heroic brawler armed with axe and shield. Bakko uses his shield to outmaneuver opponents and protect his teammates. Watch out for his earth shattering dash attacks, even calm warriors sometimes go berserk.','https://d1u5p3l4wpay3k.cloudfront.net/battlerite_gamepedia_en/1/1d/Bakko_Portrait.png?version=43b8d9770e5a80d5682afe71da2dccc9');

INSERT INTO Champion (ChampionName, ChampionBio, Image)
VALUES('Croak','His background is shrouded in mystery, his movements are supernatural and his reputation is whispered about. Croak loves to surprise his enemies, using his mobility to move in and out. His chameleonic stealth and flexible fighting style makes him exceptionally hard to catch.','https://d1u5p3l4wpay3k.cloudfront.net/battlerite_gamepedia_en/f/f0/Croak_Portrait.png?version=f65088ecd98f1a9a0deaf19f001bfdc8');

INSERT INTO Champion (ChampionName, ChampionBio, Image)
VALUES('Freya','Once a tribe queen, now a fearless contender. Her titanic hammers and overwhelming power of lighting is the perfect recipe for destruction, slowing down her foes with thundering spells to catch them off guard.','https://d1u5p3l4wpay3k.cloudfront.net/battlerite_gamepedia_en/f/fb/Freya_Portrait.png?version=6c83bc4003ee2619e008910ef59ddb45');

INSERT INTO Champion (ChampionName, ChampionBio, Image)
VALUES('Raigon','Raigon is the former crown prince of Quna. He was a well-respected figure among the kingdom’s warriors, until he was exiled due to the manipulations of Pestilus. For now, the arena serves as a decent place to find work and set the wheels in motion for his retaliation.','https://d1u5p3l4wpay3k.cloudfront.net/battlerite_gamepedia_en/c/c1/Raigon_Portrait.png?version=4900ed554d90d7baf8dd4f225eeb15b6');

INSERT INTO Champion (ChampionName, ChampionBio, Image)
VALUES('Rook','A mighty chieftain rushing into battle with a giant hammer in one hand and his dinner in the other. Rook likes to smash his enemies, with boulders, with hammers and even with his body. Once he goes berserk he turns into an unstoppable force.','https://d1u5p3l4wpay3k.cloudfront.net/battlerite_gamepedia_en/3/3a/Rook_Portrait.png?version=7d28c0f2cbf4c61336c4cf948c0c513c');

INSERT INTO Champion (ChampionName, ChampionBio, Image)
VALUES('Ruh Kaan','Ruh Kaan was awoken when a grave robber desecrated the sacred crypts Ark\'Dun. Pursuing the trespasser led him to the Arenas where he is still tracking his quarry. He wields his dark powers to remove those who would stand in his way, taking great pleasure in consuming their souls.','https://d1u5p3l4wpay3k.cloudfront.net/battlerite_gamepedia_en/e/e5/Ruh_Kaan_Portrait.png?version=668fd61abc58eb504d63f5c2b0738450');

INSERT INTO Champion (ChampionName, ChampionBio, Image)
VALUES('Shifu','Expert in the martial art of Ni’Shu and master of the spear. A highly mobile and dangerous duelist, his extraordinary combat prowess culminates in a range of deadly melee attacks. Trained to hunt down his opponents and move like the wind, facing Shifu is like walking into a tornado of spearheads.','https://d1u5p3l4wpay3k.cloudfront.net/battlerite_gamepedia_en/d/d9/Shifu_Portrait.png?version=859dc047a922dd684eb5f87933095706');

INSERT INTO Champion (ChampionName, ChampionBio, Image)
VALUES('Thorn','Ancient folklore speaks of Thorn, the destructive apparition. Using its network of thorn-covered roots, it would whip, rupture and drain the life out of any living thing indiscriminately. Some say Thorn is just a story to keep kids out of the forests at night, others say it is an old lie used as a cover-up for misdeeds. Thorn’s presence in the Arena is both a mystery, and a very bad omen.','https://d1u5p3l4wpay3k.cloudfront.net/battlerite_gamepedia_en/7/75/Thorn_Portrait.png?version=2be79aed0c2493a3b403d83cedddcdad');

INSERT INTO Champion (ChampionName, ChampionBio, Image)
VALUES('Blossom','Blossom is a happy, bubbly young faun from the Silverdeep Forest. She has left her home to investigate a disturbance in the natural order. She is always accompanied by her bird companion, Maxwell.','https://d1u5p3l4wpay3k.cloudfront.net/battlerite_gamepedia_en/9/94/Blossom_Portrait.png?version=ffa468b2d5f767426a8ecc2128366599');

INSERT INTO Champion (ChampionName, ChampionBio, Image)
VALUES('Lucie','Lucie is a highly skilled Alchemist. A rebel at school who got expelled from the Toleen Academy for mixing banned potions. She is a diverse contender who knows which brew makes you choke, heal or flee in fear. The arena has become her new playground for wild experiments. Seeing her smile while mixing ingredients of an unknown nature might make her look more crazy than cute.','https://d1u5p3l4wpay3k.cloudfront.net/battlerite_gamepedia_en/8/8e/Lucie_Portrait.png?version=ef83c8df786ba91ba76fd067b7172b8a');

INSERT INTO Champion (ChampionName, ChampionBio, Image)
VALUES('Oldur','Oldur is a mysterious creature able to bend time and space. He can mend wounds with powerful heals and reverse enemy attacks by freezing them in time.','https://d1u5p3l4wpay3k.cloudfront.net/battlerite_gamepedia_en/0/0e/Oldur_Portrait.png?version=18d9fa00dd359be1001a9ad91d347348');

INSERT INTO Champion (ChampionName, ChampionBio, Image)
VALUES('Pearl','Pearl is a sage able to control the oceans and whatever creatures that lurk below. Pearl transforms water into volatile attacks, rejuvenating streams and protecting bubbles.','https://d1u5p3l4wpay3k.cloudfront.net/battlerite_gamepedia_en/0/05/Pearl_Portrait.png?version=3a6fa7a029c11ca7282c699a9383bec4');

INSERT INTO Champion (ChampionName, ChampionBio, Image)
VALUES('Pestilus','Pestilus is the head priest of Quna. He serves the Qunan royal family, but secretly worships an evil deity, Rasal. His schemes manipulated the king into exiling the crown prince. In the arena, Pestilus unleashes swarms of insects to infest and cripple his enemies, releasing his innermost darkest desires.','https://d1u5p3l4wpay3k.cloudfront.net/battlerite_gamepedia_en/f/f2/Pestilus_Portrait.png?version=2966517b8571c821014587a947b0c860');

INSERT INTO Champion (ChampionName, ChampionBio, Image)
VALUES('Poloma','A psychopomp from the deep forests of Silverridge, Poloma uses shamanic powers to guide life and spirits alongside her protector and loyal creature, Toki. A dark disturbance among souls has put Poloma on a new path, leaving her safety and home behind. Driven by her burning curiosity and extraordinary senses, Poloma now seeks her answers in the arena.','https://d1u5p3l4wpay3k.cloudfront.net/battlerite_gamepedia_en/6/64/Poloma_Portrait.png?version=88e987984f260248862e6362e0c1ed63');

INSERT INTO Champion (ChampionName, ChampionBio, Image)
VALUES('Sirius','Born under a purple sky and wrapped in the light of the brightest star, the prophecy was true and foretold the birth of the Zenith. Taken from his parents and sent to a monastery to learn the the way of the astronomers, Sirius is a calm prodigy who uses the energies of stars and planets as destructive spells and healing powers.','https://d1u5p3l4wpay3k.cloudfront.net/battlerite_gamepedia_en/4/42/Sirius_Portrait.png?version=264f29322ce6d86cb473341114ffb466');


INSERT INTO battlerite (BattleRiteName, ChampionName, Description, BattleRiteType, Image) VALUES ('Frozen Muse', 'Alysia', 'Whenever you inflict Freeze, your Frost Bolts are empowered for 3s. They deal 4 bonus damage and inflict Chill even on targets without Chill.', 'Control', 'https://d1u5p3l4wpay3k.cloudfront.net/battlerite_gamepedia_en/thumb/7/76/Battlerite_Border_Pink.png/128px-Battlerite_Border_Pink.png?version=6bc5c26493fa443b34f08c68cf39c9bd');
INSERT INTO battlerite (BattleRiteName, ChampionName, Description, BattleRiteType, Image) VALUES ('Cryogenic Lance', 'Alysia', 'Ice Lance hits inflict Chill for 1s bonus duration and explodes on impact or reaching max range to inflict Chill for 2s on nearby enemies.', 'Control', 'https://d1u5p3l4wpay3k.cloudfront.net/battlerite_gamepedia_en/thumb/7/76/Battlerite_Border_Pink.png/128px-Battlerite_Border_Pink.png?version=6bc5c26493fa443b34f08c68cf39c9bd');
INSERT INTO battlerite (BattleRiteName, ChampionName, Description, BattleRiteType, Image) VALUES ('Ice Breaker', 'Alysia', 'Ice Lance deals 3 bonus damage and breaks Freeze before dealing damage.', 'Offense', 'https://d1u5p3l4wpay3k.cloudfront.net/battlerite_gamepedia_en/thumb/1/1d/Battlerite_Border_Red.png/128px-Battlerite_Border_Red.png?version=8b96ef2f3b013cab3cec3dd1a51e6d71');
INSERT INTO battlerite (BattleRiteName, ChampionName, Description, BattleRiteType, Image) VALUES ('Piercing Cold', 'Alysia', 'Ice Lance pierces enemies and range is increased by 10%. Damage reduces by 30% per hit.', 'Offense', 'https://d1u5p3l4wpay3k.cloudfront.net/battlerite_gamepedia_en/thumb/1/1d/Battlerite_Border_Red.png/128px-Battlerite_Border_Red.png?version=8b96ef2f3b013cab3cec3dd1a51e6d71');
INSERT INTO battlerite (BattleRiteName, ChampionName, Description, BattleRiteType, Image) VALUES ('Frost Nova', 'Alysia', 'Arctic Wind blasts nearby enemies with a frost nova as you leap, inflicting Chill for 1.6s.', 'Control', 'https://d1u5p3l4wpay3k.cloudfront.net/battlerite_gamepedia_en/thumb/7/76/Battlerite_Border_Pink.png/128px-Battlerite_Border_Pink.png?version=6bc5c26493fa443b34f08c68cf39c9bd');
INSERT INTO battlerite (BattleRiteName, ChampionName, Description, BattleRiteType, Image) VALUES ('Twirl', 'Alysia', 'Recast Arctic Wind to perform a short leap.', 'Mobility', 'https://d1u5p3l4wpay3k.cloudfront.net/battlerite_gamepedia_en/thumb/b/b0/Battlerite_Border_Yellow.png/128px-Battlerite_Border_Yellow.png?version=9e160088d862f59dcb3ecd8acb595e5f');
INSERT INTO battlerite (BattleRiteName, ChampionName, Description, BattleRiteType, Image) VALUES ('Crystalline Lattice', 'Alysia', 'Glacial Prism absorbs up to 12 more damage and its explosion range is increased by 20%.', 'Support', 'https://d1u5p3l4wpay3k.cloudfront.net/battlerite_gamepedia_en/thumb/5/53/Battlerite_Border_Teal.png/128px-Battlerite_Border_Teal.png?version=d74b2987e5bcfaf8598040f3cf6708c2');
INSERT INTO battlerite (BattleRiteName, ChampionName, Description, BattleRiteType, Image) VALUES ('Figure Skating', 'Alysia', 'Glacial Prism grants the target a 60% Fading Haste for 1.4s.', 'Mobility', 'https://d1u5p3l4wpay3k.cloudfront.net/battlerite_gamepedia_en/thumb/b/b0/Battlerite_Border_Yellow.png/128px-Battlerite_Border_Yellow.png?version=9e160088d862f59dcb3ecd8acb595e5f');
INSERT INTO battlerite (BattleRiteName, ChampionName, Description, BattleRiteType, Image) VALUES ('Wintry Blast', 'Alysia', 'Glacial Prism deals 10 damage to nearby enemies when it explodes.', 'Offense', 'https://d1u5p3l4wpay3k.cloudfront.net/battlerite_gamepedia_en/thumb/1/1d/Battlerite_Border_Red.png/128px-Battlerite_Border_Red.png?version=8b96ef2f3b013cab3cec3dd1a51e6d71');
INSERT INTO battlerite (BattleRiteName, ChampionName, Description, BattleRiteType, Image) VALUES ('Arctic Cloak', 'Alysia', 'Hitting yourself with Flash Freeze applies Lesser Glacial Prism, absorbing up to 12 damage.', 'Survival', 'https://d1u5p3l4wpay3k.cloudfront.net/battlerite_gamepedia_en/thumb/1/1c/Battlerite_Border_Green.png/128px-Battlerite_Border_Green.png?version=8f1768551e2d311055fe3662979bc0fa');
INSERT INTO battlerite (BattleRiteName, ChampionName, Description, BattleRiteType, Image) VALUES ('Blizzard', 'Alysia', 'Flash Freeze radius is increased by 20% and cooldown is reduced by 1s.', 'Utility', 'https://d1u5p3l4wpay3k.cloudfront.net/battlerite_gamepedia_en/thumb/d/de/Battlerite_Border_Blue.png/128px-Battlerite_Border_Blue.png?version=dbc3178cc4ddc0855cc35b713ad48fc5');
INSERT INTO battlerite (BattleRiteName, ChampionName, Description, BattleRiteType, Image) VALUES ('Snowstorm', 'Alysia', 'Flash Freeze impact leaves a lingering snowstorm that deals 15 damage and inflicts Chill over 2.5s. The damage affects targets with Freeze directly.', 'Offense', 'https://d1u5p3l4wpay3k.cloudfront.net/battlerite_gamepedia_en/thumb/1/1d/Battlerite_Border_Red.png/128px-Battlerite_Border_Red.png?version=8b96ef2f3b013cab3cec3dd1a51e6d71');
INSERT INTO battlerite (BattleRiteName, ChampionName, Description, BattleRiteType, Image) VALUES ('Vandalism', 'Alysia', 'You can break your own Ice Crown with a single Frost Bolt, consuming the bolt in the process to launch the cone of icicles.', 'Offense', 'https://d1u5p3l4wpay3k.cloudfront.net/battlerite_gamepedia_en/thumb/1/1d/Battlerite_Border_Red.png/128px-Battlerite_Border_Red.png?version=8b96ef2f3b013cab3cec3dd1a51e6d71');
INSERT INTO battlerite (BattleRiteName, ChampionName, Description, BattleRiteType, Image) VALUES ('Permafrost', 'Alysia', 'Frozen Gallery inflicts Chill for 4s to all enemies in the area after cast and Freeze duration is increased from 3s to 4s.', 'Control', 'https://d1u5p3l4wpay3k.cloudfront.net/battlerite_gamepedia_en/thumb/7/76/Battlerite_Border_Pink.png/128px-Battlerite_Border_Pink.png?version=6bc5c26493fa443b34f08c68cf39c9bd');
INSERT INTO battlerite (BattleRiteName, ChampionName, Description, BattleRiteType, Image) VALUES ('Agility', 'Alysia', 'Increases movement speed by 10%.', 'Mobility', 'https://d1u5p3l4wpay3k.cloudfront.net/battlerite_gamepedia_en/thumb/b/b0/Battlerite_Border_Yellow.png/128px-Battlerite_Border_Yellow.png?version=9e160088d862f59dcb3ecd8acb595e5f');
INSERT INTO battlerite (BattleRiteName, ChampionName, Description, BattleRiteType, Image) VALUES ('Inspiration', 'Alysia', 'Increases your maximum energy by 25% and energy gained from abilities is increased by 10%', 'Utility', 'https://d1u5p3l4wpay3k.cloudfront.net/battlerite_gamepedia_en/thumb/d/de/Battlerite_Border_Blue.png/128px-Battlerite_Border_Blue.png?version=dbc3178cc4ddc0855cc35b713ad48fc5');

INSERT INTO battlerite (BattleRiteName, ChampionName, Description, BattleRiteType, Image) VALUES ('Wild Fire', 'Ashka', 'Fire Storm bolts deal 2 additional damage and inflict Ignite on nearby enemies.', 'Offense', 'https://d1u5p3l4wpay3k.cloudfront.net/battlerite_gamepedia_en/thumb/1/1d/Battlerite_Border_Red.png/128px-Battlerite_Border_Red.png?version=8b96ef2f3b013cab3cec3dd1a51e6d71');
INSERT INTO battlerite (BattleRiteName, ChampionName, Description, BattleRiteType, Image) VALUES ('Blaze', 'Ashka', 'Searing Flight increases movement speed by 30% for 2s and your next fireball inflicts Ignite.', 'Mobility', 'https://d1u5p3l4wpay3k.cloudfront.net/battlerite_gamepedia_en/thumb/b/b0/Battlerite_Border_Yellow.png/128px-Battlerite_Border_Yellow.png?version=9e160088d862f59dcb3ecd8acb595e5f');
INSERT INTO battlerite (BattleRiteName, ChampionName, Description, BattleRiteType, Image) VALUES ('Knockout', 'Ashka', 'Molten Fist knockback force is increased by 30%, knocking an enemy into a wall inflicts a 1.2s Stun.', 'Control', 'https://d1u5p3l4wpay3k.cloudfront.net/battlerite_gamepedia_en/thumb/7/76/Battlerite_Border_Pink.png/128px-Battlerite_Border_Pink.png?version=6bc5c26493fa443b34f08c68cf39c9bd');
INSERT INTO battlerite (BattleRiteName, ChampionName, Description, BattleRiteType, Image) VALUES ('Heat', 'Ashka', 'Fire Storm can be cast while moving at 45% move speed.', 'Mobility', 'https://d1u5p3l4wpay3k.cloudfront.net/battlerite_gamepedia_en/thumb/b/b0/Battlerite_Border_Yellow.png/128px-Battlerite_Border_Yellow.png?version=9e160088d862f59dcb3ecd8acb595e5f');
INSERT INTO battlerite (BattleRiteName, ChampionName, Description, BattleRiteType, Image) VALUES ('Inferno', 'Ashka', 'Flamestrike deals 8 bonus damage and inflicts Ignite.', 'Offense', 'https://d1u5p3l4wpay3k.cloudfront.net/battlerite_gamepedia_en/thumb/1/1d/Battlerite_Border_Red.png/128px-Battlerite_Border_Red.png?version=8b96ef2f3b013cab3cec3dd1a51e6d71');
INSERT INTO battlerite (BattleRiteName, ChampionName, Description, BattleRiteType, Image) VALUES ('Fire Ward', 'Ashka', 'Searing Flight grants a Shield absorbing 12 damage lasting up to 3s.', 'Survival', 'https://d1u5p3l4wpay3k.cloudfront.net/battlerite_gamepedia_en/thumb/1/1c/Battlerite_Border_Green.png/128px-Battlerite_Border_Green.png?version=8f1768551e2d311055fe3662979bc0fa');
INSERT INTO battlerite (BattleRiteName, ChampionName, Description, BattleRiteType, Image) VALUES ('Living Flame', 'Ashka', 'Fireball & Fire Storm bolts heal you for 2 health when hitting a target affected by Ignite.', 'Survival', 'https://d1u5p3l4wpay3k.cloudfront.net/battlerite_gamepedia_en/thumb/1/1c/Battlerite_Border_Green.png/128px-Battlerite_Border_Green.png?version=8f1768551e2d311055fe3662979bc0fa');
INSERT INTO battlerite (BattleRiteName, ChampionName, Description, BattleRiteType, Image) VALUES ('Lava Punch', 'Ashka', 'Molten Fist cooldown is reduced by 1.5s and hitting an enemy further reduces the cooldown by 2s.', 'Control', 'https://d1u5p3l4wpay3k.cloudfront.net/battlerite_gamepedia_en/thumb/7/76/Battlerite_Border_Pink.png/128px-Battlerite_Border_Pink.png?version=6bc5c26493fa443b34f08c68cf39c9bd');
INSERT INTO battlerite (BattleRiteName, ChampionName, Description, BattleRiteType, Image) VALUES ('Conflagration', 'Ashka', 'Fireballs traveling through Firewall turn into Fire Storm bolts.', 'Offense', 'https://d1u5p3l4wpay3k.cloudfront.net/battlerite_gamepedia_en/thumb/1/1d/Battlerite_Border_Red.png/128px-Battlerite_Border_Red.png?version=8b96ef2f3b013cab3cec3dd1a51e6d71');
INSERT INTO battlerite (BattleRiteName, ChampionName, Description, BattleRiteType, Image) VALUES ('Burn Burn Burn', 'Ashka', 'Fireballs deals 1 bonus damage to targets affected by Ignite.', 'Offense', 'https://d1u5p3l4wpay3k.cloudfront.net/battlerite_gamepedia_en/thumb/1/1d/Battlerite_Border_Red.png/128px-Battlerite_Border_Red.png?version=8b96ef2f3b013cab3cec3dd1a51e6d71');
INSERT INTO battlerite (BattleRiteName, ChampionName, Description, BattleRiteType, Image) VALUES ('Eruption', 'Ashka', 'The radius of Flamestrike is increased by 15%.', 'Mixed', 'https://d1u5p3l4wpay3k.cloudfront.net/battlerite_gamepedia_en/thumb/3/3e/Battlerite_Border_Grey.png/128px-Battlerite_Border_Grey.png?version=e574a857fb28380ec1f0550d35607a09');
INSERT INTO battlerite (BattleRiteName, ChampionName, Description, BattleRiteType, Image) VALUES ('Magma', 'Ashka', 'Ignite reduces target\'s movement speed by 14%.', 'Control', 'https://d1u5p3l4wpay3k.cloudfront.net/battlerite_gamepedia_en/thumb/7/76/Battlerite_Border_Pink.png/128px-Battlerite_Border_Pink.png?version=6bc5c26493fa443b34f08c68cf39c9bd');
INSERT INTO battlerite (BattleRiteName, ChampionName, Description, BattleRiteType, Image) VALUES ('Raging Fire', 'Ashka', 'When Infernal Scorch ends you turn into Pure Fire causing your Fireballs to turn into Fire Storm bolts for the next 3s.', 'Offense', 'https://d1u5p3l4wpay3k.cloudfront.net/battlerite_gamepedia_en/thumb/1/1d/Battlerite_Border_Red.png/128px-Battlerite_Border_Red.png?version=8b96ef2f3b013cab3cec3dd1a51e6d71');
INSERT INTO battlerite (BattleRiteName, ChampionName, Description, BattleRiteType, Image) VALUES ('Everlasting Fire', 'Ashka', 'When Infernal Scorch ends you transform into Pure Fire causing your Fireballs to heal you over the next 3s.', 'Survival', 'https://d1u5p3l4wpay3k.cloudfront.net/battlerite_gamepedia_en/thumb/1/1c/Battlerite_Border_Green.png/128px-Battlerite_Border_Green.png?version=8f1768551e2d311055fe3662979bc0fa');

INSERT INTO battlerite (BattleRiteName, ChampionName, Description, BattleRiteType, Image) VALUES ('Disruption', 'Ezmo', 'Chaos Grip Silences target hit for 0.5s to 1s depending on charge-up.', 'Control', 'https://d1u5p3l4wpay3k.cloudfront.net/battlerite_gamepedia_en/thumb/7/76/Battlerite_Border_Pink.png/128px-Battlerite_Border_Pink.png?version=6bc5c26493fa443b34f08c68cf39c9bd');
INSERT INTO battlerite (BattleRiteName, ChampionName, Description, BattleRiteType, Image) VALUES ('Arcane Barrage', 'Ezmo', 'Recasting Arcane Barrier consumes all weapon charges to fire a projectile. For each weapon charge consumed the projectile deals 5 damage and heals you for 6 health.', 'Survival', 'https://d1u5p3l4wpay3k.cloudfront.net/battlerite_gamepedia_en/thumb/1/1c/Battlerite_Border_Green.png/128px-Battlerite_Border_Green.png?version=8f1768551e2d311055fe3662979bc0fa');
INSERT INTO battlerite (BattleRiteName, ChampionName, Description, BattleRiteType, Image) VALUES ('Wreak Havoc', 'Ezmo', 'Displace increases your Arcane Fire attack speed by 30% for 2s and grants 1 bonus weapon charge.', 'Offense', 'https://d1u5p3l4wpay3k.cloudfront.net/battlerite_gamepedia_en/thumb/1/1d/Battlerite_Border_Red.png/128px-Battlerite_Border_Red.png?version=8b96ef2f3b013cab3cec3dd1a51e6d71');
INSERT INTO battlerite (BattleRiteName, ChampionName, Description, BattleRiteType, Image) VALUES ('Undermine', 'Ezmo', 'Shackle reduces target\'s damage and healing output by 50% for 3s.', 'Support', 'https://d1u5p3l4wpay3k.cloudfront.net/battlerite_gamepedia_en/thumb/5/53/Battlerite_Border_Teal.png/128px-Battlerite_Border_Teal.png?version=d74b2987e5bcfaf8598040f3cf6708c2');
INSERT INTO battlerite (BattleRiteName, ChampionName, Description, BattleRiteType, Image) VALUES ('Whizz', 'Ezmo', 'Using Displace grants a 60% Fading Haste that lasts 2s.', 'Mobility', 'https://d1u5p3l4wpay3k.cloudfront.net/battlerite_gamepedia_en/thumb/b/b0/Battlerite_Border_Yellow.png/128px-Battlerite_Border_Yellow.png?version=9e160088d862f59dcb3ecd8acb595e5f');
INSERT INTO battlerite (BattleRiteName, ChampionName, Description, BattleRiteType, Image) VALUES ('Warlock\'s Grip', 'Ezmo', 'Chaos Grip range increases by up to 25% when fully charged.', 'Utility', 'https://d1u5p3l4wpay3k.cloudfront.net/battlerite_gamepedia_en/thumb/d/de/Battlerite_Border_Blue.png/128px-Battlerite_Border_Blue.png?version=dbc3178cc4ddc0855cc35b713ad48fc5');
INSERT INTO battlerite (BattleRiteName, ChampionName, Description, BattleRiteType, Image) VALUES ('Bolted', 'Ezmo', 'Landing Shackle on an enemy increases your Arcane Fire range by 50% until your next recharge.', 'Offense', 'https://d1u5p3l4wpay3k.cloudfront.net/battlerite_gamepedia_en/thumb/1/1d/Battlerite_Border_Red.png/128px-Battlerite_Border_Red.png?version=8b96ef2f3b013cab3cec3dd1a51e6d71');
INSERT INTO battlerite (BattleRiteName, ChampionName, Description, BattleRiteType, Image) VALUES ('Spell Eater', 'Ezmo', 'You gain double amount of charges when absorbing attacks with Arcane Barrier and you recover 4 health for every charge gained.', 'Survival', 'https://d1u5p3l4wpay3k.cloudfront.net/battlerite_gamepedia_en/thumb/1/1c/Battlerite_Border_Green.png/128px-Battlerite_Border_Green.png?version=8f1768551e2d311055fe3662979bc0fa');
INSERT INTO battlerite (BattleRiteName, ChampionName, Description, BattleRiteType, Image) VALUES ('Exhaust', 'Ezmo', 'Landing 3 consecutive Arcane Fires inflicts a 1.2s Fading Snare.', 'Control', 'https://d1u5p3l4wpay3k.cloudfront.net/battlerite_gamepedia_en/thumb/7/76/Battlerite_Border_Pink.png/128px-Battlerite_Border_Pink.png?version=6bc5c26493fa443b34f08c68cf39c9bd');
INSERT INTO battlerite (BattleRiteName, ChampionName, Description, BattleRiteType, Image) VALUES ('Imp Rush', 'Ezmo', 'Arcane Barrier increases your movement speed by 50%.', 'Mobility', 'https://d1u5p3l4wpay3k.cloudfront.net/battlerite_gamepedia_en/thumb/b/b0/Battlerite_Border_Yellow.png/128px-Battlerite_Border_Yellow.png?version=9e160088d862f59dcb3ecd8acb595e5f');
INSERT INTO battlerite (BattleRiteName, ChampionName, Description, BattleRiteType, Image) VALUES ('Arcane Energy', 'Ezmo', 'Maximum Energy is increased by 25% and Arcane Fire hits grant 1% bonus energy.', 'Utility', 'https://d1u5p3l4wpay3k.cloudfront.net/battlerite_gamepedia_en/thumb/d/de/Battlerite_Border_Blue.png/128px-Battlerite_Border_Blue.png?version=dbc3178cc4ddc0855cc35b713ad48fc5');
INSERT INTO battlerite (BattleRiteName, ChampionName, Description, BattleRiteType, Image) VALUES ('Face Melt', 'Ezmo', 'Arcane Fire deals 3 bonus damage to enemies rooted by Shackle.', 'Offense', 'https://d1u5p3l4wpay3k.cloudfront.net/battlerite_gamepedia_en/thumb/1/1d/Battlerite_Border_Red.png/128px-Battlerite_Border_Red.png?version=8b96ef2f3b013cab3cec3dd1a51e6d71');
INSERT INTO battlerite (BattleRiteName, ChampionName, Description, BattleRiteType, Image) VALUES ('Power Leash', 'Ezmo', 'Grimoire of Chaos leashes on to you restoring 5 weapon charges over 2s.', 'Offense', 'https://d1u5p3l4wpay3k.cloudfront.net/battlerite_gamepedia_en/thumb/1/1d/Battlerite_Border_Red.png/128px-Battlerite_Border_Red.png?version=8b96ef2f3b013cab3cec3dd1a51e6d71');
INSERT INTO battlerite (BattleRiteName, ChampionName, Description, BattleRiteType, Image) VALUES ('Life Leash', 'Ezmo', 'Grimoire of Chaos leashes on to nearby allies healing them for 10 health per second.', 'Support', 'https://d1u5p3l4wpay3k.cloudfront.net/battlerite_gamepedia_en/thumb/5/53/Battlerite_Border_Teal.png/128px-Battlerite_Border_Teal.png?version=d74b2987e5bcfaf8598040f3cf6708c2');

INSERT INTO battlerite (BattleRiteName, ChampionName, Description, BattleRiteType, Image) VALUES ('Stockpile', 'Iva', 'ROCKET X-67 gain 1 ability charge.', 'Offense', 'https://d1u5p3l4wpay3k.cloudfront.net/battlerite_gamepedia_en/thumb/1/1d/Battlerite_Border_Red.png/128px-Battlerite_Border_Red.png?version=8b96ef2f3b013cab3cec3dd1a51e6d71');
INSERT INTO battlerite (BattleRiteName, ChampionName, Description, BattleRiteType, Image) VALUES ('U-Turn', 'Iva', 'After using Jet Pack you can re-activate it to fly back.', 'Utility', 'https://d1u5p3l4wpay3k.cloudfront.net/battlerite_gamepedia_en/thumb/d/de/Battlerite_Border_Blue.png/128px-Battlerite_Border_Blue.png?version=dbc3178cc4ddc0855cc35b713ad48fc5');
INSERT INTO battlerite (BattleRiteName, ChampionName, Description, BattleRiteType, Image) VALUES ('Conductor', 'Iva', 'Tazer bounces towards an additional target.', 'Control', 'https://d1u5p3l4wpay3k.cloudfront.net/battlerite_gamepedia_en/thumb/7/76/Battlerite_Border_Pink.png/128px-Battlerite_Border_Pink.png?version=6bc5c26493fa443b34f08c68cf39c9bd');
INSERT INTO battlerite (BattleRiteName, ChampionName, Description, BattleRiteType, Image) VALUES ('Heavy Rocket', 'Iva', 'Direct ROCKET X-67 hits deal 4 bonus damage and inflict a 1s Fading Snare.', 'Control', 'https://d1u5p3l4wpay3k.cloudfront.net/battlerite_gamepedia_en/thumb/7/76/Battlerite_Border_Pink.png/128px-Battlerite_Border_Pink.png?version=6bc5c26493fa443b34f08c68cf39c9bd');
INSERT INTO battlerite (BattleRiteName, ChampionName, Description, BattleRiteType, Image) VALUES ('Oil Blaster', 'Iva', 'Your next Boomstick after using Jet Pack inflicts Oil.', 'Mixed', 'https://d1u5p3l4wpay3k.cloudfront.net/battlerite_gamepedia_en/thumb/3/3e/Battlerite_Border_Grey.png/128px-Battlerite_Border_Grey.png?version=e574a857fb28380ec1f0550d35607a09');
INSERT INTO battlerite (BattleRiteName, ChampionName, Description, BattleRiteType, Image) VALUES ('Blast Shield', 'Iva', 'Zap knocks nearby enemies back and haste bonus increases by 30%.', 'Support', 'https://d1u5p3l4wpay3k.cloudfront.net/battlerite_gamepedia_en/thumb/5/53/Battlerite_Border_Teal.png/128px-Battlerite_Border_Teal.png?version=d74b2987e5bcfaf8598040f3cf6708c2');
INSERT INTO battlerite (BattleRiteName, ChampionName, Description, BattleRiteType, Image) VALUES ('Hyperspeed', 'Iva', 'Zap increases your Boomstick attack speed by 25%.', 'Offense', 'https://d1u5p3l4wpay3k.cloudfront.net/battlerite_gamepedia_en/thumb/1/1d/Battlerite_Border_Red.png/128px-Battlerite_Border_Red.png?version=8b96ef2f3b013cab3cec3dd1a51e6d71');
INSERT INTO battlerite (BattleRiteName, ChampionName, Description, BattleRiteType, Image) VALUES ('Rocket Boosters', 'Iva', 'Jet Pack increases movement speed by 60% for 2s.', 'Mobility', 'https://d1u5p3l4wpay3k.cloudfront.net/battlerite_gamepedia_en/thumb/b/b0/Battlerite_Border_Yellow.png/128px-Battlerite_Border_Yellow.png?version=9e160088d862f59dcb3ecd8acb595e5f');
INSERT INTO battlerite (BattleRiteName, ChampionName, Description, BattleRiteType, Image) VALUES ('Tractor Pulse', 'Iva', 'Tractor Beam stuns all enemies caught in the beam for 0.8s when the effect ends and cooldown is reduced by 3s.', 'Control', 'https://d1u5p3l4wpay3k.cloudfront.net/battlerite_gamepedia_en/thumb/7/76/Battlerite_Border_Pink.png/128px-Battlerite_Border_Pink.png?version=6bc5c26493fa443b34f08c68cf39c9bd');
INSERT INTO battlerite (BattleRiteName, ChampionName, Description, BattleRiteType, Image) VALUES ('Durable Shield', 'Iva', 'Zap absorbs 12 more damage.', 'Support', 'https://d1u5p3l4wpay3k.cloudfront.net/battlerite_gamepedia_en/thumb/5/53/Battlerite_Border_Teal.png/128px-Battlerite_Border_Teal.png?version=d74b2987e5bcfaf8598040f3cf6708c2');
INSERT INTO battlerite (BattleRiteName, ChampionName, Description, BattleRiteType, Image) VALUES ('Electrocution', 'Iva', 'Tazer deals 8 damage when triggered.', 'Offense', 'https://d1u5p3l4wpay3k.cloudfront.net/battlerite_gamepedia_en/thumb/1/1d/Battlerite_Border_Red.png/128px-Battlerite_Border_Red.png?version=8b96ef2f3b013cab3cec3dd1a51e6d71');
INSERT INTO battlerite (BattleRiteName, ChampionName, Description, BattleRiteType, Image) VALUES ('Gunge', 'Iva', 'Oil further reduces movement speed by 10% and duration increases by 1s.', 'Control', 'https://d1u5p3l4wpay3k.cloudfront.net/battlerite_gamepedia_en/thumb/7/76/Battlerite_Border_Pink.png/128px-Battlerite_Border_Pink.png?version=6bc5c26493fa443b34f08c68cf39c9bd');
INSERT INTO battlerite (BattleRiteName, ChampionName, Description, BattleRiteType, Image) VALUES ('Stability', 'Iva', 'Machine Gun grants a shield that absorbs up to 30 damage lasting 2.7s.', 'Survival', 'https://d1u5p3l4wpay3k.cloudfront.net/battlerite_gamepedia_en/thumb/1/1c/Battlerite_Border_Green.png/128px-Battlerite_Border_Green.png?version=8f1768551e2d311055fe3662979bc0fa');
INSERT INTO battlerite (BattleRiteName, ChampionName, Description, BattleRiteType, Image) VALUES ('All Systems Operational', 'Iva', 'Machine Gun inflicts Oil on all nearby enemies and launches a ROCKET X-67 after firing the last bullet.', 'Offense', 'https://d1u5p3l4wpay3k.cloudfront.net/battlerite_gamepedia_en/thumb/1/1d/Battlerite_Border_Red.png/128px-Battlerite_Border_Red.png?version=8b96ef2f3b013cab3cec3dd1a51e6d71');

INSERT INTO battlerite (BattleRiteName, ChampionName, Description, BattleRiteType, Image) VALUES ('Ambush', 'Jade', 'Stealth resets the cooldown of Snipe and stealth duration increases by 0.3s.', 'Offense', 'https://d1u5p3l4wpay3k.cloudfront.net/battlerite_gamepedia_en/thumb/1/1d/Battlerite_Border_Red.png/128px-Battlerite_Border_Red.png?version=8b96ef2f3b013cab3cec3dd1a51e6d71');
INSERT INTO battlerite (BattleRiteName, ChampionName, Description, BattleRiteType, Image) VALUES ('Outlaw', 'Jade', 'Blast Vault causes you to enter a 1.6s Stealth.', 'Survival', 'https://d1u5p3l4wpay3k.cloudfront.net/battlerite_gamepedia_en/thumb/1/1c/Battlerite_Border_Green.png/128px-Battlerite_Border_Green.png?version=8f1768551e2d311055fe3662979bc0fa');
INSERT INTO battlerite (BattleRiteName, ChampionName, Description, BattleRiteType, Image) VALUES ('Cheap Shot', 'Jade', 'Disabling Shot roots the target for 1s.', 'Control', 'https://d1u5p3l4wpay3k.cloudfront.net/battlerite_gamepedia_en/thumb/7/76/Battlerite_Border_Pink.png/128px-Battlerite_Border_Pink.png?version=6bc5c26493fa443b34f08c68cf39c9bd');
INSERT INTO battlerite (BattleRiteName, ChampionName, Description, BattleRiteType, Image) VALUES ('Desperado', 'Jade', 'Landing Disabling Shot instantly reloads Revolver Shot with 6 ammo.', 'Offense', 'https://d1u5p3l4wpay3k.cloudfront.net/battlerite_gamepedia_en/thumb/1/1d/Battlerite_Border_Red.png/128px-Battlerite_Border_Red.png?version=8b96ef2f3b013cab3cec3dd1a51e6d71');
INSERT INTO battlerite (BattleRiteName, ChampionName, Description, BattleRiteType, Image) VALUES ('Through the Shadows', 'Jade', 'Stealth Haste bonus increases by 25%.', 'Mobility', 'https://d1u5p3l4wpay3k.cloudfront.net/battlerite_gamepedia_en/thumb/b/b0/Battlerite_Border_Yellow.png/128px-Battlerite_Border_Yellow.png?version=9e160088d862f59dcb3ecd8acb595e5f');
INSERT INTO battlerite (BattleRiteName, ChampionName, Description, BattleRiteType, Image) VALUES ('Concussion Bomb', 'Jade', 'Blast Vault stun duration is increased by 0.75s.', 'Control', 'https://d1u5p3l4wpay3k.cloudfront.net/battlerite_gamepedia_en/thumb/7/76/Battlerite_Border_Pink.png/128px-Battlerite_Border_Pink.png?version=6bc5c26493fa443b34f08c68cf39c9bd');
INSERT INTO battlerite (BattleRiteName, ChampionName, Description, BattleRiteType, Image) VALUES ('Deadly Focus', 'Jade', 'Snipe deals 6 bonus damage.', 'Offense', 'https://d1u5p3l4wpay3k.cloudfront.net/battlerite_gamepedia_en/thumb/1/1d/Battlerite_Border_Red.png/128px-Battlerite_Border_Red.png?version=8b96ef2f3b013cab3cec3dd1a51e6d71');
INSERT INTO battlerite (BattleRiteName, ChampionName, Description, BattleRiteType, Image) VALUES ('Delight', 'Jade', 'Successful Disabling Shot interrupts heal you for 16 health.', 'Survival', 'https://d1u5p3l4wpay3k.cloudfront.net/battlerite_gamepedia_en/thumb/1/1c/Battlerite_Border_Green.png/128px-Battlerite_Border_Green.png?version=8f1768551e2d311055fe3662979bc0fa');
INSERT INTO battlerite (BattleRiteName, ChampionName, Description, BattleRiteType, Image) VALUES ('Black Powder', 'Jade', 'Junk Shot knockback force is increased by 25% and knocking an enemy into a wall inflicts a 1.2s Stun.', 'Control', 'https://d1u5p3l4wpay3k.cloudfront.net/battlerite_gamepedia_en/thumb/7/76/Battlerite_Border_Pink.png/128px-Battlerite_Border_Pink.png?version=6bc5c26493fa443b34f08c68cf39c9bd');
INSERT INTO battlerite (BattleRiteName, ChampionName, Description, BattleRiteType, Image) VALUES ('Gunslinger', 'Jade', 'Revolver Shot hits reduce the cooldown of Stealth by 0.35s.', 'Mixed', 'https://d1u5p3l4wpay3k.cloudfront.net/battlerite_gamepedia_en/thumb/3/3e/Battlerite_Border_Grey.png/128px-Battlerite_Border_Grey.png?version=e574a857fb28380ec1f0550d35607a09');
INSERT INTO battlerite (BattleRiteName, ChampionName, Description, BattleRiteType, Image) VALUES ('Agility', 'Jade', 'Increases movement speed by 10%.', 'Mobility', 'https://d1u5p3l4wpay3k.cloudfront.net/battlerite_gamepedia_en/thumb/b/b0/Battlerite_Border_Yellow.png/128px-Battlerite_Border_Yellow.png?version=9e160088d862f59dcb3ecd8acb595e5f');
INSERT INTO battlerite (BattleRiteName, ChampionName, Description, BattleRiteType, Image) VALUES ('Slayer', 'Jade', 'Deal 20% increased damage to targets below 30% health.', 'Offense', 'https://d1u5p3l4wpay3k.cloudfront.net/battlerite_gamepedia_en/thumb/1/1d/Battlerite_Border_Red.png/128px-Battlerite_Border_Red.png?version=8b96ef2f3b013cab3cec3dd1a51e6d71');
INSERT INTO battlerite (BattleRiteName, ChampionName, Description, BattleRiteType, Image) VALUES ('Sovereign', 'Jade', 'While channeling Explosive Shells you take 75% less damage.', 'Survival', 'https://d1u5p3l4wpay3k.cloudfront.net/battlerite_gamepedia_en/thumb/1/1c/Battlerite_Border_Green.png/128px-Battlerite_Border_Green.png?version=8f1768551e2d311055fe3662979bc0fa');
INSERT INTO battlerite (BattleRiteName, ChampionName, Description, BattleRiteType, Image) VALUES ('Shrapnel', 'Jade', 'Explosive Shells projectiles inflict a 50% Snare for 1.5s.', 'Control', 'https://d1u5p3l4wpay3k.cloudfront.net/battlerite_gamepedia_en/thumb/7/76/Battlerite_Border_Pink.png/128px-Battlerite_Border_Pink.png?version=6bc5c26493fa443b34f08c68cf39c9bd');

INSERT INTO battlerite (BattleRiteName, ChampionName, Description, BattleRiteType, Image) VALUES ('Stockpile', 'Jumong', '', 'Control', '');
INSERT INTO battlerite (BattleRiteName, ChampionName, Description, BattleRiteType, Image) VALUES ('Stockpile', 'Jumong', '', 'Control', '');
INSERT INTO battlerite (BattleRiteName, ChampionName, Description, BattleRiteType, Image) VALUES ('Stockpile', 'Jumong', '', 'Control', '');
INSERT INTO battlerite (BattleRiteName, ChampionName, Description, BattleRiteType, Image) VALUES ('Stockpile', 'Jumong', '', 'Control', '');
INSERT INTO battlerite (BattleRiteName, ChampionName, Description, BattleRiteType, Image) VALUES ('Stockpile', 'Jumong', '', 'Control', '');
INSERT INTO battlerite (BattleRiteName, ChampionName, Description, BattleRiteType, Image) VALUES ('Stockpile', 'Jumong', '', 'Control', '');
INSERT INTO battlerite (BattleRiteName, ChampionName, Description, BattleRiteType, Image) VALUES ('Stockpile', 'Jumong', '', 'Control', '');
INSERT INTO battlerite (BattleRiteName, ChampionName, Description, BattleRiteType, Image) VALUES ('Stockpile', 'Jumong', '', 'Control', '');
INSERT INTO battlerite (BattleRiteName, ChampionName, Description, BattleRiteType, Image) VALUES ('Stockpile', 'Jumong', '', 'Control', '');
INSERT INTO battlerite (BattleRiteName, ChampionName, Description, BattleRiteType, Image) VALUES ('Stockpile', 'Jumong', '', 'Control', '');
INSERT INTO battlerite (BattleRiteName, ChampionName, Description, BattleRiteType, Image) VALUES ('Stockpile', 'Jumong', '', 'Control', '');
INSERT INTO battlerite (BattleRiteName, ChampionName, Description, BattleRiteType, Image) VALUES ('Stockpile', 'Jumong', '', 'Control', '');
INSERT INTO battlerite (BattleRiteName, ChampionName, Description, BattleRiteType, Image) VALUES ('Stockpile', 'Jumong', '', 'Control', '');
INSERT INTO battlerite (BattleRiteName, ChampionName, Description, BattleRiteType, Image) VALUES ('Stockpile', 'Jumong', '', 'Control', '');
INSERT INTO battlerite (BattleRiteName, ChampionName, Description, BattleRiteType, Image) VALUES ('Stockpile', 'Jumong', '', 'Control', '');
INSERT INTO battlerite (BattleRiteName, ChampionName, Description, BattleRiteType, Image) VALUES ('Stockpile', 'Jumong', '', 'Control', '');
INSERT INTO battlerite (BattleRiteName, ChampionName, Description, BattleRiteType, Image) VALUES ('Stockpile', 'Jumong', '', 'Control', '');
INSERT INTO battlerite (BattleRiteName, ChampionName, Description, BattleRiteType, Image) VALUES ('Stockpile', 'Jumong', '', 'Control', '');
INSERT INTO battlerite (BattleRiteName, ChampionName, Description, BattleRiteType, Image) VALUES ('Stockpile', 'Jumong', '', 'Control', '');
INSERT INTO battlerite (BattleRiteName, ChampionName, Description, BattleRiteType, Image) VALUES ('Stockpile', 'Jumong', '', 'Control', '');
INSERT INTO battlerite (BattleRiteName, ChampionName, Description, BattleRiteType, Image) VALUES ('Stockpile', 'Jumong', '', 'Control', '');














