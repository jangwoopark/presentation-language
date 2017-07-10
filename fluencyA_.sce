# fluencyA	TR=3  62 reps  186seconds 5cycles 2 disdaqs 
#onsets: naming 0 12 24 36 48   lines  6 18 30 42 54   
#durations: 6 on, 6 off        high pass= 72

scenario = "category fluency form A";
scenario_type = fMRI_emulation;
pulses_per_scan = 36;
scan_period=3000;	
#scenario_type = fMRI;
pulse_code=10;
sequence_interrupt=false;		#default
#active_buttons = 4;
#button_codes=1,2,3,4;
default_deltat = 0;
default_picture_duration = 9000;
default_font="times";
default_font_size=60;
default_text_color=0,0,90;
default_background_color=80,240,40;

begin;
#defining the stimuli

picture {} default;	#blank screen
picture {text {caption = "Fruit" ;};x=0; y=0; }fruit;
picture {text {caption = "First names" ;};x=0; y=0; }names;
picture {text {caption = "Cars" ;};x=0; y=0; }cars;
picture {text {caption = "Vegetables" ;};x=0; y=0; }vegetables;
picture {text {caption = "At the zoo" ;};x=0; y=0; }zoo;
picture {text {caption = "Cities" ;};x=0; y=0; }cities;
picture {text {caption = "Sports" ;};x=0; y=0; }sports;
picture {text {caption = "In the mall" ;};x=0; y=0; }mall;
picture {text {caption = "Kitchen" ;};x=0; y=0; }kitchen;
picture {text {caption = "On the farm" ;};x=0; y=0; }farm;
picture {text {caption = "RELAX" ;};x=0; y=0; }relax;
picture {text {caption = "think of words
in the category ..." ;}; x=0; y=150; } inst;
#presenting the stimuli
trial {
picture inst; mri_pulse=1;	time=0; duration=6000;
picture fruit; mri_pulse=3;	
picture farm; mri_pulse=6;	
picture relax; mri_pulse=9;	duration = 18000;
picture zoo; mri_pulse=15;
picture cars; mri_pulse=18;
picture relax; mri_pulse=21;	duration = 18000;
picture kitchen; mri_pulse=27;
picture cities; mri_pulse=30;
picture relax; mri_pulse=33;	duration = 18000;
picture mall; mri_pulse=39;
picture vegetables; mri_pulse=42;	
picture relax; mri_pulse=45;	duration = 18000;
picture sports; mri_pulse=51;
picture names; mri_pulse=54;
picture relax; mri_pulse=57;	duration = 18000;
};
