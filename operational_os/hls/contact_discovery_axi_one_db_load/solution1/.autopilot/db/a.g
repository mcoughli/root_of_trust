#!/bin/sh
lli=${LLVMINTERP-lli}
exec $lli \
    /home/aimee/root_of_trust/operational_os/hls/contact_discovery_axi_one_db_load/solution1/.autopilot/db/a.g.bc ${1+"$@"}
