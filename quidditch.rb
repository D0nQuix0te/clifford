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
  [ "Hannah Abbott", "Ludo Bagman", "Bathilda Bagshot", "Katie Bell", "Cuthbert Binns", "Phineas Nigellus Black", "Sirius Black", "Amelia Bones", "Susan Bones", "Terry Boot", "Lavender Brown", "Millicent Bulstrode", "Charity Burbage", "Frank Bryce", "Alecto Carrow", "Amycus Carrow", "Reginald Cattermole", "Mary Cattermole", "Cho Chang", "Penelope Clearwater", "Mrs. Cole", "Michael Corner", "Crabbe", "Vincent Crabbe", "Colin Creevey", "Dennis Creevey", "Dirk Cresswell", "Barty Crouch Sr", "Barty Crouch Jr", "Roger Davies", "John Dawlish", "Fleur Delacour", "Gabrielle Delacour", "Dedalus Diggle", "Amos Diggory", "Cedric Diggory", "Elphias Doge", "Antonin Dolohov", "Aberforth Dumbledore", "Albus Dumbledore", "Ariana Dumbledore", "Kendra Dumbledore", "Percival Dumbledore", "Dudley Dursley", "Marge Dursley", "Petunia Dursley", "Vernon Dursley", "Marietta Edgecombe", "Arabella Figg", "Argus Filch", "Justin Finch-Fletchley", "Seamus Finnigan", "Marcus Flint", "Mundungus Fletcher", "Filius Flitwick", "Florean Fortescue", "Cornelius Fudge", "Marvolo Gaunt", "Merope Gaunt", "Morfin Gaunt", "Anthony Goldstein", "Goyle", "Gregory Goyle", "Hermione Granger", "Gregorovitch", "Fenrir Greyback", "Gellert Grindelwald", "Wilhelmina Grubbly-Plank", "Rubeus Hagrid", "Rolanda Hooch", "Mafalda Hopkirk", "Angelina Johnson", "Lee Jordan", "Igor Karkaroff", "Viktor Krum", "Silvanus Kettleburn", "Bellatrix Lestrange", "Rabastan Lestrange", "Rodolphus Lestrange", "Gilderoy Lockhart", "Alice Longbottom", "Frank Longbottom", "Augusta Longbottom", "Neville Longbottom", "Luna Lovegood", "Xenophilius Lovegood", "Remus Lupin", "Teddy Lupin", "Walden Macnair", "Draco Malfoy", "Lucius Malfoy", "Narcissa Malfoy", "Scorpius Malfoy", "Madam Malkin", "Griselda Marchbanks", "Olympe Maxime", "Ernie Macmillan", "Minerva McGonagall", "Cormac McLaggen", "Graham Montague", "Alastor (Mad-Eye) Moody", "Theodore Nott", "Bob Ogden", "Garrick Ollivander", "Pansy Parkinson", "Padma Patil", "Parvati Patil", "Peter Pettigrew", "Antioch Peverell", "Cadmus Peverell", "Ignotus Peverell", "Irma Pince", "Sturgis Podmore", "Poppy Pomfrey", "Harry Potter", "James Potter", "Lily Potter", "Albus Severus Potter", "James Sirius Potter", "Lily Luna Potter", "Quirinus Quirrell", "Helena Ravenclaw", "Mary Riddle", "Thomas Riddle", "Tom Marvolo Riddle", "Tom Riddle Sr.", "Demelza Robins", "Augustus Rookwood", "Thorfinn Rowle", "Albert Runcorn", "Newt Scamander", "Rufus Scrimgeour", "Kingsley Shacklebolt", "Stan Shunpike", "Aurora Sinistra", "Rita Skeeter", "Horace Slughorn", "Zacharias Smith", "Severus Snape", "Alicia Spinnet", "Pomona Sprout", "Pius Thicknesse", "Dean Thomas", "Andromeda Tonks", "Nymphadora Tonks", "Ted Tonks", "Sybill Trelawney", "Wilkie Twycross", "Dolores Umbridge", "Emmeline Vance", "Romilda Vane", "Septima Vector", "Lord Voldemort (Tom Marvolo Riddle)", "Myrtle Warren/Moaning Myrtle", "Arthur Weasley", "Bill Weasley", "Charlie Weasley", "Fred Weasley", "George Weasley", "Ginny Weasley", "Hugo Weasley", "Molly Weasley", "Percy Weasley", "Ron Weasley", "Oliver Wood", "Rose Weasley", "Corban Yaxley", "Blaise Zabini", "Aragog", "Bane", "Beedle the Bard", "The Bloody Baron", "Bogrod", "Buckbeak", "Sir Cadogan", "Crookshanks", "Dobby", "Errol", "Fang", "The Fat Friar", "The Fat Lady", "Fawkes", "Firenze", "Fluffy", "Gornuk", "Grawp", "Griphook", "Hedwig", "Hokey", "Kreacher", "Magorian", "Great Aunt Muriel", "Nagini", "Nearly Headless Nick", "Norbert", "Peeves", "Pigwidgeon", "Madam Rosmerta", "Ronan", "Scabbers", "Scabior", "Travers", "Trevor", "Winky" ]
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

def keeper(team_roster)
  keeper = team_roster[5]
end

def seeker(team_roster)
  seeker = team_roster[6]
end

# Let's define game events where either team 1 scores, team 2 scores, team 1 saves, team 2 saves, team 1 bludgeons, team 2 bludgeons, nothing happens, or the snitch is caught.
def game_event(team1_roster, team2_roster, scores, teams)
  game_over = false
  event_chance = rand(100)
  if event_chance < 20
    chasers = chasers(team1_roster)
    scorer = chasers[rand(chasers.size)]
    puts "#{scorer} has scored for #{teams[0]}!"
    scores[0] = scores[0] + 10
    puts "The score is now #{teams[0]} #{scores[0]} - #{teams[1]} #{scores[1]}."
  elsif event_chance >= 20 && event_chance < 40
    chasers = chasers(team2_roster)
    scorer = chasers[rand(chasers.size)]
    puts "#{scorer} has scored for #{teams[1]}!"
    scores[1] = scores[1] + 10
    puts "The score is now #{teams[0]} #{scores[0]} - #{teams[1]} #{scores[1]}."
  elsif event_chance >= 40 && event_chance < 50
    keeper = keeper(team1_roster)
    puts "#{keeper} with a fantastic save for #{teams[0]}!"
  elsif event_chance >= 50 && event_chance < 60
    keeper = keeper(team2_roster)
    puts "#{keeper} with an incredible save for #{teams[1]}!"
  elsif event_chance >= 60 && event_chance < 70
    beaters = beaters(team1_roster)
    hitter = beaters[rand(beaters.size)]
    puts "#{hitter} on #{teams[0]} just crushed #{teams[1]} player #{team2_roster[rand(team2_roster.size)]}. Bone crushing!"
  elsif event_chance >= 70 && event_chance < 80
    beaters = beaters(team2_roster)
    hitter = beaters[rand(beaters.size)]
    puts "#{hitter} on #{teams[1]} just crushed #{teams[0]} player #{team1_roster[rand(team1_roster.size)]}. Great Gringotts!"
  elsif event_chance >= 80 && event_chance < 98
    puts "Lots of movement but no big plays to report!"
  elsif event_chance >= 98 && event_chance < 100
    puts "Chance hit #{event_chance}"
    game_over = snitch_sequence(team1_roster, team2_roster, scores, teams)
  end
  game_over
end

# The sequence if the snitch is near a seeker!
def snitch_sequence(team1_roster, team2_roster, scores, teams)
  puts "Wait! They're closing in on the snitch!"
  snitch_team = rand(2)
  seekers = [ seeker(team1_roster), seeker(team2_roster) ]
  if scores[snitch_team] == scores[1 - snitch_team] - 150 && scores[0] + scores[1] > 200
  # if scores[0] == scores[1] - 150 && scores[0] + scores[1] > 100
    scores[snitch_team] = scores[snitch_team] + 150
    puts "#{seekers[snitch_team]} has caught the golden snitch for #{teams[snitch_team]}! 150 points and the tie!"
    game_over = true
  elsif scores[snitch_team] > scores[1 - snitch_team] - 150
  # elsif scores[0] > scores[1] - 150
    scores[snitch_team] = scores[snitch_team] + 150
    puts "#{seekers[snitch_team]} has caught the golden snitch for #{teams[snitch_team]}! 150 points and the win!"
    game_over = true
  else
    puts "#{seekers[snitch_team]} on #{teams[snitch_team]} blocks #{seekers[1 - snitch_team]} from getting the golden snitch and the win for #{teams[1 - snitch_team]}!"
    game_over = false
  end
  game_over
end

def game
  positions = [ "Chaser", "Chaser", "Chaser", "Beater", "Beater", "Seeker", "Keeper" ]
  players = build_full_list_of_players
  teams = select_teams
  game_over = false

  puts "Today's matchup is between #{teams[0]} and #{teams[1]}."

  team1_roster = select_team1_roster(players)
  puts "The #{teams[0]} roster is:"
  n = 0
  while n < positions.size do
    puts "• #{positions[n]}: #{team1_roster[n]}"
    n += 1
  end

  team2_roster = select_team2_roster(players, team1_roster)
  puts "The #{teams[1]} roster is:"
  n = 0
  while n < positions.size do
    puts "• #{positions[n]}: #{team2_roster[n]}"
    n += 1
  end

  team1_score = 0
  team2_score = 0
  scores = [ team1_score, team2_score ]
  puts "Let's get today's game started. The score is #{teams[0]} #{scores[0]} - #{teams[1]} #{scores[1]} because that's how games start."
  puts "REFEREE: Brooms up players! BBRRRGHHHHHHH!"
  puts "And we're off!"

  loop do
    puts "Another minute down!"
    sleep 1
    game_over = game_event(team1_roster, team2_roster, scores, teams)
    if game_over == true
      break
    end
  end
  puts "The final score is #{teams[0]} #{scores[0]} - #{teams[1]} #{scores[1]}."
end

game