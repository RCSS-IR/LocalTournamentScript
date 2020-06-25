# Local Tournament Script
## You can use this repository to run soccer simulation tournament.

#### clone https://github.com/RCSS-IR/LocalTournamentScript.git

#### cd LocalTournamentScript

#### add your games in games
```
cyrus helios
oxsy fra
```
#### assign color for each team in colors
```
dml #EF2929
opu #8AE234
fcp #79c4c4
itandroids #A430B7
yushan #0029FF
kn2c #f1ff73
cyrus #FF99FF
```
#### add start of each team in run_team.sh

<pre>
if [[ $1 = *"<b>simple_team_name</b>"* ]]; then
  cd <b>team_path</b> && ./<b>startfile</b> &> $out
fi
</pre>

Examples:
```
if [[ $1 = *"cyrus"* ]]; then
  cd /home/nader/Desktop/bins/remotecup1/major/final/c2 && ./start.sh &> $out
fi

if [[ $1 = *"razi"* ]]; then
  cd /home/nader/Desktop/bins/remotecup2/bins/razi && ./startAll &> $out
fi

if [[ $1 = *"oxsy"* ]]; then
  cd /home/nader/Desktop/bins/remotecup2/bins/oxsy && ./startlocal &> $out
fi

```
#### ./run.sh output_path
