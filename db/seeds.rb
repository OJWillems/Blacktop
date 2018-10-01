User.create(name: "Ollie", wins: 2, losses: 1, smack_talk: "Show me what you got", budget: 1000000)
User.create(name: "Mike", wins: 4, losses: 1, smack_talk: "Your mom is overweight", budget: 1000000)
User.create(name: "Evans", wins: 1, losses: 10, smack_talk: "It don't make no sense", budget: 1000000)
User.create(name: "Brooke", wins: 100, losses: 0, smack_talk: "You call that a method?", budget: 1000000)

Game.create(home_score: 0, away_score: 0, quarter_updates: "It's the end of the first quarter")
Game.create(home_score: 10, away_score: 20, quarter_updates: "It's the end of the second quarter")
Game.create(home_score: 30, away_score: 40, quarter_updates: "It's the end of the third quarter")
Game.create(home_score: 45, away_score: 35, quarter_updates: "It's the end of the fourth quarter")

Player.create(name: "LeBron James", team: "Los Angeles Lakers", position: "SF", overall_rating: 98, ppg: 28, off_rating: 99, def_rating: 97, price: 200, user_id: 1, game_id: 1)
Player.create(name: "Kevin Durant", team: "Golden State Warriors", position: "SF", overall_rating: 97, ppg: 28, off_rating: 99, def_rating: 90, price: 195, user_id: 1, game_id: 2)
Player.create(name: "James Harden", team: "Houston Rockets", position: "SG", overall_rating: 96, ppg: 28, off_rating: 99, def_rating: 88, price: 190, user_id: 1, game_id: 3)
Player.create(name: "Steph Curry", team: "Golden State Warriors", position: "PG", overall_rating: 95, ppg: 28, off_rating: 96, def_rating: 94, price: 185, user_id: 1, game_id: 4)
Player.create(name: "Anthony Davis", team: "New Orleans Pelicans", position: "PF", overall_rating: 94, ppg: 28, off_rating: 96, def_rating: 86, price: 180, user_id: 1, game_id: 1)
Player.create(name: "Giannis Antetokounmpo", team: "Milwaukee Bucks", position: "SF", overall_rating: 94, ppg: 27, off_rating: 95, def_rating: 93, price: 180, user_id: 1, game_id: 1)
Player.create(name: "Kawhi Leonard", team: "Toronto Raptors", position: "SF", overall_rating: 94, ppg: 16, off_rating: 88, def_rating: 98, price: 150, user_id: 1, game_id: 1)
Player.create(name: "Russell Westbrook", team: "Oklahoma City Thunder", position: "PG", overall_rating: 93, ppg: 25, off_rating: 96, def_rating: 88, price: 150, user_id: 1, game_id: 1)
Player.create(name: "Kyrie Irving", team: "Boston Celtics", position: "PG", overall_rating: 93, ppg: 24, off_rating: 95, def_rating: 92, price: 150, user_id: 1, game_id: 1)
Player.create(name: "Karl-Anthony Towns", team: "Minnesota Timberwolves", position: "C", overall_rating: 91, ppg: 21, off_rating: 90, def_rating: 90, price: 130, user_id: 1, game_id: 1)
Player.create(name: "Chris Paul", team: "Houston Rockets", position: "PG", overall_rating: 90, ppg: 19, off_rating: 90, def_rating: 88, price: 125, user_id: 1, game_id: 1)
Player.create(name: "Damian Lillard", team: "Portland Trail Blazers", position: "PG", overall_rating: 90, ppg: 27, off_rating: 93, def_rating: 85, price: 125, user_id: 1, game_id: 1)
Player.create(name: "DeMarcus Cousins", team: "Golden State Warriors", position: "C", overall_rating: 90, ppg: 25, off_rating: 86, def_rating: 92, price: 125, user_id: 1, game_id: 1)
Player.create(name: "Joel Embiid", team: "Philadelphia 76ers", position: "C", overall_rating: 90, ppg: 23, off_rating: 90, def_rating: 90, price: 125, user_id: 1, game_id: 1)
Player.create(name: "DeMar DeRozan", team: "San Antonio Spurs", position: "SG", overall_rating: 89, ppg: 23, off_rating: 90, def_rating: 86, price: 100, user_id: 1, game_id: 1)
Player.create(name: "Jimmy Butler", team: "Minnesota Timberwolves", position: "SG", overall_rating: 89, ppg: 22, off_rating: 86, def_rating: 91, price: 100, user_id: 1, game_id: 1)
Player.create(name: "John Wall", team: "Washington Wizard", position: "PG", overall_rating: 89, ppg: 20, off_rating: 91, def_rating: 85, price: 100, user_id: 1, game_id: 1)
Player.create(name: "Nikola Jokic", team: "Denver Nuggets", position: "C", overall_rating: 89, ppg: 19, off_rating: 86, def_rating: 88, price: 100, user_id: 1, game_id: 1)
Player.create(name: "Paul George", team: "Oklahoma City Thunder", position: "SF", overall_rating: 89, ppg: 22, off_rating: 86, def_rating: 90, price: 100, user_id: 1, game_id: 1)
Player.create(name: "Klay Thompson", team: "Golden State Warriors", position: "SG", overall_rating: 89, ppg: 20, off_rating: 92, def_rating: 83, price: 100, user_id: 1, game_id: 1)
Player.create(name: "Gordon Hayward", team: "Boston Celtics", position: "SF", overall_rating: 88, ppg: 15, off_rating: 82, def_rating: 88, price: 85, user_id: 1, game_id: 1)
Player.create(name: "Kristaps Porzingis", team: "New York Knicks", position: "C", overall_rating: 88, ppg: 23, off_rating: 86, def_rating: 87, price: 85, user_id: 1, game_id: 1)
Player.create(name: "LaMarcus Aldridge", team: "San Antonio Spurs", position: "PF", overall_rating: 88, ppg: 23, off_rating: 83, def_rating: 86, price: 85, user_id: 1, game_id: 1)
Player.create(name: "Victor Oladipo", team: "Indiana Pacers", position: "SG", overall_rating: 88, ppg: 23, off_rating: 88, def_rating: 80, price: 85, user_id: 1, game_id: 1)
Player.create(name: "Andre Drummond", team: "Detroit Pistons", position: "C", overall_rating: 87, ppg: 15, off_rating: 86, def_rating: 84, price: 60, user_id: 1, game_id: 1)
Player.create(name: "Ben Simmons", team: "Philadelphia 76ers", position: "SF", overall_rating: 87, ppg: 16, off_rating: 87, def_rating: 84, price: 60, user_id: 1, game_id: 1)
Player.create(name: "Bradley Beal", team: "Washington Wizards", position: "SG", overall_rating: 87, ppg: 23, off_rating: 85, def_rating: 84, price: 60, user_id: 1, game_id: 1)
Player.create(name: "C.J. McCollum", team: "Portland Trail Blazers", position: "SG", overall_rating: 87, ppg: 21, off_rating: 85, def_rating: 82, price: 60, user_id: 1, game_id: 1)
Player.create(name: "Devin Booker", team: "Pheonix Suns", position: "SG", overall_rating: 87, ppg: 25, off_rating: 87, def_rating: 82, price: 60, user_id: 1, game_id: 1)
Player.create(name: "Donovan Mitchell", team: "Utah Jazz", position: "SG", overall_rating: 87, ppg: 21, off_rating: 85, def_rating: 84, price: 60, user_id: 1, game_id: 1)
