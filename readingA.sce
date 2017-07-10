# reading1	TR=3seconds  reps=72    discard the first 2 afterward 
#The paradigm is 8 scans on (24"), and 6 (18") off. Cycle is 42". HPF is 84.
#Vectors of Onsets
#Reading  0 14 28 42 56
#Letters  8 22 36 50 64
#Durations Reading=8 time points per cycle, Letters=6 time points

scenario = "reading1";
scenario_type = fMRI_emulation;
pulses_per_scan = 32;
scan_period=3000;	
#scenario_type = fMRI;
pulse_code=10;
sequence_interrupt=false;		#default
#active_buttons = 4;
#button_codes=1,2,3,4;
default_deltat = 0;
default_picture_duration = 5000;
default_font="times";
default_font_size=44;
default_text_color=0,0,90;
default_background_color=80,240,40;

begin;
#defining the stimuli

picture {} default;	#blank screen
picture {text {caption = "now relax" ;};x=0; y=0; }relax;
picture {text {caption = 
"Mr. Jones had to go
to New York on 
business. He lives in 
Boston. He decided
to take the train." ;};x=0; y=0; }jones;
picture {text {caption = 
"His wife drove him to 
the train station. But
on the way they had 
a flat tire. He got out" ;};x=0; y=0; }wife;
picture {text {caption = 
"and fixed the tire as 
fast as he could. They 
made it to the station
just in time to catch
the train." ;};x=0; y=0; }fix;

picture {text {caption = 
"When the train arrived
in New York, Mr. Jones
took a taxi downtown 
to his business meeting. " ;};x=0; y=0; }train;

picture {text {caption = 
"Dd dddd ddd dd d
hh hh, hhh hhhh Hh
ggggggg gg gggg g.
Qqqqq qq qqq qqqq. " ;};x=0; y=0; }ddd;

picture {text {caption = 
"Bbb bbbb bbb bbb
tt ttt ttttttt tt ttt tttt
rrr rr, rr rrrr rrrr rr
w www wwww ww ww." ;};x=0; y=0; }bbb;
picture {text {caption = 
"Cc ccccc ccc cccc cc
ssss ss ss sssssss ss.
Nnnn nnnnnn nn nnn
yyy, yyyyy yy yyyyy y." ;};x=0; y=0; }ccc;

picture {text {caption = 
"Xxx xxxxxxx xx x
vvvv vv v vvvvvvv
m mmm m mmmm mm
jjj jjj, jjjjjj jjjjj jjj." ;};x=0; y=0; }xxx;

picture {text {caption = 
"Uuuu uuu uu uuuuuuuu
eee ee eeee. Ee eeeee
oooo. Ooooooo oo, oooo
aaa aa a aaa a aaaaaa" ;};x=0; y=0; }uuu;

picture {text {caption = 
"Bbbb bb bbbb bb bbbb
zzz zzzzz zz z zzz z
kk kkkk kk kkkkkkk k
sss sssss ss ssssss ss" ;};x=0; y=0; }zzz;

picture {text {caption = 
"Gggg gg gggggg gg gg
fff ff ffffff fff ffffff.
Qqq qq qqqqq qqqq qqqqq
sss sssss ss ssssss ss." ;};x=0; y=0; }ggg;


picture {text {caption = 
"Jessica had taken a 
lifegaurd class at school.
One morning, while 
walking by the lake," ;};x=0; y=0; }jess;

picture {text {caption = 
"she saw two men fishing 
in a motorboat.
The man steering the boat
did not see the warning
sign and hit a rock." ;};x=0; y=0; }rock;

picture {text {caption =
"The boat began to sink.
Jessica jumped in and 
helped both men swim
safely to the shore."; };x=0; y=0; }shore; 
picture {text {caption = 
"After hearing the story,
the park ranger offered
Jessica a summer job 
working as a lifeguard
at the lake." ;};x=0; y=0; }job;


picture {text {caption = 
"On a sunny day in
June, four boys built 
a clubhouse near a
stream in the woods." ;};x=0; y=0; }sunny;
picture {text {caption = 
"The boys cut down
dead trees and used
scraps of wood to make
the walls and the roof." ;};x=0; y=0; }roof;
picture {text {caption = 
"They built a table
out of logs and found
some old chairs to sit
on. They worked all day." ;};x=0; y=0; }table;
picture {text {caption = 
"When they finished
they went home and got
their sleeping bags.
They slept in their fort
many times that summer." ;};x=0; y=0; }camp;

picture {text {caption = 
"Over 200 years ago the 
first hot air balloon was
built in England. It was
made of paper, covered" ;};x=0; y=0; }balloon;
picture {text {caption = 
"with cloth to make it
stronger. A large basket 
was attached with cables.
The basket was made of 
straw." ;};x=0; y=0; }cables;
picture {text {caption = 
"A long rope anchored the
balloon to the ground. On
the first flight the pilot
was in the air 15 minutes." ;};x=0; y=0; }flight;
picture {text {caption = 
"Later, he took a friend. 
Their flight lasted an hour. 
They traveled 100 miles
and landed in a tree." ;};x=0; y=0; }tree;

picture {text {caption = 
"In the 1700s, large herds
of buffalo roamed the 
plains of America. Many 
Native American tribes " ;};x=0; y=0; }herds;
picture {text {caption = 
"followed the herds to 
survive. They hunted on 
horseback and used bows
and arrows. The meat was" ;};x=0; y=0; }bows;
picture {text {caption = 
"for food, the bones for
tools, and the skin for
clothes. During the 1800s,
most of the buffalo 
were gone. They were" ;};x=0; y=0; }killed;

picture {text {caption = 
"killed for sport and 
money by settlers. Soon 
the buffalo vanished and 
a vital source of 
food was gone." ;};x=0; y=0; }money;



#presenting the stimuli
trial {
picture relax; mri_pulse=1;	time=0; duration=6000;
picture jones; mri_pulse=3;	
picture wife; mri_pulse=5;	
picture fix; mri_pulse=7;
picture train; mri_pulse=9;
picture bbb; mri_pulse=11;
picture ccc; mri_pulse=13;
picture ddd; mri_pulse=15;	
picture jess; mri_pulse=17;
picture rock; mri_pulse=19;
picture shore; mri_pulse=21;
picture job; mri_pulse=23;
picture ccc; mri_pulse=25;	
picture bbb; mri_pulse=27;
picture xxx; mri_pulse=29;
picture sunny; mri_pulse=31;
picture roof; mri_pulse=33;	
picture table; mri_pulse=35;	
picture camp; mri_pulse=37;	
picture xxx; mri_pulse=39;
picture ddd; mri_pulse=41;
picture bbb; mri_pulse=43;	
picture balloon; mri_pulse=45;
picture cables; mri_pulse=47;
picture flight; mri_pulse=49;
picture tree; mri_pulse=51;
picture uuu; mri_pulse=53;
picture zzz; mri_pulse=55;
picture ggg; mri_pulse=57;
picture herds; mri_pulse=59;
picture bows; mri_pulse=61;
picture killed; mri_pulse=63;
picture money; mri_pulse=65;
picture ccc; mri_pulse=67;
picture ddd; mri_pulse=69;
picture xxx; mri_pulse=71; 
};

