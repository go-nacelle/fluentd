#!/bin/sh -exu

envsubst '$ES_HOST' < /fluentd/etc/fluent.conf.in > /fluentd/etc/fluent.conf
exec fluentd -c /fluentd/etc/fluent.conf -p /fluentd/plugins $FLUENTD_OPT
