#!/bin/sh

initdb \
    -D ${PGDATA} \
    --nodename=${PG_COORD_NODE}

echo "pg_hba: adding host trust ${PG_NET_CLUSTER_A}"

echo "host	all	all	${PG_NET_CLUSTER_A}	trust" >> \
    ${PGDATA}/pg_hba.conf
