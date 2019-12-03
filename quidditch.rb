# Let's define how to select teams in a match.
def select_teams
  houses = [ "Gryffindor", "Slytherin", "Ravenclaw", "Hufflepuff" ]
  new_position = rand(houses.size)
  team1 = houses[new_position]
  houses.delete_at(new_position)
  team2 = houses[rand(houses.size)]
  teams = [ team1, team2 ]
end

# Let's define how to pick players for a match.
def build_full_list_of_players
  [ "Hannah Abbott", "Ludo Bagman", "Bathilda Bagshot", "Katie Bell", "Cuthbert Binns", "Phineas Nigellus Black", "Sirius Black", "Amelia Bones", "Susan Bones", "Terry Boot", "Lavender Brown", "Millicent Bulstrode", "Charity Burbage", "Frank Bryce", "Alecto Carrow", "Amycus Carrow", "Reginald Cattermole", "Mary Cattermole", "Cho Chang", "Penelope Clearwater", "Mrs. Cole", "Michael Corner", "Crabbe", "Vincent Crabbe", "Colin Creevey", "Dennis Creevey", "Dirk Cresswell", "Barty Crouch Sr", "Barty Crouch Jr", "Roger Davies", "John Dawlish", "Fleur Delacour", "Gabrielle Delacour", "Dedalus Diggle", "Amos Diggory", "Cedric Diggory", "Elphias Doge", "Antonin Dolohov", "Aberforth Dumbledore", "Albus Dumbledore", "Ariana Dumbledore", "Kendra Dumbledore", "Percival Dumbledore", "Dudley Dursley", "Marge Dursley", "Petunia Dursley", "Vernon Dursley", "Marietta Edgecombe", "Arabella Figg", "Argus Filch", "Justin Finch-Fletchley", "Seamus Finnigan", "Marcus Flint", "Mundungus Fletcher", "Filius Flitwick", "Florean Fortescue", "Cornelius Fudge", "Marvolo Gaunt", "Merope Gaunt", "Morfin Gaunt", "Anthony Goldstein", "Goyle", "Gregory Goyle", "Hermione Granger", "Gregorovitch", "Fenrir Greyback", "Gellert Grindelwald", "Wilhelmina Grubbly-Plank", "Rubeus Hagrid", "Rolanda Hooch", "Mafalda Hopkirk", "Angelina Johnson", "Lee Jordan", "Igor Karkaroff", "Viktor Krum", "Silvanus Kettleburn", "Bellatrix Lestrange", "Rabastan Lestrange", "Rodolphus Lestrange", "Gilderoy Lockhart", "Alice Longbottom", "Frank Longbottom", "Augusta Longbottom", "Neville Longbottom", "Luna Lovegood", "Xenophilius Lovegood", "Remus Lupin", "Teddy Lupin", "Walden Macnair", "Draco Malfoy", "Lucius Malfoy", "Narcissa Malfoy", "Scorpius Malfoy", "Madam Malkin", "Griselda Marchbanks", "Olympe Maxime", "Ernie Macmillan", "Minerva McGonagall", "Cormac McLaggen", "Graham Montague", "Alastor (Mad-Eye) Moody", "Theodore Nott", "Bob Ogden", "Garrick Ollivander", "Pansy Parkinson", "Padma Patil", "Parvati Patil", "Peter Pettigrew", "Antioch Peverell", "Cadmus Peverell", "Ignotus Peverell", "Irma Pince", "Sturgis Podmore", "Poppy Pomfrey", "Harry Potter", "James Potter", "Lily Potter", "Albus Severus Potter", "James Sirius Potter", "Lily Luna Potter", "Quirinus Quirrell", "Helena Ravenclaw", "Mary Riddle", "Thomas Riddle", "Tom Marvolo Riddle", "Tom Riddle Sr.", "Demelza Robins", "Augustus Rookwood", "Thorfinn Rowle", "Albert Runcorn", "Newt Scamander", "Rufus Scrimgeour", "Kingsley Shacklebolt", "Stan Shunpike", "Aurora Sinistra", "Rita Skeeter", "Horace Slughorn", "Zacharias Smith", "Severus Snape", "Alicia Spinnet", "Pomona Sprout", "Pius Thicknesse", "Dean Thomas", "Andromeda Tonks", "Nymphadora Tonks", "Ted Tonks", "Sybill Trelawney", "Wilkie Twycross", "Dolores Umbridge", "Emmeline Vance", "Romilda Vane", "Septima Vector", "Lord Voldemort (Tom Marvolo Riddle)", "Moaning Myrtle", "Arthur Weasley", "Bill Weasley", "Charlie Weasley", "Fred Weasley", "George Weasley", "Ginny Weasley", "Hugo Weasley", "Molly Weasley", "Percy Weasley", "Ron Weasley", "Oliver Wood", "Rose Weasley", "Corban Yaxley", "Blaise Zabini", "Aragog", "Bane", "Beedle the Bard", "The Bloody Baron", "Bogrod", "Buckbeak", "Sir Cadogan", "Crookshanks", "Dobby", "Errol", "Fang", "The Fat Friar", "The Fat Lady", "Fawkes", "Firenze", "Fluffy", "Gornuk", "Grawp", "Griphook", "Hedwig", "Hokey", "Kreacher", "Magorian", "Great Aunt Muriel", "Nagini", "Nearly Headless Nick", "Norbert", "Peeves", "Pigwidgeon", "Madam Rosmerta", "Ronan", "Scabbers", "Scabior", "Travers", "Trevor", "Winky" ]
end

# Let's define how to create team 1's roster.
def select_team1_roster(full_list_of_players)
  team1_player_choices = full_list_of_players
  team1_roster = []
  while team1_roster.size < 7 do
  new_position = rand(team1_player_choices.size)
  new_player = team1_player_choices[new_position]
  team1_roster << new_player
  team1_player_choices.delete_at(new_position)
  end
  team1_roster
end

# Let's define how to pick 7 different players for team 2's roster.
def select_team2_roster(full_list_of_players, already_used_players)
  team2_player_choices = full_list_of_players - already_used_players
  team2_roster = []
  while team2_roster.size < 7 do
    new_position = rand(team2_player_choices.size)
    new_player = team2_player_choices[new_position]
    team2_roster << new_player
    team2_player_choices.delete_at(new_position)
  end
  team2_roster
end

# Let's assign positions.
def chasers(team_roster)
  chasers = [ team_roster[0], team_roster[1], team_roster[2] ]
end

def beaters(team_roster)
  beaters = [ team_roster[3], team_roster[4] ]
end

def seeker(team_roster)
  seeker = team_roster[5]
end

def keeper(team_roster)
  keeper = team_roster[6]
end



# Let's define game events where either team 1 scores, team 2 scores, team 1 saves, team 2 saves, team 1 bludgeons, team 2 bludgeons, nothing happens, or the snitch is caught.
def game_event(team1_roster, team2_roster, scores, teams)
  game_over = false
  event_chance = rand(100)
  team_chance = rand(2)
  if team_chance == 0
    chasers = chasers(team1_roster)
    keeper = keeper(team1_roster)
    beaters = beaters(team1_roster)
    target = team2_roster[rand(team2_roster.size)]
  elsif team_chance == 1
    chasers = chasers(team2_roster)
    keeper = keeper(team2_roster)
    beaters = beaters(team2_roster)
    target = team1_roster[rand(team1_roster.size)]
  end
  if event_chance < 42
    scorer = chasers[rand(chasers.size)]
    puts "[THRILLIUS MOTT]\n#{scorer} scores for #{teams[team_chance]}!"
    scores[team_chance] = scores[team_chance] + 10
    puts "The score is now #{teams[0]} #{scores[0]} - #{teams[1]} #{scores[1]}."
    `say "#{scorer}. Goal for #{teams[team_chance]}!"`
  elsif event_chance >= 42 && event_chance < 61
    save_type = [ "absurd", "stupendous", "mystical", "flexible", "mind bending", "transfigure-tastic", "phoenician" ]
    save_choice = "#{save_type[rand(save_type.size)]} save"
    puts "[THRILLIUS MOTT]\n#{keeper} with the #{save_choice} for #{teams[team_chance]}!"
    `say "#{keeper} with a #{save_choice}!"`
  elsif event_chance >= 61 && event_chance < 80
    hitter = beaters[rand(beaters.size)]
    hit_type = [ "Bone crushing!", "That's broken!", "CRUNCH!", "Bones are broken!", "Big time bruises there.", "Ouch.", "That's gonna leave a dark mark.", "Bludgeon attack!", "Bludging spree!", "Beater beatdown!", "Boom goes the bludgeon.", "Pretty soft slap.", "Bruise cruise.", "Just a flesh wound." ]
    hit_choice = hit_type[rand(hit_type.size)]
    puts "[THRILLIUS MOTT]\n#{hitter} on #{teams[team_chance]} just crushed #{teams[ 1 - team_chance ]} player #{target} with a bludger. #{hit_choice}"
    `say "#{hitter} bludgeoned #{target}. #{hit_choice}"`
  elsif event_chance >= 80 && event_chance < 97
    bored_statements = [ "Lots of movement but no big plays. Thoughts Clifton?", "Still #{scores[0]} to #{scores[1]} here Clifton.", "Maybe. Maybe?", "BORING!", "Aim for the hoops! THE HOOPS!", "Do something you bozos. What do you think, Clifton?", "That's not how you play Quidditch! You're doing nothing.", "They look like a bunch of muggles out there, Clifton.", "What was that?", "Um. Clifton, are you seeing this?", "They just keep going in circles, Clifton.", "This could not have been the game plan, Clifton.", "Where did that come from?", "Give me some analysis Clifton.", "Clifton, you're a legend of the game. Tell me why they just did that.", "Did you ever see that in your day Clifton?", "Tell the audience what you see, Clifton!", "No way. Thoughts, Clifton?", "We're still watching, but not much is happening.", "That's a pass!", "Steals it!", "From left. To right. And back again.", "They begin to move upfield.", "Speedy shuffle pass.", "There's the one-two combo!", "Can they get there?", "Here they come!", "Okay then...", "No can do that!", "That's a sure thing.", "They better not mess this up!", "So, what now Clifton?", "Give me a hot take Clifton." ]
    statement = bored_statements[rand(bored_statements.size)]
    puts "[THRILLIUS MOTT]\n#{statement}"
    `say "#{statement}"`
  elsif event_chance >= 97 && event_chance < 100
    game_over = snitch_sequence(team1_roster, team2_roster, scores, teams)
  end
  puts "\n"
  game_over
end

# The sequence if the snitch is near a seeker!
def snitch_sequence(team1_roster, team2_roster, scores, teams)
  puts "[THRILLIUS MOTT]\nWait! They're closing in on the snitch!"
  `say "Wait! They're closing in on the snitch!"`
  puts "\n"
  puts "[CLIFTON HAZELNUTS]\nWho will get there?"
  `say "Who will get there?"`
  puts "\n"
  puts "[THRILLIUS MOTT]\nIt's gonna be close..."
  `say "It's gonna be close..."`
  puts "\n"
  puts "[CLIFTON HAZELNUTS]\nLook!"
  `say "Look!"`
  puts "\n"
  snitch_roll = rand(5)
  seekers = [ seeker(team1_roster), seeker(team2_roster) ]
  if snitch_roll < 2
    if scores[snitch_roll] == scores[1 - snitch_roll] - 150 && scores[0] + scores[1] > 200
    # if scores[0] == scores[1] - 150 && scores[0] + scores[1] > 100
      scores[snitch_roll] = scores[snitch_roll] + 150
      puts "[THRILLIUS MOTT]\n#{seekers[snitch_roll]} has caught the golden snitch for #{teams[snitch_roll]}! 150 points and the tie!"
      `say "#{seekers[snitch_roll]} has caught the golden snitch for #{teams[snitch_roll]}! 150 points and the tie!"`
      caught = true
    elsif scores[snitch_roll] > scores[1 - snitch_roll] - 150
    # elsif scores[0] > scores[1] - 150
      scores[snitch_roll] = scores[snitch_roll] + 150
      puts "[THRILLIUS MOTT]\n#{seekers[snitch_roll]} has caught the golden snitch for #{teams[snitch_roll]}! 150 points and the win!"
      `say "#{seekers[snitch_roll]} has caught the golden snitch for #{teams[snitch_roll]}! 150 points and the win!"`
      caught = true
    else
      puts "[THRILLIUS MOTT]\n#{seekers[snitch_roll]} on #{teams[snitch_roll]} blocks #{seekers[1 - snitch_roll]} from getting the golden snitch and the win for #{teams[1 - snitch_roll]}!"
      `say "#{seekers[snitch_roll]} on #{teams[snitch_roll]} blocks #{seekers[1 - snitch_roll]} from getting the golden snitch and the win for #{teams[1 - snitch_roll]}!"`
      caught = false
    end
  else
    lost_snitch = [ "The seekers have collided and fallen off their brooms! What a disaster. The snitch has vanished.", "They're diving for the ground. And they hit it! The snitch didn't though. On we go.", "Look at that! A bludger just smacked them both off the trail. The snitch escapes!", "They just stopped. Maybe the sun got in their eyes? That's just bad seeking, but the snitch has faded back into oblivion." ]
    lost_statement = lost_snitch[rand(lost_snitch.size)]
    puts "[THRILLIUS MOTT]\n#{lost_statement}"
    `say "#{lost_statement}"`
    caught = false
  end
  caught
end

# Let's play a game of Quidditch!
def game
  positions = [ "Chaser", "Chaser", "Chaser", "Beater", "Beater", "Seeker", "Keeper" ]
  players = build_full_list_of_players
  teams = select_teams
  game_over = false

  puts "\nWelcome to Thrillmot's Quidditch Simulator!"
  puts "(turn your sound on!)"
  `say "Welcome to Thrillmot's Quidditch Simulator"`
  puts "\n"
  puts "============================================="
  sleep 0.25
  puts "============================================="
  puts "              _            _.,----,"
  sleep 0.25
  puts " __  _.-._ / '-.        -  ,._  \\) "
  puts "|  `-)_   '-.   \\       / < _ )/\" }"
  puts "/__    '-.   \\   '-, ___(c-(6)=(6)"
  sleep 0.5
  puts " , `'.    `._ '.  _,'   >\\    \"  )"
  puts " :;;,,'-._   '---' (  ( \"/`. -='/"
  puts ";:;;:;;,  '..__    ,`-.`)'- '--'"
  sleep 0.25
  puts ";';:;;;;;'-._ /'._|   Y/   _/' \\"
  puts "      '''\"._ F    |  _/ _.'._   `\\"
  puts "             L    \\   \\/     '._  \\"
  sleep 0.25
  puts "      .-,-,_ |     `.  `'---,  \\_ _|"
  puts "      //    'L    /  \\,   (\"--',=`)7"
  puts "     | `._       : _,  \\  /'`-._L,_'-._"
  sleep 0.25
  puts "     '--' '-.\\__/ _L   .`'         './/"
  puts "                 [ (  /"
  puts "                  ) `{"
  puts "                  \\__)"
  puts "============================================="
  puts "============================================="
  puts "\n"
  sleep 1

  puts "[THRILLIUS MOTT]\nI'm Thrillius Mott."
  `say "I'm Thrillius Mott."`
  puts "\n"
  puts "[CLIFTON HAZELNUTS]\nAnd I'm Clifton Hazelnuts. Welcome to QSPN."
  `say "And I'm Clifton Hazelnuts. Welcome to QSPN."`
  puts "\n"
  puts "[THRILLIUS MOTT]\nToday's matchup is between #{teams[0]} and #{teams[1]}."
  `say "Today's matchup is between #{teams[0]} and #{teams[1]}."`
  puts "\n"
  puts "[GAMBLING GOBLIN]\nWhat team do you want to bet on?"
  `say "What team do you want to bet on?"`

  bet_team = gets.strip

  puts "\n"
  puts "[GAMBLING GOBLIN]\nHow much do you want to bet?"
  `say "How much do you want to bet?"`

  bet_amount = gets.strip

  puts "\n"
  puts "[GAMBLING GOBLIN]\nYou bet #{bet_amount} galleons on #{bet_team}."
  `say "You bet #{bet_amount} galleons on #{bet_team}."`
  puts "\n"
  sleep 1

  def position_roster(positions, team_roster)
    n = 0
    while n < positions.size do
      puts "• #{positions[n]}: #{team_roster[n]}"
      `say "#{positions[n]}: #{team_roster[n]}"`
      n += 1
    end
    puts "\n"
    sleep 1
  end

  team1_roster = select_team1_roster(players)
  
  puts "[CLIFTON HAZELNUTS]\nThe #{teams[0]} roster is:"
  `say "The #{teams[0]} roster is:"`
  position_roster(positions, team1_roster)

  team2_roster = select_team2_roster(players, team1_roster)
  puts "[THRILLIUS MOTT]\nWhile the #{teams[1]} roster is:"
  `say "While the #{teams[1]} roster is:"`
  position_roster(positions, team2_roster)

  team1_score = 0
  team2_score = 0
  scores = [ team1_score, team2_score ]
  puts "[CLIFTON HAZELNUTS]\nLet's get today's game started. The score is #{teams[0]} #{scores[0]} - #{teams[1]} #{scores[1]} because that's how games start."
  `say "Let's get today's game started. The score is #{teams[0]} #{scores[0]} to #{teams[1]} #{scores[1]} because that's how games start."`
  puts "\n"
  sleep 1
  puts "[THRILLIUS MOTT]\nI can't wait!"
  `say "I can't wait!"`
  puts "\n"
  sleep 1
  puts "[REFEREE]\nBrooms up players..."
  `say "Brooms up players..."`
  puts "\n"
  sleep 2
  puts "[WHISTLE]\nTweet tweet tweet tweeweeweweeweeeeet!"
  `say "Tweet tweet tweet tweeweeweweeweeeeet!"`
  puts "\n"
  sleep 1
  puts "[THRILLIUS MOTT]\nAnd we're off!"
  `say "And we're off!"`
  puts "\n"

  loop do
    sleep_timer = [ 0.1, 0.2, 0.3 ]
    sleep sleep_timer[rand(sleep_timer.size)]
    game_over = game_event(team1_roster, team2_roster, scores, teams)
    phrases = [ "GREAT GRINGOTTS THRILLIUS!", "Crazy game, eh Thrillius?!", "Quidditch is quite grand, Thrillius. Quite grand.", "It's #{scores[0]} to #{scores[1]}.", "The player who must not be named!", "As potent as a polyjuice potion.", "Back from the dead! Rise phoenix! Fly like the feathered furball you are!", "Find some floo powder. They're on fire!", "That'll be on the Daily Prophet front page Thrillius!", "Are they drinking unicorn blood, Thrillius?", "What a performance we're seeing!", "Magical! Just magical!", "BOOMSHAKALAKA!", "The stuff of witchcraft legends!", "Even a muggle would love that.", "I'm speechless. DID YOU SEE THAT?", "WHOA! The snitch just spilled my butter beer!", "Has anyone seen the snitch?", "Between the legs!" , "That robe is falling apart. Wardrobe malfunction!", "I'd like to apparate on down to Chomper's Chicken Shack to be honest. I had a late night, and I could use some pumpkin juice fried chicken wings. Maybe polish it off with some chocolate frogs.", "It's a flying V!", "Well. You need to stay on your broom to win at this sport Thrillius.", "There's nothing wrong with an old-fashioned clobberfest.", "Bet they're buzzed at the Hog's Head tonight after that Thrillius!", "Quaffle. Quaffle. Waffle! Now that's some ball movement with a drizzle of syrup.", "Un-BLUDGE-lievable!", "Snap. Crackle. Pop. The bones met a rock.", "Get out the Skele-grow Thrillius!", "WILD SHOT!", "From Diagon Alley!", "That keeper's gone cr-cr-cr-crazy!", "Can you say Nimbus 9000 Thrillius?", "Sneaky play. Welcome to the sly wizard tournament.", "Put your wand away Thrillius.", "Someone call the gambling goblin! I got galleons to burn.", "NO! NO! NO!", "As sweet as a Cauldron Cake!", "I'm not sure if I want to vomit or chug my butter beer. That play was as tasty and disgusting as a Bertie Botts Every Flavored Bean.", "TAKING THE KNIGHT BUS TO NOWHERE!", "What a steal! It's like a hinkypunk hoe down.", "Ahhh OOOOOOOOO. Howl baby! The werewolves are out tonight!", "Accio goals!", "Well Dumble my Dore.", "Wamp. That. Willow.", "Great balls of dragon fire!", "Sent like a centaur!", "That seeker is sneakier than a house elf.", "I don't like seekers.", "They put the dumb in Dumbledore.", "They're colder than a dementor's tonsels.", "They've got more drive than a death eater.", "Did they just apparate?", "I bet if they looked at a boggart all they'd see is a bludgeon.", "Great gillyweed! Lock 'em in Azkaban!", "Oof. The crowd is moaning like a mess of mandrakes.", "Hoot. Hoot. Hoot. Hoot. HOOT. The owls are out Thrillius!", "Well you go and butter my beer then.", "Change in quaffle possession! They put the mug in muggle.", "Grab a portkey! We're going to Hogsmeade.", "Good goblins! That was gratuitous!", "That went through them like a ghost!", "They're deader than all the birds that aren't phoenixes.", "Where are my pumpkin chicken wings?!", "Hold on. I'm pouring myself a shot of fire whiskey.", "The crowd is angrier than an acromantula.", "Divination engaged! Now get me the gambling goblin.", "Well there goes a galleon.", "Hey Thrillius, you want to bet a galleon on that happening again?", "That reminded me of merpeople. Blah.", "Thrillius. Make a bet with me.", "Thrillius. I'll bet you a galleon that robe falls off on the next play.", "ENGORGIO!", "They're flopping around like some flobberworms.", "Skele-grow. Skele-grow. Skele-grow.", "The crowd is celebrating like some house elves with some dirty laundry!", "Was that a sloth grip roll to dodge that bludger?", "Even a squib can seek better than that.", "Sometimes I just don't know about this sport.", "Wait. What's the score Thrillius?", "Unforgivable annihilation!", "Incendio!", "I'm down to my last sickles. Come here you gambling goblin.", "This game is giving me a headache. Time for a tipple at the Leaky Cauldron.", "PUMPKIN. CHICKEN. WINGS." ]
    chatty = rand(3)
    if chatty <= 1
      comment = phrases[rand(phrases.size)]
      puts "[CLIFTON HAZELNUTS]\n#{comment}"
      `say "#{comment}"`
      puts "\n"
    end
    if game_over == true
      break
    end
  end
  puts "[THRILLIUS MOTT]\nThe final score is #{teams[0]} #{scores[0]} - #{teams[1]} #{scores[1]}."
  `say "The final score is #{teams[0]} #{scores[0]}, #{teams[1]} #{scores[1]}."`
  puts "\n"
  new_position = rand(2)
  if scores[0] != scores[1]
    if scores[0] > scores[1]
      winner = teams[0]
      mvp = team1_roster[rand(team1_roster.size)]
    elsif scores [1] > scores[0]
      winner = teams[1]
      mvp = team2_roster[rand(team2_roster.size)]
    end
    puts "[THRILLIUS MOTT]\n#{winner} wins!\n"
    `say "#{winner} wins!"`
  elsif new_position.odd?
    mvp = team2_roster[rand(team2_roster.size)]
    puts "[THRILLIUS MOTT]\nTie game!\n"
    `say "Tie game!"`
    winner = "Nobody"
  else
    mvp = team1_roster[rand(team1_roster.size)]
    puts "[THRILLIUS MOTT]\nTie game!\n"
    `say "Tie game!"`
    winner = "Nobody"
  end
  puts "\n"
  puts "[CLIFTON HAZELNUTS]\nThe player of the game is #{mvp}.\n"
  `say "The player of the game is #{mvp}!"`
  if winner == "Gryffindor"
    puts "                    ,."
    puts "                    ,_> `.   ,';"
    puts "                ,-`'      `'   '`'._"
    puts "             ,,-) ---._   |   .---''`-),."
    puts "           ,'      `.  \\  ;  /   _,'     `,"
    puts "        ,--' ____       \\   '  ,'    ___  `-,"
    puts "       _>   /--. `-.              .-'.--\\   \\__"
    puts "      '-,  (    `.  `.,`~ \\~'-. ,' ,'    )    _\\"
    puts "      _>    \\     \\ ,'  ') )   `. /     /    <,."
    puts "   ,-'   _,  \\    ,'    ( /      `.    /        `-,"
    puts "   `-.,-'     `.,'       `         `.,'  `\\    ,-'"
    puts "    ,'       _  /   ,,,      ,,,     \\     `-. `-._"
    puts "   /-,     ,'  ;   ' _ \\    / _ `     ; `.     `(`-\\"
    puts "    /-,        ;    (o)      (o)      ;          `'`,"
    puts "  ,~-'  ,-'    \\     '        `      /     \\      <_"
    puts "  /-. ,'        \\                   /       \\     ,-'"
    puts "    '`,     ,'   `-/             \\-' `.      `-. <"
    puts "     /_    /      /   (_     _)   \\    \\          `,"
    puts "       `-._;  ,' |  .::.`-.-' :..  |       `-.    _\\"
    puts "         _/       \\  `:: ,^. :.:' / `.        \\,-'"
    puts "       '`.   ,-'  /`-..-'-.-`-..-'\\            `-."
    puts "         >_ /     ;  (\\/( ' )\\/)  ;     `-.    _<"
    puts "         ,-'      `.  \\`-^^^-'/  ,'        \\ _<"
    puts "          `-,  ,'   `. `\"\"\"\"\"' ,'   `-.   <`'"
    puts "            ')        `._.,,_.'        \\ ,-'"
    puts "             '._        '`'`'   \\       <"
    puts "                >   ,'       ,   `-.   <`'"
    puts "                 `,/          \\      ,-`"
    puts "                  `,   ,' |   /     /"
    puts "                   '; /   ;        ("
    puts "                    _)|   `       ("
    puts "                    `')         .-'"
    puts "                      <_   \\   /"
    puts "                        \\   /\\("
    puts "                         `;/  `"
    puts "\n"
  elsif winner == "Slytherin"
    puts "       ---_ ......._-_--."
    puts "      (|\\ /      / /| \\  \\"
    puts "      /  /     .'  -=-'   `."
    puts "     /  /    .'             )"
    puts "   _/  /   .'        _.)   /"
    puts "  / o   o        _.-' /  .'"
    puts "  \\          _.-'    / .'*|"
    puts "   \\______.-'//    .'.' \\*|"
    puts "    \\|  \\ | //   .'.' _ |*|"
    puts "     `   \\|//  .'.'_ _ _|*|"
    puts "      .  .// .'.' | _ _ \\*|"
    puts "      \\`-|\\_/ /    \ _ _ \\*\\"
    puts "       `/'\__/      \\ _ _ \\*\\"
    puts "      /^|            \\ _ _ \\*"
    puts "     '  `             \\ _ _ \\"
    puts "\n"
  elsif winner == "Ravenclaw"
    puts "                                                 ,::::.._"
    puts "                                               ,':::::::::."
    puts "                                           _,-'`:::,::(o)::`-,.._"
    puts "                                        _.', ', `:::::::::;'-..__`."
    puts "                                   _.-'' ' ,' ,' ,\\:::,'::-`'''"
    puts "                               _.-'' , ' , ,'  ' ,' `:::/"
    puts "                         _..-'' , ' , ' ,' , ,' ',' '/::"
    puts "                 _...:::'`-..'_, ' , ,'  , ' ,'' , ,'::|"
    puts "              _`.:::::,':::::,'::`-:..'_',_'_,'..-'::,'|"
    puts "      _..-:::'::,':::::::,':::,':,'::,':::,'::::::,':::;"
    puts "        `':,'::::::,:,':::::::::::::::::':::,'::_:::,'/"
    puts "        __..:'::,':::::::--''' `-:,':,':::'::-' ,':::/"
    puts "   _.::::::,:::.-''-`-`..'_,'. ,',  , ' , ,'  ', `','"
    puts " ,::SSt:''''`                 \\:. . ,' '  ,',' '_,'"
    puts "                               ``::._,'_'_,',.-'"
    puts "                                   \\\\ \\\\"
    puts "                                    \\\\_\\\\"
    puts "                                     \\\\`-`.-'_"
    puts "                                  .`-.\\\\__`. ``"
    puts "                                     ``-.-._"
    puts "                                         `"
    puts "\n"
  elsif winner == "Hufflepuff"
    puts "                ___,,___"
    puts "           _,-='=- =-  -`\"--.__,,.._"
    puts "        ,-;// /  - -       -   -= - \"=."
    puts "      ,'///    -     -   -   =  - ==-=\\`."
    puts "     |/// /  =    `. - =   == - =.=_,,._ `=/|"
    puts "    ///    -   -    \\  - - = ,ndDMHHMM/\\b  \\\\"
    puts "  ,' - / /        / /\\ =  - /MM(,,._`YQMML  `|"
    puts " <_,=^Kkm / / / / ///H|wnWWdMKKK#\"\"-;. `\"0\\  |"
    puts "        `\"\"QkmmmmmnWMMM\\\"\"WHMKKMM\\   `--. \\> \\"
    puts "              `\"\"'  `->>>    ``WHMb,.    `-_<@)"
    puts "                                `\"QMM`."
    puts "                                   `>>>"
    puts "\n"
  end
  if winner == bet_team
    puts "[GAMBLING GOBLIN]\nYou won your bet. Galleons galore! #{bet_amount} to be exact."
    `say "You won your bet. Galleons galore! #{bet_amount} to be exact."`
    puts "\n"
  else
    puts "[GAMBLING GOBLIN]\nYou lost your bet. Maybe you can't spell. Either way, you owe me galleons. #{bet_amount} to be exact."
    `say "You lost your bet. Maybe you can't spell. Either way, you owe me galleons. #{bet_amount} to be exact."`
    puts "\n"
  end
end

game