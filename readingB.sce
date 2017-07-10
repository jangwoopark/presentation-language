# reading2  	TR=3  reps=72  discard 2 
#The paradigm is 8 (24") on 6 (18") off. Cycle is 42". High passFilter is 84.
#Vectors of Onsets discarding 2 and starting at 0.
#Reading  0 14 28 42 56
#Letters  8 22 36 50 64
#Durations Reading=8, Letters=6 

scenario = "reading2";
scenario_type = fMRI_emulation;
pulses_per_scan = 32;
scan_period=3000;	
#scenario_type = fMRI;
pulse_code=10;
sequence_interrupt=false;	
#active_buttons = 4;
#button_codes=1,2,3,4;
default_deltat = 0;
default_picture_duration = 5500;
default_font="times";
default_font_size=44;
default_text_color=0,0,90;
default_background_color=80,240,40;

begin;
#defining the stimuli

picture {} default;	#blank screen
picture {text {caption = "now relax" ;};x=0; y=0; }relax;
picture {text {caption = 
"On an empty lot near
the park many people
were hard at work.
They picked up old " ;};x=0; y=0; }lot;

picture {text {caption = 
"boards and trash that
covered the ground. They 
cut tall weeds and 
carried them away. " ;};x=0; y=0; }trash;

picture {text {caption = 
"Then they put up
some swings, a seesaw,
and a slide, and built
a fence around the lot. " ;};x=0; y=0; }fence;

picture {text {caption = 
"Now the children had
a safe playground that
everyone in the 
neighborhood had 
helped to make. " ;};x=0; y=0; }playground;


picture {text {caption = 
"Dd dddd ddd dd d
hh hh, hhh hhhh Hh
ggggggg gg gggg g.
Qqqqq qq qqq qqqq. " ;};x=0; y=0; }ddd;

picture {text {caption = 
"Bbb bbbb bbb, bbb
tt ttt ttttttt tttttt
rrr rr rrr rrrr rrrr rr
w www wwww ww ww." ;};x=0; y=0; }bbb;
picture {text {caption = 
"Cc ccccc ccc cccc cc
ssss ss ss sssssss.
nnnn nnnnnn nn nnn
yyy yyyyy, yy yyyyy y." ;};x=0; y=0; }ccc;

picture {text {caption = 
"Xxx xxxxxxx xx x
vvvv vv v vvvvvvv
mm mmm m mmm mm
jjj jjjj jjjjjj jjjjj jjj." ;};x=0; y=0; }xxx;

picture {text {caption = 
"Uuuu uuu uu uuuuuuuu
eee ee eeee. Ee eeeee
oooo. Ooooooo oo oooo
aaa aa a aaa, a aaaaaa" ;};x=0; y=0; }uuu;

picture {text {caption = 
"Bbbb bb bbbb bb bbbb
zzz zzzzz zz z zzz z
kk kkkk kk kkkkkkk k
sss sssss ss ssssss ss." ;};x=0; y=0; }zzz;

picture {text {caption = 
"Gggg gg gggggg gg gg
fff ff ffffff fff ffffff.
Qqq qq qqqqq qqqq qqqqq
sss sssss ss ssssss ss." ;};x=0; y=0; }ggg;


picture {text {caption = 
"Two girls went to a farm
for a visit. There were 
cows, pigs, ducks, and
five hens. The girls" ;};x=0; y=0; }farm;
picture {text {caption = 
"gathered eggs every
morning. The farmer 
showed the girls how 
to milk a cow. They fed 
the ducks after lunch."; };x=0; y=0; }eggs;
picture {text {caption =
"The farmer showed them
how to catch fish. They
also helped the farmer 
pick corn and tomatoes."; };x=0; y=0; }fish; 
picture {text {caption = 
"During their visit, 
the girls learned how
we get our food. They 
wished they could 
stay longer." ;};x=0; y=0; }learn;

picture {text {caption = 
"One bright summer day
a young boy and his
grandmother walked to 
a nearby pond to fish. " ;};x=0; y=0; }summer;
picture {text {caption = 
"The grandmother taught
the boy how to put
worms on the hook. For
a long while they sat " ;};x=0; y=0; }worms;
picture {text {caption = 
"waiting for the fish
to bite. Suddenly 
the boy got a good bite.
He became so excited" ;};x=0; y=0; }bite;
picture {text {caption = 
"that he dropped his
pole into the water. The
fish quickly swam away 
with it, and soon the pole
had disappeared." ;};x=0; y=0; }pole;

picture {text {caption = 
"It was time to get up
and go to school. The
children made their beds
and dressed. One child" ;};x=0; y=0; }school;
picture {text {caption = 
"could not find her
red shoes. Mother told 
her she would have to 
wear her brown ones 
instead." ;};x=0; y=0; }shoes;
picture {text {caption = 
"Another child said he
had lost his blue book.
Father said it was under
the sofa. When the " ;};x=0; y=0; }sofa;
picture {text {caption = 
"children were ready
at last, they helped 
father look for the car
keys.  Then mother kissed
them goodbye." ;};x=0; y=0; }kiss;


picture {text {caption = 
"All over the world 
farmers face difficult
problems. Plants are 
often attacked by
insects or diseases " ;};x=0; y=0; }farmers;
picture {text {caption = 
"that can wipe out an
entire crop. Farmers 
attempt to control pests
with chemicals, but these" ;};x=0; y=0; }control;

picture {text {caption = 
"poisons can make our food
unsafe to eat. They can 
also harm useful insects 
and birds. Weather may" ;};x=0; y=0; }insects;

picture {text {caption = 
"also destroy crops. Unlike 
pests, severe weather
is impossible to 
predict or control. " ;};x=0; y=0; }predict;


#presenting the stimuli
trial {
picture relax; mri_pulse=1;	time=0; duration=6000;
picture lot; mri_pulse=3;	
picture trash; mri_pulse=5;	
picture fence; mri_pulse=7;
picture playground; mri_pulse=9;
picture bbb; mri_pulse=11;
picture ccc; mri_pulse=13;
picture ddd; mri_pulse=15;	
picture farm; mri_pulse=17;
picture eggs; mri_pulse=19;
picture fish; mri_pulse=21;
picture learn; mri_pulse=23;
picture ccc; mri_pulse=25;	
picture bbb; mri_pulse=27;
picture xxx; mri_pulse=29;
picture summer; mri_pulse=31;
picture worms; mri_pulse=33;	
picture bite; mri_pulse=35;	
picture pole; mri_pulse=37;	
picture xxx; mri_pulse=39;
picture ddd; mri_pulse=41;
picture bbb; mri_pulse=43;	
picture school; mri_pulse=45;
picture shoes; mri_pulse=47;
picture sofa; mri_pulse=49;
picture kiss; mri_pulse=51;
picture uuu; mri_pulse=53;
picture zzz; mri_pulse=55;
picture ggg; mri_pulse=57;
picture farmers; mri_pulse=59;
picture control; mri_pulse=61;
picture insects; mri_pulse=63;
picture predict; mri_pulse=65;
picture ccc; mri_pulse=67;
picture ddd; mri_pulse=69;
picture uuu; mri_pulse=71; 

};
