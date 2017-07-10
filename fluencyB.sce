# fluencyB	TR=3  62 reps  186seconds 5cycles 2 disdaqs 
#onsets: naming 0 12 24 36 48   lines  6 18 30 42 54   
#durations: 6 on, 6 off        high pass= 72
scenario = "category fluency form B";
#scenario_type = fMRI_emulation;
pulses_per_scan = 36;
scan_period=3000;	#for emulation only
scenario_type = fMRI;
pulse_code=10;
sequence_interrupt=false;		#default
#active_buttons = 4;
#button_codes=1,2,3,4;
default_deltat = 0;
default_picture_duration = 9000;
default_font="times";
default_font_size=60;
default_text_color=250,255,255;
default_background_color=0,100,115;

begin;
#defining the stimuli

picture {} default;	#blank screen
picture {text {caption = "Instruments" ;};x=0; y=0; }instruments;
picture {text {caption = "Tools" ;};x=0; y=0; }tools;
picture {text {caption = "Furniture" ;};x=0; y=0; }furniture;
picture {text {caption = "Colors" ;};x=0; y=0; }colors;
picture {text {caption = "TV shows" ;};x=0; y=0; }TV;
picture {text {caption = "Clothes" ;};x=0; y=0; }clothes;
picture {text {caption = "Jobs" ;};x=0; y=0; }jobs;
picture {text {caption = "Famous people" ;};x=0; y=0; }famous;
picture {text {caption = "Foods" ;};x=0; y=0; }food;
picture {text {caption = "Drinks" ;};x=0; y=0; }drinks;
picture {text {caption = "RELAX" ;};x=0; y=0; }relax;
picture {text {caption = "think of words
in the category ..." ;}; x=0; y=0; } inst;
#presenting the stimuli
trial {
picture inst; mri_pulse=1;	time=0; duration=6000;
picture drinks; mri_pulse=3;	
picture famous; mri_pulse=6;	
picture relax; mri_pulse=9;	duration = 18000;
picture jobs; mri_pulse=15;
picture TV; mri_pulse=18;
picture relax; mri_pulse=21;	duration = 18000;
picture food; mri_pulse=27;
picture colors; mri_pulse=30;
picture relax; mri_pulse=33;	duration = 18000;
picture instruments; mri_pulse=39;
picture tools; mri_pulse=42;	
picture relax; mri_pulse=45;	duration = 18000;
picture furniture; mri_pulse=51;
picture clothes; mri_pulse=54;
picture relax; mri_pulse=57;	duration = 18000;
};
