
BASE=/projects/coursework/2025-spring/cs395t-lin/hkambham/CS395T_Term_Project


$BASE/gem5/build/X86/gem5.opt $BASE/gem5/configs/example/se.py  -c "$1" -o "$2" --caches --l2cache --cpu-type=DerivO3CPU   --maxinsts=1000000000 --fast-forward=1000000000  --mem-size=4096MB; mv m5out/stats.txt m5out/statsno.txt
$BASE/gem5/build/X86/gem5.opt $BASE/gem5/configs/example/se.py  -c "$1" -o "$2" --caches --l2cache --cpu-type=DerivO3CPU   --maxinsts=1000000000 --fast-forward=1000000000 --mem-size=4096MB --ghostminion --cache_coher --ghost_size="2kB" --iminion --prefetch_ordered ; mv m5out/stats.txt m5out/statsghostminion.txt
#$BASE/gem5/build/ARM/gem5.opt $BASE/gem5/configs/example/se.py  -c "$1" -o "$2" -i "$3" --caches --l2cache --cpu-type=DerivO3CPU   --maxinsts=1000000000 --fast-forward=1000000000  --mem-size=4096MB --ghostminion --cache_coher --ghost_size="2kB" --iminion --prefetch_ordered --blockContention; mv m5out/stats.txt m5out/statsghostminion+pipeline.txt
#$BASE/gem5/build/ARM/gem5.opt $BASE/gem5/configs/example/se.py  -c "$1" -o "$2" -i "$3" --caches --l2cache --cpu-type=DerivO3CPU   --maxinsts=1000000000 --fast-forward=1000000000  --mem-size=2048MB --ghostminion; mv m5out/stats.txt m5out/statsbaseminion2k.txt
#$BASE/gem5/build/ARM/gem5.opt $BASE/gem5/configs/example/se.py  -c "$1" -o "$2" -i "$3" --caches --l2cache --cpu-type=DerivO3CPU   --maxinsts=1000000000 --fast-forward=1000000000  --mem-size=2048MB --ghostminion --cache_coher; mv m5out/stats.txt m5out/statsbaseminion2kcoher.txt
#$BASE/gem5/build/ARM/gem5.opt $BASE/gem5/configs/example/se.py  -c "$1" -o "$2" -i "$3" --caches --l2cache --cpu-type=DerivO3CPU   --maxinsts=1000000000 --fast-forward=1000000000  --mem-size=2048MB --iminion; mv m5out/stats.txt m5out/statsbaseminion2kionly.txt
#$BASE/gem5/build/ARM/gem5.opt $BASE/gem5/configs/example/se.py  -c "$1" -o "$2" -i "$3" --caches --l2cache --cpu-type=DerivO3CPU   --maxinsts=1000000000 --fast-forward=1000000000  --mem-size=2048MB --ghostminion --prefetch_ordered ; mv m5out/stats.txt m5out/statsbaseminion2kpf.txt
#$BASE/gem5/build/ARM/gem5.opt $BASE/gem5/configs/example/se.py  -c "$1" -o "$2" -i "$3" --caches --l2cache --cpu-type=DerivO3CPU   --maxinsts=1000000000 --fast-forward=1000000000  --mem-size=2048MB --ghostminion --cache_coher --iminion --ghost_assoc=4 --prefetch_ordered ; mv m5out/stats.txt m5out/statsminion2k4assocall.txt
