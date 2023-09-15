DROP TABLE IF EXISTS host;
DROP TABLE IF EXISTS player;
DROP TABLE IF EXISTS islet;
DROP TABLE IF EXISTS archipelago;

CREATE TABLE archipelago(
    AID INT,
    name VARCHAR(20),
    PRIMARY KEY (AID)
) ENGINE = INNODB;

CREATE TABLE islet(
    IID INT,
    AID INT,
    name VARCHAR(20),
    PRIMARY KEY (IID),
    FOREIGN KEY (AID) REFERENCES archipelago (AID)
) ENGINE = INNODB;

CREATE TABLE player(
    PID INT AUTO_INCREMENT,
    AID INT,
    IID INT,
    discord VARCHAR(20),
    spirit VARCHAR(50),
    aspect VARCHAR(50),
    board CHAR(1),
    PRIMARY KEY (PID),
    FOREIGN KEY (AID) REFERENCES archipelago (AID),
    FOREIGN KEY (IID) REFERENCES islet (IID)
) ENGINE = INNODB;

CREATE TABLE host(
    HID INT,
    AID INT,
    discord VARCHAR(20),
    PRIMARY KEY (HID),
    FOREIGN KEY (AID) REFERENCES archipelago (AID)
) ENGINE = INNODB;

INSERT INTO archipelago (AID, name) VALUES
(1, 'North West'),
(2, 'North East'),
(3, 'South West'),
(4, 'South East'),
(5, 'Center');

INSERT INTO islet (IID, AID, name) VALUES
(1, 1, '1 - Tokens'),
(2, 1, '2 - Confusion'),
(3, 1, '3 - Nostalgia'),
(4, 2, '4 - Hot'),
(5, 2, '5 - Dahan'),
(6, 2, '6 - Support'),
(7, 5, '7 - Abandonded West'),
(8, 5, '8 - Abandoned East'),
(9, 3, '9 - Movement'),
(10, 3, '10 - Alcatraz'),
(11, 3, '11 - Repeat'),
(12, 4, '12 - Feral'),
(13, 4, '13 - Slow'),
(14, 4, '14 - Shadows');

INSERT INTO player (PID, AID, IID, discord, spirit, aspect, board) VALUES
(1, 1, 3, 'nightingale7824', 'A Spread of Rampant Green', '-', 'B'),
(2, 2, 6, 'doombringer00', 'A Spread of Rampant Green', 'Regrowth', 'D'),
(3, 1, 1, 'pldlogan', 'A Spread of Rampant Green', 'Tangles', 'D'),
(4, 3, 10, 'quaddrummer5624', 'Breath of Darkness Down Your Spine', '-', 'B'),
(5, 1, 3, 'floham', 'Bringer of Dreams and Nightmares', '-', 'D'),
(6, 1, 2, 'simplyfossa', 'Bringer of Dreams and Nightmares', 'Enticing', 'E'),
(7, 3, 10, 'lordknives', 'Bringer of Dreams and Nightmares', 'Violence', 'F'),
(8, 4, 13, '.celentano', 'Dances Up Earthquakes', '-', 'C'),
(9, 2, 4, 'aigis_victory', 'Devouring Teeth Lurk Underfoot', '-', 'F'),
(10, 3, 11, 'whatever3989', 'Downpour Drenches the World', '-', 'A'),
(11, 2, 4, 'deadpuddle.', 'Ember-Eyed Behemoth', '-', 'B'),
(12, 2, 5, 'kaloko96', 'Eyes Watch From the Trees', '-', 'E'),
(13, 1, 2, 'edeholland', 'Fathomless Mud of the Swamp', '-', 'D'),
(14, 3, 9, 'crazymaniac_finder', 'Finder of Paths Unseen', '-', 'D'),
(15, 3, 11, 'dogzilla99', 'Fractured Days Split the Sky', '-', 'C'),
(16, 1, 2, 'rockywaffles', 'Grinning Trickster Stirs Up Trouble', '-', 'F'),
(17, 2, 5, '.rezolv', 'Hearth-Vigil', '-', 'B'),
(18, 4, 12, 'peregrinekiwi', 'Heart of the Wildfire', '-', 'E'),
(19, 2, 4, 'tonshyen', 'Heart of the Wildfire', 'Transforming', 'A'),
(20, 4, 13, 'rudderick', 'Keeper of the Forbidden Wilds', '-', 'B'),
(21, 4, 12, 'emeraldscar', 'Keeper of the Forbidden Wilds', 'Spreading Hostility', 'F'),
(22, 1, 3, 'xayahhh', "Lightning's Swift Strike", '-', 'C'),
(23, 2, 4, 'vbache', "Lightning's Swift Strike", 'Immense', 'C'),
(24, 1, 1, 'dannnnnyen', "Lightning's Swift Strike", 'Pandemonium', 'C'),
(25, 2, 6, '_soulcakeduck', "Lightning's Swift Strike", 'Sparking', 'C'),
(26, 3, 9, 'rad_rab', "Lightning's Swift Strike", 'Wind', 'C'),
(27, 1, 1, 'icecream63', 'Lure of the Deep Wilderness', '-', 'B'),
(28, 3, 10, 'dancha43', 'Lure of the Deep Wilderness', 'Lair', 'E'),
(29, 4, 12, 'sebastian0901', 'Many Minds Move as One', '-', 'C'),
(30, 3, 9, 'harmonic0', "Ocean's Hungry Grasp", '-', 'B'),
(31, 1, 1, 'jgd2207', "Ocean's Hungry Grasp", 'Deeps', 'A'),
(32, 3, 11, 'woodenman', 'Relentless Gaze of the Sun', '-', 'D'),
(33, 2, 4, 'haloshs', 'Rising Heat of Stone and Sand', '-', 'E'),
(34, 1, 3, 'henrik8426', 'River Surges in Sunlight', '-', 'A'),
(35, 2, 5, 'tinstargames', 'River Surges in Sunlight', 'Haven', 'A'),
(36, 2, 6, 'thecaptivewallflower', 'River Surges in Sunlight', 'Sunshine', 'A'),
(37, 3, 9, 'kopfcaput', 'River Surges in Sunlight', 'Travel', 'A'),
(38, 4, 13, 'theapostlepaul', 'Serpent Slumbering Beneath the Island', '-', 'E'),
(39, 3, 11, 'harel55', 'Serpent Slumbering Beneath the Island', 'Locus', 'B'),
(40, 4, 14, '_ecm', 'Shadows Flicker Like Flame', '-', 'D'),
(41, 4, 14, 'mustanglesservantage', 'Shadows Flicker Like Flame', 'Amorphous', 'F'),
(42, 4, 14, 'davypi', 'Shadows Flicker Like Flame', 'Dark Fire', 'B'),
(43, 4, 14, 'schmoopy77', 'Shadows Flicker Like Flame', 'Foreboding', 'E'),
(44, 4, 14, 'sundaysundae', 'Shadows Flicker Like Flame', 'Madness', 'C'),
(45, 4, 14, 'dpthurst', 'Shadows Flicker Like Flame', 'Reach', 'A'),
(46, 3, 9, 'bobbles3197', 'Sharp Fangs Behind the Leaves', '-', 'E'),
(47, 1, 1, 'betadjinn', 'Sharp Fangs Behind the Leaves', 'Encircle', 'F'),
(48, 4, 12, 'h0id', 'Sharp Fangs Behind the Leaves', 'Unconstrained', 'B'),
(49, 3, 10, 'quirrell7117', "Stone's Unyielding Defiance", '-', 'D'),
(50, 4, 13, 'jondoe7120', 'Shifting Memory of Ages', '-', 'A'),
(51, 1, 2, 'godslittlecow', 'Shifting Memory of Ages', 'Intensify', 'C'),
(52, 2, 6, 'lapik32', 'Shifting Memory of Ages', 'Mentor', 'F'),
(53, 3, 10, 'chaoticlamora', 'Shroud of Silent Mist', '-', 'C'),
(54, 1, 2, 'thenuclearfish', 'Shroud of Silent Mist', 'Stranded', 'B'),
(55, 2, 6, 'jasoniltg', 'Starlight Seeks Its Form', '-', 'B'),
(56, 3, 9, 'jlambr64', 'Sun-Bright Whirlwind', '-', 'F'),
(57, 1, 3, 'spleenface', 'Thunderspeaker', '-', 'F'),
(58, 2, 5, 'hatcrabzombie', 'Thunderspeaker', 'Tactician', 'D'),
(59, 4, 12, 'not_coal', 'Thunderspeaker', 'Warrior', 'D'),
(60, 1, 1, 'tables_', 'Towering Roots of the Jungle', '-', 'E'),
(61, 3, 10, 'piggyking53', "Vengeance 'as' a Burning Plague", '-', 'A'),
(62, 1, 3, 'dylogys', 'Vital Strength of the Earth', '-', 'E'),
(63, 4, 12, 'cluedrew', 'Vital Strength of the Earth', 'Might', 'A'),
(64, 2, 6, 'enduranto', 'Vital Strength of the Earth', 'Nourishing', 'E'),
(65, 4, 13, 'evotahr', 'Vital Strength of the Earth', 'Resilience', 'F'),
(66, 2, 4, 'lillypaddo', 'Volcano Looming High', '-', 'D'),
(67, 1, 2, 'fruitpunchde', 'Wandering Voice Keens Delirium', '-', 'A'),
(68, 4, 13, 'firejunn', 'Wounded Waters Bleeding', '-', 'D');

INSERT INTO host (HID, AID, discord) VALUES
(1, 1, 'dannnnnyen'),
(2, 2, 'alexandria343'),
(3, 3, 'floham'),
(4, 4, 'mysticsquire'),
(5, 5, 'lemurkin');