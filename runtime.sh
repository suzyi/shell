#!/bin/bash
start=`date +%s`
# A piece of code here.
end=`date +%s`
runtime=$((end-start))
echo "Completed in " $runtime " seconds"
