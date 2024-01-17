-- Create LEGO database
CREATE DATABASE IF NOT EXISTS lego_database;
USE lego_database;

-- Create table for LEGO games
DROP TABLE IF EXISTS games;
CREATE TABLE IF NOT EXISTS games (
    game_id INT AUTO_INCREMENT,
    title VARCHAR(255) NOT NULL,
    release_date DATE,
    platform VARCHAR(255),
    genre VARCHAR(255),
    developer VARCHAR(255),
    rating DECIMAL(3, 1),
    description TEXT,
    PRIMARY KEY (game_id)
);

-- Insert LEGO games
INSERT INTO games (title, release_date, platform, genre, developer, rating, description)
VALUES
('LEGO Island', '1997-10-02', 'PC', 'Action-Adventure', 'Mindscape', NULL, 'Explore the open world of LEGO Island, completing missions and interacting with various characters.'),
('LEGO Chess', '1998-11-30', 'PC', 'Chess', 'Krisalis Software', NULL, 'Play chess with a LEGO twist, featuring animated LEGO characters on a virtual LEGO chessboard.'),
('LEGO Creator', '1998-11-24', 'PC', 'Simulation', 'Superscape', NULL, 'Build and customize virtual LEGO creations in this simulation game.'),
('LEGO Racers', '1999-08-31', 'PC, Nintendo 64, PlayStation', 'Racing', 'High Voltage Software', NULL, 'Race against opponents with customizable LEGO cars on various tracks.'),
('LEGO Rock Raiders', '1999-11-17', 'PC', 'Real-Time Strategy', 'Data Design Interactive', NULL, 'Command a team of LEGO Rock Raiders on a mission to collect energy crystals and rescue crew members.'),
('LEGOLAND', '2000-03-28', 'PC', 'Construction and Management Simulation', 'Krisalis Software', NULL, 'Build and manage your LEGO theme park, featuring various attractions and minigames.'),
('LEGO Alpha Team', '2000-07-31', 'PC, Game Boy Color', 'Action-Adventure', 'Digital Domain', NULL, 'Join the LEGO Alpha Team to thwart the evil Ogel’s plans through various missions.'),
('LEGO Stunt Rally', '2000-09-30', 'PC', 'Racing', 'Intelligent Games', NULL, 'Race through LEGO-themed environments, collecting power-ups and building your own racetracks.'),
('LEGO Island 2: The Brickster’s Revenge', '2001-11-09', 'PC, PlayStation, Game Boy Color', 'Action-Adventure', 'Silicon Dreams Studio', NULL, 'Stop the Brickster from causing chaos on LEGO Island in this open-world adventure.'),
('LEGO Creator: Knights’ Kingdom', '2000-10-30', 'PC', 'Simulation', 'Superscape', NULL, 'Build and customize castles and kingdoms in this LEGO simulation game.'),
('LEGO Bionicle: Quest for the Toa', '2001-09-22', 'PC, Mac', 'Action-Adventure', 'Argonaut Games', NULL, 'Embark on a quest to become the Toa and save the island of Mata Nui.'),
('LEGO Racers 2', '2001-10-31', 'PC, PlayStation 2', 'Racing', 'Attention to Detail', NULL, 'Race in a variety of LEGO environments with customizable vehicles and power-ups.'),
('LEGO Island Xtreme Stunts', '2002-09-24', 'PC, PlayStation 2, Game Boy Advance', 'Action-Adventure', 'Silicon Dreams Studio', NULL, 'Take on the role of Pepper Roni, a stuntman on LEGO Island, and complete extreme stunts.'),
('Bionicle: The Game', '2003-10-24', 'Various platforms, including PC, Game Boy Advance, PlayStation', 'Action-Adventure', 'Argonaut Games', NULL, 'Experience the Bionicle storyline through various action-packed levels.'),
('LEGO Star Wars: The Video Game', '2005-04-02', 'Various platforms, including PC, PlayStation 2, Xbox', 'Action-Adventure', 'Traveller’s Tales', NULL, 'Relive the events of the Star Wars prequel trilogy in LEGO form.'),
('LEGO Star Wars II: The Original Trilogy', '2006-09-12', 'Various platforms, including PC, PlayStation 2, Xbox 360', 'Action-Adventure', 'Traveller’s Tales', NULL, 'Continue the LEGO Star Wars saga, now covering the original trilogy.'),
('LEGO Star Wars: The Complete Saga', '2007-11-06', 'Various platforms, including PC, PlayStation 3, Xbox 360', 'Action-Adventure', 'Traveller’s Tales', NULL, 'Play through all six Star Wars episodes in one game with added content and improvements.'),
('LEGO Star Wars III: The Clone Wars', '2011-03-22', 'Various platforms, including PC, PlayStation 3, Xbox 360', 'Action-Adventure', 'Traveller’s Tales', NULL, 'Experience the events of the Star Wars: The Clone Wars animated series in LEGO form.'),
('LEGO Batman: The Videogame', '2008-09-23', 'Various platforms, including PC, PlayStation 2, Xbox 360', 'Action-Adventure', 'Traveller’s Tales', NULL, 'Team up with Batman and other DC superheroes to stop villains in LEGO Gotham City.'),
('LEGO Indiana Jones: The Original Adventures', '2008-06-03', 'Various platforms, including PC, PlayStation 2, Xbox 360', 'Action-Adventure', 'Traveller’s Tales', NULL, 'Join Indiana Jones in LEGO form on his adventures through iconic movie scenes.'),
('LEGO Batman 2: DC Super Heroes', '2012-06-19', 'Various platforms, including PC, PlayStation 3, Xbox 360', 'Action-Adventure', 'Traveller’s Tales', NULL, 'Explore an open-world LEGO Gotham City and team up with a variety of DC superheroes.'),
('LEGO The Lord of the Rings', '2012-11-13', 'Various platforms, including PC, PlayStation 3, Xbox 360', 'Action-Adventure', 'Traveller’s Tales', NULL, 'Journey through Middle-earth in LEGO form, experiencing the events of The Lord of the Rings trilogy.'),
('LEGO City Undercover', '2013-03-18', 'Nintendo Wii U, Nintendo Switch, PlayStation 4, Xbox One', 'Action-Adventure', 'TT Fusion', NULL, 'Play as undercover cop Chase McCain in an open-world LEGO city, solving crimes and capturing criminals.'),
('LEGO Marvel Super Heroes', '2013-10-22', 'Various platforms, including PC, PlayStation 3, Xbox 360', 'Action-Adventure', 'Traveller’s Tales', NULL, 'Team up with Marvel superheroes to stop Loki and other villains in LEGO New York City.'),
('LEGO Marvel Super Heroes 2', '2017-11-14', 'Various platforms, including PC, PlayStation 4, Xbox One', 'Action-Adventure', 'Traveller’s Tales', NULL, 'Battle against Kang the Conqueror in a time-traveling adventure featuring various Marvel characters.'),
('LEGO The Incredibles', '2018-06-15', 'Various platforms, including PC, PlayStation 4, Xbox One', 'Action-Adventure', 'TT Fusion', NULL, 'Relive the events of The Incredibles movies and play as the Parr family in LEGO form.'),
('LEGO DC Super-Villains', '2018-10-16', 'Various platforms, including PC, PlayStation 4, Xbox One', 'Action-Adventure', 'Traveller’s Tales', NULL, 'Become a DC super-villain and create chaos in the LEGO universe.'),
('LEGO Star Wars: The Force Awakens', '2016-06-28', 'Various platforms, including PC, PlayStation 4, Xbox One', 'Action-Adventure', 'TT Fusion', NULL, 'Relive the events of Star Wars: The Force Awakens in LEGO form with new gameplay mechanics and features.'),
('LEGO Star Wars: The Skywalker Saga', '2022-04-05', 'Various platforms, including PC, PlayStation 4, Xbox One, Nintendo Switch', 'Action-Adventure', 'Traveller’s Tales', NULL, 'Explore all nine mainline Star Wars movies in LEGO form with updated graphics and gameplay mechanics.'),

('LEGO The Hobbit', '2014-04-08', 'Various platforms, including PC, PlayStation 4, Xbox One', 'Action-Adventure', 'Traveller’s Tales', NULL, 'Journey through Middle-earth in LEGO form, experiencing the events of The Hobbit trilogy.'),
('LEGO Indiana Jones 2: The Adventure Continues', '2009-11-17', 'Various platforms, including PC, PlayStation 3, Xbox 360', 'Action-Adventure', 'Traveller’s Tales', NULL, 'Continue the LEGO Indiana Jones adventures with new levels covering the original trilogy and Kingdom of the Crystal Skull.'),
('LEGO Batman 3: Beyond Gotham', '2014-11-11', 'Various platforms, including PC, PlayStation 4, Xbox One', 'Action-Adventure', 'Traveller’s Tales', NULL, 'Join Batman and other DC superheroes to stop Brainiac from destroying Earth and the entire universe.'),
('LEGO Harry Potter: Years 1-4', '2010-06-25', 'Various platforms, including PC, PlayStation 3, Xbox 360', 'Action-Adventure', 'Traveller’s Tales', NULL, 'Experience the first four years at Hogwarts School of Witchcraft and Wizardry in LEGO form.'),
('LEGO Harry Potter: Years 5-7', '2011-11-11', 'Various platforms, including PC, PlayStation 3, Xbox 360', 'Action-Adventure', 'Traveller’s Tales', NULL, 'Continue the magical journey through the last three Harry Potter books and films in LEGO form.'),
('LEGO Jurassic World', '2015-06-12', 'Various platforms, including PC, PlayStation 4, Xbox One', 'Action-Adventure', 'Traveller’s Tales', NULL, 'Relive and experience the epic storylines of all four Jurassic Park movies in LEGO form.'),
('LEGO MARVEL’s Avengers', '2016-01-26', 'Various platforms, including PC, PlayStation 4, Xbox One', 'Action-Adventure', 'Traveller’s Tales', NULL, 'Join the LEGO Marvel’s Avengers team and play through the events of The Avengers and Avengers: Age of Ultron.'),
('The LEGO Movie - Videogame', '2014-02-07', 'Various platforms, including PC, PlayStation 4, Xbox One', 'Action-Adventure', 'Traveller’s Tales', NULL, 'Play as Emmet and other characters in this video game adaptation of The LEGO Movie.'),
('The LEGO Movie 2 - Videogame', '2019-02-26', 'Various platforms, including PC, PlayStation 4, Xbox One', 'Action-Adventure', 'TT Fusion', NULL, 'Join Emmet, Lucy, and other characters in an adventure to save their friends in the Systar System.'),
('The LEGO NINJAGO Movie Video Game', '2017-09-22', 'Various platforms, including PC, PlayStation 4, Xbox One', 'Action-Adventure', 'TT Fusion', NULL, 'Play as your favorite ninjas and master the art of Ninjagility to save NINJAGO City from Lord Garmadon and his Shark Army.'),
('LEGO Pirates of the Caribbean: The Video Game', '2011-05-10', 'Various platforms, including PC, PlayStation 3, Xbox 360', 'Action-Adventure', 'Traveller’s Tales', NULL, 'Experience the adventures of Captain Jack Sparrow and other characters in LEGO form, covering all four Pirates of the Caribbean movies.'),
('LEGO Worlds', '2017-03-07', 'Various platforms, including PC, PlayStation 4, Xbox One', 'Sandbox', 'Traveller’s Tales', NULL, 'Explore, create, and build in an open-world LEGO environment filled with endless possibilities.'),

('LEGO Star Wars: The Quest for R2-D2', '2009-10-01', 'Online Game', 'Action-Adventure', 'Three Melons', NULL, 'Embark on a quest to find R2-D2 in this online LEGO Star Wars game.'),
('LEGO Racers', '1999-11-30', 'PC, Nintendo 64, PlayStation', 'Racing', 'High Voltage Software', NULL, 'Race against opponents with customizable LEGO cars on various tracks.'),
('LEGO Creator Islands', '2014-11-13', 'Mobile (iOS, Android)', 'Simulation', 'Cryo Interactive Entertainment', NULL, 'Build and explore your own LEGO islands in this mobile simulation game.'),
('LEGO Friends: Heartlake Rush', '2018-09-13', 'Mobile (iOS, Android)', 'Racing', 'Warner Bros.', NULL, 'Join the LEGO Friends on a racing adventure through Heartlake City in this mobile game.'),

('LEGO City My City', NULL, 'Mobile', 'Action-Adventure', 'TT Fusion', NULL, 'Experience various mini-games and missions in the bustling LEGO City on your mobile device.'),
('LEGO City Swamp Police', '2015-01-01', 'Mobile', 'Action-Adventure', 'TT Fusion', NULL, 'Join the Swamp Police in LEGO City, solving crimes and maintaining law and order in the swampy areas.'),
('LEGO City Prison Island', '2016-06-28', 'Various platforms, including PC, PlayStation 4, Xbox One', 'Action-Adventure', 'TT Fusion', NULL, 'Embark on a mission to capture escaped prisoners and restore order to LEGO City.'),
('LEGO City Coast Guard', '2017-09-12', 'Various platforms, including PC, PlayStation 4, Xbox One', 'Action-Adventure', 'TT Fusion', NULL, 'Become a member of the LEGO City Coast Guard, performing daring rescues and keeping the waters safe.'),
('LEGO City Fire Emergency', '2018-10-16', 'Various platforms, including PC, PlayStation 4, Xbox One', 'Action-Adventure', 'TT Fusion', NULL, 'Join the LEGO City Fire Department and respond to emergencies, putting out fires and saving citizens.'),
('LEGO Ninjago: Spinjitzu Smash', '2011-01-01', 'Online (Web Browser)', 'Action', 'The LEGO Group', NULL, 'Engage in Spinjitzu battles against the evil forces in the LEGO Ninjago universe. Playable in a web browser.'),
('LEGO Ninjago: Spinjitzu Smash DX', '2011-10-01', 'Nintendo DS', 'Action', 'Hellbent Games', NULL, 'Take Spinjitzu battles to the handheld Nintendo DS platform, battling against enemies with various ninja skills.'),
('LEGO Ninjago: Spinjitzu Smash Party', '2011-10-25', 'Nintendo 3DS', 'Action', 'Hellbent Games', NULL, 'Join the Spinjitzu Smash Party on the Nintendo 3DS platform, featuring multiplayer battles and new challenges.'),
('LEGO Hero Factory Breakout', '2012-01-03', 'Various platforms, including PC, iOS, Android', 'Action-Adventure', '3A Games', NULL, 'Join the Hero Factory team to stop the villainous Black Phantom and his breakout of dangerous villains.'),
('LEGO Hero Factory Brain Attack', '2013-02-05', 'Various platforms, including iOS, Android', 'Action-Adventure', 'Amuzo Games', NULL, 'Defend Makuhero City against the attacking brain-controlled creatures in this action-packed LEGO Hero Factory game.'),
('LEGO Hero Factory Invasion from Below', '2014-01-21', 'Various platforms, including iOS, Android', 'Action-Adventure', 'Amuzo Games', NULL, 'Fight against an invasion of gigantic beasts that threaten Makuhero City in this LEGO Hero Factory adventure.'),
('LEGO BIONICLE Glatorian', '2009-03-03', 'Nintendo DS', 'Action-Adventure', 'Savage Entertainment', NULL, 'Join the BIONICLE Glatorian in an action-packed adventure to save the world of Bara Magna.'),
('LEGO BIONICLE Mistika', '2008-09-08', 'Nintendo DS', 'Action-Adventure', 'Savage Entertainment', NULL, 'Embark on a journey with the BIONICLE Mistika to confront new challenges and enemies.'),
('LEGO BIONICLE Phantoka', '2008-09-08', 'Nintendo DS', 'Action-Adventure', 'Savage Entertainment', NULL, 'Experience the next chapter in the BIONICLE saga with the Phantoka as they battle against powerful foes.'),
('LEGO BIONICLE Mahri', '2007-10-23', 'Nintendo DS', 'Action-Adventure', 'Savage Entertainment', NULL, 'Dive into the underwater world with the BIONICLE Mahri as they face new threats and uncover the mysteries below the surface.'),
('LEGO Minifigures Online', '2014-10-29', 'PC, iOS, Android', 'MMORPG', 'Funcom', NULL, 'Join the adventure in LEGO Minifigures Online, where you can explore different worlds and battle various enemies with your customized minifigures.'),
('LEGO Chima Speedorz', '2013-05-01', 'iOS, Online', 'Racing', 'TT Games', NULL, 'Race through the magical land of Chima on your Speedor, collecting CHI orbs and competing against other players in this fast-paced LEGO racing game.'),
('LEGO Chima Tribe Fighters', '2013-05-02', 'iOS, Android', 'Action-Adventure', 'TT Games', NULL, 'Join the battles between animal tribes in Chima, using your tribe’s unique powers to defeat enemies and restore balance to the kingdom.'),
('LEGO Chima Laval’s Journey', '2013-06-21', 'Various platforms, including Nintendo 3DS, PlayStation Vita', 'Action-Adventure', 'TT Games', NULL, 'Embark on a journey with Laval, the lion prince of Chima, as you explore the world and engage in battles to save the sacred CHI orbs.'),
('LEGO Chima Ultimate Tournament', '2014-01-20', 'iOS, Online', 'Fighting', 'TT Games', NULL, 'Enter the ultimate tournament in Chima, where you can build your own warrior, train them, and compete against other players in battles to become the champion.');