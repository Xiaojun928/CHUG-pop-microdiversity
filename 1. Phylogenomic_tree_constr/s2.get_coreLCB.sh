#!/bin/bash

#usage: ./s1.get_coreLCB.sh
#note: the XMFA file includes filesystem path references to the original aligned sequences.
#      stripSubsetLCBs tries to read in those sequences, 
#      so the input xfma file should be located at the same path like the directory is. 
#      Otherwise, Exception FileNotOpened thrown from Unknown()  in gnFileSource.cpp 67


/home-user/software/mauve/mauve_snapshot_2015-02-13/stripSubsetLCBs mauve_out_chug.xmfa mauve_out_chug.xmfa.bbcols chug_core.xmfa 500 33
#/home-user/software/mauve/mauve_snapshot_2015-02-13/stripSubsetLCBs mauve_out_chug_sis.xmfa mauve_out_chug_sis.xmfa.bbcols chug_sis_core.xmfa 500 38

#Usage: stripSubsetLCBs <input xmfa> <input bbcols> <output xmfa> [min LCB size] [min genomes] [randomly subsample to X kb]

