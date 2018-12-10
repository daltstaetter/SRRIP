####% Set_Data.m

data_file = 'results_without_fname.txt';
outdir = 'C:\Users\labtest\Dropbox\College\Fall_2018\CSE_614_CompArch\HW\HW4\software\SRRIP\casim\zsim\outputs\hw4\';
SRRIP = '/SRRIP';
LFU = '/LFU';
LRU = '/LRU';
LIRS = '/LIRS';

SRRIP_dir = dir([outdir SRRIP]);
LFU_dir = dir([outdir LFU]);
LRU_dir = dir([outdir LRU]);
LIRS_dir = dir([outdir LIRS]);

SRRIP_namelist = {SRRIP_dir(3:end).name}'; % from dir output
LFU_namelist = {LFU_dir(3:end).name}'; % from dir output
LRU_namelist = {LRU_dir(3:end).name}'; % from dir output
LIRS_namelist = {LIRS_dir(3:end).name}'; % from dir output

SRRIP_folder = {SRRIP_dir(3:end).folder}'; % from dir output
LFU_folder = {LFU_dir(3:end).folder}'; % from dir output
LRU_folder = {LRU_dir(3:end).folder}'; % from dir output
LIRS_folder = {LIRS_dir(3:end).folder}'; % from dir output


%############################# LRU
inputs = load([LRU_folder{1} '\' LRU_namelist{1} '\' data_file]);
cycles_LRU_blackscholes 	= inputs(1);%2976022568;
IPC_LRU_blackscholes 	  	= inputs(2);%1.36514420915;
MPKI_LRU_blackscholes 		= inputs(3);%0.00724838166274;
                              %%
inputs = load([LRU_folder{2} '\' LRU_namelist{2} '\' data_file]);							  
cycles_LRU_bodytrack	 	= inputs(1);%2966922030;
IPC_LRU_bodytrack 			= inputs(2);%1.6852578893;
MPKI_LRU_bodytrack 			= inputs(3);%0.0362607914424;
	                          %%
inputs = load([LRU_folder{3} '\' LRU_namelist{3} '\' data_file]);
cycles_LRU_bzip2 			= inputs(1);%98802314;
IPC_LRU_bzip2 				= inputs(2);%1.01212433142;
MPKI_LRU_bzip2 				= inputs(3);%2.85083355712;
	                          %%
inputs = load([LRU_folder{4} '\' LRU_namelist{4} '\' data_file]);
cycles_LRU_cactusADM		= inputs(1);%94483489;
IPC_LRU_cactusADM 			= inputs(2);%1.05849859122;
MPKI_LRU_cactusADM 			= inputs(3);%4.82934615757;
	                          %%
inputs = load([LRU_folder{5} '\' LRU_namelist{5} '\' data_file]);
cycles_LRU_calculix 		= inputs(1);%49437227;
IPC_LRU_calculix 		    = inputs(2);%2.02316913932;
MPKI_LRU_calculix 			= inputs(3);%0.0588782997043;
	                          %%
inputs = load([LRU_folder{6} '\' LRU_namelist{6} '\' data_file]);
cycles_LRU_canneal 			= inputs(1);%5964300845;
IPC_LRU_canneal 		  	= inputs(2);%0.288713773291;
MPKI_LRU_canneal 		  	= inputs(3);%13.2381024016;

%inputs = load([LRU_folder{7} '\' LRU_namelist{7} '\' data_file]);
%cycles_LRU_dedup 			= inputs(1);%3667428538;
%IPC_LRU_dedup 				= inputs(2);%1.29515163883;
%MPKI_LRU_dedup 				= inputs(3);%4.0264164793;
                              %%
inputs = load([LRU_folder{8} '\' LRU_namelist{8} '\' data_file]);
cycles_LRU_fluidanimate		= inputs(1);%3712023967;
IPC_LRU_fluidanimate 	  	= inputs(2);%1.34697815894;
MPKI_LRU_fluidanimate 		= inputs(3);%0.898087868196;
                              %%
inputs = load([LRU_folder{9} '\' LRU_namelist{9} '\' data_file]);
cycles_LRU_freqmine 		= inputs(1);%4307884748;
IPC_LRU_freqmine 		  	= inputs(2);%1.16066753209;
MPKI_LRU_freqmine 			= inputs(3);%1.05824795239;
                              %%
inputs = load([LRU_folder{10} '\' LRU_namelist{10} '\' data_file]);
cycles_LRU_gcc 				= inputs(1);%128749596;
IPC_LRU_gcc 			  	= inputs(2);%0.77680280255;
MPKI_LRU_gcc 			  	= inputs(3);%2.88087413235;
		                      %%
inputs = load([LRU_folder{11} '\' LRU_namelist{11} '\' data_file]);
cycles_LRU_hmmer 			= inputs(1);%77629605;
IPC_LRU_hmmer 				= inputs(2);%1.288191715;
MPKI_LRU_hmmer 				= inputs(3);%1.56272165223;
		                      %%
inputs = load([LRU_folder{12} '\' LRU_namelist{12} '\' data_file]);
cycles_LRU_lbm 				= inputs(1);%173903648;
IPC_LRU_lbm 		     	= inputs(2);%0.575043595405;
MPKI_LRU_lbm 			  	= inputs(3);%30.9623253309;
                              %%%
inputs = load([LRU_folder{13} '\' LRU_namelist{13} '\' data_file]);
cycles_LRU_leslie3d 		= inputs(1);%217334159;
IPC_LRU_leslie3d 			= inputs(2);%0.460161018683;
MPKI_LRU_leslie3d 			= inputs(3);%23.8220055798;
                              %%%
inputs = load([LRU_folder{14} '\' LRU_namelist{14} '\' data_file]);
cycles_LRU_libquantum 		= inputs(1);%195615585;
IPC_LRU_libquantum 		    = inputs(2);%0.511214635582;
MPKI_LRU_libquantum 	  	= inputs(3);%25.0455917933;
                              %%%
inputs = load([LRU_folder{15} '\' LRU_namelist{15} '\' data_file]);
cycles_LRU_mcf 				= inputs(1);%800071388;
IPC_LRU_mcf 			  	= inputs(2);%0.124989904026;
MPKI_LRU_mcf 			  	= inputs(3);%80.9870648494;
		                      %%%
inputs = load([LRU_folder{16} '\' LRU_namelist{16} '\' data_file]);
cycles_LRU_milc 			= inputs(1);%150453561;
IPC_LRU_milc 			  	= inputs(2);%0.66467125361;
MPKI_LRU_milc 				= inputs(3);%14.9446776433;
		                      %%
inputs = load([LRU_folder{17} '\' LRU_namelist{17} '\' data_file]);
cycles_LRU_namd 			= inputs(1);%54966721;
IPC_LRU_namd 			  	= inputs(2);%1.81957821352;
MPKI_LRU_namd 				= inputs(3);%0.371559628991;
		                      %%%
inputs = load([LRU_folder{18} '\' LRU_namelist{18} '\' data_file]);
cycles_LRU_sjeng 			= inputs(1);%82607916;
IPC_LRU_sjeng 				= inputs(2);%1.21062675156;
MPKI_LRU_sjeng 				= inputs(3);%0.36225336351;
		                      %%%
inputs = load([LRU_folder{19} '\' LRU_namelist{19} '\' data_file]);
cycles_LRU_soplex 			= inputs(1);%227909592;
IPC_LRU_soplex 			  	= inputs(2);%0.438776429383;
MPKI_LRU_soplex 		  	= inputs(3);%20.9452857725;
                              %%%
inputs = load([LRU_folder{20} '\' LRU_namelist{20} '\' data_file]);
cycles_LRU_streamcluster	= inputs(1);%7700686007;
IPC_LRU_streamcluster 		= inputs(2);%0.649293071741;
MPKI_LRU_streamcluster 		= inputs(3);%7.33958215848;
                              %%%
inputs = load([LRU_folder{21} '\' LRU_namelist{21} '\' data_file]);
cycles_LRU_swaptions 		= inputs(1);%3143283693;
IPC_LRU_swaptions 			= inputs(2);%1.59070988188;
MPKI_LRU_swaptions 			= inputs(3);%0.00224197648974;
                              %%
inputs = load([LRU_folder{22} '\' LRU_namelist{22} '\' data_file]);
cycles_LRU_x264 			= inputs(1);%3066030531;
IPC_LRU_x264 				= inputs(2);%1.63079026919;
MPKI_LRU_x264 				= inputs(3);%0.795644205158;
		                      %%%
%inputs = load([LRU_folder{23} '\' LRU_namelist{23} '\' data_file]);
%cycles_LRU_xalan 			= inputs(1);%63224231;
%IPC_LRU_xalan 				= inputs(2);%1.5818300898;
%MPKI_LRU_xalan 				= inputs(3);%1.33404671539;
                              %%

							  
%############################# LFU 
inputs = load([LFU_folder{1} '\' LFU_namelist{1} '\' data_file]);
cycles_LFU_blackscholes 	= inputs(1);%2976019947;
IPC_LFU_blackscholes 	  	= inputs(2);% 1.36514540674;
MPKI_LFU_blackscholes	  	= inputs(3);%0.00724838168772;
                              %

inputs = load([LFU_folder{2} '\' LFU_namelist{2} '\' data_file]);
cycles_LFU_bodytrack		= inputs(1);%2965705608;
IPC_LFU_bodytrack 			= inputs(2);%1.68598049635;
MPKI_LFU_bodytrack			= inputs(3);%0.0316424291082;

inputs = load([LFU_folder{3} '\' LFU_namelist{3} '\' data_file]);
cycles_LFU_bzip2 			= inputs(1);%98372514;
IPC_LFU_bzip2 				= inputs(2);%1.01674694417;
MPKI_LFU_bzip2 				= inputs(3);%2.78532424425;
                              %
inputs = load([LFU_folder{4} '\' LFU_namelist{4} '\' data_file]);
cycles_LFU_cactusADM 		= inputs(1);%94249106;
IPC_LFU_cactusADM 			= inputs(2);%1.06109326915;
MPKI_LFU_cactusADM 			= inputs(3);%4.79224013433;
                              %

inputs = load([LFU_folder{5} '\' LFU_namelist{5} '\' data_file]);
cycles_LFU_calculix 		= inputs(1);%49426940;
IPC_LFU_calculix 			= inputs(2);%2.02348818276;
MPKI_LFU_calculix 			= inputs(3);%0.058891267014;
                              %
inputs = load([LFU_folder{6} '\' LFU_namelist{6} '\' data_file]);
cycles_LFU_canneal 			= inputs(1);%5810528776;
IPC_LFU_canneal 		  	= inputs(2);%0.29635553155;
MPKI_LFU_canneal 		  	= inputs(3);%11.8538834449;
                              %%
%inputs = load([LFU_folder{7} '\' LFU_namelist{7} '\' data_file]);
%cycles_LFU_dedup 			= inputs(1);%3737163063;
%IPC_LFU_dedup 				= inputs(2);%1.33793420937;
%MPKI_LFU_dedup 				= inputs(3);%1.02009562367;
		                      %%
inputs = load([LFU_folder{8} '\' LFU_namelist{8} '\' data_file]);
cycles_LFU_fluidanimate 	= inputs(1);%3701027028;
IPC_LFU_fluidanimate 	  	= inputs(2);%1.35098471537;;
MPKI_LFU_fluidanimate 		= inputs(3);%0.877498568986;
                              %%
inputs = load([LFU_folder{9} '\' LFU_namelist{9} '\' data_file]);
cycles_LFU_freqmine 		= inputs(1);%4309176070;
IPC_LFU_freqmine 		  	= inputs(2);%1.16032158324;
MPKI_LFU_freqmine 			= inputs(3);%1.05989704062;
                              %%
inputs = load([LFU_folder{10} '\' LFU_namelist{10} '\' data_file]);
cycles_LFU_gcc 				= inputs(1);%130010699;
IPC_LFU_gcc 			  	= inputs(2);%0.76926961988;
MPKI_LFU_gcc 			  	= inputs(3);%2.95887703154;
		                      %
inputs = load([LFU_folder{11} '\' LFU_namelist{11} '\' data_file]);
cycles_LFU_hmmer 			= inputs(1);%65291624;
IPC_LFU_hmmer 				= inputs(2);%1.53178392377;
MPKI_LFU_hmmer 				= inputs(3);%1.4554257431;
		                      %%
inputs = load([LFU_folder{12} '\' LFU_namelist{12} '\' data_file]);
cycles_LFU_lbm 				= inputs(1);%173881908;
IPC_LFU_lbm 				= inputs(2);%0.575111523391;
MPKI_LFU_lbm 				= inputs(3);%30.9621789732;
                              %%
inputs = load([LFU_folder{13} '\' LFU_namelist{13} '\' data_file]);
cycles_LFU_leslie3d			= inputs(1);%217355644;
IPC_LFU_leslie3d 		  	= inputs(2);%0.460077875871;
MPKI_LFU_leslie3d 			= inputs(3);%23.8284053774;
	                          %%
inputs = load([LFU_folder{14} '\' LFU_namelist{14} '\' data_file]);
cycles_LFU_libquantum 		= inputs(1);%195619097;
IPC_LFU_libquantum 		  	= inputs(2);%0.511202922075;
MPKI_LFU_libquantum 	  	= inputs(3);%25.0456060193;
                              %%
inputs = load([LFU_folder{15} '\' LFU_namelist{15} '\' data_file]);
cycles_LFU_mcf 				= inputs(1);%775528059;
IPC_LFU_mcf 			  	= inputs(2);%0.128945143686;
MPKI_LFU_mcf 			  	= inputs(3);%77.425823253;
		                      %
inputs = load([LFU_folder{16} '\' LFU_namelist{16} '\' data_file]);
cycles_LFU_milc 			= inputs(1);%152328925;
IPC_LFU_milc 				= inputs(2);%0.656497720311;
MPKI_LFU_milc 				= inputs(3);%14.9450531737;
		                      %%
inputs = load([LFU_folder{17} '\' LFU_namelist{17} '\' data_file]);
cycles_LFU_namd 			= inputs(1);%54690104;
IPC_LFU_namd 			  	= inputs(2);%1.82879630289;
MPKI_LFU_namd 				= inputs(3);%0.354319553084;
		                      %%
inputs = load([LFU_folder{18} '\' LFU_namelist{18} '\' data_file]);
cycles_LFU_sjeng			= inputs(1);%82592435;
IPC_LFU_sjeng 				= inputs(2);%1.21078690803;
MPKI_LFU_sjeng 				= inputs(3);%0.362043342023;
		                      %%
inputs = load([LFU_folder{19} '\' LFU_namelist{19} '\' data_file]);
cycles_LFU_soplex			= inputs(1);%231350201;
IPC_LFU_soplex 				= inputs(2);%0.432258189393;
MPKI_LFU_soplex 			= inputs(3);%21.3630750488;
		                      %%%
inputs = load([LFU_folder{20} '\' LFU_namelist{20} '\' data_file]);
cycles_LFU_streamcluster 	= inputs(1);%5688392489;
IPC_LFU_streamcluster 		= inputs(2);%0.878983886163;
MPKI_LFU_streamcluster 		= inputs(3);%3.67446307861;
                              %%
inputs = load([LFU_folder{21} '\' LFU_namelist{21} '\' data_file]);
cycles_LFU_swaptions 		= inputs(1);%3143277188;
IPC_LFU_swaptions 			= inputs(2);%1.59071622766;
MPKI_LFU_swaptions 			= inputs(3);%0.00224217218316;
                              %%
inputs = load([LFU_folder{22} '\' LFU_namelist{22} '\' data_file]);
cycles_LFU_x264 			= inputs(1);%3074981969;
IPC_LFU_x264 				= inputs(2);%1.62604234412;
MPKI_LFU_x264 				= inputs(3);%0.85717047589;
							  %%
%inputs = load([LFU_folder{23} '\' LFU_namelist{23} '\' data_file]);
%cycles_LFU_xalan 			= inputs(1);%63105785;
%IPC_LFU_xalan 				= inputs(2);%1.58474951227;
%MPKI_LFU_xalan 				= inputs(3);%1.30522043577;
                      


                              
%############################# SRRIP
inputs = load([SRRIP_folder{1} '\' SRRIP_namelist{1} '\' data_file]);                              
                              %%
cycles_SRRIP_blackscholes 	= inputs(1);%2976006196;
IPC_SRRIP_blackscholes	  	= inputs(2);%1.36515165374;
MPKI_SRRIP_blackscholes   	= inputs(3);%0.00724493602626;
                              %%%
inputs = load([SRRIP_folder{2} '\' SRRIP_namelist{2} '\' data_file]); 
cycles_SRRIP_bodytrack 		= inputs(1);%2971229131;
IPC_SRRIP_bodytrack 	  	= inputs(2);%1.68281616818;
MPKI_SRRIP_bodytrack 	  	= inputs(3);%0.0313543966918;
                              %%%
inputs = load([SRRIP_folder{3} '\' SRRIP_namelist{3} '\' data_file]); 
cycles_SRRIP_bzip2 			= inputs(1);%98678769;
IPC_SRRIP_bzip2 		  	= inputs(2);%1.01357307163;
MPKI_SRRIP_bzip2 		  	= inputs(3);%2.69370128178;
                              %%%
inputs = load([SRRIP_folder{4} '\' SRRIP_namelist{4} '\' data_file]); 
cycles_SRRIP_cactusADM 		= inputs(1);%94129623;
IPC_SRRIP_cactusADM 	 	= inputs(2);%1.06245789383;
MPKI_SRRIP_cactusADM 	  	= inputs(3);%4.75715322581;
                              %%%
inputs = load([SRRIP_folder{5} '\' SRRIP_namelist{5} '\' data_file]); 
cycles_SRRIP_calculix 		= inputs(1);%49427536;
IPC_SRRIP_calculix 			= inputs(2);%2.0233826141;
MPKI_SRRIP_calculix 		= inputs(3);%0.058963621905;
	                          %%%
inputs = load([SRRIP_folder{6} '\' SRRIP_namelist{6} '\' data_file]); 
cycles_SRRIP_canneal 		= inputs(1);%5815281201;
IPC_SRRIP_canneal 			= inputs(2);%0.296104109584;
MPKI_SRRIP_canneal 			= inputs(3);%11.9204438912;
                              %%%%
%inputs = load([SRRIP_folder{7} '\' SRRIP_namelist{7} '\' data_file]); 
%cycles_SRRIP_dedup 			= inputs(1);%3604378922;
%IPC_SRRIP_dedup 			= inputs(2);%1.31670803218;
%MPKI_SRRIP_dedup 		  	= inputs(3);%0.984618928471;
                              %%%%
inputs = load([SRRIP_folder{8} '\' SRRIP_namelist{8} '\' data_file]); 
cycles_SRRIP_fluidanimate	= inputs(1);%3705886751;
IPC_SRRIP_fluidanimate 		= inputs(2);%1.34922213655;
MPKI_SRRIP_fluidanimate 	= inputs(3);%0.880447252796;
                              %%%%
inputs = load([SRRIP_folder{9} '\' SRRIP_namelist{9} '\' data_file]); 
cycles_SRRIP_freqmine 		= inputs(1);%4314326286;
IPC_SRRIP_freqmine 		  	= inputs(2);%1.15894466309;
MPKI_SRRIP_freqmine 	  	= inputs(3);%1.06814222357;
                              %%%%
inputs = load([SRRIP_folder{10} '\' SRRIP_namelist{10} '\' data_file]); 
cycles_SRRIP_gcc 			= inputs(1);%120133267;
IPC_SRRIP_gcc 				= inputs(2);%0.832460803717;
MPKI_SRRIP_gcc 				= inputs(3);%2.27660803072;
	                          %%%
inputs = load([SRRIP_folder{11} '\' SRRIP_namelist{11} '\' data_file]); 
cycles_SRRIP_hmmer 			= inputs(1);%63554788;
IPC_SRRIP_hmmer 			= inputs(2);%1.57358578554;
MPKI_SRRIP_hmmer 			= inputs(3);%1.26161757726;
                              %%%%
inputs = load([SRRIP_folder{12} '\' SRRIP_namelist{12} '\' data_file]); 
cycles_SRRIP_lbm 			= inputs(1);%174230744;
IPC_SRRIP_lbm 				= inputs(2);%0.573961355523;
MPKI_SRRIP_lbm 				= inputs(3);%30.99299878;
                              %%%%
inputs = load([SRRIP_folder{13} '\' SRRIP_namelist{13} '\' data_file]); 
cycles_SRRIP_leslie3d		= inputs(1);%217889407;
IPC_SRRIP_leslie3d 			= inputs(2);%0.458959177396;
MPKI_SRRIP_leslie3d 		= inputs(3);%23.8750106085;
	                          %%%%
inputs = load([SRRIP_folder{14} '\' SRRIP_namelist{14} '\' data_file]); 
cycles_SRRIP_libquantum		= inputs(1);%195288470;
IPC_SRRIP_libquantum 	  	= inputs(2);%0.512086878452;
MPKI_SRRIP_libquantum 		= inputs(3);%25.0494619436;
                              %%%%
inputs = load([SRRIP_folder{15} '\' SRRIP_namelist{15} '\' data_file]); 
cycles_SRRIP_mcf 			= inputs(1);%772851961;
IPC_SRRIP_mcf 				= inputs(2);%0.129391338893;
MPKI_SRRIP_mcf 				= inputs(3);%76.9475906834;
		                      %%%
inputs = load([SRRIP_folder{16} '\' SRRIP_namelist{16} '\' data_file]); 
cycles_SRRIP_milc 			= inputs(1);%152458122;
IPC_SRRIP_milc 				= inputs(2);%0.655938802657;
MPKI_SRRIP_milc 			= inputs(3);%14.9531017998;
		                      %%%%
inputs = load([SRRIP_folder{17} '\' SRRIP_namelist{17} '\' data_file]); 
cycles_SRRIP_namd 			= inputs(1);%54898956;
IPC_SRRIP_namd 			  	= inputs(2);%1.82166879458;
MPKI_SRRIP_namd 		  	= inputs(3);%0.368151597104;
                              %
inputs = load([SRRIP_folder{18} '\' SRRIP_namelist{18} '\' data_file]); 
cycles_SRRIP_sjeng 			= inputs(1);%82677922;
IPC_SRRIP_sjeng 		  	= inputs(2);%1.20963464708;
MPKI_SRRIP_sjeng 		  	= inputs(3);%0.368792829371;
	                          %%%%%
inputs = load([SRRIP_folder{19} '\' SRRIP_namelist{19} '\' data_file]); 
cycles_SRRIP_soplex 		= inputs(1);%231037772;
IPC_SRRIP_soplex 			= inputs(2);%0.432837527536;
MPKI_SRRIP_soplex 			= inputs(3);%21.0814467393;
                              %%%%
inputs = load([SRRIP_folder{20} '\' SRRIP_namelist{20} '\' data_file]); 
cycles_SRRIP_streamcluster 	= inputs(1);%4665312614;
IPC_SRRIP_streamcluster 	= inputs(2);%1.07175220027;
MPKI_SRRIP_streamcluster  	= inputs(3);%2.07851704897;
                              %%%%%
inputs = load([SRRIP_folder{21} '\' SRRIP_namelist{21} '\' data_file]); 
cycles_SRRIP_swaptions 		= inputs(1);%3143282488;
IPC_SRRIP_swaptions 		= inputs(2);%1.59071124186;
MPKI_SRRIP_swaptions 	  	= inputs(3);%0.00224397541052;
                              %
inputs = load([SRRIP_folder{22} '\' SRRIP_namelist{22} '\' data_file]); 
cycles_SRRIP_x264 			= inputs(1);%3055422067;
IPC_SRRIP_x264 				= inputs(2);%1.63646822349;
MPKI_SRRIP_x264 			= inputs(3);%0.750672618097;
                              %%%%%%
%inputs = load([SRRIP_folder{23} '\' SRRIP_namelist{23} '\' data_file]); 
%cycles_SRRIP_xalan 			= inputs(1);%63080178;
%IPC_SRRIP_xalan 		   	= inputs(2);%1.58535491133;
%MPKI_SRRIP_xalan 		  	= inputs(3);%1.28164271057;

%############################# LIRS
inputs = load([LRU_folder{1} '\' LIRS_namelist{1} '\' data_file]);
cycles_LIRS_blackscholes 	= inputs(1);%2976022568;
IPC_LIRS_blackscholes 	  	= inputs(2);%1.36514420915;
MPKI_LIRS_blackscholes 		= inputs(3);%0.00724838166274;
                              %%
inputs = load([LIRS_folder{2} '\' LIRS_namelist{2} '\' data_file]);							  
cycles_LIRS_bodytrack	 	= inputs(1);%2966922030;
IPC_LIRS_bodytrack 			= inputs(2);%1.6852578893;
MPKI_LIRS_bodytrack 			= inputs(3);%0.0362607914424;
	                          %%
inputs = load([LIRS_folder{3} '\' LIRS_namelist{3} '\' data_file]);
cycles_LIRS_bzip2 			= inputs(1);%98802314;
IPC_LIRS_bzip2 				= inputs(2);%1.01212433142;
MPKI_LIRS_bzip2 				= inputs(3);%2.85083355712;
	                          %%
inputs = load([LIRS_folder{4} '\' LIRS_namelist{4} '\' data_file]);
cycles_LIRS_cactusADM		= inputs(1);%94483489;
IPC_LIRS_cactusADM 			= inputs(2);%1.05849859122;
MPKI_LIRS_cactusADM 			= inputs(3);%4.82934615757;
	                          %%
inputs = load([LIRS_folder{5} '\' LIRS_namelist{5} '\' data_file]);
cycles_LIRS_calculix 		= inputs(1);%49437227;
IPC_LIRS_calculix 		    = inputs(2);%2.02316913932;
MPKI_LIRS_calculix 			= inputs(3);%0.0588782997043;
	                          %%
inputs = load([LIRS_folder{6} '\' LIRS_namelist{6} '\' data_file]);
cycles_LIRS_canneal 			= inputs(1);%5964300845;
IPC_LIRS_canneal 		  	= inputs(2);%0.288713773291;
MPKI_LIRS_canneal 		  	= inputs(3);%13.2381024016;

%inputs = load([LIRS_folder{7} '\' LIRS_namelist{7} '\' data_file]);
%cycles_LIRS_dedup 			= inputs(1);%3667428538;
%IPC_LIRS_dedup 				= inputs(2);%1.29515163883;
%MPKI_LIRS_dedup 				= inputs(3);%4.0264164793;
                              %%
inputs = load([LIRS_folder{8} '\' LIRS_namelist{8} '\' data_file]);
cycles_LIRS_fluidanimate		= inputs(1);%3712023967;
IPC_LIRS_fluidanimate 	  	= inputs(2);%1.34697815894;
MPKI_LIRS_fluidanimate 		= inputs(3);%0.898087868196;
                              %%
inputs = load([LIRS_folder{9} '\' LIRS_namelist{9} '\' data_file]);
cycles_LIRS_freqmine 		= inputs(1);%4307884748;
IPC_LIRS_freqmine 		  	= inputs(2);%1.16066753209;
MPKI_LIRS_freqmine 			= inputs(3);%1.05824795239;
                              %%
inputs = load([LIRS_folder{10} '\' LIRS_namelist{10} '\' data_file]);
cycles_LIRS_gcc 				= inputs(1);%128749596;
IPC_LIRS_gcc 			  	= inputs(2);%0.77680280255;
MPKI_LIRS_gcc 			  	= inputs(3);%2.88087413235;
		                      %%
inputs = load([LIRS_folder{11} '\' LIRS_namelist{11} '\' data_file]);
cycles_LIRS_hmmer 			= inputs(1);%77629605;
IPC_LIRS_hmmer 				= inputs(2);%1.288191715;
MPKI_LIRS_hmmer 				= inputs(3);%1.56272165223;
		                      %%
inputs = load([LIRS_folder{12} '\' LIRS_namelist{12} '\' data_file]);
cycles_LIRS_lbm 				= inputs(1);%173903648;
IPC_LIRS_lbm 		     	= inputs(2);%0.575043595405;
MPKI_LIRS_lbm 			  	= inputs(3);%30.9623253309;
                              %%%
inputs = load([LIRS_folder{13} '\' LIRS_namelist{13} '\' data_file]);
cycles_LIRS_leslie3d 		= inputs(1);%217334159;
IPC_LIRS_leslie3d 			= inputs(2);%0.460161018683;
MPKI_LIRS_leslie3d 			= inputs(3);%23.8220055798;
                              %%%
inputs = load([LIRS_folder{14} '\' LIRS_namelist{14} '\' data_file]);
cycles_LIRS_libquantum 		= inputs(1);%195615585;
IPC_LIRS_libquantum 		    = inputs(2);%0.511214635582;
MPKI_LIRS_libquantum 	  	= inputs(3);%25.0455917933;
                              %%%
inputs = load([LIRS_folder{15} '\' LIRS_namelist{15} '\' data_file]);
cycles_LIRS_mcf 				= inputs(1);%800071388;
IPC_LIRS_mcf 			  	= inputs(2);%0.124989904026;
MPKI_LIRS_mcf 			  	= inputs(3);%80.9870648494;
		                      %%%
inputs = load([LIRS_folder{16} '\' LIRS_namelist{16} '\' data_file]);
cycles_LIRS_milc 			= inputs(1);%150453561;
IPC_LIRS_milc 			  	= inputs(2);%0.66467125361;
MPKI_LIRS_milc 				= inputs(3);%14.9446776433;
		                      %%
inputs = load([LIRS_folder{17} '\' LIRS_namelist{17} '\' data_file]);
cycles_LIRS_namd 			= inputs(1);%54966721;
IPC_LIRS_namd 			  	= inputs(2);%1.81957821352;
MPKI_LIRS_namd 				= inputs(3);%0.371559628991;
		                      %%%
inputs = load([LIRS_folder{18} '\' LIRS_namelist{18} '\' data_file]);
cycles_LIRS_sjeng 			= inputs(1);%82607916;
IPC_LIRS_sjeng 				= inputs(2);%1.21062675156;
MPKI_LIRS_sjeng 				= inputs(3);%0.36225336351;
		                      %%%
inputs = load([LIRS_folder{19} '\' LIRS_namelist{19} '\' data_file]);
cycles_LIRS_soplex 			= inputs(1);%227909592;
IPC_LIRS_soplex 			  	= inputs(2);%0.438776429383;
MPKI_LIRS_soplex 		  	= inputs(3);%20.9452857725;
                              %%%
inputs = load([LIRS_folder{20} '\' LIRS_namelist{20} '\' data_file]);
cycles_LIRS_streamcluster	= inputs(1);%7700686007;
IPC_LIRS_streamcluster 		= inputs(2);%0.649293071741;
MPKI_LIRS_streamcluster 		= inputs(3);%7.33958215848;
                              %%%
inputs = load([LIRS_folder{21} '\' LIRS_namelist{21} '\' data_file]);
cycles_LIRS_swaptions 		= inputs(1);%3143283693;
IPC_LIRS_swaptions 			= inputs(2);%1.59070988188;
MPKI_LIRS_swaptions 			= inputs(3);%0.00224197648974;
                              %%
inputs = load([LIRS_folder{22} '\' LIRS_namelist{22} '\' data_file]);
cycles_LIRS_x264 			= inputs(1);%3066030531;
IPC_LIRS_x264 				= inputs(2);%1.63079026919;
MPKI_LIRS_x264 				= inputs(3);%0.795644205158;
		                      %%%
%inputs = load([LIRS_folder{23} '\' LIRS_namelist{23} '\' data_file]);
%cycles_LIRS_xalan 			= inputs(1);%63224231;
%IPC_LIRS_xalan 				= inputs(2);%1.5818300898;
%MPKI_LIRS_xalan 				= inputs(3);%1.33404671539;
                              %%
%#############################









####
####
####
####
####
####
####
####
####
####
####
####
####
####
####
####
####
####
####
####
####
####% SPEC CPU2006 LRU Integer Benchmarks
####% bzip2, gcc, mcf, hmmer, sjeng, libquantum, xalan
####
####%function [IPC, MPKI, num_cycles] = calcOutputs(in_cycles, in_instructions, misses)
####%  
####%  % MPKI = misses per thousand instructions
####%  MPKI = (misses/in_instructions) * 1000;
####%  IPC = in_instructions / in_cycles;
####%  num_cycles = in_cycles;
####%  
####%end
####
####
####
####% SPEC CPU2006 LRU Integer Benchmarks
####% bzip2, gcc, mcf, hmmer, sjeng, libquantum, xalan
####
####%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
####%% LRU_bzip2
####%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
####cycles  = 91690002; % Simulated unhalted cycles
####cCycles =  7112312; % Cycles due to contention stalls
####instrs = 100000226; % Simulated instructions
####
####mGETS   = 101028; % GETS misses
####mGETXIM = 184056; % GETX I->M misses
####mGETXSM = 0; % GETX S->M misses (upgrade misses)
####
####num_misses = mGETS + mGETXIM + mGETXSM;
####[IPC_LRU_bzip2, MPKI_LRU_bzip2, cycles_LRU_bzip2] = calcOutputs(cycles + cCycles, instrs,  num_misses);
####
####clear cycles cCycles instrs mGETS mGETXIM mGETXSM num_misses
####%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
####%% LRU_gcc
####%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
####cycles = 120630061; % Simulated unhalted cycles
####cCycles = 8119535; % Cycles due to contention stalls
####instrs = 100013047; % Simulated instructions
####
####mGETS = 228844; % GETS misses
####mGETXIM = 59281; % GETX I->M misses
####mGETXSM = 0; % GETX S->M misses (upgrade misses)
####
####num_misses = mGETS + mGETXIM + mGETXSM;
####[IPC_LRU_gcc, MPKI_LRU_gcc, cycles_LRU_gcc] = calcOutputs(cycles + cCycles, instrs,  num_misses);
####
####clear cycles cCycles instrs mGETS mGETXIM mGETXSM num_misses
####%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
####%% LRU_mcf
####%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
####cycles = 651872818; % Simulated unhalted cycles
####cCycles = 148198570; % Cycles due to contention stalls
####instrs = 100000846; % Simulated instructions
####
####mGETS = 7976554; % GETS misses
####mGETXIM = 122221; % GETX I->M misses
####mGETXSM = 0; % GETX S->M misses (upgrade misses)
####
####num_misses = mGETS + mGETXIM + mGETXSM;
####[IPC_LRU_mcf, MPKI_LRU_mcf, cycles_LRU_mcf] = calcOutputs(cycles + cCycles, instrs,  num_misses);
####
####clear cycles cCycles instrs mGETS mGETXIM mGETXSM num_misses
####%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
####%% LRU_hmmer
####%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
####cycles = 68032121; % Simulated unhalted cycles
####cCycles = 9597484; % Cycles due to contention stalls
####instrs = 100001814; % Simulated instructions
####
####mGETS = 4826; % GETS misses
####mGETXIM = 151449; % GETX I->M misses
####mGETXSM = 0; % GETX S->M misses (upgrade misses)
####
####num_misses = mGETS + mGETXIM + mGETXSM;
####[IPC_LRU_hmmer, MPKI_LRU_hmmer, cycles_LRU_hmmer] = calcOutputs(cycles + cCycles, instrs,  num_misses);
####
####clear cycles cCycles instrs mGETS mGETXIM mGETXSM num_misses
####%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
####%% LRU_sjeng
####%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
####cycles = 81520085; % Simulated unhalted cycles
####cCycles = 1087831; % Cycles due to contention stalls
####instrs = 100007353; % Simulated instructions
####
####mGETS = 33572; % GETS misses
####mGETXIM = 2656; % GETX I->M misses
####mGETXSM = 0; % GETX S->M misses (upgrade misses)
####
####num_misses = mGETS + mGETXIM + mGETXSM;
####[IPC_LRU_sjeng, MPKI_LRU_sjeng, cycles_LRU_sjeng] = calcOutputs(cycles + cCycles, instrs,  num_misses);
####
####clear cycles cCycles instrs mGETS mGETXIM mGETXSM num_misses
####%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
####%% LRU_libquantum
####%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
####cycles = 158672261; % Simulated unhalted cycles
####cCycles = 36943324; % Cycles due to contention stalls
####instrs = 100001550; % Simulated instructions
####
####mGETS = 2504581; % GETS misses
####mGETXIM = 17; % GETX I->M misses
####mGETXSM = 0; % GETX S->M misses (upgrade misses)
####
####num_misses = mGETS + mGETXIM + mGETXSM;
####[IPC_LRU_libquantum, MPKI_LRU_libquantum, cycles_LRU_libquantum] = calcOutputs(cycles + cCycles, instrs,  num_misses);
####
####clear cycles cCycles instrs mGETS mGETXIM mGETXSM num_misses
####%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
####%% LRU_xalan
####%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
####cycles = 60440574; % Simulated unhalted cycles
####cCycles = 2783657; % Cycles due to contention stalls
####instrs = 100009991; % Simulated instructions
####
####mGETS = 73733; % GETS misses
####mGETXIM = 59685; % GETX I->M misses
####mGETXSM = 0; % GETX S->M misses (upgrade misses)
####
####num_misses = mGETS + mGETXIM + mGETXSM;
####[IPC_LRU_xalan, MPKI_LRU_xalan, cycles_LRU_xalan] = calcOutputs(cycles + cCycles, instrs,  num_misses);
####
####clear cycles cCycles instrs mGETS mGETXIM mGETXSM num_misses
####
####% SPEC CPU2006 LRU Floating-Point Benchmarks
####% milc, cactusADM, leslie3d, namd, soplex, calculix, lbm
####
####%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
####%% LRU_milc
####%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
####cycles = 124261859; % Simulated unhalted cycles
####cCycles = 26191702; % Cycles due to contention stalls
####instrs = 100002157; % Simulated instructions
####
####mGETS = 1454527; % GETS misses
####mGETXIM = 39973; % GETX I->M misses
####mGETXSM = 0; % GETX S->M misses (upgrade misses)
####
####num_misses = mGETS + mGETXIM + mGETXSM;
####[IPC_LRU_milc, MPKI_LRU_milc, cycles_LRU_milc] = calcOutputs(cycles + cCycles, instrs,  num_misses);
####
####clear cycles cCycles instrs mGETS mGETXIM mGETXSM num_misses
####%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
####%% LRU_cactusADM
####%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
####cycles = 84430914; % Simulated unhalted cycles
####cCycles = 10052575; % Cycles due to contention stalls
####instrs = 100010640; % Simulated instructions
####
####mGETS = 346801; % GETS misses
####mGETXIM = 136185; % GETX I->M misses
####mGETXSM = 0; % GETX S->M misses (upgrade misses)
####
####
####num_misses = mGETS + mGETXIM + mGETXSM;
####[IPC_LRU_cactusADM, MPKI_LRU_cactusADM, cycles_LRU_cactusADM] = calcOutputs(cycles + cCycles, instrs,  num_misses);
####
####clear cycles cCycles instrs mGETS mGETXIM mGETXSM num_misses
####%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
####%% LRU_leslie3d
####%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
####cycles = 171802456; % Simulated unhalted cycles
####cCycles = 45531703; % Cycles due to contention stalls
####instrs = 100008708; % Simulated instructions
####
####mGETS = 1744305; % GETS misses
####mGETXIM = 638103; % GETX I->M misses
####mGETXSM = 0; % GETX S->M misses (upgrade misses)
####
####num_misses = mGETS + mGETXIM + mGETXSM;
####[IPC_LRU_leslie3d, MPKI_LRU_leslie3d, cycles_LRU_leslie3d] = calcOutputs(cycles + cCycles, instrs,  num_misses);
####
####clear cycles cCycles instrs mGETS mGETXIM mGETXSM num_misses
####%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
####%% LRU_namd
####%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
####cycles = 54190087; % Simulated unhalted cycles
####cCycles = 776634; % Cycles due to contention stalls
####instrs = 100016248; % Simulated instructions
####
####mGETS = 11378; % GETS misses
####mGETXIM = 25784; % GETX I->M misses
####mGETXSM = 0; % GETX S->M misses (upgrade misses)
####
####num_misses = mGETS + mGETXIM + mGETXSM;
####[IPC_LRU_namd, MPKI_LRU_namd, cycles_LRU_namd] = calcOutputs(cycles + cCycles, instrs,  num_misses);
####
####clear cycles cCycles instrs mGETS mGETXIM mGETXSM num_misses
####%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
####%% LRU_soplex
####%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
####cycles = 191651925; % Simulated unhalted cycles
####cCycles = 36257667; % Cycles due to contention stalls
####instrs = 100001357; % Simulated instructions
####
####mGETS = 1722569; % GETS misses
####mGETXIM = 371988; % GETX I->M misses
####mGETXSM = 0; % GETX S->M misses (upgrade misses)
####
####
####num_misses = mGETS + mGETXIM + mGETXSM;
####[IPC_LRU_soplex, MPKI_LRU_soplex, cycles_LRU_soplex] = calcOutputs(cycles + cCycles, instrs,  num_misses);
####
####clear cycles cCycles instrs mGETS mGETXIM mGETXSM num_misses
####%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
####%% LRU_calculix
####%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
####cycles = 49250005; % Simulated unhalted cycles
####cCycles = 187222; % Cycles due to contention stalls
####instrs = 100019872; % Simulated instructions
####
####mGETS = 5690; % GETS misses
####mGETXIM = 199; % GETX I->M misses
####mGETXSM = 0; % GETX S->M misses (upgrade misses)
####
####num_misses = mGETS + mGETXIM + mGETXSM;
####[IPC_LRU_calculix, MPKI_LRU_calculix, cycles_LRU_calculix] = calcOutputs(cycles + cCycles, instrs,  num_misses);
####
####clear cycles cCycles instrs mGETS mGETXIM mGETXSM num_misses
####%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
####%% LRU_lbm
####%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
####cycles = 146992430; % Simulated unhalted cycles
####cCycles = 26911218; % Cycles due to contention stalls
####instrs = 100002179; % Simulated instructions
####
####mGETS = 120; % GETS misses
####mGETXIM = 0; % GETX I->M misses
####mGETXSM = 0; % GETX S->M misses (upgrade misses)
####
####
####num_misses = mGETS + mGETXIM + mGETXSM;
####[IPC_LRU_lbm, MPKI_LRU_lbm, cycles_LRU_lbm] = calcOutputs(cycles + cCycles, instrs,  num_misses);
####
####clear cycles cCycles instrs mGETS mGETXIM mGETXSM num_misses
####
####
####% PARSEC CPU2006 LRU Multicore Benchmarks
####% blackscholes, bodytrack, canneal, dedup, fluidanimate, 
####% freqmine, streamcluster, swaptions, x264
####
####%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
####%% LRU_blackscholes
####%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
####cycles0  = 372025313;
####cCycles0 =  85472;
####instrs0  = 507838642;
####cycles1  = 371878140;
####cCycles1 =  89060;
####instrs1  = 507826013;
####cycles2  = 371908170;
####cCycles2 =  86070;
####instrs2  = 507819013;
####cycles3  = 371915075;
####cCycles3 =  86497;
####instrs3  = 507858713;
####cycles4  = 371872578;
####cCycles4 =  84640;
####instrs4  = 507838513;
####cycles5  = 371915226;
####cCycles5 =  81987;
####instrs5  = 507846413;
####cycles6  = 371943407;
####cCycles6 =  84531;
####instrs6  = 507837413;
####cycles7  = 371882091;
####cCycles7 =  84311;
####instrs7  = 507835255;
####
####mGETS0   =  3145;
####mGETXIM0 =  536;
####mGETXSM0 =  0;
####mGETS1   = 3151;
####mGETXIM1 =  533;
####mGETXSM1 =  0;
####mGETS2   = 3141;
####mGETXIM2 =  531;
####mGETXSM2 =  0;
####mGETS3   = 3148;
####mGETXIM3 =  534;
####mGETXSM3 =  0;
####mGETS4   = 3153;
####mGETXIM4 =  536;
####mGETXSM4 =  0;
####mGETS5   = 3144;
####mGETXIM5 =  534;
####mGETXSM5 =  0;
####mGETS6   = 3147;
####mGETXIM6 =  531;
####mGETXSM6 =  0;
####mGETS7   = 3151;
####mGETXIM7 =  533;
####mGETXSM7 =  0;
####
####cycles = cycles0 + cycles1 + cycles2 + cycles3 + cycles4 + cycles5 + cycles6 + cycles7;
####cCycles= cCycles0 + cCycles1 + cCycles2 + cCycles3 + cCycles4 + cCycles5 + cCycles6 + cCycles7;
####instrs = instrs0 + instrs1 + instrs2 + instrs3 + instrs4 + instrs5 + instrs6 + instrs7;
####
####mGETS = mGETS0 + mGETS1 + mGETS2 + mGETS3 + mGETS4 + mGETS5 + mGETS6 + mGETS7;
####mGETXIM = mGETXIM0 + mGETXIM1 + mGETXIM2 + mGETXIM3 + mGETXIM4 + mGETXIM5 + mGETXIM6 + mGETXIM7;
####mGETXSM = mGETXSM0 + mGETXSM1 + mGETXSM2 + mGETXSM3 + mGETXSM4 + mGETXSM5 + mGETXSM6 + mGETXSM7;
####num_misses = mGETS + mGETXIM + mGETXSM;
####
####[IPC_LRU_blackscholes, MPKI_LRU_blackscholes, cycles_LRU_blackscholes] = calcOutputs(cycles + cCycles, instrs,  num_misses);
####
####clear cycles  cycles0  cycles1  cycles2  cycles3  cycles4  cycles5  cycles6  cycles7
####clear cCycles cCycles0 cCycles1 cCycles2 cCycles3 cCycles4 cCycles5 cCycles6 cCycles7
####clear instrs  instrs0  instrs1  instrs2  instrs3  instrs4  instrs5  instrs6  instrs7
####clear mGETS	  mGETS0   mGETS1   mGETS2   mGETS3   mGETS4   mGETS5   mGETS6   mGETS7
####clear mGETXIM mGETXIM0 mGETXIM1 mGETXIM2 mGETXIM3 mGETXIM4 mGETXIM5 mGETXIM6 mGETXIM7
####clear mGETXSM mGETXSM0 mGETXSM1 mGETXSM2 mGETXSM3 mGETXSM4 mGETXSM5 mGETXSM6 mGETXSM7
####clear num_misses
####
#### 
####   
####
####%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
####%% LRU_bodytrack
####%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
####cycles0  = 368040317;
####cCycles0 =  415373;
####instrs0  = 618639122;
####cycles1  = 367414048;
####cCycles1 =  491322;
####instrs1  = 618275120;
####cycles2  = 367240136;
####cCycles2 =  389940;
####instrs2  = 617871144;
####cycles3  = 368467327;
####cCycles3 =  361909;
####instrs3  = 619584447;
####cycles4  = 380751504;
####cCycles4 =  450348;
####instrs4  = 636486002;
####cycles5  = 358268714;
####cCycles5 =  464889;
####instrs5  = 604797310;
####cycles6  = 394181437;
####cCycles6 =  1153264;
####instrs6  = 678504756;
####cycles7  = 358494742;
####cCycles7 =  336760;
####instrs7  = 605870857;
####
####mGETS0   = 11670;
####mGETXIM0 =  10989;
####mGETXSM0 =  0;
####mGETS1   = 11538;
####mGETXIM1 =  11123;
####mGETXSM1 =  0;
####mGETS2   = 11677;
####mGETXIM2 =  10950;
####mGETXSM2 =  0;
####mGETS3   = 11540;
####mGETXIM3 =  11118;
####mGETXSM3 =  0;
####mGETS4   = 11710;
####mGETXIM4 =  10960;
####mGETXSM4 =  0;
####mGETS5   = 11603;
####mGETXIM5 =  11060;
####mGETXSM5 =  0;
####mGETS6   = 11735;
####mGETXIM6 =  10944;
####mGETXSM6 =  0;
####mGETS7   = 11572;
####mGETXIM7 =  11116;
####mGETXSM7 =  0;
####
####cycles = cycles0 + cycles1 + cycles2 + cycles3 + cycles4 + cycles5 + cycles6 + cycles7;
####cCycles= cCycles0 + cCycles1 + cCycles2 + cCycles3 + cCycles4 + cCycles5 + cCycles6 + cCycles7;
####instrs = instrs0 + instrs1 + instrs2 + instrs3 + instrs4 + instrs5 + instrs6 + instrs7;
####
####mGETS = mGETS0 + mGETS1 + mGETS2 + mGETS3 + mGETS4 + mGETS5 + mGETS6 + mGETS7;
####mGETXIM = mGETXIM0 + mGETXIM1 + mGETXIM2 + mGETXIM3 + mGETXIM4 + mGETXIM5 + mGETXIM6 + mGETXIM7;
####mGETXSM = mGETXSM0 + mGETXSM1 + mGETXSM2 + mGETXSM3 + mGETXSM4 + mGETXSM5 + mGETXSM6 + mGETXSM7;
####num_misses = mGETS + mGETXIM + mGETXSM;
####
####[IPC_LRU_bodytrack, MPKI_LRU_bodytrack, cycles_LRU_bodytrack] = calcOutputs(cycles + cCycles, instrs,  num_misses);
####
####clear cycles  cycles0  cycles1  cycles2  cycles3  cycles4  cycles5  cycles6  cycles7
####clear cCycles cCycles0 cCycles1 cCycles2 cCycles3 cCycles4 cCycles5 cCycles6 cCycles7
####clear instrs  instrs0  instrs1  instrs2  instrs3  instrs4  instrs5  instrs6  instrs7
####clear mGETS	  mGETS0   mGETS1   mGETS2   mGETS3   mGETS4   mGETS5   mGETS6   mGETS7
####clear mGETXIM mGETXIM0 mGETXIM1 mGETXIM2 mGETXIM3 mGETXIM4 mGETXIM5 mGETXIM6 mGETXIM7
####clear mGETXSM mGETXSM0 mGETXSM1 mGETXSM2 mGETXSM3 mGETXSM4 mGETXSM5 mGETXSM6 mGETXSM7
####clear num_misses
####
####
####%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
####%% LRU_canneal
####%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
####cycles0  = 623096987;
####cCycles0 =  122772533;
####instrs0  = 215309859;
####cycles1  = 623271553;
####cCycles1 =  122897321;
####instrs1  = 215271441;
####cycles2  = 622344298;
####cCycles2 =  122726796;
####instrs2  = 215058999;
####cycles3  = 622301684;
####cCycles3 =  122644679;
####instrs3  = 215160655;
####cycles4  = 623562980;
####cCycles4 =  122815188;
####instrs4  = 215520727;
####cycles5  = 623013521;
####cCycles5 =  122748148;
####instrs5  = 215350313;
####cycles6  = 622605015;
####cCycles6 =  122739512;
####instrs6  = 215142886;
####cycles7  = 622189600;
####cCycles7 =  122571030;
####instrs7  = 215160922;
####
####mGETS0   = 2851547;
####mGETXIM0 =  99;
####mGETXSM0 =  0;
####mGETS1   = 2852798;
####mGETXIM1 =  84;
####mGETXSM1 =  0;
####mGETS2   = 2849295;
####mGETXIM2 =  92;
####mGETXSM2 =  0;
####mGETS3   = 2848498;
####mGETXIM3 =  111;
####mGETXSM3 =  0;
####mGETS4   = 2847637;
####mGETXIM4 =  102;
####mGETXSM4 =  0;
####mGETS5   = 2850973;
####mGETXIM5 =  96;
####mGETXSM5 =  0;
####mGETS6   = 2846077;
####mGETXIM6 =  110;
####mGETXSM6 =  0;
####mGETS7   = 2848066;
####mGETXIM7 =  107;
####mGETXSM7 =  0;
####
####cycles = cycles0 + cycles1 + cycles2 + cycles3 + cycles4 + cycles5 + cycles6 + cycles7;
####cCycles= cCycles0 + cCycles1 + cCycles2 + cCycles3 + cCycles4 + cCycles5 + cCycles6 + cCycles7;
####instrs = instrs0 + instrs1 + instrs2 + instrs3 + instrs4 + instrs5 + instrs6 + instrs7;
####
####mGETS = mGETS0 + mGETS1 + mGETS2 + mGETS3 + mGETS4 + mGETS5 + mGETS6 + mGETS7;
####mGETXIM = mGETXIM0 + mGETXIM1 + mGETXIM2 + mGETXIM3 + mGETXIM4 + mGETXIM5 + mGETXIM6 + mGETXIM7;
####mGETXSM = mGETXSM0 + mGETXSM1 + mGETXSM2 + mGETXSM3 + mGETXSM4 + mGETXSM5 + mGETXSM6 + mGETXSM7;
####num_misses = mGETS + mGETXIM + mGETXSM;
####
####[IPC_LRU_canneal, MPKI_LRU_canneal, cycles_LRU_canneal] = calcOutputs(cycles + cCycles, instrs,  num_misses);
####
####clear cycles  cycles0  cycles1  cycles2  cycles3  cycles4  cycles5  cycles6  cycles7
####clear cCycles cCycles0 cCycles1 cCycles2 cCycles3 cCycles4 cCycles5 cCycles6 cCycles7
####clear instrs  instrs0  instrs1  instrs2  instrs3  instrs4  instrs5  instrs6  instrs7
####clear mGETS	  mGETS0   mGETS1   mGETS2   mGETS3   mGETS4   mGETS5   mGETS6   mGETS7
####clear mGETXIM mGETXIM0 mGETXIM1 mGETXIM2 mGETXIM3 mGETXIM4 mGETXIM5 mGETXIM6 mGETXIM7
####clear mGETXSM mGETXSM0 mGETXSM1 mGETXSM2 mGETXSM3 mGETXSM4 mGETXSM5 mGETXSM6 mGETXSM7
####clear num_misses
####
####
####
####%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
####%% LRU_dedup
####%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
####
####%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
####%% LRU_fluidanimate
####%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
####cycles0  = 441268584;
####cCycles0 =  18143410;
####instrs0  = 609044936;
####cycles1  = 436625389;
####cCycles1 =  16370156;
####instrs1  = 629937266;
####cycles2  = 466736808;
####cCycles2 =  16878940;
####instrs2  = 662498866;
####cycles3  = 399386953;
####cCycles3 =  18280624;
####instrs3  = 558356979;
####cycles4  = 425816736;
####cCycles4 =  18957411;
####instrs4  = 586863271;
####cycles5  = 480594538;
####cCycles5 =  16497305;
####instrs5  = 671867656;
####cycles6  = 509230044;
####cCycles6 =  16888852;
####instrs6  = 702533642;
####cycles7  = 412859794;
####cCycles7 =  17488423;
####instrs7  = 578912593;
####mGETS0   = 390450;
####mGETXIM0 =  171328;
####mGETXSM0 =  0;
####mGETS1   = 389376;
####mGETXIM1 =  171400;
####mGETXSM1 =  0;
####mGETS2   = 390196;
####mGETXIM2 =  171275;
####mGETXSM2 =  0;
####mGETS3   = 389313;
####mGETXIM3 =  171431;
####mGETXSM3 =  0;
####mGETS4   = 388938;
####mGETXIM4 =  171298;
####mGETXSM4 =  0;
####mGETS5   = 390436;
####mGETXIM5 =  171397;
####mGETXSM5 =  0;
####mGETS6   = 390680;
####mGETXIM6 =  171341;
####mGETXSM6 =  0;
####mGETS7   = 390161;
####mGETXIM7 =  171433;
####mGETXSM7 =  0;
####
####cycles = cycles0 + cycles1 + cycles2 + cycles3 + cycles4 + cycles5 + cycles6 + cycles7;
####cCycles= cCycles0 + cCycles1 + cCycles2 + cCycles3 + cCycles4 + cCycles5 + cCycles6 + cCycles7;
####instrs = instrs0 + instrs1 + instrs2 + instrs3 + instrs4 + instrs5 + instrs6 + instrs7;
####
####mGETS = mGETS0 + mGETS1 + mGETS2 + mGETS3 + mGETS4 + mGETS5 + mGETS6 + mGETS7;
####mGETXIM = mGETXIM0 + mGETXIM1 + mGETXIM2 + mGETXIM3 + mGETXIM4 + mGETXIM5 + mGETXIM6 + mGETXIM7;
####mGETXSM = mGETXSM0 + mGETXSM1 + mGETXSM2 + mGETXSM3 + mGETXSM4 + mGETXSM5 + mGETXSM6 + mGETXSM7;
####num_misses = mGETS + mGETXIM + mGETXSM;
####
####[IPC_LRU_fluidanimate, MPKI_LRU_fluidanimate, cycles_LRU_fluidanimate] = calcOutputs(cycles + cCycles, instrs,  num_misses);
####
####clear cycles  cycles0  cycles1  cycles2  cycles3  cycles4  cycles5  cycles6  cycles7
####clear cCycles cCycles0 cCycles1 cCycles2 cCycles3 cCycles4 cCycles5 cCycles6 cCycles7
####clear instrs  instrs0  instrs1  instrs2  instrs3  instrs4  instrs5  instrs6  instrs7
####clear mGETS	  mGETS0   mGETS1   mGETS2   mGETS3   mGETS4   mGETS5   mGETS6   mGETS7
####clear mGETXIM mGETXIM0 mGETXIM1 mGETXIM2 mGETXIM3 mGETXIM4 mGETXIM5 mGETXIM6 mGETXIM7
####clear mGETXSM mGETXSM0 mGETXSM1 mGETXSM2 mGETXSM3 mGETXSM4 mGETXSM5 mGETXSM6 mGETXSM7
####clear num_misses
####
####
####%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
####%% LRU_freqmine
####%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
####cycles0  = 1626231850;
####cCycles0 =  47068550;
####instrs0  = 2284541992;
####cycles1  = 347390857;
####cCycles1 =  16660802;
####instrs1  = 386910428;
####cycles2  = 351346529;
####cCycles2 =  17828411;
####instrs2  = 393411659;
####cycles3  = 354518816;
####cCycles3 =  19139151;
####instrs3  = 377329627;
####cycles4  = 363912784;
####cCycles4 =  21651518;
####instrs4  = 384903309;
####cycles5  = 360723776;
####cCycles5 =  21327628;
####instrs5  = 392083909;
####cycles6  = 361395305;
####cCycles6 =  22139381;
####instrs6  = 389626179;
####cycles7  = 357750865;
####cCycles7 =  18798525;
####instrs7  = 391214856;
####mGETS0   = 305955;
####mGETXIM0 =  354930;
####mGETXSM0 =  0;
####mGETS1   = 306817;
####mGETXIM1 =  355077;
####mGETXSM1 =  0;
####mGETS2   = 306574;
####mGETXIM2 =  354774;
####mGETXSM2 =  0;
####mGETS3   = 306668;
####mGETXIM3 =  354957;
####mGETXSM3 =  0;
####mGETS4   = 306843;
####mGETXIM4 =  354678;
####mGETXSM4 =  0;
####mGETS5   = 306549;
####mGETXIM5 =  354674;
####mGETXSM5 =  0;
####mGETS6   = 306660;
####mGETXIM6 =  354887;
####mGETXSM6 =  0;
####mGETS7   = 306573;
####mGETXIM7 =  354647;
####mGETXSM7 =  0;
####
####cycles = cycles0 + cycles1 + cycles2 + cycles3 + cycles4 + cycles5 + cycles6 + cycles7;
####cCycles= cCycles0 + cCycles1 + cCycles2 + cCycles3 + cCycles4 + cCycles5 + cCycles6 + cCycles7;
####instrs = instrs0 + instrs1 + instrs2 + instrs3 + instrs4 + instrs5 + instrs6 + instrs7;
####
####mGETS = mGETS0 + mGETS1 + mGETS2 + mGETS3 + mGETS4 + mGETS5 + mGETS6 + mGETS7;
####mGETXIM = mGETXIM0 + mGETXIM1 + mGETXIM2 + mGETXIM3 + mGETXIM4 + mGETXIM5 + mGETXIM6 + mGETXIM7;
####mGETXSM = mGETXSM0 + mGETXSM1 + mGETXSM2 + mGETXSM3 + mGETXSM4 + mGETXSM5 + mGETXSM6 + mGETXSM7;
####num_misses = mGETS + mGETXIM + mGETXSM;
####
####[IPC_LRU_freqmine, MPKI_LRU_freqmine, cycles_LRU_freqmine] = calcOutputs(cycles + cCycles, instrs,  num_misses);
####
####clear cycles  cycles0  cycles1  cycles2  cycles3  cycles4  cycles5  cycles6  cycles7
####clear cCycles cCycles0 cCycles1 cCycles2 cCycles3 cCycles4 cCycles5 cCycles6 cCycles7
####clear instrs  instrs0  instrs1  instrs2  instrs3  instrs4  instrs5  instrs6  instrs7
####clear mGETS	  mGETS0   mGETS1   mGETS2   mGETS3   mGETS4   mGETS5   mGETS6   mGETS7
####clear mGETXIM mGETXIM0 mGETXIM1 mGETXIM2 mGETXIM3 mGETXIM4 mGETXIM5 mGETXIM6 mGETXIM7
####clear mGETXSM mGETXSM0 mGETXSM1 mGETXSM2 mGETXSM3 mGETXSM4 mGETXSM5 mGETXSM6 mGETXSM7
####clear num_misses
####%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
####%% LRU_streamcluster
####%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
####cycles0  = 902831556;
####cCycles0 =  124541412;
####instrs0  = 714515276;
####cycles1  = 842667329;
####cCycles1 =  119090755;
####instrs1  = 610320408;
####cycles2  = 834185060;
####cCycles2 =  118111920;
####instrs2  = 610184215;
####cycles3  = 834039640;
####cCycles3 =  117154017;
####instrs3  = 618809107;
####cycles4  = 833987969;
####cCycles4 =  117498029;
####instrs4  = 614233619;
####cycles5  = 834024566;
####cCycles5 =  119552484;
####instrs5  = 600585552;
####cycles6  = 834096236;
####cCycles6 =  115857988;
####instrs6  = 627862585;
####cycles7  = 834061292;
####cCycles7 =  118985754;
####instrs7  = 603491310;
####mGETS0   = 4958948;
####mGETXIM0 =  25325;
####mGETXSM0 =  0;
####mGETS1   = 4954103;
####mGETXIM1 =  23912;
####mGETXSM1 =  0;
####mGETS2   = 4241675;
####mGETXIM2 =  25703;
####mGETXSM2 =  0;
####mGETS3   = 3432273;
####mGETXIM3 =  26539;
####mGETXSM3 =  0;
####mGETS4   = 3997994;
####mGETXIM4 =  26359;
####mGETXSM4 =  0;
####mGETS5   = 4995349;
####mGETXIM5 =  25348;
####mGETXSM5 =  0;
####mGETS6   = 4967058;
####mGETXIM6 =  25304;
####mGETXSM6 =  0;
####mGETS7   = 4946687;
####mGETXIM7 =  25349;
####mGETXSM7 =  0;
####
####cycles = cycles0 + cycles1 + cycles2 + cycles3 + cycles4 + cycles5 + cycles6 + cycles7;
####cCycles= cCycles0 + cCycles1 + cCycles2 + cCycles3 + cCycles4 + cCycles5 + cCycles6 + cCycles7;
####instrs = instrs0 + instrs1 + instrs2 + instrs3 + instrs4 + instrs5 + instrs6 + instrs7;
####
####mGETS = mGETS0 + mGETS1 + mGETS2 + mGETS3 + mGETS4 + mGETS5 + mGETS6 + mGETS7;
####mGETXIM = mGETXIM0 + mGETXIM1 + mGETXIM2 + mGETXIM3 + mGETXIM4 + mGETXIM5 + mGETXIM6 + mGETXIM7;
####mGETXSM = mGETXSM0 + mGETXSM1 + mGETXSM2 + mGETXSM3 + mGETXSM4 + mGETXSM5 + mGETXSM6 + mGETXSM7;
####num_misses = mGETS + mGETXIM + mGETXSM;
####
####[IPC_LRU_streamcluster, MPKI_LRU_streamcluster, cycles_LRU_streamcluster] = calcOutputs(cycles + cCycles, instrs,  num_misses);
####
####clear cycles  cycles0  cycles1  cycles2  cycles3  cycles4  cycles5  cycles6  cycles7
####clear cCycles cCycles0 cCycles1 cCycles2 cCycles3 cCycles4 cCycles5 cCycles6 cCycles7
####clear instrs  instrs0  instrs1  instrs2  instrs3  instrs4  instrs5  instrs6  instrs7
####clear mGETS	  mGETS0   mGETS1   mGETS2   mGETS3   mGETS4   mGETS5   mGETS6   mGETS7
####clear mGETXIM mGETXIM0 mGETXIM1 mGETXIM2 mGETXIM3 mGETXIM4 mGETXIM5 mGETXIM6 mGETXIM7
####clear mGETXSM mGETXSM0 mGETXSM1 mGETXSM2 mGETXSM3 mGETXSM4 mGETXSM5 mGETXSM6 mGETXSM7
####clear num_misses
####
####
####%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
####%% LRU_swaptions
####%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
####cycles0  = 392890009;
####cCycles0 =  28272;
####instrs0  = 625010027;
####cycles1  = 392890008;
####cCycles1 =  27629;
####instrs1  = 625005994;
####cycles2  = 392880005;
####cCycles2 =  28471;
####instrs2  = 625003794;
####cycles3  = 392880001;
####cCycles3 =  29220;
####instrs3  = 625005829;
####cycles4  = 392880005;
####cCycles4 =  25655;
####instrs4  = 625012869;
####cycles5  = 392880008;
####cCycles5 =  29428;
####instrs5  = 625004268;
####cycles6  = 392880001;
####cCycles6 =  27405;
####instrs6  = 625010578;
####cycles7  = 392880020;
####cCycles7 =  27556;
####instrs7  = 624999073;
####mGETS0   =  297;
####mGETXIM0 =  1089;
####mGETXSM0 =  0;
####mGETS1   = 306;
####mGETXIM1 =  1092;
####mGETXSM1 =  0;
####mGETS2   = 278;
####mGETXIM2 =  1130;
####mGETXSM2 =  0;
####mGETS3   =  301;
####mGETXIM3 =  1100;
####mGETXSM3 =  0;
####mGETS4   = 278;
####mGETXIM4 =  1113;
####mGETXSM4 =  0;
####mGETS5   = 02;
####mGETXIM5 =  1104;
####mGETXSM5 =  0;
####mGETS6   = 293;
####mGETXIM6 =  1113;
####mGETXSM6 =  0;
####mGETS7   = 298;
####mGETXIM7 =  1116;
####mGETXSM7 =  0;
####
####cycles = cycles0 + cycles1 + cycles2 + cycles3 + cycles4 + cycles5 + cycles6 + cycles7;
####cCycles= cCycles0 + cCycles1 + cCycles2 + cCycles3 + cCycles4 + cCycles5 + cCycles6 + cCycles7;
####instrs = instrs0 + instrs1 + instrs2 + instrs3 + instrs4 + instrs5 + instrs6 + instrs7;
####
####mGETS = mGETS0 + mGETS1 + mGETS2 + mGETS3 + mGETS4 + mGETS5 + mGETS6 + mGETS7;
####mGETXIM = mGETXIM0 + mGETXIM1 + mGETXIM2 + mGETXIM3 + mGETXIM4 + mGETXIM5 + mGETXIM6 + mGETXIM7;
####mGETXSM = mGETXSM0 + mGETXSM1 + mGETXSM2 + mGETXSM3 + mGETXSM4 + mGETXSM5 + mGETXSM6 + mGETXSM7;
####num_misses = mGETS + mGETXIM + mGETXSM;
####
####[IPC_LRU_swaptions, MPKI_LRU_swaptions, cycles_LRU_swaptions] = calcOutputs(cycles + cCycles, instrs,  num_misses);
####
####clear cycles  cycles0  cycles1  cycles2  cycles3  cycles4  cycles5  cycles6  cycles7
####clear cCycles cCycles0 cCycles1 cCycles2 cCycles3 cCycles4 cCycles5 cCycles6 cCycles7
####clear instrs  instrs0  instrs1  instrs2  instrs3  instrs4  instrs5  instrs6  instrs7
####clear mGETS	  mGETS0   mGETS1   mGETS2   mGETS3   mGETS4   mGETS5   mGETS6   mGETS7
####clear mGETXIM mGETXIM0 mGETXIM1 mGETXIM2 mGETXIM3 mGETXIM4 mGETXIM5 mGETXIM6 mGETXIM7
####clear mGETXSM mGETXSM0 mGETXSM1 mGETXSM2 mGETXSM3 mGETXSM4 mGETXSM5 mGETXSM6 mGETXSM7
####clear num_misses
####
####
####%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
####%% LRU_x264
####%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
####cycles0  = 387522668;
####cCycles0 =  7640422;
####instrs0  = 647467278;
####cycles1  = 358877158;
####cCycles1 =  7921250;
####instrs1  = 595493905;
####cycles2  = 381715914;
####cCycles2 =  7352199;
####instrs2  = 635562411;
####cycles3  = 382455091;
####cCycles3 =  6837718;
####instrs3  = 636560300;
####cycles4  = 341457682;
####cCycles4 =  6176686;
####instrs4  = 564184356;
####cycles5  = 414045820;
####cCycles5 =  9164256;
####instrs5  = 694546168;
####cycles6  = 362988470;
####cCycles6 =  6452720;
####instrs6  = 597384752;
####cycles7  = 378596141;
####cCycles7 =  6826336;
####instrs7  = 628853585;
####mGETS0   = 347938;
####mGETXIM0 =  148878;
####mGETXSM0 =  0;
####mGETS1   = 348815;
####mGETXIM1 =  149087;
####mGETXSM1 =  0;
####mGETS2   = 348603;
####mGETXIM2 =  148816;
####mGETXSM2 =  0;
####mGETS3   = 48575;
####mGETXIM3 =  148694;
####mGETXSM3 =  0;
####mGETS4   = 349453;
####mGETXIM4 =  148515;
####mGETXSM4 =  0;
####mGETS5   =  348074;
####mGETXIM5 =  148369;
####mGETXSM5 =  0;
####mGETS6   = 348273;
####mGETXIM6 =  148437;
####mGETXSM6 =  0;
####mGETS7   =  349034;
####mGETXIM7 =  148702;
####mGETXSM7 =  0;
####
####cycles = cycles0 + cycles1 + cycles2 + cycles3 + cycles4 + cycles5 + cycles6 + cycles7;
####cCycles= cCycles0 + cCycles1 + cCycles2 + cCycles3 + cCycles4 + cCycles5 + cCycles6 + cCycles7;
####instrs = instrs0 + instrs1 + instrs2 + instrs3 + instrs4 + instrs5 + instrs6 + instrs7;
####
####mGETS = mGETS0 + mGETS1 + mGETS2 + mGETS3 + mGETS4 + mGETS5 + mGETS6 + mGETS7;
####mGETXIM = mGETXIM0 + mGETXIM1 + mGETXIM2 + mGETXIM3 + mGETXIM4 + mGETXIM5 + mGETXIM6 + mGETXIM7;
####mGETXSM = mGETXSM0 + mGETXSM1 + mGETXSM2 + mGETXSM3 + mGETXSM4 + mGETXSM5 + mGETXSM6 + mGETXSM7;
####num_misses = mGETS + mGETXIM + mGETXSM;
####
####[IPC_LRU_x264, MPKI_LRU_x264, cycles_LRU_x264] = calcOutputs(cycles + cCycles, instrs,  num_misses);
####
####clear cycles  cycles0  cycles1  cycles2  cycles3  cycles4  cycles5  cycles6  cycles7
####clear cCycles cCycles0 cCycles1 cCycles2 cCycles3 cCycles4 cCycles5 cCycles6 cCycles7
####clear instrs  instrs0  instrs1  instrs2  instrs3  instrs4  instrs5  instrs6  instrs7
####clear mGETS	  mGETS0   mGETS1   mGETS2   mGETS3   mGETS4   mGETS5   mGETS6   mGETS7
####clear mGETXIM mGETXIM0 mGETXIM1 mGETXIM2 mGETXIM3 mGETXIM4 mGETXIM5 mGETXIM6 mGETXIM7
####clear mGETXSM mGETXSM0 mGETXSM1 mGETXSM2 mGETXSM3 mGETXSM4 mGETXSM5 mGETXSM6 mGETXSM7
####clear num_misses
####
