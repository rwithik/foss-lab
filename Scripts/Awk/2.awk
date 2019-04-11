#!/bin/awk

!seen[$0]++ {print $1}
