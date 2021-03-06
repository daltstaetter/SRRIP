%graphics_toolkit("gnuplot");
graphics_toolkit("fltk");
graphics_toolkit("qt");
%%

figure(1);
y = [IPC_LRU_bzip2      IPC_LFU_bzip2       IPC_SRRIP_bzip2;      ...
     IPC_LRU_gcc        IPC_LFU_gcc         IPC_SRRIP_gcc;        ...
     IPC_LRU_mcf        IPC_LFU_mcf         IPC_SRRIP_mcf;        ...
     IPC_LRU_hmmer      IPC_LFU_hmmer       IPC_SRRIP_hmmer;      ...
     IPC_LRU_sjeng      IPC_LFU_sjeng       IPC_SRRIP_sjeng;      ...
     IPC_LRU_libquantum IPC_LFU_libquantum  IPC_SRRIP_libquantum; ...
     IPC_LRU_xalan      IPC_LFU_xalan       IPC_SRRIP_xalan;
     ];
x={             ...
   'bzip2',     ...
   'gcc',       ...
   'mcf',       ...
   'hmmer',     ...
   'sjeng',     ...
   'libquant',  ...
   'xalan'      ...
   };
   
bar(y);
set(gca,'xticklabel',x.');
title('SPEC CPU2006 Integer Benchmarks (Single-Threaded)');
legend('LRU', 'LFU', 'SRRIP','location','northwest');
ylabel('IPC');
axis([0 8 0 1.7]);
grid on;

figure(2);
y = [MPKI_LRU_bzip2       MPKI_LFU_bzip2      MPKI_SRRIP_bzip2;     ...
     MPKI_LRU_gcc         MPKI_LFU_gcc        MPKI_SRRIP_gcc;       ...
     #MPKI_LRU_mcf        MPKI_LFU_mcf        MPKI_SRRIP_mcf;       ...
     MPKI_LRU_hmmer       MPKI_LFU_hmmer      MPKI_SRRIP_hmmer;     ...
     MPKI_LRU_sjeng       MPKI_LFU_sjeng      MPKI_SRRIP_sjeng;     ...
     #MPKI_LRU_libquantum MPKI_LFU_libquantum MPKI_SRRIP_libquantum;...
     MPKI_LRU_xalan       MPKI_LFU_xalan      MPKI_SRRIP_xalan;
     ];
x={             ...
   'bzip2',     ...
   'gcc',       ...
   #'mcf',       ...
   'hmmer',     ...
   'sjeng',     ...
   #'libquant',  ...
   'xalan'      ...
   };
bar(y);
set(gca,'xticklabel',x.');
title('SPEC CPU2006 Integer Benchmarks (Single-Threaded)');
legend('LRU', 'LFU', 'SRRIP','location','northeast');
ylabel('MPKI');
grid on;
##
figure(3);
y = [#MPKI_LRU_bzip2 MPKI_LFU_bzip2 MPKI_SRRIP_bzip2; ...
     #MPKI_LRU_gcc MPKI_LFU_gcc MPKI_SRRIP_gcc;       ...
     MPKI_LRU_mcf MPKI_LFU_mcf MPKI_SRRIP_mcf;       ...
     #MPKI_LRU_hmmer MPKI_LFU_hmmer MPKI_SRRIP_hmmer;       ...
     #MPKI_LRU_sjeng MPKI_LFU_sjeng MPKI_SRRIP_sjeng;       ...
     MPKI_LRU_libquantum MPKI_LFU_libquantum MPKI_SRRIP_libquantum;       ...
     #MPKI_LRU_xalan MPKI_LFU_xalan MPKI_SRRIP_xalan;
     ];
x={             ...
   %'bzip2',     ...
   %'gcc',       ...
   'mcf',       ...
   %'hmmer',     ...
   %'sjeng',     ...
   'libquant',  ...
   %'xalan'      ...
   };
bar(y);
set(gca,'xticklabel',x.');
title('SPEC CPU2006 Integer Benchmarks (Single-Threaded)');
legend('LRU', 'LFU', 'SRRIP','location','northeast');
ylabel('MPKI');
grid on;

figure(4);
y = [cycles_LRU_bzip2 cycles_LFU_bzip2 cycles_SRRIP_bzip2; ...
     cycles_LRU_gcc cycles_LFU_gcc cycles_SRRIP_gcc;       ...
     cycles_LRU_mcf cycles_LFU_mcf cycles_SRRIP_mcf;       ...
     cycles_LRU_hmmer cycles_LFU_hmmer cycles_SRRIP_hmmer;       ...
     cycles_LRU_sjeng cycles_LFU_sjeng cycles_SRRIP_sjeng;       ...
     cycles_LRU_libquantum cycles_LFU_libquantum cycles_SRRIP_libquantum;       ...
     cycles_LRU_xalan cycles_LFU_xalan cycles_SRRIP_xalan;
     ]*1e-6;
x={             ...
   'bzip2',     ...
   'gcc',       ...
   'mcf',       ...
   'hmmer',     ...
   'sjeng',     ...
   'libquant',  ...
   'xalan'      ...
   };
bar(y);
set(gca,'xticklabel',x.');
title('SPEC CPU2006 Integer Benchmarks (Single-Threaded)');
legend('LRU', 'LFU', 'SRRIP','location','northwest');
ylabel('cycles (millions)');
axis([0 8 0 820]);
grid on;


###########
## FLOATING POINT BENCHMARKS
##
figure(5);
y = [IPC_LRU_milc      IPC_LFU_milc      IPC_SRRIP_milc;        ...
     IPC_LRU_cactusADM IPC_LFU_cactusADM IPC_SRRIP_cactusADM;   ...
     IPC_LRU_leslie3d  IPC_LFU_leslie3d  IPC_SRRIP_leslie3d;    ...
     IPC_LRU_namd      IPC_LFU_namd      IPC_SRRIP_namd;        ...
     IPC_LRU_soplex    IPC_LFU_soplex    IPC_SRRIP_soplex;      ...
     IPC_LRU_calculix  IPC_LFU_calculix  IPC_SRRIP_calculix;    ...
     IPC_LRU_lbm       IPC_LFU_lbm       IPC_SRRIP_lbm;
     ];
x={           ...
   'milc',    ...
   'cactADM', ...
   'lesl3d',  ...
   'namd',    ...
   'soplex',  ...
   'calcx',   ...
   'lbm'      ...
   };
bar(y);
set(gca,'xticklabel',x.');
title('SPEC CPU2006 FP Benchmarks (Single-Threaded)');
legend('LRU', 'LFU', 'SRRIP','location','northwest');
ylabel('IPC');
axis([0 8 0 2.08]);
grid on;



##figure(5);
##y = [IPC_LRU_milc      IPC_LFU_milc      IPC_SRRIP_milc;        ...
##     #IPC_LRU_cactusADM IPC_LFU_cactusADM IPC_SRRIP_cactusADM;   ...
##     IPC_LRU_leslie3d  IPC_LFU_leslie3d  IPC_SRRIP_leslie3d;    ...
##     #IPC_LRU_namd      IPC_LFU_namd      IPC_SRRIP_namd;        ...
##     IPC_LRU_soplex    IPC_LFU_soplex    IPC_SRRIP_soplex;      ...
##     #IPC_LRU_calculix  IPC_LFU_calculix  IPC_SRRIP_calculix;    ...
##     IPC_LRU_lbm       IPC_LFU_lbm       IPC_SRRIP_lbm;
##     ];
##x={'milc','leslie3d','soplex', 'lbm'};
##bar(y);
##set(gca,'xticklabel',x.');
##title('SPEC CPU2006 FP Benchmarks (Single-Threaded)');
##legend('LRU', 'LFU', 'SRRIP','location','north');
##ylabel('IPC');
##grid on;
##
##
##figure(10);
##y = [#IPC_LRU_milc      IPC_LFU_milc      IPC_SRRIP_milc;        ...
##     IPC_LRU_cactusADM IPC_LFU_cactusADM IPC_SRRIP_cactusADM;   ...
##     #IPC_LRU_leslie3d  IPC_LFU_leslie3d  IPC_SRRIP_leslie3d;    ...
##     IPC_LRU_namd      IPC_LFU_namd      IPC_SRRIP_namd;        ...
##     #IPC_LRU_soplex    IPC_LFU_soplex    IPC_SRRIP_soplex;      ...
##     IPC_LRU_calculix  IPC_LFU_calculix  IPC_SRRIP_calculix;    ...
##     #IPC_LRU_lbm       IPC_LFU_lbm       IPC_SRRIP_lbm;
##     ];
##x={'cactusADM','soplex','calculix'};
##
##bar(y);
##set(gca,'xticklabel',x.');
##title('SPEC CPU2006 FP Benchmarks (Single-Threaded)');
##legend('LRU', 'LFU', 'SRRIP','location','northwest');
##ylabel('IPC');
##grid on;
##
##
figure(6);
y = [MPKI_LRU_milc      MPKI_LFU_milc      MPKI_SRRIP_milc;        ...
     MPKI_LRU_cactusADM MPKI_LFU_cactusADM MPKI_SRRIP_cactusADM;   ...
     MPKI_LRU_leslie3d  MPKI_LFU_leslie3d  MPKI_SRRIP_leslie3d;    ...
     MPKI_LRU_namd      MPKI_LFU_namd      MPKI_SRRIP_namd;        ...
     MPKI_LRU_soplex    MPKI_LFU_soplex    MPKI_SRRIP_soplex;      ...
     MPKI_LRU_calculix  MPKI_LFU_calculix  MPKI_SRRIP_calculix;    ...
     MPKI_LRU_lbm       MPKI_LFU_lbm       MPKI_SRRIP_lbm;
     ];
x={           ...
   'milc',    ...
   'cactADM', ...
   'lesl3d',  ...
   'namd',    ...
   'soplex',  ...
   'calcx',   ...
   'lbm'      ...
   };
bar(y);
set(gca,'xticklabel',x.');
title('SPEC CPU2006 FP Benchmarks (Single-Threaded)');
legend('LRU', 'LFU', 'SRRIP','location','northwest');
ylabel('MPKI');
axis([0 8 0 31.4]);
grid on;
##
####figure(7);
####y = [#MPKI_LRU_bzip2       MPKI_LFU_bzip2      MPKI_SRRIP_bzip2;     ...
####     #MPKI_LRU_gcc         MPKI_LFU_gcc        MPKI_SRRIP_gcc;       ...
####     MPKI_LRU_mcf        MPKI_LFU_mcf        MPKI_SRRIP_mcf;       ...
####     #MPKI_LRU_hmmer       MPKI_LFU_hmmer      MPKI_SRRIP_hmmer;     ...
####     #MPKI_LRU_sjeng       MPKI_LFU_sjeng      MPKI_SRRIP_sjeng;     ...
####     MPKI_LRU_libquantum MPKI_LFU_libquantum MPKI_SRRIP_libquantum;...
####     #MPKI_LRU_xalan       MPKI_LFU_xalan      MPKI_SRRIP_xalan;
####     ];
####x={'milc','cactusADM','leslie3d','namd','soplex','calculix', 'lbm'}
####bar(y)
####set(gca,'xticklabel',x.')
####title('SPEC CPU2006 Integer Benchmarks (Single-Threaded)');
####legend('LRU', 'LFU', 'SRRIP','location','northwest');
####ylabel('MPKI');
####grid on;
##
figure(7);
y = [cycles_LRU_milc      cycles_LFU_milc      cycles_SRRIP_milc;        ...
     cycles_LRU_cactusADM cycles_LFU_cactusADM cycles_SRRIP_cactusADM;   ...
     cycles_LRU_leslie3d  cycles_LFU_leslie3d  cycles_SRRIP_leslie3d;    ...
     cycles_LRU_namd      cycles_LFU_namd      cycles_SRRIP_namd;        ...
     cycles_LRU_soplex    cycles_LFU_soplex    cycles_SRRIP_soplex;      ...
     cycles_LRU_calculix  cycles_LFU_calculix  cycles_SRRIP_calculix;    ...
     cycles_LRU_lbm       cycles_LFU_lbm       cycles_SRRIP_lbm;
     ]*1e-6;
x={           ...
   'milc',    ...
   'cactADM', ...
   'lesl3d',  ...
   'namd',    ...
   'soplex',  ...
   'calcx',   ...
   'lbm'      ...
   };
bar(y);
set(gca,'xticklabel',x.');
title('SPEC CPU2006 FP Benchmarks (Single-Threaded)');
legend('LRU', 'LFU', 'SRRIP','location','best');
ylabel('cycles (millions)');
grid on;


##################################
## PARSEC Multicore Benchmarks ##
##################################
figure(8);
y = [IPC_LRU_blackscholes   IPC_LFU_blackscholes  IPC_SRRIP_blackscholes;     ...
     IPC_LRU_bodytrack      IPC_LFU_bodytrack     IPC_SRRIP_bodytrack;        ...
     IPC_LRU_canneal        IPC_LFU_canneal       IPC_SRRIP_canneal;          ...
     IPC_LRU_dedup          IPC_LFU_dedup         IPC_SRRIP_dedup;            ...
     IPC_LRU_fluidanimate   IPC_LFU_fluidanimate  IPC_SRRIP_fluidanimate;     ...
     IPC_LRU_freqmine       IPC_LFU_freqmine      IPC_SRRIP_freqmine;         ...
     IPC_LRU_streamcluster  IPC_LFU_streamcluster IPC_SRRIP_streamcluster;    ...
     IPC_LRU_swaptions      IPC_LFU_swaptions     IPC_SRRIP_swaptions;     ...
     IPC_LRU_x264           IPC_LFU_x264          IPC_SRRIP_x264;         
     ];
x={                     ...
   'blackschls',      ...
   'bodytrack',         ...
   'cannl',           ...
   'dedup',             ...
   'fluidanimt',      ...
   'freqmine',          ...
   'streamclstr',     ...
   'swaptns',         ...
   'x264'               ...
   };

bar(y);
set(gca,'xticklabel',x.');
title('PARSEC CPU2006 Benchmarks (Multi-Threaded)');
legend('LRU', 'LFU', 'SRRIP','location','northwest');
ylabel('IPC');
%axis([0 8 0 1.0]);
grid on;

figure(9);
y = [MPKI_LRU_blackscholes   MPKI_LFU_blackscholes  MPKI_SRRIP_blackscholes;     ...
     MPKI_LRU_bodytrack      MPKI_LFU_bodytrack     MPKI_SRRIP_bodytrack;        ...
     #MPKI_LRU_canneal        MPKI_LFU_canneal       MPKI_SRRIP_canneal;          ...
     #MPKI_LRU_dedup          MPKI_LFU_dedup         MPKI_SRRIP_dedup;            ...
     MPKI_LRU_fluidanimate   MPKI_LFU_fluidanimate  MPKI_SRRIP_fluidanimate;     ...
     MPKI_LRU_freqmine       MPKI_LFU_freqmine      MPKI_SRRIP_freqmine;         ...
     #MPKI_LRU_streamcluster  MPKI_LFU_streamcluster MPKI_SRRIP_streamcluster;    ...
     MPKI_LRU_swaptions      MPKI_LFU_swaptions     MPKI_SRRIP_swaptions;     ...
     MPKI_LRU_x264           MPKI_LFU_x264          MPKI_SRRIP_x264;         
     ];
x={                     ...
   'blackscholes',      ...
   'bodytrack',         ...
   %'canneal',           ...
   %'dedup',             ...
   'fluidanimate',      ...
   'freqmine',          ...
   %'streamcluster',     ...
   'swaptions',         ...
   'x264'               ...
   };
bar(y);
set(gca,'xticklabel',x.');
title('PARSEC CPU2006 Benchmarks (Multi-Threaded)');
legend('LRU', 'LFU', 'SRRIP','location','northeast');
ylabel('MPKI');
grid on;

figure(10);
y = [#MPKI_LRU_blackscholes   MPKI_LFU_blackscholes  MPKI_SRRIP_blackscholes;     ...
     #MPKI_LRU_bodytrack      MPKI_LFU_bodytrack     MPKI_SRRIP_bodytrack;        ...
     MPKI_LRU_canneal        MPKI_LFU_canneal       MPKI_SRRIP_canneal;          ...
     MPKI_LRU_dedup          MPKI_LFU_dedup         MPKI_SRRIP_dedup;            ...
     #MPKI_LRU_fluidanimate   MPKI_LFU_fluidanimate  MPKI_SRRIP_fluidanimate;     ...
     #MPKI_LRU_freqmine       MPKI_LFU_freqmine      MPKI_SRRIP_freqmine;         ...
     MPKI_LRU_streamcluster  MPKI_LFU_streamcluster MPKI_SRRIP_streamcluster;    ...
     #MPKI_LRU_swaptions      MPKI_LFU_swaptions     MPKI_SRRIP_swaptions;     ...
     #MPKI_LRU_x264           MPKI_LFU_x264          MPKI_SRRIP_x264;         
     ];
x={                     ...
   %'blackscholes',      ...
   %'bodytrack',         ...
   'canneal',           ...
   'dedup',             ...
   %'fluidanimate',      ...
   %'freqmine',          ...
   'streamcluster',     ...
   %'swaptions',         ...
   %'x264'               ...
   };
bar(y);
set(gca,'xticklabel',x.');
title('PARSEC CPU2006 Benchmarks (Multi-Threaded)');
legend('LRU', 'LFU', 'SRRIP','location','northeast');
ylabel('MPKI');
grid on;




figure(11);
y = [cycles_LRU_blackscholes   cycles_LFU_blackscholes  cycles_SRRIP_blackscholes;     ...
     cycles_LRU_bodytrack      cycles_LFU_bodytrack     cycles_SRRIP_bodytrack;        ...
     cycles_LRU_canneal        cycles_LFU_canneal       cycles_SRRIP_canneal;          ...
     cycles_LRU_dedup          cycles_LFU_dedup         cycles_SRRIP_dedup;            ...
     cycles_LRU_fluidanimate   cycles_LFU_fluidanimate  cycles_SRRIP_fluidanimate;     ...
     cycles_LRU_freqmine       cycles_LFU_freqmine      cycles_SRRIP_freqmine;         ...
     cycles_LRU_streamcluster  cycles_LFU_streamcluster cycles_SRRIP_streamcluster;    ...
     cycles_LRU_swaptions      cycles_LFU_swaptions     cycles_SRRIP_swaptions;     ...
     cycles_LRU_x264           cycles_LFU_x264          cycles_SRRIP_x264;         
     ]*1e-6;
x={                   ...
   'blackschls',      ...
   'bodytrack',       ...
   'canneal',         ...
   'dedup',           ...
   'fluidanimate',    ...
   'freqmine',        ...
   'streamclstr',     ...
   'swaptions',       ...
   'x264'             ...
   };
bar(y);
set(gca,'xticklabel',x.');
title('PARSEC CPU2006 Benchmarks (Multi-Threaded)');
legend('LRU', 'LFU', 'SRRIP','location','northwest');
ylabel('cycles (millions)');
axis([1 10 0 1700]);
grid on;
