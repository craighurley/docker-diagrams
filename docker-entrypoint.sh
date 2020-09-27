#!/usr/bin/env sh

set -e

if [ "$1" = "diagrams" ] ; then
    if [ $# -lt 2 ] ; then exit 1 ; fi
    shift
    exec python "$@"
elif [ "$1" = "blockdiag" ] ; then
    shift
    exec blockdiag "$@"
elif [ "$1" = "seqdiag" ] ; then
    shift
    exec seqdiag "$@"
elif [ "$1" = "actdiag" ] ; then
    shift
    exec actdiag "$@"
else
    exec sh
fi

exit 0
