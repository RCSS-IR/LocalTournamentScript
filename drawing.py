import random


T_1_2 = ['helios', 'cyrus']
T_3_4 = ['yushan', 'razi']
T_5_6 = ['fra', 'itandroids']
T_7_8 = ['fcp', 'rione']
other_teams = ['riton', 'mars', 'dml', 'kn2c', 'opu', 'namira', 'oxsy', '']

random.shuffle(T_1_2)
random.shuffle(T_3_4)
random.shuffle(T_5_6)
random.shuffle(T_7_8)
random.shuffle(other_teams)
games = [(T_1_2[0], other_teams[0]),
         (T_7_8[0], other_teams[1]),
         (T_3_4[0], other_teams[2]),
         (T_5_6[0], other_teams[3]),
         (T_1_2[1], other_teams[4]),
         (T_7_8[1], other_teams[5]),
         (T_3_4[1], other_teams[6]),
         (T_5_6[1], other_teams[7])]

file = open('/home/nader/Desktop/bins/remotecup2/games', 'w')
for g in games:
    print(g)
    if g[0] == '' or g[1] == '':
        continue
    file.write(g[0] + ' ' + g[1] + '\n')
