##
# $Id$
# 
# Copyright (c) 2014 Network Appliance, Inc.
# All rights reserved.
# 
# This file was generated at Jan 14, 2014 3:33:16 AM
##

package OCUMAPI;

use strict;

use constant FIELD_SCALAR => 0x0;
use constant FIELD_TYPEDEF => 0x1;
use constant FIELD_ARRAY => 0x2;
use constant FIELD_OPTIONAL => 0x4;
use constant FIELD_ENCRYPTED => 0x8;

my $APIS = {
    'aggregate-iter' => {
        'category' => 'aggregate',
        'family' => [],
        'inputs' => {
            'max-records' => {
                'type' => 'integer',
                'flags' => 4,
                'scope' => [],
            },
            'resource-filter' => {
                'type' => 'resource-key',
                'flags' => 4,
                'scope' => [],
            },
            'tag' => {
                'type' => 'string',
                'flags' => 4,
                'scope' => [],
            },
        },
        'outputs' => {
            'next-tag' => {
                'type' => 'string',
                'flags' => 4,
                'scope' => [],
            },
            'num-records' => {
                'type' => 'integer',
                'flags' => 0,
                'scope' => [],
            },
            'records' => {
                'type' => 'aggregate-info',
                'flags' => 7,
                'scope' => [],
            },
        },
    },
    'cluster-iter' => {
        'category' => 'cluster',
        'family' => [],
        'inputs' => {
            'max-records' => {
                'type' => 'integer',
                'flags' => 4,
                'scope' => [],
            },
            'resource-filter' => {
                'type' => 'resource-key',
                'flags' => 4,
                'scope' => [],
            },
            'tag' => {
                'type' => 'string',
                'flags' => 4,
                'scope' => [],
            },
        },
        'outputs' => {
            'next-tag' => {
                'type' => 'string',
                'flags' => 4,
                'scope' => [],
            },
            'num-records' => {
                'type' => 'integer',
                'flags' => 0,
                'scope' => [],
            },
            'records' => {
                'type' => 'cluster-info',
                'flags' => 7,
                'scope' => [],
            },
        },
    },
    'cluster-node-iter' => {
        'category' => 'cluster',
        'family' => [],
        'inputs' => {
            'max-records' => {
                'type' => 'integer',
                'flags' => 4,
                'scope' => [],
            },
            'resource-filter' => {
                'type' => 'resource-key',
                'flags' => 4,
                'scope' => [],
            },
            'tag' => {
                'type' => 'string',
                'flags' => 4,
                'scope' => [],
            },
        },
        'outputs' => {
            'next-tag' => {
                'type' => 'string',
                'flags' => 4,
                'scope' => [],
            },
            'num-records' => {
                'type' => 'integer',
                'flags' => 0,
                'scope' => [],
            },
            'records' => {
                'type' => 'cluster-node-info',
                'flags' => 7,
                'scope' => [],
            },
        },
    },
    'dp-relationship-iter' => {
        'category' => 'dataprotection',
        'family' => [],
        'inputs' => {
            'is-managed' => {
                'type' => 'boolean',
                'flags' => 4,
                'scope' => [],
            },
            'max-records' => {
                'type' => 'integer',
                'flags' => 4,
                'scope' => [],
            },
            'relationship-resource-key' => {
                'type' => 'resource-key',
                'flags' => 4,
                'scope' => [],
            },
            'relationship-states' => {
                'type' => 'relationship-state',
                'flags' => 6,
                'scope' => [],
            },
            'relationship-statuses' => {
                'type' => 'relationship-status',
                'flags' => 6,
                'scope' => [],
            },
            'relationship-type' => {
                'type' => 'relationship-type',
                'flags' => 4,
                'scope' => [],
            },
            'source-or-destination-resource-key' => {
                'type' => 'resource-key',
                'flags' => 4,
                'scope' => [],
            },
            'storage-service-connection-resource-key' => {
                'type' => 'resource-key',
                'flags' => 4,
                'scope' => [],
            },
            'storage-service-resource-key' => {
                'type' => 'resource-key',
                'flags' => 4,
                'scope' => [],
            },
            'tag' => {
                'type' => 'string',
                'flags' => 4,
                'scope' => [],
            },
        },
        'outputs' => {
            'next-tag' => {
                'type' => 'string',
                'flags' => 4,
                'scope' => [],
            },
            'num-records' => {
                'type' => 'integer',
                'flags' => 0,
                'scope' => [],
            },
            'records' => {
                'type' => 'dp-relationship-info',
                'flags' => 7,
                'scope' => [],
            },
        },
    },
    'dp-restore-start' => {
        'category' => 'dataprotection',
        'family' => [],
        'inputs' => {
            'restore-requests' => {
                'type' => 'dp-restore-request-info',
                'flags' => 3,
                'scope' => [],
            },
        },
        'outputs' => {
            'job-id' => {
                'type' => 'job-id',
                'flags' => 0,
                'scope' => [],
            },
        },
    },
    'disk-iter' => {
        'category' => 'disk',
        'family' => [],
        'inputs' => {
            'max-records' => {
                'type' => 'integer',
                'flags' => 4,
                'scope' => [],
            },
            'resource-filter' => {
                'type' => 'resource-key',
                'flags' => 4,
                'scope' => [],
            },
            'tag' => {
                'type' => 'string',
                'flags' => 4,
                'scope' => [],
            },
        },
        'outputs' => {
            'next-tag' => {
                'type' => 'string',
                'flags' => 4,
                'scope' => [],
            },
            'num-records' => {
                'type' => 'integer',
                'flags' => 0,
                'scope' => [],
            },
            'records' => {
                'type' => 'disk-info',
                'flags' => 7,
                'scope' => [],
            },
        },
    },
    'disk-physical-summary-get' => {
        'category' => 'disk',
        'family' => [],
        'inputs' => {
            'resource-filter' => {
                'type' => 'resource-key',
                'flags' => 0,
                'scope' => [],
            },
        },
        'outputs' => {
            'disk-info' => {
                'type' => 'disk-physical-summary-disk-info',
                'flags' => 5,
                'scope' => [],
            },
            'lun-info' => {
                'type' => 'disk-physical-summary-lun-info',
                'flags' => 5,
                'scope' => [],
            },
        },
    },
    'event-acknowledge' => {
        'category' => 'event',
        'family' => [],
        'inputs' => {
            'event-id-list' => {
                'type' => 'event-id-type',
                'flags' => 2,
                'scope' => [],
            },
        },
        'outputs' => {
            'events-acknowledged-list' => {
                'type' => 'event-action-info',
                'flags' => 3,
                'scope' => [],
            },
        },
    },
    'event-assign' => {
        'category' => 'event',
        'family' => [],
        'inputs' => {
            'event-assignee-name' => {
                'type' => 'string',
                'flags' => 0,
                'scope' => [],
            },
            'event-id-list' => {
                'type' => 'event-id-type',
                'flags' => 2,
                'scope' => [],
            },
        },
        'outputs' => {
            'assigned-events-list' => {
                'type' => 'event-action-info',
                'flags' => 3,
                'scope' => [],
            },
        },
    },
    'event-iter' => {
        'category' => 'event',
        'family' => [],
        'inputs' => {
            'event-id' => {
                'type' => 'integer',
                'flags' => 4,
                'scope' => [],
            },
            'event-impact-levels' => {
                'type' => 'event-impact-level',
                'flags' => 6,
                'scope' => [],
            },
            'event-severities' => {
                'type' => 'obj-status',
                'flags' => 6,
                'scope' => [],
            },
            'event-state-filter-list' => {
                'type' => 'event-state',
                'flags' => 6,
                'scope' => [],
            },
            'event-type-filter-list' => {
                'type' => 'event-type-filter',
                'flags' => 7,
                'scope' => [],
            },
            'greater-than-id' => {
                'type' => 'integer',
                'flags' => 4,
                'scope' => [],
            },
            'include-notes' => {
                'type' => 'boolean',
                'flags' => 4,
                'scope' => [],
            },
            'max-records' => {
                'type' => 'integer',
                'flags' => 4,
                'scope' => [],
            },
            'source' => {
                'type' => 'resource-key',
                'flags' => 4,
                'scope' => [],
            },
            'tag' => {
                'type' => 'string',
                'flags' => 4,
                'scope' => [],
            },
            'time-range' => {
                'type' => 'event-timestamp-range',
                'flags' => 5,
                'scope' => [],
            },
            'timeout' => {
                'type' => 'integer',
                'flags' => 4,
                'scope' => [],
            },
        },
        'outputs' => {
            'next-tag' => {
                'type' => 'string',
                'flags' => 4,
                'scope' => [],
            },
            'num-records' => {
                'type' => 'integer',
                'flags' => 0,
                'scope' => [],
            },
            'records' => {
                'type' => 'event-info',
                'flags' => 7,
                'scope' => [],
            },
        },
    },
    'event-purge' => {
        'category' => 'event',
        'family' => [],
        'inputs' => {
            'interval' => {
                'type' => 'integer',
                'flags' => 0,
                'scope' => [],
            },
        },
        'outputs' => {
            'cutoff-timestamp' => {
                'type' => 'timestamp',
                'flags' => 0,
                'scope' => [],
            },
            'purged-events-count' => {
                'type' => 'integer',
                'flags' => 0,
                'scope' => [],
            },
        },
    },
    'event-resolve' => {
        'category' => 'event',
        'family' => [],
        'inputs' => {
            'event-id-list' => {
                'type' => 'event-id-type',
                'flags' => 2,
                'scope' => [],
            },
        },
        'outputs' => {
            'events-resolved-list' => {
                'type' => 'event-action-info',
                'flags' => 3,
                'scope' => [],
            },
        },
    },
    'event-status-change-list-iter-end' => {
        'category' => 'event',
        'family' => [],
        'inputs' => {
            'tag' => {
                'type' => 'string',
                'flags' => 0,
                'scope' => [],
            },
        },
        'outputs' => {
        },
    },
    'event-status-change-list-iter-next' => {
        'category' => 'event',
        'family' => [],
        'inputs' => {
            'maximum' => {
                'type' => 'integer',
                'flags' => 0,
                'scope' => [],
            },
            'tag' => {
                'type' => 'string',
                'flags' => 0,
                'scope' => [],
            },
        },
        'outputs' => {
            'events' => {
                'type' => 'event-info',
                'flags' => 3,
                'scope' => [],
            },
            'records' => {
                'type' => 'integer',
                'flags' => 0,
                'scope' => [],
            },
        },
    },
    'event-status-change-list-iter-start' => {
        'category' => 'event',
        'family' => [],
        'inputs' => {
            'max-events' => {
                'type' => 'integer',
                'flags' => 4,
                'scope' => [],
            },
            'time-range' => {
                'type' => 'event-timestamp-range',
                'flags' => 1,
                'scope' => [],
            },
            'timeout' => {
                'type' => 'integer',
                'flags' => 4,
                'scope' => [],
            },
        },
        'outputs' => {
            'records' => {
                'type' => 'integer',
                'flags' => 0,
                'scope' => [],
            },
            'tag' => {
                'type' => 'string',
                'flags' => 0,
                'scope' => [],
            },
        },
    },
    'event-unassign' => {
        'category' => 'event',
        'family' => [],
        'inputs' => {
            'event-id-list' => {
                'type' => 'event-id-type',
                'flags' => 2,
                'scope' => [],
            },
        },
        'outputs' => {
            'unassigned-events-list' => {
                'type' => 'event-action-info',
                'flags' => 3,
                'scope' => [],
            },
        },
    },
    'igroup-iter' => {
        'category' => 'igroup',
        'family' => [],
        'inputs' => {
            'max-records' => {
                'type' => 'integer',
                'flags' => 4,
                'scope' => [],
            },
            'resource-filter' => {
                'type' => 'resource-key',
                'flags' => 4,
                'scope' => [],
            },
            'tag' => {
                'type' => 'string',
                'flags' => 4,
                'scope' => [],
            },
        },
        'outputs' => {
            'next-tag' => {
                'type' => 'string',
                'flags' => 4,
                'scope' => [],
            },
            'num-records' => {
                'type' => 'integer',
                'flags' => 0,
                'scope' => [],
            },
            'records' => {
                'type' => 'igroup-info',
                'flags' => 7,
                'scope' => [],
            },
        },
    },
    'job-abort' => {
        'category' => 'job',
        'family' => [],
        'inputs' => {
            'job-id' => {
                'type' => 'job-id',
                'flags' => 0,
                'scope' => [],
            },
        },
        'outputs' => {
        },
    },
    'job-delete' => {
        'category' => 'job',
        'family' => [],
        'inputs' => {
            'job-id' => {
                'type' => 'job-id',
                'flags' => 0,
                'scope' => [],
            },
        },
        'outputs' => {
        },
    },
    'job-iter' => {
        'category' => 'job',
        'family' => [],
        'inputs' => {
            'job-id' => {
                'type' => 'job-id',
                'flags' => 4,
                'scope' => [],
            },
            'max-records' => {
                'type' => 'integer',
                'flags' => 4,
                'scope' => [],
            },
            'state' => {
                'type' => 'job-state',
                'flags' => 4,
                'scope' => [],
            },
            'status' => {
                'type' => 'job-status',
                'flags' => 4,
                'scope' => [],
            },
            'tag' => {
                'type' => 'string',
                'flags' => 4,
                'scope' => [],
            },
            'task-id' => {
                'type' => 'job-task-id',
                'flags' => 4,
                'scope' => [],
            },
            'type' => {
                'type' => 'job-type',
                'flags' => 4,
                'scope' => [],
            },
        },
        'outputs' => {
            'next-tag' => {
                'type' => 'string',
                'flags' => 4,
                'scope' => [],
            },
            'num-records' => {
                'type' => 'integer',
                'flags' => 0,
                'scope' => [],
            },
            'records' => {
                'type' => 'job-info',
                'flags' => 7,
                'scope' => [],
            },
        },
    },
    'job-task-iter' => {
        'category' => 'job',
        'family' => [],
        'inputs' => {
            'job-id' => {
                'type' => 'job-id',
                'flags' => 4,
                'scope' => [],
            },
            'max-records' => {
                'type' => 'integer',
                'flags' => 4,
                'scope' => [],
            },
            'state' => {
                'type' => 'task-state',
                'flags' => 4,
                'scope' => [],
            },
            'status' => {
                'type' => 'task-status',
                'flags' => 4,
                'scope' => [],
            },
            'tag' => {
                'type' => 'string',
                'flags' => 4,
                'scope' => [],
            },
            'task-id' => {
                'type' => 'job-task-id',
                'flags' => 4,
                'scope' => [],
            },
            'task-type' => {
                'type' => 'string',
                'flags' => 4,
                'scope' => [],
            },
        },
        'outputs' => {
            'next-tag' => {
                'type' => 'string',
                'flags' => 4,
                'scope' => [],
            },
            'num-records' => {
                'type' => 'integer',
                'flags' => 0,
                'scope' => [],
            },
            'records' => {
                'type' => 'job-task-info',
                'flags' => 7,
                'scope' => [],
            },
        },
    },
    'job-wait-for-state' => {
        'category' => 'job',
        'family' => [],
        'inputs' => {
            'job-list' => {
                'type' => 'job-id',
                'flags' => 2,
                'scope' => [],
            },
            'state' => {
                'type' => 'job-state',
                'flags' => 4,
                'scope' => [],
            },
            'wait-for-state-timeout' => {
                'type' => 'integer',
                'flags' => 0,
                'scope' => [],
            },
        },
        'outputs' => {
            'job-list' => {
                'type' => 'job-id',
                'flags' => 2,
                'scope' => [],
            },
        },
    },
    'lun-iter' => {
        'category' => 'lun',
        'family' => [],
        'inputs' => {
            'max-records' => {
                'type' => 'integer',
                'flags' => 4,
                'scope' => [],
            },
            'resource-filter' => {
                'type' => 'resource-key',
                'flags' => 4,
                'scope' => [],
            },
            'tag' => {
                'type' => 'string',
                'flags' => 4,
                'scope' => [],
            },
        },
        'outputs' => {
            'next-tag' => {
                'type' => 'string',
                'flags' => 4,
                'scope' => [],
            },
            'num-records' => {
                'type' => 'integer',
                'flags' => 0,
                'scope' => [],
            },
            'records' => {
                'type' => 'lun-info',
                'flags' => 7,
                'scope' => [],
            },
        },
    },
    'net-interface-iter' => {
        'category' => 'net',
        'family' => [],
        'inputs' => {
            'is-cluster-interface-only' => {
                'type' => 'boolean',
                'flags' => 4,
                'scope' => [],
            },
            'max-records' => {
                'type' => 'integer',
                'flags' => 4,
                'scope' => [],
            },
            'resource-filter' => {
                'type' => 'resource-key',
                'flags' => 4,
                'scope' => [],
            },
            'tag' => {
                'type' => 'string',
                'flags' => 4,
                'scope' => [],
            },
        },
        'outputs' => {
            'next-tag' => {
                'type' => 'string',
                'flags' => 4,
                'scope' => [],
            },
            'num-records' => {
                'type' => 'integer',
                'flags' => 0,
                'scope' => [],
            },
            'records' => {
                'type' => 'net-interface-info',
                'flags' => 7,
                'scope' => [],
            },
        },
    },
    'portset-iter' => {
        'category' => 'portset',
        'family' => [],
        'inputs' => {
            'max-records' => {
                'type' => 'integer',
                'flags' => 4,
                'scope' => [],
            },
            'resource-filter' => {
                'type' => 'resource-key',
                'flags' => 4,
                'scope' => [],
            },
            'tag' => {
                'type' => 'string',
                'flags' => 4,
                'scope' => [],
            },
        },
        'outputs' => {
            'next-tag' => {
                'type' => 'string',
                'flags' => 4,
                'scope' => [],
            },
            'num-records' => {
                'type' => 'integer',
                'flags' => 0,
                'scope' => [],
            },
            'records' => {
                'type' => 'portset-info',
                'flags' => 7,
                'scope' => [],
            },
        },
    },
    'resource-lookup' => {
        'category' => 'resource',
        'family' => [],
        'inputs' => {
            'qualified-name' => {
                'type' => 'string',
                'flags' => 0,
                'scope' => [],
            },
            'type' => {
                'type' => 'resource-type',
                'flags' => 0,
                'scope' => [],
            },
        },
        'outputs' => {
            'resource-key' => {
                'type' => 'resource-key',
                'flags' => 0,
                'scope' => [],
            },
        },
    },
    'resource-pool-aggregate-add' => {
        'category' => 'resource-pool',
        'family' => [],
        'inputs' => {
            'aggregate' => {
                'type' => 'resource-key',
                'flags' => 0,
                'scope' => [],
            },
            'resource-pool' => {
                'type' => 'resource-key',
                'flags' => 0,
                'scope' => [],
            },
        },
        'outputs' => {
        },
    },
    'resource-pool-aggregate-remove' => {
        'category' => 'resource-pool',
        'family' => [],
        'inputs' => {
            'aggregate' => {
                'type' => 'resource-key',
                'flags' => 0,
                'scope' => [],
            },
            'resource-pool' => {
                'type' => 'resource-key',
                'flags' => 0,
                'scope' => [],
            },
        },
        'outputs' => {
        },
    },
    'resource-pool-create' => {
        'category' => 'resource-pool',
        'family' => [],
        'inputs' => {
            'description' => {
                'type' => 'string',
                'flags' => 4,
                'scope' => [],
            },
            'name' => {
                'type' => 'string',
                'flags' => 0,
                'scope' => [],
            },
        },
        'outputs' => {
            'resource-key' => {
                'type' => 'resource-key',
                'flags' => 0,
                'scope' => [],
            },
        },
    },
    'resource-pool-destroy' => {
        'category' => 'resource-pool',
        'family' => [],
        'inputs' => {
            'resource-pool' => {
                'type' => 'resource-key',
                'flags' => 0,
                'scope' => [],
            },
        },
        'outputs' => {
        },
    },
    'resource-pool-iter' => {
        'category' => 'resource-pool',
        'family' => [],
        'inputs' => {
            'max-records' => {
                'type' => 'integer',
                'flags' => 4,
                'scope' => [],
            },
            'resource-filter' => {
                'type' => 'resource-key',
                'flags' => 4,
                'scope' => [],
            },
            'tag' => {
                'type' => 'string',
                'flags' => 4,
                'scope' => [],
            },
        },
        'outputs' => {
            'next-tag' => {
                'type' => 'string',
                'flags' => 4,
                'scope' => [],
            },
            'num-records' => {
                'type' => 'integer',
                'flags' => 0,
                'scope' => [],
            },
            'records' => {
                'type' => 'resource-pool-info',
                'flags' => 7,
                'scope' => [],
            },
        },
    },
    'resource-pool-modify' => {
        'category' => 'resource-pool',
        'family' => [],
        'inputs' => {
            'description' => {
                'type' => 'string',
                'flags' => 4,
                'scope' => [],
            },
            'name' => {
                'type' => 'string',
                'flags' => 4,
                'scope' => [],
            },
            'resource-pool' => {
                'type' => 'resource-key',
                'flags' => 0,
                'scope' => [],
            },
        },
        'outputs' => {
        },
    },
    'snapshot-expire' => {
        'category' => 'snapshot',
        'family' => [],
        'inputs' => {
            'snapshot-resource-key' => {
                'type' => 'resource-key',
                'flags' => 0,
                'scope' => [],
            },
        },
        'outputs' => {
        },
    },
    'snapshot-get-location' => {
        'category' => 'snapshot',
        'family' => [],
        'inputs' => {
            'snapshot-identifiers' => {
                'type' => 'snapshot-identifier',
                'flags' => 3,
                'scope' => [],
            },
            'storage-service-node-resource-key' => {
                'type' => 'resource-key',
                'flags' => 4,
                'scope' => [],
            },
            'storage-service-resource-key' => {
                'type' => 'resource-key',
                'flags' => 0,
                'scope' => [],
            },
        },
        'outputs' => {
            'snapshot-location-results' => {
                'type' => 'snapshot-location-result-info',
                'flags' => 3,
                'scope' => [],
            },
        },
    },
    'snapshot-get-metadata' => {
        'category' => 'snapshot',
        'family' => [],
        'inputs' => {
            'snapshot-resource-key' => {
                'type' => 'resource-key',
                'flags' => 0,
                'scope' => [],
            },
        },
        'outputs' => {
            'metadata' => {
                'type' => 'key-value-pair',
                'flags' => 3,
                'scope' => [],
            },
        },
    },
    'snapshot-has-expired' => {
        'category' => 'snapshot',
        'family' => [],
        'inputs' => {
            'snapshot-resource-key' => {
                'type' => 'resource-key',
                'flags' => 0,
                'scope' => [],
            },
        },
        'outputs' => {
            'expiration-status' => {
                'type' => 'boolean',
                'flags' => 0,
                'scope' => [],
            },
        },
    },
    'snapshot-set-metadata' => {
        'category' => 'snapshot',
        'family' => [],
        'inputs' => {
            'metadata' => {
                'type' => 'key-value-pair',
                'flags' => 3,
                'scope' => [],
            },
            'snapshot-resource-key' => {
                'type' => 'resource-key',
                'flags' => 0,
                'scope' => [],
            },
        },
        'outputs' => {
        },
    },
    'ssl-server-cert-generate' => {
        'category' => 'ssl',
        'family' => [],
        'inputs' => {
        },
        'outputs' => {
            'certificate' => {
                'type' => 'certificate',
                'flags' => 0,
                'scope' => [],
            },
        },
    },
    'ssl-server-cert-get' => {
        'category' => 'ssl',
        'family' => [],
        'inputs' => {
        },
        'outputs' => {
            'certificate-chain' => {
                'type' => 'certificate-chain',
                'flags' => 0,
                'scope' => [],
            },
        },
    },
    'ssl-server-cert-request' => {
        'category' => 'ssl',
        'family' => [],
        'inputs' => {
        },
        'outputs' => {
            'certificate-request' => {
                'type' => 'string',
                'flags' => 0,
                'scope' => [],
            },
        },
    },
    'ssl-server-cert-set' => {
        'category' => 'ssl',
        'family' => [],
        'inputs' => {
            'certificate-chain' => {
                'type' => 'certificate-chain',
                'flags' => 0,
                'scope' => [],
            },
        },
        'outputs' => {
        },
    },
    'storage-service-cleanup' => {
        'category' => 'storage-service',
        'family' => [],
        'inputs' => {
            'keep-storage-artifacts' => {
                'type' => 'boolean',
                'flags' => 4,
                'scope' => [],
            },
            'members' => {
                'type' => 'resource-key',
                'flags' => 6,
                'scope' => [],
            },
            'storage-service-nodes' => {
                'type' => 'resource-key',
                'flags' => 6,
                'scope' => [],
            },
            'storage-service-resource-key' => {
                'type' => 'resource-key',
                'flags' => 0,
                'scope' => [],
            },
        },
        'outputs' => {
            'job-id' => {
                'type' => 'job-id',
                'flags' => 0,
                'scope' => [],
            },
        },
    },
    'storage-service-conform' => {
        'category' => 'storage-service',
        'family' => [],
        'inputs' => {
            'members' => {
                'type' => 'resource-key',
                'flags' => 6,
                'scope' => [],
            },
            'storage-service-resource-key' => {
                'type' => 'resource-key',
                'flags' => 0,
                'scope' => [],
            },
            'subscription-context' => {
                'type' => 'string',
                'flags' => 4,
                'scope' => [],
            },
        },
        'outputs' => {
            'job-id' => {
                'type' => 'job-id',
                'flags' => 0,
                'scope' => [],
            },
        },
    },
    'storage-service-create' => {
        'category' => 'storage-service',
        'family' => [],
        'inputs' => {
            'storage-service-client-tag' => {
                'type' => 'string',
                'flags' => 0,
                'scope' => [],
            },
            'storage-service-contact-list' => {
                'type' => 'email-address',
                'flags' => 6,
                'scope' => [],
            },
            'storage-service-description' => {
                'type' => 'string',
                'flags' => 4,
                'scope' => [],
            },
            'storage-service-name' => {
                'type' => 'obj-name',
                'flags' => 0,
                'scope' => [],
            },
            'storage-service-owner' => {
                'type' => 'string',
                'flags' => 4,
                'scope' => [],
            },
            'storage-service-topology-info' => {
                'type' => 'storage-service-topology-info',
                'flags' => 1,
                'scope' => [],
            },
        },
        'outputs' => {
            'storage-service-resource-key' => {
                'type' => 'resource-key',
                'flags' => 0,
                'scope' => [],
            },
        },
    },
    'storage-service-destroy' => {
        'category' => 'storage-service',
        'family' => [],
        'inputs' => {
            'storage-service-resource-key' => {
                'type' => 'resource-key',
                'flags' => 0,
                'scope' => [],
            },
        },
        'outputs' => {
            'job-id' => {
                'type' => 'job-id',
                'flags' => 0,
                'scope' => [],
            },
        },
    },
    'storage-service-import' => {
        'category' => 'storage-service',
        'family' => [],
        'inputs' => {
            'import-info' => {
                'type' => 'storage-service-import-info',
                'flags' => 3,
                'scope' => [],
            },
            'storage-service-resource-key' => {
                'type' => 'resource-key',
                'flags' => 0,
                'scope' => [],
            },
            'subscription-context' => {
                'type' => 'string',
                'flags' => 4,
                'scope' => [],
            },
        },
        'outputs' => {
            'job-id' => {
                'type' => 'job-id',
                'flags' => 0,
                'scope' => [],
            },
        },
    },
    'storage-service-iter' => {
        'category' => 'storage-service',
        'family' => [],
        'inputs' => {
            'max-records' => {
                'type' => 'integer',
                'flags' => 4,
                'scope' => [],
            },
            'storage-service-client-tag' => {
                'type' => 'string',
                'flags' => 4,
                'scope' => [],
            },
            'storage-service-resource-key' => {
                'type' => 'resource-key',
                'flags' => 4,
                'scope' => [],
            },
            'tag' => {
                'type' => 'string',
                'flags' => 4,
                'scope' => [],
            },
        },
        'outputs' => {
            'next-tag' => {
                'type' => 'string',
                'flags' => 4,
                'scope' => [],
            },
            'num-records' => {
                'type' => 'integer',
                'flags' => 0,
                'scope' => [],
            },
            'records' => {
                'type' => 'storage-service-info',
                'flags' => 7,
                'scope' => [],
            },
        },
    },
    'storage-service-member-iter' => {
        'category' => 'storage-service',
        'family' => [],
        'inputs' => {
            'max-records' => {
                'type' => 'integer',
                'flags' => 4,
                'scope' => [],
            },
            'node-resource-key' => {
                'type' => 'resource-key',
                'flags' => 4,
                'scope' => [],
            },
            'storage-service-resource-key' => {
                'type' => 'resource-key',
                'flags' => 0,
                'scope' => [],
            },
            'subscription-context' => {
                'type' => 'string',
                'flags' => 4,
                'scope' => [],
            },
            'tag' => {
                'type' => 'string',
                'flags' => 4,
                'scope' => [],
            },
        },
        'outputs' => {
            'next-tag' => {
                'type' => 'string',
                'flags' => 4,
                'scope' => [],
            },
            'num-records' => {
                'type' => 'integer',
                'flags' => 0,
                'scope' => [],
            },
            'records' => {
                'type' => 'storage-service-member-info',
                'flags' => 7,
                'scope' => [],
            },
        },
    },
    'storage-service-modify' => {
        'category' => 'storage-service',
        'family' => [],
        'inputs' => {
            'storage-service-client-tag' => {
                'type' => 'string',
                'flags' => 4,
                'scope' => [],
            },
            'storage-service-contact-list' => {
                'type' => 'email-address',
                'flags' => 6,
                'scope' => [],
            },
            'storage-service-description' => {
                'type' => 'string',
                'flags' => 4,
                'scope' => [],
            },
            'storage-service-name' => {
                'type' => 'obj-name',
                'flags' => 4,
                'scope' => [],
            },
            'storage-service-owner' => {
                'type' => 'string',
                'flags' => 4,
                'scope' => [],
            },
            'storage-service-resource-key' => {
                'type' => 'resource-key',
                'flags' => 0,
                'scope' => [],
            },
            'storage-service-topology-info' => {
                'type' => 'storage-service-topology-info',
                'flags' => 5,
                'scope' => [],
            },
        },
        'outputs' => {
            'job-id' => {
                'type' => 'job-id',
                'flags' => 0,
                'scope' => [],
            },
        },
    },
    'storage-service-protection-update-start' => {
        'category' => 'storage-service',
        'family' => [],
        'inputs' => {
            'destination-node-resource-key' => {
                'type' => 'resource-key',
                'flags' => 4,
                'scope' => [],
            },
            'member-snapshots' => {
                'type' => 'resource-key',
                'flags' => 6,
                'scope' => [],
            },
            'members' => {
                'type' => 'resource-key',
                'flags' => 6,
                'scope' => [],
            },
            'source-node-resource-key' => {
                'type' => 'resource-key',
                'flags' => 4,
                'scope' => [],
            },
            'storage-service-resource-key' => {
                'type' => 'resource-key',
                'flags' => 0,
                'scope' => [],
            },
            'subscription-context' => {
                'type' => 'string',
                'flags' => 4,
                'scope' => [],
            },
        },
        'outputs' => {
            'job-id' => {
                'type' => 'job-id',
                'flags' => 0,
                'scope' => [],
            },
        },
    },
    'storage-service-subscribe' => {
        'category' => 'storage-service',
        'family' => [],
        'inputs' => {
            'storage-service-resource-key' => {
                'type' => 'resource-key',
                'flags' => 0,
                'scope' => [],
            },
            'subscription-context' => {
                'type' => 'string',
                'flags' => 0,
                'scope' => [],
            },
            'subscription-members' => {
                'type' => 'resource-key',
                'flags' => 6,
                'scope' => [],
            },
        },
        'outputs' => {
            'job-id' => {
                'type' => 'job-id',
                'flags' => 0,
                'scope' => [],
            },
        },
    },
    'storage-service-subscription-context-get-metadata' => {
        'category' => 'storage-service',
        'family' => [],
        'inputs' => {
            'storage-service-resource-key' => {
                'type' => 'resource-key',
                'flags' => 0,
                'scope' => [],
            },
            'subscription-context' => {
                'type' => 'string',
                'flags' => 0,
                'scope' => [],
            },
        },
        'outputs' => {
            'metadata' => {
                'type' => 'keyvalue',
                'flags' => 3,
                'scope' => [],
            },
        },
    },
    'storage-service-subscription-context-set-metadata' => {
        'category' => 'storage-service',
        'family' => [],
        'inputs' => {
            'metadata' => {
                'type' => 'keyvalue',
                'flags' => 3,
                'scope' => [],
            },
            'storage-service-resource-key' => {
                'type' => 'resource-key',
                'flags' => 0,
                'scope' => [],
            },
            'subscription-context' => {
                'type' => 'string',
                'flags' => 0,
                'scope' => [],
            },
        },
        'outputs' => {
        },
    },
    'storage-service-subscription-iter' => {
        'category' => 'storage-service',
        'family' => [],
        'inputs' => {
            'max-records' => {
                'type' => 'integer',
                'flags' => 4,
                'scope' => [],
            },
            'storage-service-resource-key' => {
                'type' => 'resource-key',
                'flags' => 4,
                'scope' => [],
            },
            'subscription-context' => {
                'type' => 'string',
                'flags' => 4,
                'scope' => [],
            },
            'subscription-resource-key' => {
                'type' => 'resource-key',
                'flags' => 4,
                'scope' => [],
            },
            'tag' => {
                'type' => 'string',
                'flags' => 4,
                'scope' => [],
            },
        },
        'outputs' => {
            'next-tag' => {
                'type' => 'string',
                'flags' => 4,
                'scope' => [],
            },
            'num-records' => {
                'type' => 'integer',
                'flags' => 0,
                'scope' => [],
            },
            'records' => {
                'type' => 'storage-service-subscription-info',
                'flags' => 7,
                'scope' => [],
            },
        },
    },
    'storage-service-unsubscribe' => {
        'category' => 'storage-service',
        'family' => [],
        'inputs' => {
            'storage-service-resource-key' => {
                'type' => 'resource-key',
                'flags' => 0,
                'scope' => [],
            },
            'subscription-context' => {
                'type' => 'string',
                'flags' => 0,
                'scope' => [],
            },
            'subscription-members' => {
                'type' => 'resource-key',
                'flags' => 6,
                'scope' => [],
            },
        },
        'outputs' => {
            'job-id' => {
                'type' => 'job-id',
                'flags' => 0,
                'scope' => [],
            },
        },
    },
    'storage-service-workflow-list-info' => {
        'category' => 'storage-service',
        'family' => [],
        'inputs' => {
        },
        'outputs' => {
            'storage-service-workflows' => {
                'type' => 'storage-service-workflow-info',
                'flags' => 3,
                'scope' => [],
            },
        },
    },
    'system-about' => {
        'category' => 'system',
        'family' => [],
        'inputs' => {
        },
        'outputs' => {
            'host-name' => {
                'type' => 'string',
                'flags' => 0,
                'scope' => [],
            },
            'snmp-local-engine-id' => {
                'type' => 'string',
                'flags' => 0,
                'scope' => [],
            },
            'system-id' => {
                'type' => 'string',
                'flags' => 0,
                'scope' => [],
            },
            'system-time' => {
                'type' => 'timestamp',
                'flags' => 0,
                'scope' => [],
            },
            'version' => {
                'type' => 'string',
                'flags' => 0,
                'scope' => [],
            },
        },
    },
    'volume-by-aggregate-iter' => {
        'category' => 'volume',
        'family' => [],
        'inputs' => {
            'max-records' => {
                'type' => 'integer',
                'flags' => 4,
                'scope' => [],
            },
            'resource-filter' => {
                'type' => 'resource-key',
                'flags' => 4,
                'scope' => [],
            },
            'tag' => {
                'type' => 'string',
                'flags' => 4,
                'scope' => [],
            },
        },
        'outputs' => {
            'next-tag' => {
                'type' => 'string',
                'flags' => 4,
                'scope' => [],
            },
            'num-records' => {
                'type' => 'integer',
                'flags' => 0,
                'scope' => [],
            },
            'records' => {
                'type' => 'volume-by-aggregate-info',
                'flags' => 7,
                'scope' => [],
            },
        },
    },
    'volume-iter' => {
        'category' => 'volume',
        'family' => [],
        'inputs' => {
            'max-records' => {
                'type' => 'integer',
                'flags' => 4,
                'scope' => [],
            },
            'resource-filter' => {
                'type' => 'resource-key',
                'flags' => 4,
                'scope' => [],
            },
            'tag' => {
                'type' => 'string',
                'flags' => 4,
                'scope' => [],
            },
        },
        'outputs' => {
            'next-tag' => {
                'type' => 'string',
                'flags' => 4,
                'scope' => [],
            },
            'num-records' => {
                'type' => 'integer',
                'flags' => 0,
                'scope' => [],
            },
            'records' => {
                'type' => 'volume-info',
                'flags' => 7,
                'scope' => [],
            },
        },
    },
    'volume-move-history-list-info-iter-end' => {
        'category' => 'volume',
        'family' => [],
        'inputs' => {
            'tag' => {
                'type' => 'string',
                'flags' => 0,
                'scope' => [],
            },
        },
        'outputs' => {
        },
    },
    'volume-move-history-list-info-iter-next' => {
        'category' => 'volume',
        'family' => [],
        'inputs' => {
            'maximum' => {
                'type' => 'integer',
                'flags' => 0,
                'scope' => [],
            },
            'tag' => {
                'type' => 'string',
                'flags' => 0,
                'scope' => [],
            },
        },
        'outputs' => {
            'records' => {
                'type' => 'integer',
                'flags' => 0,
                'scope' => [],
            },
            'volume-move-history' => {
                'type' => 'volume-move-history-info',
                'flags' => 3,
                'scope' => [],
            },
        },
    },
    'volume-move-history-list-info-iter-start' => {
        'category' => 'volume',
        'family' => [],
        'inputs' => {
            'volume-resource-key' => {
                'type' => 'resource-key',
                'flags' => 4,
                'scope' => [],
            },
        },
        'outputs' => {
            'records' => {
                'type' => 'integer',
                'flags' => 0,
                'scope' => [],
            },
            'tag' => {
                'type' => 'string',
                'flags' => 0,
                'scope' => [],
            },
        },
    },
    'vserver-iter' => {
        'category' => 'vserver',
        'family' => [],
        'inputs' => {
            'max-records' => {
                'type' => 'integer',
                'flags' => 4,
                'scope' => [],
            },
            'resource-filter' => {
                'type' => 'resource-key',
                'flags' => 4,
                'scope' => [],
            },
            'tag' => {
                'type' => 'string',
                'flags' => 4,
                'scope' => [],
            },
        },
        'outputs' => {
            'next-tag' => {
                'type' => 'string',
                'flags' => 4,
                'scope' => [],
            },
            'num-records' => {
                'type' => 'integer',
                'flags' => 0,
                'scope' => [],
            },
            'records' => {
                'type' => 'vserver-info',
                'flags' => 7,
                'scope' => [],
            },
        },
    },
};

my $TYPEDEFS = {
    'aggr-volume-move-info' => {
        'category' => 'aggregate',
        'fields' => {
            'volume-in-count' => {
                'type' => 'integer',
                'flags' => 0,
                'scope' => [],
            },
            'volume-in-total-size' => {
                'type' => 'integer',
                'flags' => 0,
                'scope' => [],
            },
            'volume-out-count' => {
                'type' => 'integer',
                'flags' => 0,
                'scope' => [],
            },
            'volume-out-total-size' => {
                'type' => 'integer',
                'flags' => 0,
                'scope' => [],
            },
        },
    },
    'aggregate-info' => {
        'category' => 'aggregate',
        'fields' => {
            'aggr-volume-move-info' => {
                'type' => 'aggr-volume-move-info',
                'flags' => 1,
                'scope' => [],
            },
            'aggregate-name' => {
                'type' => 'string',
                'flags' => 0,
                'scope' => [],
            },
            'aggregate-resource-key' => {
                'type' => 'resource-key',
                'flags' => 0,
                'scope' => [],
            },
            'aggregate-size' => {
                'type' => 'aggregate-size',
                'flags' => 1,
                'scope' => [],
            },
            'aggregate-space-status' => {
                'type' => 'object-space-status',
                'flags' => 0,
                'scope' => [],
            },
            'aggregate-state' => {
                'type' => 'string',
                'flags' => 0,
                'scope' => [],
            },
            'aggregate-status' => {
                'type' => 'obj-status',
                'flags' => 0,
                'scope' => [],
            },
            'block-type' => {
                'type' => 'file-system-block-type',
                'flags' => 0,
                'scope' => [],
            },
            'cluster-name' => {
                'type' => 'string',
                'flags' => 0,
                'scope' => [],
            },
            'cluster-node-name' => {
                'type' => 'string',
                'flags' => 0,
                'scope' => [],
            },
            'cluster-node-resource-key' => {
                'type' => 'resource-key',
                'flags' => 0,
                'scope' => [],
            },
            'cluster-resource-key' => {
                'type' => 'resource-key',
                'flags' => 0,
                'scope' => [],
            },
            'compression-space-savings' => {
                'type' => 'integer',
                'flags' => 0,
                'scope' => [],
            },
            'dedupe-space-savings' => {
                'type' => 'integer',
                'flags' => 0,
                'scope' => [],
            },
            'has-local-root' => {
                'type' => 'boolean',
                'flags' => 0,
                'scope' => [],
            },
            'has-partner-root' => {
                'type' => 'boolean',
                'flags' => 0,
                'scope' => [],
            },
            'hybrid-cache-size-total' => {
                'type' => 'integer',
                'flags' => 0,
                'scope' => [],
            },
            'is-hybrid' => {
                'type' => 'boolean',
                'flags' => 0,
                'scope' => [],
            },
            'is-hybrid-enabled' => {
                'type' => 'boolean',
                'flags' => 0,
                'scope' => [],
            },
            'raid-type' => {
                'type' => 'string',
                'flags' => 4,
                'scope' => [],
            },
            'time-to-full' => {
                'type' => 'integer',
                'flags' => 4,
                'scope' => [],
            },
        },
    },
    'aggregate-size' => {
        'category' => 'aggregate',
        'fields' => {
            'daily-growth-rate' => {
                'type' => 'integer',
                'flags' => 4,
                'scope' => [],
            },
            'size-available' => {
                'type' => 'integer',
                'flags' => 0,
                'scope' => [],
            },
            'size-total' => {
                'type' => 'integer',
                'flags' => 0,
                'scope' => [],
            },
            'size-used' => {
                'type' => 'integer',
                'flags' => 0,
                'scope' => [],
            },
            'size-used-per-day' => {
                'type' => 'integer',
                'flags' => 4,
                'scope' => [],
            },
            'snapshot-reserve-avail' => {
                'type' => 'integer',
                'flags' => 4,
                'scope' => [],
            },
            'snapshot-reserve-total' => {
                'type' => 'integer',
                'flags' => 4,
                'scope' => [],
            },
            'snapshot-reserve-used' => {
                'type' => 'integer',
                'flags' => 4,
                'scope' => [],
            },
            'space-total-committed' => {
                'type' => 'integer',
                'flags' => 4,
                'scope' => [],
            },
        },
    },
    'cluster-info' => {
        'category' => 'cluster',
        'fields' => {
            'cluster-address' => {
                'type' => 'string',
                'flags' => 0,
                'scope' => [],
            },
            'cluster-diagnosis-status' => {
                'type' => 'string',
                'flags' => 0,
                'scope' => [],
            },
            'cluster-name' => {
                'type' => 'string',
                'flags' => 0,
                'scope' => [],
            },
            'cluster-status' => {
                'type' => 'obj-status',
                'flags' => 0,
                'scope' => [],
            },
            'cluster-version' => {
                'type' => 'string',
                'flags' => 0,
                'scope' => [],
            },
            'datasource-id' => {
                'type' => 'obj-id',
                'flags' => 0,
                'scope' => [],
            },
            'last-update-time' => {
                'type' => 'timestamp',
                'flags' => 0,
                'scope' => [],
            },
            'licenses' => {
                'type' => 'license',
                'flags' => 3,
                'scope' => [],
            },
            'resource-key' => {
                'type' => 'resource-key',
                'flags' => 0,
                'scope' => [],
            },
            'serial-number' => {
                'type' => 'string',
                'flags' => 0,
                'scope' => [],
            },
        },
    },
    'cluster-node-aggr-size' => {
        'category' => 'cluster',
        'fields' => {
            'aggr-bytes-total' => {
                'type' => 'integer',
                'flags' => 0,
                'scope' => [],
            },
            'aggr-bytes-used' => {
                'type' => 'integer',
                'flags' => 0,
                'scope' => [],
            },
        },
    },
    'cluster-node-disk-info' => {
        'category' => 'cluster',
        'fields' => {
            'disk-failed-message' => {
                'type' => 'string',
                'flags' => 4,
                'scope' => [],
            },
            'failed-disk-count' => {
                'type' => 'integer',
                'flags' => 4,
                'scope' => [],
            },
            'reconstructing-disk-count' => {
                'type' => 'integer',
                'flags' => 4,
                'scope' => [],
            },
            'reconstructing-parity-disk-count' => {
                'type' => 'integer',
                'flags' => 4,
                'scope' => [],
            },
            'scrubbing-disk-count' => {
                'type' => 'integer',
                'flags' => 4,
                'scope' => [],
            },
            'verifying-parity-disk-count' => {
                'type' => 'integer',
                'flags' => 4,
                'scope' => [],
            },
        },
    },
    'cluster-node-info' => {
        'category' => 'cluster',
        'fields' => {
            'bytes-spare' => {
                'type' => 'integer',
                'flags' => 0,
                'scope' => [],
            },
            'bytes-total' => {
                'type' => 'integer',
                'flags' => 0,
                'scope' => [],
            },
            'bytes-used' => {
                'type' => 'integer',
                'flags' => 0,
                'scope' => [],
            },
            'cluster-name' => {
                'type' => 'obj-name',
                'flags' => 0,
                'scope' => [],
            },
            'cluster-node-aggr-size-info' => {
                'type' => 'cluster-node-aggr-size',
                'flags' => 1,
                'scope' => [],
            },
            'cluster-node-disk-info' => {
                'type' => 'cluster-node-disk-info',
                'flags' => 1,
                'scope' => [],
            },
            'cluster-node-down-timestamp' => {
                'type' => 'timestamp',
                'flags' => 0,
                'scope' => [],
            },
            'cluster-node-interconnect-info' => {
                'type' => 'cluster-node-interconnect-info',
                'flags' => 1,
                'scope' => [],
            },
            'cluster-node-name' => {
                'type' => 'obj-name',
                'flags' => 0,
                'scope' => [],
            },
            'cluster-node-port-count' => {
                'type' => 'integer',
                'flags' => 0,
                'scope' => [],
            },
            'cluster-node-resource-key' => {
                'type' => 'resource-key',
                'flags' => 0,
                'scope' => [],
            },
            'cluster-node-state' => {
                'type' => 'string',
                'flags' => 0,
                'scope' => [],
            },
            'cluster-node-status' => {
                'type' => 'string',
                'flags' => 0,
                'scope' => [],
            },
            'cluster-node-uptime' => {
                'type' => 'integer',
                'flags' => 0,
                'scope' => [],
            },
            'cluster-node-uuid' => {
                'type' => 'string',
                'flags' => 0,
                'scope' => [],
            },
            'cluster-resource-key' => {
                'type' => 'resource-key',
                'flags' => 0,
                'scope' => [],
            },
            'contact' => {
                'type' => 'string',
                'flags' => 4,
                'scope' => [],
            },
            'cpu-percent-busy' => {
                'type' => 'integer',
                'flags' => 4,
                'scope' => [],
            },
            'cpu-percent-busy-duration' => {
                'type' => 'integer',
                'flags' => 4,
                'scope' => [],
            },
            'env-failed-fan-status' => {
                'type' => 'string',
                'flags' => 4,
                'scope' => [],
            },
            'env-failed-power-supply-status' => {
                'type' => 'string',
                'flags' => 4,
                'scope' => [],
            },
            'env-over-temperature-status' => {
                'type' => 'string',
                'flags' => 4,
                'scope' => [],
            },
            'firmware-version' => {
                'type' => 'string',
                'flags' => 4,
                'scope' => [],
            },
            'flash-cards' => {
                'type' => 'flash-card-info',
                'flags' => 7,
                'scope' => [],
            },
            'location' => {
                'type' => 'string',
                'flags' => 4,
                'scope' => [],
            },
            'model' => {
                'type' => 'string',
                'flags' => 4,
                'scope' => [],
            },
            'nvram-battery-status' => {
                'type' => 'string',
                'flags' => 4,
                'scope' => [],
            },
            'nvram-id' => {
                'type' => 'integer',
                'flags' => 4,
                'scope' => [],
            },
            'os-version' => {
                'type' => 'string',
                'flags' => 0,
                'scope' => [],
            },
            'serial-number' => {
                'type' => 'string',
                'flags' => 0,
                'scope' => [],
            },
            'sfo-info' => {
                'type' => 'sfo-info',
                'flags' => 1,
                'scope' => [],
            },
        },
    },
    'cluster-node-interconnect-info' => {
        'category' => 'cluster',
        'fields' => {
            'interconnect-links' => {
                'type' => 'string',
                'flags' => 4,
                'scope' => [],
            },
            'interconnect-type' => {
                'type' => 'string',
                'flags' => 4,
                'scope' => [],
            },
            'is-interconnect-up' => {
                'type' => 'boolean',
                'flags' => 0,
                'scope' => [],
            },
        },
    },
    'flash-card-info' => {
        'category' => 'cluster',
        'fields' => {
            'capacity' => {
                'type' => 'integer',
                'flags' => 0,
                'scope' => [],
            },
            'firmware-revision' => {
                'type' => 'string',
                'flags' => 0,
                'scope' => [],
            },
            'model-name' => {
                'type' => 'string',
                'flags' => 0,
                'scope' => [],
            },
            'percent-online' => {
                'type' => 'integer',
                'flags' => 0,
                'scope' => [],
            },
            'serial-number' => {
                'type' => 'string',
                'flags' => 0,
                'scope' => [],
            },
            'slot-number' => {
                'type' => 'integer',
                'flags' => 0,
                'scope' => [],
            },
            'status' => {
                'type' => 'string',
                'flags' => 0,
                'scope' => [],
            },
        },
    },
    'license' => {
        'category' => 'cluster',
        'fields' => {
            'description' => {
                'type' => 'string',
                'flags' => 0,
                'scope' => [],
            },
            'expiration-time' => {
                'type' => 'timestamp',
                'flags' => 0,
                'scope' => [],
            },
            'owner-name' => {
                'type' => 'string',
                'flags' => 0,
                'scope' => [],
            },
            'owner-resource-key' => {
                'type' => 'resource-key',
                'flags' => 0,
                'scope' => [],
            },
            'owner-type' => {
                'type' => 'resource-type',
                'flags' => 0,
                'scope' => [],
            },
            'package-name' => {
                'type' => 'string',
                'flags' => 0,
                'scope' => [],
            },
            'serial-number' => {
                'type' => 'string',
                'flags' => 0,
                'scope' => [],
            },
        },
    },
    'sfo-info' => {
        'category' => 'cluster',
        'fields' => {
            'current-mode' => {
                'type' => 'string',
                'flags' => 4,
                'scope' => [],
            },
            'giveback-state' => {
                'type' => 'string',
                'flags' => 4,
                'scope' => [],
            },
            'partner-name' => {
                'type' => 'obj-name',
                'flags' => 0,
                'scope' => [],
            },
            'partner-node-status' => {
                'type' => 'string',
                'flags' => 0,
                'scope' => [],
            },
            'partner-resource-key' => {
                'type' => 'resource-key',
                'flags' => 0,
                'scope' => [],
            },
            'sfo-state' => {
                'type' => 'string',
                'flags' => 0,
                'scope' => [],
            },
            'sfo-status' => {
                'type' => 'string',
                'flags' => 0,
                'scope' => [],
            },
            'takeover-by-partner-not-possible-reason' => {
                'type' => 'string',
                'flags' => 4,
                'scope' => [],
            },
            'takeover-failure-reason' => {
                'type' => 'string',
                'flags' => 4,
                'scope' => [],
            },
            'takeover-of-partner-not-possible-reason' => {
                'type' => 'string',
                'flags' => 4,
                'scope' => [],
            },
        },
    },
    'dp-relationship-info' => {
        'category' => 'dataprotection',
        'fields' => {
            'current-transfer-error' => {
                'type' => 'string',
                'flags' => 4,
                'scope' => [],
            },
            'destination-name' => {
                'type' => 'obj-full-name',
                'flags' => 0,
                'scope' => [],
            },
            'destination-resource-key' => {
                'type' => 'resource-key',
                'flags' => 0,
                'scope' => [],
            },
            'is-healthy' => {
                'type' => 'boolean',
                'flags' => 0,
                'scope' => [],
            },
            'lag-duration' => {
                'type' => 'integer',
                'flags' => 4,
                'scope' => [],
            },
            'last-transfer-duration' => {
                'type' => 'integer',
                'flags' => 4,
                'scope' => [],
            },
            'last-transfer-error' => {
                'type' => 'string',
                'flags' => 4,
                'scope' => [],
            },
            'max-transfer-rate' => {
                'type' => 'integer',
                'flags' => 0,
                'scope' => [],
            },
            'relationship-name' => {
                'type' => 'obj-name',
                'flags' => 0,
                'scope' => [],
            },
            'relationship-progress' => {
                'type' => 'integer',
                'flags' => 4,
                'scope' => [],
            },
            'relationship-resource-key' => {
                'type' => 'resource-key',
                'flags' => 0,
                'scope' => [],
            },
            'relationship-state' => {
                'type' => 'relationship-state',
                'flags' => 0,
                'scope' => [],
            },
            'relationship-status' => {
                'type' => 'relationship-status',
                'flags' => 0,
                'scope' => [],
            },
            'relationship-type' => {
                'type' => 'relationship-type',
                'flags' => 0,
                'scope' => [],
            },
            'schedule-name' => {
                'type' => 'obj-full-name',
                'flags' => 0,
                'scope' => [],
            },
            'schedule-resource-key' => {
                'type' => 'resource-key',
                'flags' => 0,
                'scope' => [],
            },
            'source-name' => {
                'type' => 'obj-full-name',
                'flags' => 0,
                'scope' => [],
            },
            'source-resource-key' => {
                'type' => 'resource-key',
                'flags' => 0,
                'scope' => [],
            },
            'storage-service-connection-resource-key' => {
                'type' => 'resource-key',
                'flags' => 4,
                'scope' => [],
            },
            'storage-service-destination-node-resource-key' => {
                'type' => 'resource-key',
                'flags' => 4,
                'scope' => [],
            },
            'storage-service-name' => {
                'type' => 'obj-name',
                'flags' => 4,
                'scope' => [],
            },
            'storage-service-resource-key' => {
                'type' => 'resource-key',
                'flags' => 4,
                'scope' => [],
            },
            'storage-service-source-node-resource-key' => {
                'type' => 'resource-key',
                'flags' => 4,
                'scope' => [],
            },
        },
    },
    'dp-restore-request-info' => {
        'category' => 'dataprotection',
        'fields' => {
            'destination-path' => {
                'type' => 'string',
                'flags' => 4,
                'scope' => [],
            },
            'destination-volume-resource-key' => {
                'type' => 'resource-key',
                'flags' => 0,
                'scope' => [],
            },
            'preserve-directory-hierarchy' => {
                'type' => 'boolean',
                'flags' => 4,
                'scope' => [],
            },
            'source-path' => {
                'type' => 'string',
                'flags' => 4,
                'scope' => [],
            },
            'source-snapshot-resource-key' => {
                'type' => 'resource-key',
                'flags' => 0,
                'scope' => [],
            },
            'use-snapshot-restore-volume' => {
                'type' => 'boolean',
                'flags' => 4,
                'scope' => [],
            },
        },
    },
    'relationship-state' => {
        'category' => 'dataprotection',
        'fields' => {
        },
    },
    'relationship-status' => {
        'category' => 'dataprotection',
        'fields' => {
        },
    },
    'relationship-type' => {
        'category' => 'dataprotection',
        'fields' => {
        },
    },
    'snapshot-identifier' => {
        'category' => 'dataprotection',
        'fields' => {
            'snapshot-name' => {
                'type' => 'string',
                'flags' => 4,
                'scope' => [],
            },
            'snapshot-resource-key' => {
                'type' => 'resource-key',
                'flags' => 4,
                'scope' => [],
            },
            'snapshot-version-uuid' => {
                'type' => 'uuid',
                'flags' => 4,
                'scope' => [],
            },
            'volume-resource-key' => {
                'type' => 'resource-key',
                'flags' => 4,
                'scope' => [],
            },
        },
    },
    'container-type' => {
        'category' => 'disk',
        'fields' => {
        },
    },
    'disk-info' => {
        'category' => 'disk',
        'fields' => {
            'aggregate-name' => {
                'type' => 'obj-full-name',
                'flags' => 4,
                'scope' => [],
            },
            'aggregate-resource-key' => {
                'type' => 'resource-key',
                'flags' => 4,
                'scope' => [],
            },
            'capacity-sectors' => {
                'type' => 'integer',
                'flags' => 0,
                'scope' => [],
            },
            'cluster-resource-key' => {
                'type' => 'resource-key',
                'flags' => 0,
                'scope' => [],
            },
            'container-type' => {
                'type' => 'container-type',
                'flags' => 0,
                'scope' => [],
            },
            'disk-name' => {
                'type' => 'string',
                'flags' => 0,
                'scope' => [],
            },
            'disk-path-info' => {
                'type' => 'disk-path-info',
                'flags' => 3,
                'scope' => [],
            },
            'disk-resource-key' => {
                'type' => 'resource-key',
                'flags' => 0,
                'scope' => [],
            },
            'disk-size' => {
                'type' => 'integer',
                'flags' => 0,
                'scope' => [],
            },
            'disk-type' => {
                'type' => 'string',
                'flags' => 0,
                'scope' => [],
            },
            'disk-uid' => {
                'type' => 'string',
                'flags' => 4,
                'scope' => [],
            },
            'effective-disk-type' => {
                'type' => 'string',
                'flags' => 0,
                'scope' => [],
            },
            'failure-reason' => {
                'type' => 'string',
                'flags' => 4,
                'scope' => [],
            },
            'is-permanently-failed' => {
                'type' => 'boolean',
                'flags' => 0,
                'scope' => [],
            },
            'node-name' => {
                'type' => 'obj-name',
                'flags' => 0,
                'scope' => [],
            },
            'node-resource-key' => {
                'type' => 'resource-key',
                'flags' => 0,
                'scope' => [],
            },
            'plex-name' => {
                'type' => 'string',
                'flags' => 4,
                'scope' => [],
            },
            'plex-resource-key' => {
                'type' => 'resource-key',
                'flags' => 4,
                'scope' => [],
            },
            'raidgroup-name' => {
                'type' => 'string',
                'flags' => 4,
                'scope' => [],
            },
            'raidgroup-resource-key' => {
                'type' => 'resource-key',
                'flags' => 4,
                'scope' => [],
            },
        },
    },
    'disk-path-info' => {
        'category' => 'disk',
        'fields' => {
            'disk-port' => {
                'type' => 'string',
                'flags' => 4,
                'scope' => [],
            },
            'disk-port-name' => {
                'type' => 'string',
                'flags' => 4,
                'scope' => [],
            },
            'node-name' => {
                'type' => 'obj-name',
                'flags' => 0,
                'scope' => [],
            },
            'node-resource-key' => {
                'type' => 'resource-key',
                'flags' => 0,
                'scope' => [],
            },
        },
    },
    'disk-physical-summary-disk-info' => {
        'category' => 'disk',
        'fields' => {
            'data-disk-count' => {
                'type' => 'integer',
                'flags' => 0,
                'scope' => [],
            },
            'parity-disk-count' => {
                'type' => 'integer',
                'flags' => 0,
                'scope' => [],
            },
            'parity-space' => {
                'type' => 'integer',
                'flags' => 0,
                'scope' => [],
            },
            'raw-space' => {
                'type' => 'integer',
                'flags' => 0,
                'scope' => [],
            },
            'spare-disk-count' => {
                'type' => 'integer',
                'flags' => 4,
                'scope' => [],
            },
            'spare-space' => {
                'type' => 'integer',
                'flags' => 4,
                'scope' => [],
            },
            'total-disk-count' => {
                'type' => 'integer',
                'flags' => 0,
                'scope' => [],
            },
            'total-space' => {
                'type' => 'integer',
                'flags' => 0,
                'scope' => [],
            },
        },
    },
    'disk-physical-summary-lun-info' => {
        'category' => 'disk',
        'fields' => {
            'data-lun-count' => {
                'type' => 'integer',
                'flags' => 0,
                'scope' => [],
            },
            'raw-space' => {
                'type' => 'integer',
                'flags' => 0,
                'scope' => [],
            },
            'spare-lun-count' => {
                'type' => 'integer',
                'flags' => 4,
                'scope' => [],
            },
            'spare-space' => {
                'type' => 'integer',
                'flags' => 4,
                'scope' => [],
            },
            'total-lun-count' => {
                'type' => 'integer',
                'flags' => 0,
                'scope' => [],
            },
            'total-space' => {
                'type' => 'integer',
                'flags' => 0,
                'scope' => [],
            },
        },
    },
    'event-action-info' => {
        'category' => 'event',
        'fields' => {
            'error-code' => {
                'type' => 'integer',
                'flags' => 4,
                'scope' => [],
            },
            'error-message' => {
                'type' => 'string',
                'flags' => 4,
                'scope' => [],
            },
            'event-id' => {
                'type' => 'integer',
                'flags' => 0,
                'scope' => [],
            },
            'timestamp' => {
                'type' => 'integer',
                'flags' => 4,
                'scope' => [],
            },
            'warning-message' => {
                'type' => 'string',
                'flags' => 4,
                'scope' => [],
            },
        },
    },
    'event-id-type' => {
        'category' => 'event',
        'fields' => {
        },
    },
    'event-info' => {
        'category' => 'event',
        'fields' => {
            'event-about' => {
                'type' => 'string',
                'flags' => 0,
                'scope' => [],
            },
            'event-acknowledged-timestamp' => {
                'type' => 'timestamp',
                'flags' => 4,
                'scope' => [],
            },
            'event-acknowledged-user' => {
                'type' => 'string',
                'flags' => 4,
                'scope' => [],
            },
            'event-arguments' => {
                'type' => 'key-value-pair',
                'flags' => 7,
                'scope' => [],
            },
            'event-assigned-user' => {
                'type' => 'string',
                'flags' => 4,
                'scope' => [],
            },
            'event-category' => {
                'type' => 'event-category',
                'flags' => 4,
                'scope' => [],
            },
            'event-condition' => {
                'type' => 'string',
                'flags' => 0,
                'scope' => [],
            },
            'event-id' => {
                'type' => 'integer',
                'flags' => 0,
                'scope' => [],
            },
            'event-impact-area' => {
                'type' => 'event-impact-area',
                'flags' => 0,
                'scope' => [],
            },
            'event-impact-level' => {
                'type' => 'event-impact-level',
                'flags' => 0,
                'scope' => [],
            },
            'event-name' => {
                'type' => 'string',
                'flags' => 0,
                'scope' => [],
            },
            'event-notes' => {
                'type' => 'event-note',
                'flags' => 7,
                'scope' => [],
            },
            'event-obsolete-condition' => {
                'type' => 'string',
                'flags' => 4,
                'scope' => [],
            },
            'event-obsolete-timestamp' => {
                'type' => 'timestamp',
                'flags' => 4,
                'scope' => [],
            },
            'event-resolved-timestamp' => {
                'type' => 'timestamp',
                'flags' => 4,
                'scope' => [],
            },
            'event-resolved-user' => {
                'type' => 'string',
                'flags' => 4,
                'scope' => [],
            },
            'event-severity' => {
                'type' => 'event-severity',
                'flags' => 0,
                'scope' => [],
            },
            'event-source-name' => {
                'type' => 'string',
                'flags' => 0,
                'scope' => [],
            },
            'event-source-resource-key' => {
                'type' => 'resource-key',
                'flags' => 0,
                'scope' => [],
            },
            'event-source-type' => {
                'type' => 'resource-type',
                'flags' => 0,
                'scope' => [],
            },
            'event-state' => {
                'type' => 'event-state',
                'flags' => 0,
                'scope' => [],
            },
            'event-time' => {
                'type' => 'integer',
                'flags' => 0,
                'scope' => [],
            },
            'event-type' => {
                'type' => 'string',
                'flags' => 0,
                'scope' => [],
            },
        },
    },
    'event-note' => {
        'category' => 'event',
        'fields' => {
            'author' => {
                'type' => 'string',
                'flags' => 0,
                'scope' => [],
            },
            'content' => {
                'type' => 'string',
                'flags' => 0,
                'scope' => [],
            },
            'timestamp' => {
                'type' => 'timestamp',
                'flags' => 0,
                'scope' => [],
            },
        },
    },
    'event-state' => {
        'category' => 'event',
        'fields' => {
        },
    },
    'event-timestamp-range' => {
        'category' => 'event',
        'fields' => {
            'end-time' => {
                'type' => 'integer',
                'flags' => 0,
                'scope' => [],
            },
            'start-time' => {
                'type' => 'integer',
                'flags' => 0,
                'scope' => [],
            },
        },
    },
    'event-type-filter' => {
        'category' => 'event',
        'fields' => {
            'event-filter' => {
                'type' => 'string',
                'flags' => 0,
                'scope' => [],
            },
        },
    },
    'event-category' => {
        'category' => 'eventclass',
        'fields' => {
        },
    },
    'event-impact-area' => {
        'category' => 'eventclass',
        'fields' => {
        },
    },
    'event-impact-level' => {
        'category' => 'eventclass',
        'fields' => {
        },
    },
    'event-severity' => {
        'category' => 'eventclass',
        'fields' => {
        },
    },
    'igroup-info' => {
        'category' => 'igroup',
        'fields' => {
            'alua-enabled' => {
                'type' => 'boolean',
                'flags' => 4,
                'scope' => [],
            },
            'igroup-name' => {
                'type' => 'obj-name',
                'flags' => 0,
                'scope' => [],
            },
            'igroup-type' => {
                'type' => 'string',
                'flags' => 0,
                'scope' => [],
            },
            'initiators' => {
                'type' => 'initiator-name',
                'flags' => 2,
                'scope' => [],
            },
            'os-type' => {
                'type' => 'string',
                'flags' => 0,
                'scope' => [],
            },
            'portset-name' => {
                'type' => 'obj-name',
                'flags' => 4,
                'scope' => [],
            },
            'portset-resource-key' => {
                'type' => 'resource-key',
                'flags' => 4,
                'scope' => [],
            },
            'resource-key' => {
                'type' => 'resource-key',
                'flags' => 0,
                'scope' => [],
            },
            'vsa-enabled' => {
                'type' => 'boolean',
                'flags' => 4,
                'scope' => [],
            },
            'vserver-name' => {
                'type' => 'obj-name',
                'flags' => 0,
                'scope' => [],
            },
            'vserver-resource-key' => {
                'type' => 'resource-key',
                'flags' => 0,
                'scope' => [],
            },
        },
    },
    'initiator-name' => {
        'category' => 'igroup',
        'fields' => {
        },
    },
    'job-detail' => {
        'category' => 'job',
        'fields' => {
            'storage-service-job-info' => {
                'type' => 'storage-service-job-info',
                'flags' => 5,
                'scope' => [],
            },
        },
    },
    'job-id' => {
        'category' => 'job',
        'fields' => {
        },
    },
    'job-info' => {
        'category' => 'job',
        'fields' => {
            'end-time' => {
                'type' => 'timestamp',
                'flags' => 4,
                'scope' => [],
            },
            'estimated-percent-complete' => {
                'type' => 'integer',
                'flags' => 4,
                'scope' => [],
            },
            'estimated-time-to-complete' => {
                'type' => 'integer',
                'flags' => 4,
                'scope' => [],
            },
            'job-description' => {
                'type' => 'string',
                'flags' => 0,
                'scope' => [],
            },
            'job-detail' => {
                'type' => 'job-detail',
                'flags' => 5,
                'scope' => [],
            },
            'job-id' => {
                'type' => 'job-id',
                'flags' => 0,
                'scope' => [],
            },
            'job-name' => {
                'type' => 'string',
                'flags' => 0,
                'scope' => [],
            },
            'job-state-events' => {
                'type' => 'state-event-info',
                'flags' => 3,
                'scope' => [],
            },
            'start-time' => {
                'type' => 'timestamp',
                'flags' => 4,
                'scope' => [],
            },
            'state' => {
                'type' => 'job-state',
                'flags' => 0,
                'scope' => [],
            },
            'status' => {
                'type' => 'job-status',
                'flags' => 0,
                'scope' => [],
            },
            'type' => {
                'type' => 'job-type',
                'flags' => 0,
                'scope' => [],
            },
        },
    },
    'job-state' => {
        'category' => 'job',
        'fields' => {
        },
    },
    'job-status' => {
        'category' => 'job',
        'fields' => {
        },
    },
    'job-task-id' => {
        'category' => 'job',
        'fields' => {
        },
    },
    'job-task-info' => {
        'category' => 'job',
        'fields' => {
            'dependency-list' => {
                'type' => 'job-task-id',
                'flags' => 2,
                'scope' => [],
            },
            'end-time' => {
                'type' => 'timestamp',
                'flags' => 4,
                'scope' => [],
            },
            'estimated-percent-complete' => {
                'type' => 'integer',
                'flags' => 4,
                'scope' => [],
            },
            'estimated-time-to-complete' => {
                'type' => 'integer',
                'flags' => 4,
                'scope' => [],
            },
            'failure-reason' => {
                'type' => 'string',
                'flags' => 4,
                'scope' => [],
            },
            'job-id' => {
                'type' => 'job-id',
                'flags' => 0,
                'scope' => [],
            },
            'messages' => {
                'type' => 'task-message-info',
                'flags' => 7,
                'scope' => [],
            },
            'object-interactions' => {
                'type' => 'task-interaction-object',
                'flags' => 7,
                'scope' => [],
            },
            'start-time' => {
                'type' => 'timestamp',
                'flags' => 4,
                'scope' => [],
            },
            'state' => {
                'type' => 'task-state',
                'flags' => 0,
                'scope' => [],
            },
            'status' => {
                'type' => 'task-status',
                'flags' => 0,
                'scope' => [],
            },
            'task-description' => {
                'type' => 'string',
                'flags' => 0,
                'scope' => [],
            },
            'task-detail' => {
                'type' => 'task-detail',
                'flags' => 5,
                'scope' => [],
            },
            'task-id' => {
                'type' => 'job-task-id',
                'flags' => 0,
                'scope' => [],
            },
            'task-state-events' => {
                'type' => 'state-event-info',
                'flags' => 3,
                'scope' => [],
            },
            'type' => {
                'type' => 'task-type',
                'flags' => 0,
                'scope' => [],
            },
        },
    },
    'job-type' => {
        'category' => 'job',
        'fields' => {
        },
    },
    'relationship-task-info' => {
        'category' => 'job',
        'fields' => {
            'connection-resource-key' => {
                'type' => 'resource-key',
                'flags' => 4,
                'scope' => [],
            },
            'destination-member-name' => {
                'type' => 'obj-name',
                'flags' => 4,
                'scope' => [],
            },
            'destination-member-resource-key' => {
                'type' => 'resource-key',
                'flags' => 4,
                'scope' => [],
            },
            'destination-node-name' => {
                'type' => 'obj-name',
                'flags' => 4,
                'scope' => [],
            },
            'destination-node-resource-key' => {
                'type' => 'resource-key',
                'flags' => 4,
                'scope' => [],
            },
            'last-progress-info' => {
                'type' => 'transfer-progress-task-info',
                'flags' => 5,
                'scope' => [],
            },
            'relationship-resource-key' => {
                'type' => 'resource-key',
                'flags' => 4,
                'scope' => [],
            },
            'source-member-name' => {
                'type' => 'obj-name',
                'flags' => 4,
                'scope' => [],
            },
            'source-member-resource-key' => {
                'type' => 'resource-key',
                'flags' => 4,
                'scope' => [],
            },
            'source-node-name' => {
                'type' => 'obj-name',
                'flags' => 4,
                'scope' => [],
            },
            'source-node-resource-key' => {
                'type' => 'resource-key',
                'flags' => 4,
                'scope' => [],
            },
        },
    },
    'state-event-info' => {
        'category' => 'job',
        'fields' => {
            'event' => {
                'type' => 'string',
                'flags' => 0,
                'scope' => [],
            },
            'timestamp' => {
                'type' => 'timestamp',
                'flags' => 0,
                'scope' => [],
            },
        },
    },
    'storage-service-job-info' => {
        'category' => 'job',
        'fields' => {
            'storage-service-id' => {
                'type' => 'obj-id',
                'flags' => 0,
                'scope' => [],
            },
            'storage-service-name' => {
                'type' => 'obj-name',
                'flags' => 0,
                'scope' => [],
            },
            'subscription-context' => {
                'type' => 'string',
                'flags' => 4,
                'scope' => [],
            },
        },
    },
    'task-detail' => {
        'category' => 'job',
        'fields' => {
            'relationship-info' => {
                'type' => 'relationship-task-info',
                'flags' => 5,
                'scope' => [],
            },
        },
    },
    'task-interaction-object' => {
        'category' => 'job',
        'fields' => {
            'task-interaction-object-name' => {
                'type' => 'string',
                'flags' => 0,
                'scope' => [],
            },
            'task-interaction-object-resource-key' => {
                'type' => 'resource-key',
                'flags' => 0,
                'scope' => [],
            },
            'task-interaction-object-type' => {
                'type' => 'resource-type',
                'flags' => 0,
                'scope' => [],
            },
        },
    },
    'task-message-info' => {
        'category' => 'job',
        'fields' => {
            'message' => {
                'type' => 'string',
                'flags' => 0,
                'scope' => [],
            },
            'timestamp' => {
                'type' => 'timestamp',
                'flags' => 4,
                'scope' => [],
            },
            'type' => {
                'type' => 'task-message-type',
                'flags' => 0,
                'scope' => [],
            },
        },
    },
    'task-message-type' => {
        'category' => 'job',
        'fields' => {
        },
    },
    'task-state' => {
        'category' => 'job',
        'fields' => {
        },
    },
    'task-status' => {
        'category' => 'job',
        'fields' => {
        },
    },
    'task-type' => {
        'category' => 'job',
        'fields' => {
        },
    },
    'transfer-progress-task-info' => {
        'category' => 'job',
        'fields' => {
            'ontap-transfer-job-id' => {
                'type' => 'integer',
                'flags' => 4,
                'scope' => [],
            },
            'progress-last-updated' => {
                'type' => 'timestamp',
                'flags' => 0,
                'scope' => [],
            },
            'relationship-progress' => {
                'type' => 'integer',
                'flags' => 4,
                'scope' => [],
            },
            'snapshot-checkpoint' => {
                'type' => 'integer',
                'flags' => 4,
                'scope' => [],
            },
            'snapshot-progress' => {
                'type' => 'integer',
                'flags' => 4,
                'scope' => [],
            },
            'transfer-snapshot' => {
                'type' => 'string',
                'flags' => 4,
                'scope' => [],
            },
        },
    },
    'igroup-reference' => {
        'category' => 'lun',
        'fields' => {
            'igroup-mapping-id' => {
                'type' => 'obj-id',
                'flags' => 0,
                'scope' => [],
            },
            'igroup-name' => {
                'type' => 'obj-name',
                'flags' => 0,
                'scope' => [],
            },
            'igroup-resource-key' => {
                'type' => 'resource-key',
                'flags' => 0,
                'scope' => [],
            },
        },
    },
    'lun-info' => {
        'category' => 'lun',
        'fields' => {
            'alignment' => {
                'type' => 'string',
                'flags' => 0,
                'scope' => [],
            },
            'comment' => {
                'type' => 'string',
                'flags' => 0,
                'scope' => [],
            },
            'igroups' => {
                'type' => 'igroup-reference',
                'flags' => 7,
                'scope' => [],
            },
            'is-lun-space-reserved' => {
                'type' => 'boolean',
                'flags' => 0,
                'scope' => [],
            },
            'is-space-alloc-enabled' => {
                'type' => 'boolean',
                'flags' => 0,
                'scope' => [],
            },
            'lun-class' => {
                'type' => 'string',
                'flags' => 0,
                'scope' => [],
            },
            'lun-path' => {
                'type' => 'obj-name',
                'flags' => 0,
                'scope' => [],
            },
            'lun-size' => {
                'type' => 'integer',
                'flags' => 0,
                'scope' => [],
            },
            'lun-status' => {
                'type' => 'obj-status',
                'flags' => 0,
                'scope' => [],
            },
            'lun-used-space' => {
                'type' => 'integer',
                'flags' => 0,
                'scope' => [],
            },
            'mapped' => {
                'type' => 'boolean',
                'flags' => 0,
                'scope' => [],
            },
            'multiprotocol-type' => {
                'type' => 'string',
                'flags' => 0,
                'scope' => [],
            },
            'qtree-name' => {
                'type' => 'obj-name',
                'flags' => 4,
                'scope' => [],
            },
            'qtree-resource-key' => {
                'type' => 'resource-key',
                'flags' => 0,
                'scope' => [],
            },
            'resource-key' => {
                'type' => 'resource-key',
                'flags' => 0,
                'scope' => [],
            },
            'serial-number' => {
                'type' => 'string',
                'flags' => 0,
                'scope' => [],
            },
            'volume-name' => {
                'type' => 'obj-name',
                'flags' => 4,
                'scope' => [],
            },
            'volume-resource-key' => {
                'type' => 'resource-key',
                'flags' => 0,
                'scope' => [],
            },
            'vserver-name' => {
                'type' => 'obj-name',
                'flags' => 0,
                'scope' => [],
            },
            'vserver-resource-key' => {
                'type' => 'resource-key',
                'flags' => 0,
                'scope' => [],
            },
        },
    },
    'data-protocol' => {
        'category' => 'net',
        'fields' => {
        },
    },
    'net-interface-info' => {
        'category' => 'net',
        'fields' => {
            'address-type' => {
                'type' => 'string',
                'flags' => 4,
                'scope' => [],
            },
            'administrative-status' => {
                'type' => 'string',
                'flags' => 4,
                'scope' => [],
            },
            'cluster-name' => {
                'type' => 'string',
                'flags' => 0,
                'scope' => [],
            },
            'current-node' => {
                'type' => 'string',
                'flags' => 4,
                'scope' => [],
            },
            'current-port' => {
                'type' => 'string',
                'flags' => 4,
                'scope' => [],
            },
            'data-protocols' => {
                'type' => 'data-protocol',
                'flags' => 6,
                'scope' => [],
            },
            'failover-group' => {
                'type' => 'string',
                'flags' => 4,
                'scope' => [],
            },
            'failover-policy' => {
                'type' => 'string',
                'flags' => 0,
                'scope' => [],
            },
            'home-node' => {
                'type' => 'string',
                'flags' => 4,
                'scope' => [],
            },
            'home-port' => {
                'type' => 'string',
                'flags' => 4,
                'scope' => [],
            },
            'is-home' => {
                'type' => 'boolean',
                'flags' => 4,
                'scope' => [],
            },
            'name' => {
                'type' => 'obj-name',
                'flags' => 0,
                'scope' => [],
            },
            'network-address' => {
                'type' => 'string',
                'flags' => 4,
                'scope' => [],
            },
            'network-prefix-length' => {
                'type' => 'integer',
                'flags' => 4,
                'scope' => [],
            },
            'operational-status' => {
                'type' => 'string',
                'flags' => 0,
                'scope' => [],
            },
            'owner-name' => {
                'type' => 'obj-name',
                'flags' => 0,
                'scope' => [],
            },
            'owner-resource-key' => {
                'type' => 'resource-key',
                'flags' => 0,
                'scope' => [],
            },
            'owner-type' => {
                'type' => 'obj-type',
                'flags' => 0,
                'scope' => [],
            },
            'resource-key' => {
                'type' => 'resource-key',
                'flags' => 0,
                'scope' => [],
            },
        },
    },
    'portset-igroup' => {
        'category' => 'portset',
        'fields' => {
            'igroup-name' => {
                'type' => 'string',
                'flags' => 0,
                'scope' => [],
            },
            'igroup-resource-key' => {
                'type' => 'resource-key',
                'flags' => 0,
                'scope' => [],
            },
        },
    },
    'portset-info' => {
        'category' => 'portset',
        'fields' => {
            'portset-igroups' => {
                'type' => 'portset-igroup',
                'flags' => 3,
                'scope' => [],
            },
            'portset-members' => {
                'type' => 'portset-member',
                'flags' => 2,
                'scope' => [],
            },
            'portset-name' => {
                'type' => 'obj-name',
                'flags' => 0,
                'scope' => [],
            },
            'portset-type' => {
                'type' => 'string',
                'flags' => 0,
                'scope' => [],
            },
            'resource-key' => {
                'type' => 'resource-key',
                'flags' => 0,
                'scope' => [],
            },
            'vserver-name' => {
                'type' => 'obj-name',
                'flags' => 0,
                'scope' => [],
            },
            'vserver-resource-key' => {
                'type' => 'resource-key',
                'flags' => 0,
                'scope' => [],
            },
        },
    },
    'portset-member' => {
        'category' => 'portset',
        'fields' => {
        },
    },
    'resource-key' => {
        'category' => 'resource',
        'fields' => {
        },
    },
    'resource-type' => {
        'category' => 'resource',
        'fields' => {
        },
    },
    'resource-pool-info' => {
        'category' => 'resource-pool',
        'fields' => {
            'aggregates' => {
                'type' => 'resource-key',
                'flags' => 2,
                'scope' => [],
            },
            'capacity-available' => {
                'type' => 'integer',
                'flags' => 0,
                'scope' => [],
            },
            'capacity-total' => {
                'type' => 'integer',
                'flags' => 0,
                'scope' => [],
            },
            'capacity-used' => {
                'type' => 'integer',
                'flags' => 0,
                'scope' => [],
            },
            'description' => {
                'type' => 'string',
                'flags' => 0,
                'scope' => [],
            },
            'name' => {
                'type' => 'string',
                'flags' => 0,
                'scope' => [],
            },
            'resource-key' => {
                'type' => 'resource-key',
                'flags' => 0,
                'scope' => [],
            },
        },
    },
    'snapshot-location-info' => {
        'category' => 'snapshot',
        'fields' => {
            'node-name' => {
                'type' => 'obj-name',
                'flags' => 4,
                'scope' => [],
            },
            'node-resource-key' => {
                'type' => 'resource-key',
                'flags' => 4,
                'scope' => [],
            },
            'snapshot-instance-uuid' => {
                'type' => 'uuid',
                'flags' => 0,
                'scope' => [],
            },
            'snapshot-name' => {
                'type' => 'string',
                'flags' => 0,
                'scope' => [],
            },
            'snapshot-resource-key' => {
                'type' => 'resource-key',
                'flags' => 0,
                'scope' => [],
            },
            'snapshot-version-uuid' => {
                'type' => 'uuid',
                'flags' => 0,
                'scope' => [],
            },
            'storage-service-name' => {
                'type' => 'obj-name',
                'flags' => 0,
                'scope' => [],
            },
            'storage-service-resource-key' => {
                'type' => 'resource-key',
                'flags' => 0,
                'scope' => [],
            },
            'volume-name' => {
                'type' => 'obj-full-name',
                'flags' => 0,
                'scope' => [],
            },
            'volume-resource-key' => {
                'type' => 'resource-key',
                'flags' => 0,
                'scope' => [],
            },
        },
    },
    'snapshot-location-result-info' => {
        'category' => 'snapshot',
        'fields' => {
            'requested-snapshot-identifier' => {
                'type' => 'snapshot-identifier',
                'flags' => 1,
                'scope' => [],
            },
            'snapshot-locations' => {
                'type' => 'snapshot-location-info',
                'flags' => 3,
                'scope' => [],
            },
        },
    },
    'certificate' => {
        'category' => 'ssl',
        'fields' => {
        },
    },
    'certificate-chain' => {
        'category' => 'ssl',
        'fields' => {
        },
    },
    'keyvalue' => {
        'category' => 'storage-service',
        'fields' => {
            'field-name' => {
                'type' => 'string',
                'flags' => 0,
                'scope' => [],
            },
            'field-value' => {
                'type' => 'string',
                'flags' => 0,
                'scope' => [],
            },
        },
    },
    'storage-service-import-info' => {
        'category' => 'storage-service',
        'fields' => {
            'connection-resource-key' => {
                'type' => 'resource-key',
                'flags' => 0,
                'scope' => [],
            },
            'destination-volume-resource-key' => {
                'type' => 'resource-key',
                'flags' => 4,
                'scope' => [],
            },
            'relationship-resource-key' => {
                'type' => 'resource-key',
                'flags' => 4,
                'scope' => [],
            },
        },
    },
    'storage-service-info' => {
        'category' => 'storage-service',
        'fields' => {
            'is-storage-service-marked-for-deletion' => {
                'type' => 'boolean',
                'flags' => 0,
                'scope' => [],
            },
            'storage-service-client-tag' => {
                'type' => 'string',
                'flags' => 0,
                'scope' => [],
            },
            'storage-service-contact-list' => {
                'type' => 'email-address',
                'flags' => 6,
                'scope' => [],
            },
            'storage-service-description' => {
                'type' => 'string',
                'flags' => 4,
                'scope' => [],
            },
            'storage-service-name' => {
                'type' => 'obj-name',
                'flags' => 0,
                'scope' => [],
            },
            'storage-service-owner' => {
                'type' => 'string',
                'flags' => 4,
                'scope' => [],
            },
            'storage-service-resource-key' => {
                'type' => 'resource-key',
                'flags' => 0,
                'scope' => [],
            },
            'storage-service-topology-info' => {
                'type' => 'storage-service-topology-info',
                'flags' => 1,
                'scope' => [],
            },
        },
    },
    'storage-service-member-info' => {
        'category' => 'storage-service',
        'fields' => {
            'incoming-connection-resource-key' => {
                'type' => 'resource-key',
                'flags' => 4,
                'scope' => [],
            },
            'incoming-relationship-resource-key' => {
                'type' => 'resource-key',
                'flags' => 4,
                'scope' => [],
            },
            'is-enabled' => {
                'type' => 'boolean',
                'flags' => 0,
                'scope' => [],
            },
            'is-member-missing' => {
                'type' => 'boolean',
                'flags' => 4,
                'scope' => [],
            },
            'member-name' => {
                'type' => 'obj-full-name',
                'flags' => 0,
                'scope' => [],
            },
            'member-resource-key' => {
                'type' => 'resource-key',
                'flags' => 0,
                'scope' => [],
            },
            'member-type' => {
                'type' => 'string',
                'flags' => 0,
                'scope' => [],
            },
            'node-name' => {
                'type' => 'string',
                'flags' => 0,
                'scope' => [],
            },
            'node-resource-key' => {
                'type' => 'resource-key',
                'flags' => 0,
                'scope' => [],
            },
            'source-member-name' => {
                'type' => 'obj-full-name',
                'flags' => 4,
                'scope' => [],
            },
            'source-member-resource-key' => {
                'type' => 'resource-key',
                'flags' => 4,
                'scope' => [],
            },
            'source-node-name' => {
                'type' => 'string',
                'flags' => 4,
                'scope' => [],
            },
            'source-node-resource-key' => {
                'type' => 'resource-key',
                'flags' => 4,
                'scope' => [],
            },
            'subscriptions' => {
                'type' => 'resource-key',
                'flags' => 6,
                'scope' => [],
            },
        },
    },
    'storage-service-subscription-info' => {
        'category' => 'storage-service',
        'fields' => {
            'storage-service-name' => {
                'type' => 'obj-name',
                'flags' => 0,
                'scope' => [],
            },
            'storage-service-resource-key' => {
                'type' => 'resource-key',
                'flags' => 0,
                'scope' => [],
            },
            'subscription-context' => {
                'type' => 'string',
                'flags' => 0,
                'scope' => [],
            },
            'subscription-members' => {
                'type' => 'storage-service-subscription-member-info',
                'flags' => 3,
                'scope' => [],
            },
            'subscription-resource-key' => {
                'type' => 'resource-key',
                'flags' => 0,
                'scope' => [],
            },
        },
    },
    'storage-service-subscription-member-info' => {
        'category' => 'storage-service',
        'fields' => {
            'is-member-deleted' => {
                'type' => 'boolean',
                'flags' => 4,
                'scope' => [],
            },
            'member-name' => {
                'type' => 'obj-full-name',
                'flags' => 0,
                'scope' => [],
            },
            'member-resource-key' => {
                'type' => 'resource-key',
                'flags' => 0,
                'scope' => [],
            },
            'member-type' => {
                'type' => 'string',
                'flags' => 0,
                'scope' => [],
            },
        },
    },
    'storage-service-topology-connection-info' => {
        'category' => 'storage-service',
        'fields' => {
            'connection-resource-key' => {
                'type' => 'resource-key',
                'flags' => 4,
                'scope' => [],
            },
            'connection-type' => {
                'type' => 'string',
                'flags' => 0,
                'scope' => [],
            },
            'destination-node-name' => {
                'type' => 'string',
                'flags' => 0,
                'scope' => [],
            },
            'destination-node-resource-key' => {
                'type' => 'resource-key',
                'flags' => 4,
                'scope' => [],
            },
            'is-lag-error-enabled' => {
                'type' => 'boolean',
                'flags' => 4,
                'scope' => [],
            },
            'is-lag-warning-enabled' => {
                'type' => 'boolean',
                'flags' => 4,
                'scope' => [],
            },
            'lag-error-threshold' => {
                'type' => 'integer',
                'flags' => 4,
                'scope' => [],
            },
            'lag-warning-threshold' => {
                'type' => 'integer',
                'flags' => 4,
                'scope' => [],
            },
            'max-transfer-rate' => {
                'type' => 'integer',
                'flags' => 4,
                'scope' => [],
            },
            'source-node-name' => {
                'type' => 'string',
                'flags' => 0,
                'scope' => [],
            },
            'source-node-resource-key' => {
                'type' => 'resource-key',
                'flags' => 4,
                'scope' => [],
            },
        },
    },
    'storage-service-topology-info' => {
        'category' => 'storage-service',
        'fields' => {
            'connections' => {
                'type' => 'storage-service-topology-connection-info',
                'flags' => 7,
                'scope' => [],
            },
            'nodes' => {
                'type' => 'storage-service-topology-node-info',
                'flags' => 3,
                'scope' => [],
            },
        },
    },
    'storage-service-topology-node-info' => {
        'category' => 'storage-service',
        'fields' => {
            'node-name' => {
                'type' => 'string',
                'flags' => 0,
                'scope' => [],
            },
            'node-resource-key' => {
                'type' => 'resource-key',
                'flags' => 4,
                'scope' => [],
            },
            'resource-pools' => {
                'type' => 'resource-key',
                'flags' => 6,
                'scope' => [],
            },
            'service-workflow-resource-key' => {
                'type' => 'resource-key',
                'flags' => 4,
                'scope' => [],
            },
        },
    },
    'storage-service-workflow-info' => {
        'category' => 'storage-service',
        'fields' => {
            'storage-service-workflow-description' => {
                'type' => 'string',
                'flags' => 0,
                'scope' => [],
            },
            'storage-service-workflow-name' => {
                'type' => 'obj-name',
                'flags' => 0,
                'scope' => [],
            },
            'storage-service-workflow-resource-key' => {
                'type' => 'resource-key',
                'flags' => 0,
                'scope' => [],
            },
            'storage-service-workflow-type' => {
                'type' => 'string',
                'flags' => 0,
                'scope' => [],
            },
        },
    },
    'email-address' => {
        'category' => 'typedefs',
        'fields' => {
        },
    },
    'file-system-block-type' => {
        'category' => 'typedefs',
        'fields' => {
        },
    },
    'key-value-pair' => {
        'category' => 'typedefs',
        'fields' => {
            'key' => {
                'type' => 'string',
                'flags' => 0,
                'scope' => [],
            },
            'value' => {
                'type' => 'string',
                'flags' => 0,
                'scope' => [],
            },
        },
    },
    'obj-full-name' => {
        'category' => 'typedefs',
        'fields' => {
        },
    },
    'obj-id' => {
        'category' => 'typedefs',
        'fields' => {
        },
    },
    'obj-name' => {
        'category' => 'typedefs',
        'fields' => {
        },
    },
    'obj-status' => {
        'category' => 'typedefs',
        'fields' => {
        },
    },
    'obj-type' => {
        'category' => 'typedefs',
        'fields' => {
        },
    },
    'timestamp' => {
        'category' => 'typedefs',
        'fields' => {
        },
    },
    'uuid' => {
        'category' => 'typedefs',
        'fields' => {
        },
    },
    'constituent-volume-by-aggregate-info' => {
        'category' => 'volume',
        'fields' => {
            'infinite-volume-name' => {
                'type' => 'string',
                'flags' => 0,
                'scope' => [],
            },
            'infinite-volume-resource-key' => {
                'type' => 'resource-key',
                'flags' => 0,
                'scope' => [],
            },
            'storage-class-name' => {
                'type' => 'string',
                'flags' => 0,
                'scope' => [],
            },
            'storage-class-resource-key' => {
                'type' => 'resource-key',
                'flags' => 0,
                'scope' => [],
            },
        },
    },
    'flexible-volume-info' => {
        'category' => 'volume',
        'fields' => {
            'aggregate-name' => {
                'type' => 'string',
                'flags' => 0,
                'scope' => [],
            },
            'aggregate-resource-key' => {
                'type' => 'resource-key',
                'flags' => 0,
                'scope' => [],
            },
            'autogrow-increment-size' => {
                'type' => 'integer',
                'flags' => 4,
                'scope' => [],
            },
            'is-autosize-enabled' => {
                'type' => 'boolean',
                'flags' => 0,
                'scope' => [],
            },
            'is-snapshot-autodelete-enabled' => {
                'type' => 'boolean',
                'flags' => 0,
                'scope' => [],
            },
            'maximum-size' => {
                'type' => 'integer',
                'flags' => 4,
                'scope' => [],
            },
            'volume-clone-info' => {
                'type' => 'volume-clone-info',
                'flags' => 5,
                'scope' => [],
            },
        },
    },
    'infinite-volume-info' => {
        'category' => 'volume',
        'fields' => {
            'is-managed-by-service' => {
                'type' => 'boolean',
                'flags' => 0,
                'scope' => [],
            },
            'is-snapdiff-enabled' => {
                'type' => 'boolean',
                'flags' => 0,
                'scope' => [],
            },
            'max-data-constituent-size' => {
                'type' => 'integer',
                'flags' => 4,
                'scope' => [],
            },
            'max-namespace-constituent-size' => {
                'type' => 'integer',
                'flags' => 4,
                'scope' => [],
            },
        },
    },
    'object-space-status' => {
        'category' => 'volume',
        'fields' => {
        },
    },
    'volume-by-aggregate-info' => {
        'category' => 'volume',
        'fields' => {
            'actual-volume-size' => {
                'type' => 'integer',
                'flags' => 4,
                'scope' => [],
            },
            'afs-avail' => {
                'type' => 'integer',
                'flags' => 4,
                'scope' => [],
            },
            'afs-total' => {
                'type' => 'integer',
                'flags' => 4,
                'scope' => [],
            },
            'afs-used' => {
                'type' => 'integer',
                'flags' => 4,
                'scope' => [],
            },
            'aggregate-name' => {
                'type' => 'string',
                'flags' => 0,
                'scope' => [],
            },
            'aggregate-resource-key' => {
                'type' => 'resource-key',
                'flags' => 0,
                'scope' => [],
            },
            'block-type' => {
                'type' => 'file-system-block-type',
                'flags' => 0,
                'scope' => [],
            },
            'constituent-volume-by-aggregate-info' => {
                'type' => 'constituent-volume-by-aggregate-info',
                'flags' => 5,
                'scope' => [],
            },
            'is-snapshot-enabled' => {
                'type' => 'boolean',
                'flags' => 0,
                'scope' => [],
            },
            'snapshot-reserve-avail' => {
                'type' => 'integer',
                'flags' => 4,
                'scope' => [],
            },
            'snapshot-reserve-total' => {
                'type' => 'integer',
                'flags' => 4,
                'scope' => [],
            },
            'snapshot-reserve-used' => {
                'type' => 'integer',
                'flags' => 4,
                'scope' => [],
            },
            'space-guarantee' => {
                'type' => 'string',
                'flags' => 4,
                'scope' => [],
            },
            'total' => {
                'type' => 'integer',
                'flags' => 4,
                'scope' => [],
            },
            'volume-efficiency-info' => {
                'type' => 'volume-efficiency-info',
                'flags' => 5,
                'scope' => [],
            },
            'volume-name' => {
                'type' => 'string',
                'flags' => 0,
                'scope' => [],
            },
            'volume-resource-key' => {
                'type' => 'resource-key',
                'flags' => 0,
                'scope' => [],
            },
            'volume-state' => {
                'type' => 'string',
                'flags' => 0,
                'scope' => [],
            },
            'volume-type' => {
                'type' => 'string',
                'flags' => 0,
                'scope' => [],
            },
            'vserver-name' => {
                'type' => 'string',
                'flags' => 0,
                'scope' => [],
            },
            'vserver-resource-key' => {
                'type' => 'resource-key',
                'flags' => 0,
                'scope' => [],
            },
        },
    },
    'volume-clone-info' => {
        'category' => 'volume',
        'fields' => {
            'clone-child-count' => {
                'type' => 'integer',
                'flags' => 4,
                'scope' => [],
            },
            'clone-space-savings' => {
                'type' => 'integer',
                'flags' => 4,
                'scope' => [],
            },
            'clone-space-savings-percentage' => {
                'type' => 'integer',
                'flags' => 4,
                'scope' => [],
            },
            'is-clone' => {
                'type' => 'boolean',
                'flags' => 0,
                'scope' => [],
            },
            'is-clone-present' => {
                'type' => 'boolean',
                'flags' => 0,
                'scope' => [],
            },
            'parent-volume-name' => {
                'type' => 'string',
                'flags' => 4,
                'scope' => [],
            },
            'parent-volume-resource-key' => {
                'type' => 'resource-key',
                'flags' => 4,
                'scope' => [],
            },
        },
    },
    'volume-efficiency-info' => {
        'category' => 'volume',
        'fields' => {
            'compression-space-savings' => {
                'type' => 'integer',
                'flags' => 4,
                'scope' => [],
            },
            'compression-space-savings-percentage' => {
                'type' => 'integer',
                'flags' => 4,
                'scope' => [],
            },
            'dedupe-progress' => {
                'type' => 'string',
                'flags' => 4,
                'scope' => [],
            },
            'dedupe-schedule' => {
                'type' => 'string',
                'flags' => 4,
                'scope' => [],
            },
            'dedupe-space-savings' => {
                'type' => 'integer',
                'flags' => 4,
                'scope' => [],
            },
            'dedupe-space-savings-percentage' => {
                'type' => 'integer',
                'flags' => 4,
                'scope' => [],
            },
            'dedupe-status' => {
                'type' => 'string',
                'flags' => 4,
                'scope' => [],
            },
            'dedupe-type' => {
                'type' => 'string',
                'flags' => 4,
                'scope' => [],
            },
            'efficiency-policy' => {
                'type' => 'string',
                'flags' => 4,
                'scope' => [],
            },
            'is-compression-enabled' => {
                'type' => 'boolean',
                'flags' => 0,
                'scope' => [],
            },
            'is-dedupe-enabled' => {
                'type' => 'boolean',
                'flags' => 0,
                'scope' => [],
            },
            'last-dedupe-begin-timestamp' => {
                'type' => 'timestamp',
                'flags' => 4,
                'scope' => [],
            },
            'last-dedupe-end-timestamp' => {
                'type' => 'timestamp',
                'flags' => 4,
                'scope' => [],
            },
            'last-dedupe-error' => {
                'type' => 'string',
                'flags' => 4,
                'scope' => [],
            },
            'last-dedupe-scanned-size' => {
                'type' => 'integer',
                'flags' => 4,
                'scope' => [],
            },
            'last-dedupe-status' => {
                'type' => 'string',
                'flags' => 4,
                'scope' => [],
            },
        },
    },
    'volume-info' => {
        'category' => 'volume',
        'fields' => {
            'block-type' => {
                'type' => 'file-system-block-type',
                'flags' => 0,
                'scope' => [],
            },
            'flexible-volume-info' => {
                'type' => 'flexible-volume-info',
                'flags' => 5,
                'scope' => [],
            },
            'infinite-volume-info' => {
                'type' => 'infinite-volume-info',
                'flags' => 5,
                'scope' => [],
            },
            'is-junction-path-active' => {
                'type' => 'boolean',
                'flags' => 4,
                'scope' => [],
            },
            'junction-parent-name' => {
                'type' => 'string',
                'flags' => 4,
                'scope' => [],
            },
            'junction-parent-resource-key' => {
                'type' => 'resource-key',
                'flags' => 4,
                'scope' => [],
            },
            'junction-path' => {
                'type' => 'string',
                'flags' => 4,
                'scope' => [],
            },
            'space-guarantee' => {
                'type' => 'string',
                'flags' => 4,
                'scope' => [],
            },
            'volume-efficiency-info' => {
                'type' => 'volume-efficiency-info',
                'flags' => 5,
                'scope' => [],
            },
            'volume-name' => {
                'type' => 'string',
                'flags' => 0,
                'scope' => [],
            },
            'volume-resource-key' => {
                'type' => 'resource-key',
                'flags' => 0,
                'scope' => [],
            },
            'volume-security-info' => {
                'type' => 'volume-security-info',
                'flags' => 5,
                'scope' => [],
            },
            'volume-size' => {
                'type' => 'volume-size',
                'flags' => 1,
                'scope' => [],
            },
            'volume-state' => {
                'type' => 'string',
                'flags' => 0,
                'scope' => [],
            },
            'volume-status' => {
                'type' => 'obj-status',
                'flags' => 0,
                'scope' => [],
            },
            'volume-type' => {
                'type' => 'string',
                'flags' => 0,
                'scope' => [],
            },
            'vserver-name' => {
                'type' => 'string',
                'flags' => 0,
                'scope' => [],
            },
            'vserver-resource-key' => {
                'type' => 'resource-key',
                'flags' => 0,
                'scope' => [],
            },
        },
    },
    'volume-move-history-info' => {
        'category' => 'volume',
        'fields' => {
            'destination-aggregate-name' => {
                'type' => 'obj-name',
                'flags' => 4,
                'scope' => [],
            },
            'destination-aggregate-resource-key' => {
                'type' => 'resource-key',
                'flags' => 4,
                'scope' => [],
            },
            'source-aggregate-name' => {
                'type' => 'obj-name',
                'flags' => 4,
                'scope' => [],
            },
            'source-aggregate-resource-key' => {
                'type' => 'resource-key',
                'flags' => 4,
                'scope' => [],
            },
            'volume-move-completion-time' => {
                'type' => 'timestamp',
                'flags' => 4,
                'scope' => [],
            },
            'volume-move-details' => {
                'type' => 'string',
                'flags' => 0,
                'scope' => [],
            },
            'volume-move-estimated-completion-time' => {
                'type' => 'timestamp',
                'flags' => 4,
                'scope' => [],
            },
            'volume-move-percent-complete' => {
                'type' => 'integer',
                'flags' => 4,
                'scope' => [],
            },
            'volume-move-phase' => {
                'type' => 'string',
                'flags' => 0,
                'scope' => [],
            },
            'volume-move-start-time' => {
                'type' => 'timestamp',
                'flags' => 0,
                'scope' => [],
            },
            'volume-move-state' => {
                'type' => 'string',
                'flags' => 0,
                'scope' => [],
            },
            'volume-name' => {
                'type' => 'obj-name',
                'flags' => 0,
                'scope' => [],
            },
            'volume-resource-key' => {
                'type' => 'resource-key',
                'flags' => 0,
                'scope' => [],
            },
            'vserver-name' => {
                'type' => 'obj-name',
                'flags' => 0,
                'scope' => [],
            },
            'vserver-resource-key' => {
                'type' => 'resource-key',
                'flags' => 0,
                'scope' => [],
            },
        },
    },
    'volume-security-info' => {
        'category' => 'volume',
        'fields' => {
            'group-id' => {
                'type' => 'string',
                'flags' => 4,
                'scope' => [],
            },
            'permissions' => {
                'type' => 'string',
                'flags' => 4,
                'scope' => [],
            },
            'user-id' => {
                'type' => 'string',
                'flags' => 4,
                'scope' => [],
            },
        },
    },
    'volume-size' => {
        'category' => 'volume',
        'fields' => {
            'actual-volume-size' => {
                'type' => 'integer',
                'flags' => 4,
                'scope' => [],
            },
            'afs-avail' => {
                'type' => 'integer',
                'flags' => 4,
                'scope' => [],
            },
            'afs-daily-growth-rate' => {
                'type' => 'integer',
                'flags' => 4,
                'scope' => [],
            },
            'afs-total' => {
                'type' => 'integer',
                'flags' => 4,
                'scope' => [],
            },
            'afs-used' => {
                'type' => 'integer',
                'flags' => 4,
                'scope' => [],
            },
            'afs-used-per-day' => {
                'type' => 'integer',
                'flags' => 0,
                'scope' => [],
            },
            'is-snapshot-enabled' => {
                'type' => 'boolean',
                'flags' => 0,
                'scope' => [],
            },
            'overwrite-reserve-avail' => {
                'type' => 'integer',
                'flags' => 4,
                'scope' => [],
            },
            'overwrite-reserve-total' => {
                'type' => 'integer',
                'flags' => 4,
                'scope' => [],
            },
            'overwrite-reserve-used' => {
                'type' => 'integer',
                'flags' => 4,
                'scope' => [],
            },
            'quota-committed-space' => {
                'type' => 'integer',
                'flags' => 4,
                'scope' => [],
            },
            'snapshot-reserve-avail' => {
                'type' => 'integer',
                'flags' => 4,
                'scope' => [],
            },
            'snapshot-reserve-days-until-full' => {
                'type' => 'integer',
                'flags' => 4,
                'scope' => [],
            },
            'snapshot-reserve-total' => {
                'type' => 'integer',
                'flags' => 4,
                'scope' => [],
            },
            'snapshot-reserve-used' => {
                'type' => 'integer',
                'flags' => 4,
                'scope' => [],
            },
            'snapshot-reserve-used-per-day' => {
                'type' => 'integer',
                'flags' => 4,
                'scope' => [],
            },
            'total' => {
                'type' => 'integer',
                'flags' => 4,
                'scope' => [],
            },
        },
    },
    'cifs-domain-info' => {
        'category' => 'vserver',
        'fields' => {
            'cifs-dns-domain-name' => {
                'type' => 'string',
                'flags' => 0,
                'scope' => [],
            },
            'cifs-domain-name' => {
                'type' => 'string',
                'flags' => 0,
                'scope' => [],
            },
        },
    },
    'dns-domain-name' => {
        'category' => 'vserver',
        'fields' => {
        },
    },
    'name-server-switch' => {
        'category' => 'vserver',
        'fields' => {
        },
    },
    'vserver-info' => {
        'category' => 'vserver',
        'fields' => {
            'aggr-list' => {
                'type' => 'resource-key',
                'flags' => 2,
                'scope' => [],
            },
            'cifs-domain-info' => {
                'type' => 'cifs-domain-info',
                'flags' => 5,
                'scope' => [],
            },
            'cluster-name' => {
                'type' => 'string',
                'flags' => 0,
                'scope' => [],
            },
            'cluster-resource-key' => {
                'type' => 'resource-key',
                'flags' => 0,
                'scope' => [],
            },
            'dns-domains' => {
                'type' => 'dns-domain-name',
                'flags' => 6,
                'scope' => [],
            },
            'is-dns-enabled' => {
                'type' => 'boolean',
                'flags' => 4,
                'scope' => [],
            },
            'is-kerberos-enabled' => {
                'type' => 'boolean',
                'flags' => 4,
                'scope' => [],
            },
            'is-ldap-client-enabled' => {
                'type' => 'boolean',
                'flags' => 4,
                'scope' => [],
            },
            'is-nis-enabled' => {
                'type' => 'boolean',
                'flags' => 4,
                'scope' => [],
            },
            'is-repository' => {
                'type' => 'boolean',
                'flags' => 0,
                'scope' => [],
            },
            'name-server-switches' => {
                'type' => 'name-server-switch',
                'flags' => 2,
                'scope' => [],
            },
            'nis-domain-name' => {
                'type' => 'string',
                'flags' => 4,
                'scope' => [],
            },
            'root-volume-name' => {
                'type' => 'string',
                'flags' => 0,
                'scope' => [],
            },
            'service-statuses' => {
                'type' => 'vserver-service-status',
                'flags' => 3,
                'scope' => [],
            },
            'vserver-name' => {
                'type' => 'string',
                'flags' => 0,
                'scope' => [],
            },
            'vserver-resource-key' => {
                'type' => 'resource-key',
                'flags' => 0,
                'scope' => [],
            },
            'vserver-state' => {
                'type' => 'string',
                'flags' => 0,
                'scope' => [],
            },
            'vserver-status' => {
                'type' => 'obj-status',
                'flags' => 0,
                'scope' => [],
            },
        },
    },
    'vserver-service-status' => {
        'category' => 'vserver',
        'fields' => {
            'service' => {
                'type' => 'string',
                'flags' => 4,
                'scope' => [],
            },
            'status' => {
                'type' => 'string',
                'flags' => 4,
                'scope' => [],
            },
        },
    },
};

sub new {
    my $self = {'apis' => $APIS, 'typedefs' => $TYPEDEFS};
    bless $self;
    return $self;
}
sub GetApi {
    my ($self, $name) = @_;
    my $type = ref($self) || die "$self is not an object";
    my $api = $self->{apis}->{$name} || die "No definition for API $name found";
    return $api;
}
sub GetTypedef {
    my ($self, $name) = @_;
    my $type = ref($self) || die "$self is not an object";
    my $api = $self->{typedefs}->{$name} || die "No definition for typedef $name found";
    return $api;
}
sub IsTypedefFlag {
    my ($self, $flag) = @_;
    return ($flag & FIELD_TYPEDEF) == FIELD_TYPEDEF;
}

sub IsArrayFlag {
    my ($self, $flag) = @_;
    return ($flag & FIELD_ARRAY) == FIELD_ARRAY;
}

sub IsEncryptedFlag {
    my ($self, $flag) = @_;
    return ($flag & FIELD_ENCRYPTED) == FIELD_ENCRYPTED;
}

1;


__END__

=head1 NAME

OCUMAPI - Contains the definitions and description of API Bindings for OnCommand Unified Manager server 6.0 or later

=head1 SYNOPSIS

	 my $s = NaServer->new($server, 1, 0); # create NaServer (server context)
	 $s->set_admin_user('admin', 'password'); # provide username and password
	 $s->set_server_type('OCUM'); # set the server type to OCUM for OnCommand Unified Manager 6.0 or later

	 eval{ 
		 my $output = $s->system_about(); # use binding for system-about API
		 print "OCUM server version is: $output->{version}\n"; # extract the required parameter from output

	 };
	 if($@) { # check for any exception
		 my ($error_reason, $error_code) = $@ =~ /(.+)\s\((\d+)\)/;  # parse out error reason and error code
		 print "Error Reason: $error_reason  Code: $error_code\n"
	 }

=head1 DESCRIPTION

NetApp Manageability SDK 5.2 provides support for Perl API bindings for both Data ONTAP APIs and OnCommand Unified Manager APIs.
The Perl API bindings libraries contain interfaces to establish a connection with either the Data ONTAP server or the OnCommand Unified Manager server.
By using these libraries, you can create Perl applications to access and manage the Data ONTAP server or OnCommand Unified Manager server.

NetApp Manageability SDK 5.2 Perl API bindings provide a runtime library NaServer.pm, which is available at <installation_folder>/lib/perl/NetApp.
This library file enables you to establish a server connection, send requests and receive responses, and interpret error messages.
Each binding can be called as a subroutine of NaServer module which in turn invokes the corresponding Data ONTAP or OnCommand Unified Manager API.



=head1 API BINDINGS



=head2 aggregate_iter



=begin html

Iterate over existing aggregates.

=end html



B<Inputs>

=over 2

=item * I<max-records>  =>   B<integer, optional>

=begin html

<br>The maximum number of records per return batch the caller wants to receive. The server may return smaller batch sizes based on performance constraints. If this field is not provided, then the server will return default number of records based on server performance.

=end html

=back



=over 2

=item * I<resource-filter>  =>   B<resource-key, optional>

=begin html

<br>Resource by which to filter the result set. Any resource-filters specified in the first call must be included in subsequent calls. The allowed object types for this argument are: <ul> <li> cluster <li> cluster node <li> aggregate </ul> If resource-filter identifies a aggregate, that single aggregate will be returned. If resource-filter resolves to more than one aggregate, all of them will be returned. If no resource-filter is provided, all aggregates will be listed.

=end html

=back



=over 2

=item * I<tag>  =>   B<string, optional>

=begin html

<br>Specify the tag from the last call. It is not specified for the first call. For subsequent calls, copy values from the 'next-tag' obtained from the previous call. Any resource-filters specified in the first call must be included in subsequent calls.

=end html

=back



B<Outputs>

=over 2

=item * I<next-tag>  =>   B<string, optional>

=begin html

<br>Tag for the next call. Not present when there are no more objects to return.

=end html

=back



=over 2

=item * I<num-records>  =>   B<integer>

=begin html

<br>The number of records returned in this call.

=end html

=back



=over 2

=item * I<records>  =>   B<L<"aggregate-info">[], optional>

=begin html

<br>The list of records.

=end html

=back



=head2 cluster_iter



=begin html

Iterate over clusters.

=end html



B<Inputs>

=over 2

=item * I<max-records>  =>   B<integer, optional>

=begin html

<br>The maximum number of records per return batch the caller wants to receive. The server may return smaller batch sizes based on performance constraints. If this field is not provided, then the server will return default number of records based on server performance.

=end html

=back



=over 2

=item * I<resource-filter>  =>   B<resource-key, optional>

=begin html

<br>Resource by which to filter the result set. Any resource-filters specified in the first call must be included in subsequent calls. The allowed object types for this argument are: <ul> <li> cluster </ul> If resource-filter identifies a cluster, that single cluster will be returned. If resource-filter resolves to more than one cluster, all of them will be returned. If no resource-filter is provided, all clusters will be listed.

=end html

=back



=over 2

=item * I<tag>  =>   B<string, optional>

=begin html

<br>Specify the tag from the last call. It is not specified for the first call. For subsequent calls, copy values from the 'next-tag' obtained from the previous call. Any resource-filters specified in the first call must be included in subsequent calls.

=end html

=back



B<Outputs>

=over 2

=item * I<next-tag>  =>   B<string, optional>

=begin html

<br>Tag for the next call. Not present when there are no more objects to return.

=end html

=back



=over 2

=item * I<num-records>  =>   B<integer>

=begin html

<br>The number of records returned in this call.

=end html

=back



=over 2

=item * I<records>  =>   B<L<"cluster-info">[], optional>

=begin html

<br>The list of records.

=end html

=back



=head2 cluster_node_iter



=begin html

Iterate over cluster nodes.

=end html



B<Inputs>

=over 2

=item * I<max-records>  =>   B<integer, optional>

=begin html

<br>The maximum number of records per return batch the caller wants to receive. The server may return smaller batch sizes based on performance constraints. If this field is not provided, then the server will return default number of records based on server performance.

=end html

=back



=over 2

=item * I<resource-filter>  =>   B<resource-key, optional>

=begin html

<br>Resource by which to filter the result set. Any resource-filters specified in the first call must be included in subsequent calls. The allowed object types for this argument are: <ul> <li> cluster <li> cluster node </ul> If resource-filter identifies a cluster node, that single cluster node will be returned. If resource-filter resolves to more than one cluster node, all of them will be returned. If no resource-filter is provided, all cluster nodes will be listed.

=end html

=back



=over 2

=item * I<tag>  =>   B<string, optional>

=begin html

<br>Specify the tag from the last call. It is not specified for the first call. For subsequent calls, copy values from the 'next-tag' obtained from the previous call. Any resource-filters specified in the first call must be included in subsequent calls.

=end html

=back



B<Outputs>

=over 2

=item * I<next-tag>  =>   B<string, optional>

=begin html

<br>Tag for the next call. Not present when there are no more objects to return.

=end html

=back



=over 2

=item * I<num-records>  =>   B<integer>

=begin html

<br>The number of records returned in this call.

=end html

=back



=over 2

=item * I<records>  =>   B<L<"cluster-node-info">[], optional>

=begin html

<br>The list of records.

=end html

=back



=head2 dp_relationship_iter



=begin html

Lists data protection relationships. For example, SnapVault or SnapMirror relationships. List relationships for a single storage service connection or for a particular source or destination name or id.

=end html



B<Inputs>

=over 2

=item * I<is-managed>  =>   B<boolean, optional>

=begin html

<br>If true, only list relationships which are managed by a storage-service. If false, only list relationships which are not in a storage service. If unspecified, list all relationships.

=end html

=back



=over 2

=item * I<max-records>  =>   B<integer, optional>

=begin html

<br>The maximum number of records per return batch the caller wants to receive. The server may return smaller batch sizes based on performance constraints. If this field is not provided, then the server will return default number of records based on server performance.

=end html

=back



=over 2

=item * I<relationship-resource-key>  =>   B<resource-key, optional>

=begin html

<br>Resource key of relationship. relationship-resource-key cannot be specified with any other inputs.

=end html

=back



=over 2

=item * I<relationship-states>  =>   B<relationship-state[], optional>

=begin html

<br>If specified, only the relationships in any of these states are returned. If not present, do not filter by state.

=end html

=back



=over 2

=item * I<relationship-statuses>  =>   B<relationship-status[], optional>

=begin html

<br>If specified, only the relationships in any of these statuses are returned. If not present, do not filter by status.

=end html

=back



=over 2

=item * I<relationship-type>  =>   B<relationship-type, optional>

=begin html

<br>If present, list only relationships of specified type. If not present, do not filter by type.

=end html

=back



=over 2

=item * I<source-or-destination-resource-key>  =>   B<resource-key, optional>

=begin html

<br>Resource key of either a source or a destination object. If empty, all relationships are listed. The source or destination object must be either a Volume or Vserver. If Vserver is specified, relationships for all volumes in that Vserver are listed.

=end html

=back



=over 2

=item * I<storage-service-connection-resource-key>  =>   B<resource-key, optional>

=begin html

<br>Resource key of the storage service connection. If present, only relationships on the specified connection will be listed. storage-service-connection-resource-key cannot be specified with storage-service-resource-key and is-managed inputs.

=end html

=back



=over 2

=item * I<storage-service-resource-key>  =>   B<resource-key, optional>

=begin html

<br>Resource key of storage service. Lists relationships managed by the storage service. storage-service-resource-key cannot be specified with is-managed, and storage-service-connection-resource-key input.

=end html

=back



=over 2

=item * I<tag>  =>   B<string, optional>

=begin html

<br>Specify the tag from the last call. It is not specified for the first call. For subsequent calls, copy values from the 'next-tag' obtained from the previous call. Any resource-filters specified in the first call must be included in subsequent calls.

=end html

=back



B<Outputs>

=over 2

=item * I<next-tag>  =>   B<string, optional>

=begin html

<br>Tag for the next call. Not present when there are no more objects to return.

=end html

=back



=over 2

=item * I<num-records>  =>   B<integer>

=begin html

<br>The number of records returned in this call.

=end html

=back



=over 2

=item * I<records>  =>   B<L<"dp-relationship-info">[], optional>

=begin html

<br>The list of records.

=end html

=back



=head2 dp_restore_start



=begin html

Starts a restore/retrieval operation on part of a storage object. This API copies storage objects (files, LUNS, directories, qtrees, and volumes) from a given Snapshot copy to a specified location. <p> Users can run one of the following APIs to obtain the source snapshot resource key. <ol> <li>resource-lookup</li> <li>snapshot-get-location</li> </ol> <p> This API returns the job-id of the job created for the restore operation. The job ID can be used to lookup detailed information on the progress of the restore operation.

=end html



B<Inputs>

=over 2

=item * I<restore-requests>  =>   B<L<"dp-restore-request-info">[]>

=begin html

<br>List of the objects to be restored.

=end html

=back



B<Outputs>

=over 2

=item * I<job-id>  =>   B<job-id>

=begin html

<br>The identification of the job created by this API request. The job is a manifest that expresses the set of different tasks and the sequence in which they are executed in order to accomplish a high level work-flow.

=end html

=back



=head2 disk_iter



=begin html

Iterate over disks.

=end html



B<Inputs>

=over 2

=item * I<max-records>  =>   B<integer, optional>

=begin html

<br>The maximum number of records per return batch the caller wants to receive. The server may return smaller batch sizes based on performance constraints. If this field is not provided, then the server will return default number of records based on server performance.

=end html

=back



=over 2

=item * I<resource-filter>  =>   B<resource-key, optional>

=begin html

<br>Resource by which to filter the result set. Any resource-filters specified in the first call must be included in subsequent calls. The allowed object types for this argument are: <ul> <li> cluster <li> cluster node <li> aggregate <li> disk </ul> If resource-filter identifies a disk, that single disk will be returned. If resource-filter resolves to more than one disk, all of them will be returned. If no resource-filter is provided, all disks will be listed.

=end html

=back



=over 2

=item * I<tag>  =>   B<string, optional>

=begin html

<br>Specify the tag from the last call. It is not specified for the first call. For subsequent calls, copy values from the 'next-tag' obtained from the previous call. Any resource-filters specified in the first call must be included in subsequent calls.

=end html

=back



B<Outputs>

=over 2

=item * I<next-tag>  =>   B<string, optional>

=begin html

<br>Tag for the next call. Not present when there are no more objects to return.

=end html

=back



=over 2

=item * I<num-records>  =>   B<integer>

=begin html

<br>The number of records returned in this call.

=end html

=back



=over 2

=item * I<records>  =>   B<L<"disk-info">[], optional>

=begin html

<br>The list of records.

=end html

=back



=head2 disk_physical_summary_get



=begin html

Retrieve data, parity, spare, and total space usage (by number of disks and bytes) for the specified aggregate, cluster, or cluster node. For a V-Series storage system, data LUNs, spare LUNs and total LUNs are also reported, if array LUNs exist. For an aggregate, spares and spare space is not reported. <br> Error Conditions: <ul> <li> EINVALIDINPUT - When invalid input specified. <li> EOBJECTNOTFOUND - When the object-name-or-id does not correspond to an appropriate object. <li> ENODISKSFOUND - When no disk information has been retrieved yet for the object-name-or-id. </ul>

=end html



B<Inputs>

=over 2

=item * I<resource-filter>  =>   B<resource-key>

=begin html

<br>Resource key of an object to list the physical summary for. The allowed object types for this argument are: <ul> <li> cluster <li> cluster node <li> aggregate </ul>

=end html

=back



B<Outputs>

=over 2

=item * I<disk-info>  =>   B<L<"disk-physical-summary-disk-info">, optional>

=begin html

<br>Disk information. This item is returned for disk based systems.

=end html

=back



=over 2

=item * I<lun-info>  =>   B<L<"disk-physical-summary-lun-info">, optional>

=begin html

<br>LUN information. This item is returned for V-Series systems.

=end html

=back



=head2 event_acknowledge



=begin html

Acknowledge events. This terminates repeated notifications due to that event.

=end html



B<Inputs>

=over 2

=item * I<event-id-list>  =>   B<event-id-type[]>

=begin html

<br>The event identifiers to be acknowledged.

=end html

=back



B<Outputs>

=over 2

=item * I<events-acknowledged-list>  =>   B<L<"event-action-info">[]>

=begin html

<br>List of timestamps for acknowledged events along with any errors.

=end html

=back



=head2 event_assign



=begin html

Assign the events to the specified user.

=end html



B<Inputs>

=over 2

=item * I<event-assignee-name>  =>   B<string>

=begin html

<br>Name of the user to which the events are to be assigned.

=end html

=back



=over 2

=item * I<event-id-list>  =>   B<event-id-type[]>

=begin html

<br>The event identifiers to be assigned.

=end html

=back



B<Outputs>

=over 2

=item * I<assigned-events-list>  =>   B<L<"event-action-info">[]>

=begin html

<br>List of timestamps for assigned events and error codes in case of failure.

=end html

=back



=head2 event_iter



=begin html

Iterate over events ordered by event-id.

=end html



B<Inputs>

=over 2

=item * I<event-id>  =>   B<integer, optional>

=begin html

<br>The identifier of the event that is to be listed.

=end html

=back



=over 2

=item * I<event-impact-levels>  =>   B<event-impact-level[], optional>

=begin html

<br>Lists events of the specified impact levels.

=end html

=back



=over 2

=item * I<event-severities>  =>   B<obj-status[], optional>

=begin html

<br>Lists events of the specified severities.

=end html

=back



=over 2

=item * I<event-state-filter-list>  =>   B<event-state[], optional>

=begin html

<br>List events of specified states. This filter can be specified in addition to other filters. if not specified, events of all states are returned.

=end html

=back



=over 2

=item * I<event-type-filter-list>  =>   B<L<"event-type-filter">[], optional>

=begin html

<br>If specified, the list of event types (interpreted as prefixes) will filter which events are returned. Events not matching will not be returned. Default is empty, meaning that all event types match.

=end html

=back



=over 2

=item * I<greater-than-id>  =>   B<integer, optional>

=begin html

<br>If specified, the API will only return events whose identifier is greater than this value. Default is 0.

=end html

=back



=over 2

=item * I<include-notes>  =>   B<boolean, optional>

=begin html

<br>If true, specifies that events should be returned with their related notes. The default is false, meaning that events are returned without notes.

=end html

=back



=over 2

=item * I<max-records>  =>   B<integer, optional>

=begin html

<br>The maximum number of records per return batch the caller wants to receive. The server may return smaller batch sizes based on performance constraints. If this field is not provided, then the server will return default number of records based on server performance.

=end html

=back



=over 2

=item * I<source>  =>   B<resource-key, optional>

=begin html

<br>Lists events against the specified source. If the provided resource key specifies a group, lists events against all members in that group.

=end html

=back



=over 2

=item * I<tag>  =>   B<string, optional>

=begin html

<br>Specify the tag from the last call. It is not specified for the first call. For subsequent calls, copy values from the 'next-tag' obtained from the previous call. Any resource-filters specified in the first call must be included in subsequent calls.

=end html

=back



=over 2

=item * I<time-range>  =>   B<L<"event-timestamp-range">, optional>

=begin html

<br>Lists all events which were generated in the range specified. Default is all events. time-out will be ignored if time-range is set.

=end html

=back



=over 2

=item * I<timeout>  =>   B<integer, optional>

=begin html

<br>Number of seconds after which the API should terminate, if no events are received matching the input criteria. If the value is 0, or not specified, the API will terminate immediately (acting as an instantaneous poll for events). <P> If the timeout expires with no matching events, the API returns successfully with an empty list of events. <P> If a specific event-id is specified, then the timeout value is ignored. <P> If time-range is set, timeout is also ignored.

=end html

=back



B<Outputs>

=over 2

=item * I<next-tag>  =>   B<string, optional>

=begin html

<br>Tag for the next call. Not present when there are no more objects to return.

=end html

=back



=over 2

=item * I<num-records>  =>   B<integer>

=begin html

<br>The number of records returned in this call.

=end html

=back



=over 2

=item * I<records>  =>   B<L<"event-info">[], optional>

=begin html

<br>The list of records.

=end html

=back



=head2 event_purge



=begin html

Purges the events that are older than the specified interval.

=end html



B<Inputs>

=over 2

=item * I<interval>  =>   B<integer>

=begin html

<br>The time interval in seconds. All non-current events with timestamp prior to the given interval will be purged.

=end html

=back



B<Outputs>

=over 2

=item * I<cutoff-timestamp>  =>   B<timestamp>

=begin html

<br>The timestamp prior to which all the non-current events were purged.

=end html

=back



=over 2

=item * I<purged-events-count>  =>   B<integer>

=begin html

<br>Number of events purged.

=end html

=back



=head2 event_resolve



=begin html

Resolve events. Terminates repeated notifications due to the event.

=end html



B<Inputs>

=over 2

=item * I<event-id-list>  =>   B<event-id-type[]>

=begin html

<br>The event identifiers to be resolved.

=end html

=back



B<Outputs>

=over 2

=item * I<events-resolved-list>  =>   B<L<"event-action-info">[]>

=begin html

<br>Lists of timestamps for resolved ids along with any error returns.

=end html

=back



=head2 event_status_change_list_iter_end



=begin html

event-status-change-list-iter-end is used to indicate that the temporary store used to support the event-status-change-list-iter-next API for the particular tag is no longer necessary.

=end html



B<Inputs>

=over 2

=item * I<tag>  =>   B<string>

=begin html

<br>An internal opaque handle.

=end html

=back



B<Outputs>

=over 2

=item * None

=back



=head2 event_status_change_list_iter_next



=begin html

The event-status-change-list-iter-next API is used to iterate over the list of events stored in the temporary store created by the event-status-change-list-iter-start API. <p> A cursor is maintained pointing to the last record returned. Subsequent calls to this API will return the records after the cursor up to the specified "maximum" or number of actual records left.

=end html



B<Inputs>

=over 2

=item * I<maximum>  =>   B<integer>

=begin html

<br>The maximum number of events to return.

=end html

=back



=over 2

=item * I<tag>  =>   B<string>

=begin html

<br>An opaque handle used to identify the temporary store created by event-status-change-list-iter-start.

=end html

=back



B<Outputs>

=over 2

=item * I<events>  =>   B<L<"event-info">[]>

=begin html

<br>Array of events.

=end html

=back



=over 2

=item * I<records>  =>   B<integer>

=begin html

<br>The number of records actually returned.

=end html

=back



=head2 event_status_change_list_iter_start



=begin html

List events that had status changes (acknowledged or resolved) within the specified time range. <P> The event-status-change-list-iter-* set of APIs are used to retrieve the list of events that had status changes. <P> The event-status-change-list-iter-start API is used to load the list of events into a temporary store. The API returns a tag to temporary store so that subsequent APIs can be used to iterate over the list in the temporary store. <P> The returned list of events will be sorted according to when they had their status changed (either eventAcked timestamp or eventresolved timestamp). An event that's both acked and resolved within the requested timeframe would appear twice in the returned list of events, because those would count as 2 status changes, and appear in the returned list based on acked timestamp and resolved timestamp respectively. <P> Note that, depending on the input parameters, this API may take up to "timeout" seconds to return. Subsequent calls to event-status-change-list-iter-next() will return immediately.

=end html



B<Inputs>

=over 2

=item * I<max-events>  =>   B<integer, optional>

=begin html

<br>If specified, this is the maximum number of events that the client wishes to receive at once. If set to zero, return all events. The default value of this parameter is 50,000.

=end html

=back



=over 2

=item * I<time-range>  =>   B<L<"event-timestamp-range">>

=begin html

<br>Lists all events which were generated in the range specified. <P> If the end-time of the time-range is not sometime in the future, time-out will be ignored.

=end html

=back



=over 2

=item * I<timeout>  =>   B<integer, optional>

=begin html

<br>Number of seconds after which the API should terminate, if no events are received matching the input criteria. If the value is 0, or not specified, the API will terminate immediately (acting as an instantaneous poll for events). <P> If the timeout expires with no matching events, the API returns successfully with an empty list of events.

=end html

=back



B<Outputs>

=over 2

=item * I<records>  =>   B<integer>

=begin html

<br>The number of events matching the specified input criteria. This is the number of records that will be returned by subsequent calls to event-status-change-list-iter-next().

=end html

=back



=over 2

=item * I<tag>  =>   B<string>

=begin html

<br>An opaque handle you must pass to event-status-change-list-iter-next() and event-status-change-list-iter-end() to refer to this list of events.

=end html

=back



=head2 event_unassign



=begin html

Unassign the owner of an event or a set of events.

=end html



B<Inputs>

=over 2

=item * I<event-id-list>  =>   B<event-id-type[]>

=begin html

<br>Identifiers of the events whose owner has to be unassigned.

=end html

=back



B<Outputs>

=over 2

=item * I<unassigned-events-list>  =>   B<L<"event-action-info">[]>

=begin html

<br>List consisting only identifiers of events which are unassigned. For any identifiers which were unable to be processed, an error codes with error message specifying the failure reason will also be in the output.

=end html

=back



=head2 igroup_iter



=begin html

Iterate over initiator groups.

=end html



B<Inputs>

=over 2

=item * I<max-records>  =>   B<integer, optional>

=begin html

<br>The maximum number of records per return batch the caller wants to receive. The server may return smaller batch sizes based on performance constraints. If this field is not provided, then the server will return default number of records based on server performance.

=end html

=back



=over 2

=item * I<resource-filter>  =>   B<resource-key, optional>

=begin html

<br>Resource by which to filter the result set. Any resource-filters specified in the first call must be included in subsequent calls. The allowed object types for this argument are: <ul> <li> cluster <li> vserver <li> lun <li> igroup </ul> If resource-filter identifies a igroup, that single igroup will be returned. If resource-filter resolves to more than one igroup, all of them will be returned. If no resource-filter is provided, all igroups will be listed.

=end html

=back



=over 2

=item * I<tag>  =>   B<string, optional>

=begin html

<br>Specify the tag from the last call. It is not specified for the first call. For subsequent calls, copy values from the 'next-tag' obtained from the previous call. Any resource-filters specified in the first call must be included in subsequent calls.

=end html

=back



B<Outputs>

=over 2

=item * I<next-tag>  =>   B<string, optional>

=begin html

<br>Tag for the next call. Not present when there are no more objects to return.

=end html

=back



=over 2

=item * I<num-records>  =>   B<integer>

=begin html

<br>The number of records returned in this call.

=end html

=back



=over 2

=item * I<records>  =>   B<L<"igroup-info">[], optional>

=begin html

<br>The list of records.

=end html

=back



=head2 job_abort



=begin html

Abort a running management job.

=end html



B<Inputs>

=over 2

=item * I<job-id>  =>   B<job-id>

=begin html

<br>Identifier for a management job.

=end html

=back



B<Outputs>

=over 2

=item * None

=back



=head2 job_delete



=begin html

Delete the results of a completed job.

=end html



B<Inputs>

=over 2

=item * I<job-id>  =>   B<job-id>

=begin html

<br>Identifier for a management job.

=end html

=back



B<Outputs>

=over 2

=item * None

=back



=head2 job_iter



=begin html

Retrieve information about management jobs. <ul> <li> More than one job may be returned. <li> If job-id or task-id is specified, it should be the only query criterion. If other inputs are specified as multiple criteria, they are ANDed. In other words, the intersection of the jobs specified by the matching criteria is returned. </ul>

=end html



B<Inputs>

=over 2

=item * I<job-id>  =>   B<job-id, optional>

=begin html

<br>Specify the job identity matching criteria. If other inputs are specified with job-id, EINVALIDINPUT error is returned.

=end html

=back



=over 2

=item * I<max-records>  =>   B<integer, optional>

=begin html

<br>The maximum number of records per return batch the caller wants to receive. The server may return smaller batch sizes based on performance constraints. If this field is not provided, then the server will return default number of records based on server performance.

=end html

=back



=over 2

=item * I<state>  =>   B<job-state, optional>

=begin html

<br>Specify the job state matching criteria.

=end html

=back



=over 2

=item * I<status>  =>   B<job-status, optional>

=begin html

<br>Specify the job status matching criteria.

=end html

=back



=over 2

=item * I<tag>  =>   B<string, optional>

=begin html

<br>Specify the tag from the last call. It is not specified for the first call. For subsequent calls, copy values from the 'next-tag' obtained from the previous call. Any resource-filters specified in the first call must be included in subsequent calls.

=end html

=back



=over 2

=item * I<task-id>  =>   B<job-task-id, optional>

=begin html

<br>Specify the task identity matching criteria. If other inputs are specified with task-id, EINVALIDINPUT error is returned.

=end html

=back



=over 2

=item * I<type>  =>   B<job-type, optional>

=begin html

<br>Specify the job type matching criteria.

=end html

=back



B<Outputs>

=over 2

=item * I<next-tag>  =>   B<string, optional>

=begin html

<br>Tag for the next call. Not present when there are no more objects to return.

=end html

=back



=over 2

=item * I<num-records>  =>   B<integer>

=begin html

<br>The number of records returned in this call.

=end html

=back



=over 2

=item * I<records>  =>   B<L<"job-info">[], optional>

=begin html

<br>The list of records.

=end html

=back



=head2 job_task_iter



=begin html

Starts iteration to list tasks and their status. <ul> <li> More than one tasks may be returned. <li> The criteria are ANDed. That is: we return the intersection of the tasks specified by the matching criteria if input is specified other than task-id. No other input is allowed with Task-id input, in case other input is specified with task-id then EINVALIDINPUT error is returned. If specified job-id is not found then EJOBDOESNOTEXIST error is returned. </ul>

=end html



B<Inputs>

=over 2

=item * I<job-id>  =>   B<job-id, optional>

=begin html

<br>Job identity matching criteria.

=end html

=back



=over 2

=item * I<max-records>  =>   B<integer, optional>

=begin html

<br>The maximum number of records per return batch the caller wants to receive. The server may return smaller batch sizes based on performance constraints. If this field is not provided, then the server will return default number of records based on server performance.

=end html

=back



=over 2

=item * I<state>  =>   B<task-state, optional>

=begin html

<br>Task state matching criteria.

=end html

=back



=over 2

=item * I<status>  =>   B<task-status, optional>

=begin html

<br>Task status matching criteria.

=end html

=back



=over 2

=item * I<tag>  =>   B<string, optional>

=begin html

<br>Specify the tag from the last call. It is not specified for the first call. For subsequent calls, copy values from the 'next-tag' obtained from the previous call. Any resource-filters specified in the first call must be included in subsequent calls.

=end html

=back



=over 2

=item * I<task-id>  =>   B<job-task-id, optional>

=begin html

<br>Task identity matching criteria.

=end html

=back



=over 2

=item * I<task-type>  =>   B<string, optional>

=begin html

<br>Task type matching criteria.

=end html

=back



B<Outputs>

=over 2

=item * I<next-tag>  =>   B<string, optional>

=begin html

<br>Tag for the next call. Not present when there are no more objects to return.

=end html

=back



=over 2

=item * I<num-records>  =>   B<integer>

=begin html

<br>The number of records returned in this call.

=end html

=back



=over 2

=item * I<records>  =>   B<L<"job-task-info">[], optional>

=begin html

<br>The list of records.

=end html

=back



=head2 job_wait_for_state



=begin html

Blocks until a specified timeout period elapses or until a job state is reached by at least one job.

=end html



B<Inputs>

=over 2

=item * I<job-list>  =>   B<job-id[]>

=begin html

<br>List of job-ids to wait for to reach the specified state. If a listed job-id is not found, then EJOBDOESNOTEXIST is returned along with the first invalid/missing job-id. The API blocks until at least one of jobs reaches the specified state.

=end html

=back



=over 2

=item * I<state>  =>   B<job-state, optional>

=begin html

<br>Specify the job state to wait for. If state specified is other than 'completed' then E_FILTER_ARGUMENT_NOT_IMPLEMENTED error will be returned. Default is 'completed'. The 'completed' state implies all terminal job states viz. 'completed' and 'aborted'.

=end html

=back



=over 2

=item * I<wait-for-state-timeout>  =>   B<integer>

=begin html

<br>Number of seconds to wait for job(s) to reach the specified state. The API blocks until at least one of the jobs reaches the specified state. Jobs already in the specified state will cause this API to return immediately with the corresponding list of job-ids. If timeout occurs before any job reaches the specified state, the API returns an empty job-id list. <p> If wait-for-state-timeout is specified as '0' then API returns immediately without blocking.

=end html

=back



B<Outputs>

=over 2

=item * I<job-list>  =>   B<job-id[]>

=begin html

<br>List of job-ids corresponding to the job(s) matching the specified state.

=end html

=back



=head2 lun_iter



=begin html

Iterate over a list of lun objects.

=end html



B<Inputs>

=over 2

=item * I<max-records>  =>   B<integer, optional>

=begin html

<br>The maximum number of records per return batch the caller wants to receive. The server may return smaller batch sizes based on performance constraints. If this field is not provided, then the server will return default number of records based on server performance.

=end html

=back



=over 2

=item * I<resource-filter>  =>   B<resource-key, optional>

=begin html

<br>Resource by which to filter the result set. Any resource-filters specified in the first call must be included in subsequent calls. The allowed object types for this argument are: <ul> <li> resource-group <li> cluster <li> vserver <li> aggregate <li> volume <li> qtree <li> lun </ul> If resource-filter identifies a lun, that single lun will be returned. If resource-filter resolves to more than one lun, all of them will be returned. If no resource-filter is provided, all luns will be listed.

=end html

=back



=over 2

=item * I<tag>  =>   B<string, optional>

=begin html

<br>Specify the tag from the last call. It is not specified for the first call. For subsequent calls, copy values from the 'next-tag' obtained from the previous call. Any resource-filters specified in the first call must be included in subsequent calls.

=end html

=back



B<Outputs>

=over 2

=item * I<next-tag>  =>   B<string, optional>

=begin html

<br>Tag for the next call. Not present when there are no more objects to return.

=end html

=back



=over 2

=item * I<num-records>  =>   B<integer>

=begin html

<br>The number of records returned in this call.

=end html

=back



=over 2

=item * I<records>  =>   B<L<"lun-info">[], optional>

=begin html

<br>The list of records.

=end html

=back



=head2 net_interface_iter



=begin html

Iterate over logical interfaces. This API lists ethernet interfaces only. It does not list FCP interfaces.

=end html



B<Inputs>

=over 2

=item * I<is-cluster-interface-only>  =>   B<boolean, optional>

=begin html

<br>If this flag is set, only the ethernet interfaces owned by the cluster are returned. Interfaces owned by a vserver or cluster node will not be returned. This input can only be provided with a resource-filter value for a cluster.

=end html

=back



=over 2

=item * I<max-records>  =>   B<integer, optional>

=begin html

<br>The maximum number of records per return batch the caller wants to receive. The server may return smaller batch sizes based on performance constraints. If this field is not provided, then the server will return default number of records based on server performance.

=end html

=back



=over 2

=item * I<resource-filter>  =>   B<resource-key, optional>

=begin html

<br>Resource by which to filter the result set. Any resource-filters specified in the first call must be included in subsequent calls. The allowed object types for this argument are: <ul> <li> cluster <li> vserver <li> cluster_node <li> network_lif </ul> If resource-filter identifies a network_lif, that single network_lif will be returned. If resource-filter resolves to more than one network_lif, all of them will be returned. If no resource-filter is provided, all network_lifs will be listed.

=end html

=back



=over 2

=item * I<tag>  =>   B<string, optional>

=begin html

<br>Specify the tag from the last call. It is not specified for the first call. For subsequent calls, copy values from the 'next-tag' obtained from the previous call. Any resource-filters specified in the first call must be included in subsequent calls.

=end html

=back



B<Outputs>

=over 2

=item * I<next-tag>  =>   B<string, optional>

=begin html

<br>Tag for the next call. Not present when there are no more objects to return.

=end html

=back



=over 2

=item * I<num-records>  =>   B<integer>

=begin html

<br>The number of records returned in this call.

=end html

=back



=over 2

=item * I<records>  =>   B<L<"net-interface-info">[], optional>

=begin html

<br>The list of records.

=end html

=back



=head2 portset_iter



=begin html

Iterate over portsets.

=end html



B<Inputs>

=over 2

=item * I<max-records>  =>   B<integer, optional>

=begin html

<br>The maximum number of records per return batch the caller wants to receive. The server may return smaller batch sizes based on performance constraints. If this field is not provided, then the server will return default number of records based on server performance.

=end html

=back



=over 2

=item * I<resource-filter>  =>   B<resource-key, optional>

=begin html

<br>Resource by which to filter the result set. Any resource-filters specified in the first call must be included in subsequent calls. The allowed object types for this argument are: <ul> <li> resource group <li> cluster <li> vserver <li> portset <li> initiator group </ul> If resource-filter identifies a portset, that single portset will be returned. If resource-filter resolves to more than one portset, all of them will be returned. If no resource-filter is provided, all portsets will be listed.

=end html

=back



=over 2

=item * I<tag>  =>   B<string, optional>

=begin html

<br>Specify the tag from the last call. It is not specified for the first call. For subsequent calls, copy values from the 'next-tag' obtained from the previous call. Any resource-filters specified in the first call must be included in subsequent calls.

=end html

=back



B<Outputs>

=over 2

=item * I<next-tag>  =>   B<string, optional>

=begin html

<br>Tag for the next call. Not present when there are no more objects to return.

=end html

=back



=over 2

=item * I<num-records>  =>   B<integer>

=begin html

<br>The number of records returned in this call.

=end html

=back



=over 2

=item * I<records>  =>   B<L<"portset-info">[], optional>

=begin html

<br>The list of records.

=end html

=back



=head2 resource_lookup



=begin html

Lookup a managed resource by its fully qualified name. Returns the resource key for the managed resource.

=end html



B<Inputs>

=over 2

=item * I<qualified-name>  =>   B<string>

=begin html

<br>The fully qualified name of the managed resource. The format of the qualified name for each resource type is defined as follows ({placeholders} that should be substituted with actual values): Data ONTAP resource types: <ul> <li>aggregate: {cluster-node-name}:{aggregate-name} <li>cluster: {cluster-name} <li>cluster_node: {cluster-node-name} <li>disk: {disk-name} <li>export_policy: {vserver-name}:{export-policy-name} <li>lun: {vserver-name}:/{volume-name}/{lun-name} or {vserver-name}:/{volume-name}/{qtree-name}/{lun-name} <li>network_lif: {owner-name}:{lif-name} where {owner-name} can be any of: {cluster-name} or {cluster-node-name} or {vserver-name} <li>network_port: {cluster-node-name}:{network-port-name} <li>qtree: {vserver-name}:/{volume-name}/{qtree-name} <li>snap_mirror: {source-vserver-name}:{source-volume-name} ->{dest-vserver-name}:{dest-volume-name} <li>snapshot: {vserver-name}:/{volume-name}:{snapshot-name} <li>storage_class: {vserver-name}:{storage-class-name} <li>storage_shelf: {cluster-node-name}:{channel-name}:{shelf-identifier} <li>volume: {vserver-name}:/{volume-name} <li>vserver: {vserver-name} </ul> OnCommand resource types: <ul> <li>resource_pool: {resource-pool-name} <li>service_workflow: {service-workflow-name} <li>storage_service: {storage-service-name} <li>storage_service_node: {storage-service-name}:{storage-service-node-name} <li>storage_service_connection: {storage-service-name}:{source-node-name} ->{storage-service-name}:{destination-node-name} </ul>

=end html

=back



=over 2

=item * I<type>  =>   B<resource-type>

=begin html

<br>Specifies the type of the managed resource being looked up. Not all resource types support lookup by name. See the documentation of qualified-name for a list of supported resource types and their name formats.

=end html

=back



B<Outputs>

=over 2

=item * I<resource-key>  =>   B<resource-key>

=begin html

<br>The resource key that represents the managed resource.

=end html

=back



=head2 resource_pool_aggregate_add



=begin html

Add an aggregate to a resource pool. An aggregate may only belong to a single resource pool.

=end html



B<Inputs>

=over 2

=item * I<aggregate>  =>   B<resource-key>

=begin html

<br>The resource key of the aggregate to be added.

=end html

=back



=over 2

=item * I<resource-pool>  =>   B<resource-key>

=begin html

<br>The resource key of the resource pool to which the aggregate is to be added.

=end html

=back



B<Outputs>

=over 2

=item * None

=back



=head2 resource_pool_aggregate_remove



=begin html

Remove an aggregate from a resource pool.

=end html



B<Inputs>

=over 2

=item * I<aggregate>  =>   B<resource-key>

=begin html

<br>The resource key of the aggregate to be removed.

=end html

=back



=over 2

=item * I<resource-pool>  =>   B<resource-key>

=begin html

<br>The resource key of the resource pool to which the aggregate belongs.

=end html

=back



B<Outputs>

=over 2

=item * None

=back



=head2 resource_pool_create



=begin html

Create a new resource pool.

=end html



B<Inputs>

=over 2

=item * I<description>  =>   B<string, optional>

=begin html

<br>Description of the new resource pool.

=end html

=back



=over 2

=item * I<name>  =>   B<string>

=begin html

<br>Name of the new resource pool.

=end html

=back



B<Outputs>

=over 2

=item * I<resource-key>  =>   B<resource-key>

=begin html

<br>The resource key of the newly created resource pool.

=end html

=back



=head2 resource_pool_destroy



=begin html

Destroy an existing resource pool.

=end html



B<Inputs>

=over 2

=item * I<resource-pool>  =>   B<resource-key>

=begin html

<br>The resource key of the resource pool to be destroyed.

=end html

=back



B<Outputs>

=over 2

=item * None

=back



=head2 resource_pool_iter



=begin html

Iterate over resource pools.

=end html



B<Inputs>

=over 2

=item * I<max-records>  =>   B<integer, optional>

=begin html

<br>The maximum number of records per return batch the caller wants to receive. The server may return smaller batch sizes based on performance constraints. If this field is not provided, then the server will return default number of records based on server performance.

=end html

=back



=over 2

=item * I<resource-filter>  =>   B<resource-key, optional>

=begin html

<br>Resource by which to filter the result set. Any resource-filters specified in the first call must be included in subsequent calls. The allowed object types for this argument are: <ul> <li> resource_pool </ul> If resource-filter identifies a resource pool, that single resource pool will be returned. If resource-filter resolves to more than one resource pool, all of them will be returned. If no resource-filter is provided, all resource pools will be listed.

=end html

=back



=over 2

=item * I<tag>  =>   B<string, optional>

=begin html

<br>Specify the tag from the last call. It is not specified for the first call. For subsequent calls, copy values from the 'next-tag' obtained from the previous call. Any resource-filters specified in the first call must be included in subsequent calls.

=end html

=back



B<Outputs>

=over 2

=item * I<next-tag>  =>   B<string, optional>

=begin html

<br>Tag for the next call. Not present when there are no more objects to return.

=end html

=back



=over 2

=item * I<num-records>  =>   B<integer>

=begin html

<br>The number of records returned in this call.

=end html

=back



=over 2

=item * I<records>  =>   B<L<"resource-pool-info">[], optional>

=begin html

<br>The list of records.

=end html

=back



=head2 resource_pool_modify



=begin html

Modify an existing resource pool.

=end html



B<Inputs>

=over 2

=item * I<description>  =>   B<string, optional>

=begin html

<br>Modified description of the resource pool. Specifying this input with a blank value will remove the existing description from the resource pool.

=end html

=back



=over 2

=item * I<name>  =>   B<string, optional>

=begin html

<br>Modified name of the resource pool. Must not match the name of any existing resource pools.

=end html

=back



=over 2

=item * I<resource-pool>  =>   B<resource-key>

=begin html

<br>The resource key of the resource pool to be modified.

=end html

=back



B<Outputs>

=over 2

=item * None

=back



=head2 snapshot_expire



=begin html

Deletes an existing volume snapshot. If the snapshot is currently active (e.g. involved in SnapMirror transfer, baseline snapshot of SnapVault etc.), then the snapshot will be marked as expired. Such expired snapshots will be deleted subsequently when no longer needed.

=end html



B<Inputs>

=over 2

=item * I<snapshot-resource-key>  =>   B<resource-key>

=begin html

<br>Resource key of the volume snapshot to expire. If the snapshot specified is not found on the storage system, ESNAPSHOTNOTFOUND is returned.

=end html

=back



B<Outputs>

=over 2

=item * None

=back



=head2 snapshot_get_location



=begin html

Gets location of the replicas of the requested Snapshot copies.

=end html



B<Inputs>

=over 2

=item * I<snapshot-identifiers>  =>   B<L<"snapshot-identifier">[]>

=begin html

<br>Information about the snapshot copies whose replica locations are being requested. Specified snapshot-identifier is first resolved to a version-uuid and then the snapshot copies for all the volumes currently in the input storage service and connected to the input volume, with the matching version-uuid are returned. You can specify the following combination of attributes in each snapshot-identifier: <ul> <li> version-uuid and volume-resource-key, or <li> snapshot-resource-key only. </ul> Any other combination of these attributes specified in the snapshot-identifier is invalid and EINVALIDINPUT error is returned. If an invalid version-uuid is specified in input snapshot-identifier, empty results will be returned for that identifier.

=end html

=back



=over 2

=item * I<storage-service-node-resource-key>  =>   B<resource-key, optional>

=begin html

<br>Resource key of the storage service node. Location of snapshots are returned for only those volumes which are currently in this storage service node.

=end html

=back



=over 2

=item * I<storage-service-resource-key>  =>   B<resource-key>

=begin html

<br>Resource key of the storage service. Location of snapshots are returned for only those volumes which are currently in this storage service. Matching snapshot locations on the relationships that are relinquished, or on the relationships in a different storage service, are not returned.

=end html

=back



B<Outputs>

=over 2

=item * I<snapshot-location-results>  =>   B<L<"snapshot-location-result-info">[]>

=begin html

<br>Snapshot locations.

=end html

=back



=head2 snapshot_get_metadata



=begin html

Returns metadata associated with a snapshot.

=end html



B<Inputs>

=over 2

=item * I<snapshot-resource-key>  =>   B<resource-key>

=begin html

<br>Resource key of the volume snapshot associated with the metadata.

=end html

=back



B<Outputs>

=over 2

=item * I<metadata>  =>   B<L<"key-value-pair">[]>

=begin html

<br>Opaque metadata for this context. Metadata is usually set and interpreted by an external application. OnCommand Unified Manager does not look into the contents of the metadata.

=end html

=back



=head2 snapshot_has_expired



=begin html

Checks if the specified volume snapshot has expired.

=end html



B<Inputs>

=over 2

=item * I<snapshot-resource-key>  =>   B<resource-key>

=begin html

<br>Resource key of the volume snapshot whose expiration status is being determined. If the snapshot specified is not found on the storage system, ESNAPSHOTNOTFOUND is returned.

=end html

=back



B<Outputs>

=over 2

=item * I<expiration-status>  =>   B<boolean>

=begin html

<br>Returns true if the specified snapshot is currently marked as expired, false otherwise.

=end html

=back



=head2 snapshot_set_metadata



=begin html

Sets metadata for an existing volume snapshot. The metadata is automatically deleted when associated snapshot is removed.

=end html



B<Inputs>

=over 2

=item * I<metadata>  =>   B<L<"key-value-pair">[]>

=begin html

<br>Opaque metadata for this snapshot. Metadata is usually set and interpreted by an external application. OnCommand Unified Manager does not look into the contents of metadata. Existing metadata will be removed if not included in the input. <p> A maximum of 16 key value pairs are allowed per snapshot. If number of entries exceed this number, E_MAX_ENTRY_COUNT_EXCEEDED is returned. <p> Keys in each pair can be 1 to 255 characters in length and are case-sensitive. Duplicate keys are not allowed. Values are opaque to the server and must not exceed 16384 (16k) characters in length. If any of these rules are violated, EINVALIDINPUT error will be returned.

=end html

=back



=over 2

=item * I<snapshot-resource-key>  =>   B<resource-key>

=begin html

<br>Resource key of the volume snapshot to be associated with the metadata.

=end html

=back



B<Outputs>

=over 2

=item * None

=back



=head2 ssl_server_cert_generate



=begin html

Generates the self-signed certificate to be used by the HTTPS port. <p> The newly generated certificate will become active after a reboot. <p> The certificate will be generated with the following parameters: <ul> <li>Public Key Algorithm: RSA</li> <li>Key Length: 2048</li> <li>Signature Algorithm: SHA-256 with RSA Encryption</li> <li>Validity: 5 years</li> </ul>

=end html



B<Inputs>

=over 2

=item * None

=back



B<Outputs>

=over 2

=item * I<certificate>  =>   B<certificate>

=begin html

<br>The generated certificate in Privacy Enhanced Mail (PEM) format.

=end html

=back



=head2 ssl_server_cert_get



=begin html

Retrieves the certificate chain used by the HTTPS port. The certificate chain can be retrieved by anybody.

=end html



B<Inputs>

=over 2

=item * None

=back



B<Outputs>

=over 2

=item * I<certificate-chain>  =>   B<certificate-chain>

=begin html

<br>The certificate chain in Privacy Enhanced Mail (PEM) format.

=end html

=back



=head2 ssl_server_cert_request



=begin html

Creates a PKCS#10 Certification Request from the HTTPS port's certificate that can be submitted to a Certificate Authority for signing. The signed certificate received from a CA can then be imported via ssl-server-cert-set.

=end html



B<Inputs>

=over 2

=item * None

=back



B<Outputs>

=over 2

=item * I<certificate-request>  =>   B<string>

=begin html

<br>The generated PKCS#10 Certification Request in Privacy Enhanced Mail (PEM) format.

=end html

=back



=head2 ssl_server_cert_set



=begin html

Sets the certificate to be used by the HTTPS port. The certificate must be a CA-signed certificate generated from the Certification Request created via ssl-server-cert-request. <p> The newly set certificate will become active after a reboot.

=end html



B<Inputs>

=over 2

=item * I<certificate-chain>  =>   B<certificate-chain>

=begin html

<br>The certificate chain in Privacy Enhanced Mail (PEM) format. Each certificate in the chain from the new certificate to the Certificate Authority must be included.

=end html

=back



B<Outputs>

=over 2

=item * None

=back



=head2 storage_service_cleanup



=begin html

Users can invoke this API when they feel no more need to maintain the member artifacts for any kind of restore purposes. Specified members must not have any active subscriptions. For every specified member, all the relevant data protection relationships and relevant provisioned storage objects are removed from the storage service. Users may also opt to destroy these artifacts from the storage system.

=end html



B<Inputs>

=over 2

=item * I<keep-storage-artifacts>  =>   B<boolean, optional>

=begin html

<br>If true, protection artifacts are removed only from storage service but not destroyed from storage system. If false, protection artifacts are removed from the storage service and destroyed from storage system as well. Default is true.

=end html

=back



=over 2

=item * I<members>  =>   B<resource-key[], optional>

=begin html

<br>Resource keys of the members to clean up. Members must belong to the root node of the storage service, otherwise E_MEMBER_NOT_IN_REQUIRED_NODE error is returned. If specified and 'storage-service-nodes' input is not provided, members should not have any active subscriptions with the storage service, otherwise an E_OBJECT_CURRENTLY_SUBSCRIBED error is returned. If an empty list is provided or this input is not provided, and 'storage-service-nodes' input is absent, then all the unsubscribed members will be cleaned up from the storage service.

=end html

=back



=over 2

=item * I<storage-service-nodes>  =>   B<resource-key[], optional>

=begin html

<br>Resource keys of the nodes of the storage service, from which the protection artifacts should be removed. If this input is provided, protection artifacts are cleaned up regardless of whether the member has subscription or not. Each node in this list must be a non-root node of the storage service, otherwise an EINVALIDINPUT error will be returned. If provided and 'members' input is not provided, protection artifacts of all the members are removed only from the specified nodes and all their downstream nodes of the storage service. If provided, and 'members' input is also provided, protection artifacts of the input 'members' are removed only from the specified nodes and all their downstream nodes of the storage service.

=end html

=back



=over 2

=item * I<storage-service-resource-key>  =>   B<resource-key>

=begin html

<br>Resource key of the storage service.

=end html

=back



B<Outputs>

=over 2

=item * I<job-id>  =>   B<job-id>

=begin html

<br>Object-id of the job created by this API call. The job's task list is a manifest that expresses the set of different tasks and the sequence in which they will be executed in order to accomplish a high level workflow.

=end html

=back



=head2 storage_service_conform



=begin html

Checks configuration on members of a storage service. This API runs an on-demand check on one or more members of the storage service to bring the storage system configuration into conformance with the strategy defined by the storage service. A configuration check determines the volumes' current conformance status and the set of "actions" needed to make them conformant. Then this API starts the actions to bring the storage system configuration into conformance. Successful completion of this API indicates that "corrective" conformance actions are started though not necessarily completed.

=end html



B<Inputs>

=over 2

=item * I<members>  =>   B<resource-key[], optional>

=begin html

<br>Resource keys of the member-objects on which to check conformance. Members must belong to the root node of the storage service. Members should have at least one active subscription with the storage service, otherwise E_OBJECT_NOT_SUBSCRIBED error is returned. If an empty list is provided or this input is not provided, conformance check will run on all the subscribed members of the storage service. If a subscription-context is specified as input then 'members' input must not be provided or must be empty.

=end html

=back



=over 2

=item * I<storage-service-resource-key>  =>   B<resource-key>

=begin html

<br>Resource key of the storage service.

=end html

=back



=over 2

=item * I<subscription-context>  =>   B<string, optional>

=begin html

<br>An optional client-defined string used to tag client-associated members when subscribing them to a storage service. Members that are subscribed to a storage service via subscription-context can be specified with the subscription-context element or individually by their members element when APIs are called that require identification of the storage service members they affect. An API call cannot have both the subscription-context element and the members element as inputs. If subscription-context is specified for a storage-service-conform API call, only the members subscribed via that specific context are checked. This value can be a maximum of 255 characters.

=end html

=back



B<Outputs>

=over 2

=item * I<job-id>  =>   B<job-id>

=begin html

<br>Object-id of the job created by this API call. The job's task list is a manifest that expresses the set of different tasks and the sequence in which they are executed in order to accomplish a high level workflow.

=end html

=back



=head2 storage_service_create



=begin html

Creates a new storage service by specifying protection and provisioning strategy.

=end html



B<Inputs>

=over 2

=item * I<storage-service-client-tag>  =>   B<string>

=begin html

<br>Arbitrary string describing the name of the client program that is creating the storage service. This value can be a maximum of 32 characters.

=end html

=back



=over 2

=item * I<storage-service-contact-list>  =>   B<email-address[], optional>

=begin html

<br>List of contact email addresses, each of which can be no longer than 255 characters.

=end html

=back



=over 2

=item * I<storage-service-description>  =>   B<string, optional>

=begin html

<br>Description of the new storage service. This value can be a maximum of 255 characters.

=end html

=back



=over 2

=item * I<storage-service-name>  =>   B<obj-name>

=begin html

<br>Name of the new storage service. This value can be a maximum of 255 characters.

=end html

=back



=over 2

=item * I<storage-service-owner>  =>   B<string, optional>

=begin html

<br>Name of the owner of the storage service. This value can be a maximum of 255 characters.

=end html

=back



=over 2

=item * I<storage-service-topology-info>  =>   B<L<"storage-service-topology-info">>

=begin html

<br>Composite entity representing the nodes and connections of a protection and provisioning strategy.

=end html

=back



B<Outputs>

=over 2

=item * I<storage-service-resource-key>  =>   B<resource-key>

=begin html

<br>Resource key of the new storage service.

=end html

=back



=head2 storage_service_destroy



=begin html

Destroys a storage service. This API also destroys all protection artifacts, such as volumes and relationships, that are managed by this storage service. Managed protection artifacts include those that are either created by or imported into the storage service.

=end html



B<Inputs>

=over 2

=item * I<storage-service-resource-key>  =>   B<resource-key>

=begin html

<br>Resource key of the storage service to destroy.

=end html

=back



B<Outputs>

=over 2

=item * I<job-id>  =>   B<job-id>

=begin html

<br>Object-id of the job created by this API call. The job's task list is a manifest that expresses the set of different tasks and the sequence in which they are executed in order to accomplish a high level workflow.

=end html

=back



=head2 storage_service_import



=begin html

Imports non-managed storage objects into an existing storage service. When you use the storage-service-import API, you must adhere to the following rules. If a rule is violated, the error code EINVALIDINPUT is returned, unless otherwise specified. <ul> <li> Each relationship must satisfy one of the following three conditions: <ul> <li> The source volume is being imported into the root node. </li> <li> The source volume already exists in the connection's source node. </li> <li> The preceding relationship is also being imported. </li> </ul> </li> <li> A relationship can only be imported into one storage service. If the same relationship exists in this or any storage service, the error code E_RELATIONSHIP_ALREADY_MANAGED is returned. </li> <li> If the subscription for the specified subscription context does not exist, a new subscription is created by the API. </li> <li> Source and destination volumes of the relationship can be associated with only a single node of the same storage service. </li> <li> Source or destination volume being imported into a non-root node of the storage service cannot be in the non-root node of any other storage service. </li> <li> If multiple relationships have the same source volume, each of these relationships must be imported into a different connection. </li> <li> Clients will need to call storage-service-conform to provision destination volumes and create relationships according to the topology of the storage service for the relationships imported in here. </li> </ul>

=end html



B<Inputs>

=over 2

=item * I<import-info>  =>   B<L<"storage-service-import-info">[]>

=begin html

<br>SnapMirror relationship or destination volume (one must be provided), and storage service connection pair for import.

=end html

=back



=over 2

=item * I<storage-service-resource-key>  =>   B<resource-key>

=begin html

<br>Resource key of the storage service.

=end html

=back



=over 2

=item * I<subscription-context>  =>   B<string, optional>

=begin html

<br>The subscription context to use when importing root node member(s). The same rules and validations apply as described in the storage-service-subscribe API. <P> When importing a relationship that contains a primary volume, the subscription context must be specified; if it is not, the E_CONTEXT_MISSING error code is returned. When importing a relationship that contains only non-primary volumes, the subscription context is ignored. This value can be a maximum of 255 characters. <P> There are number of use cases for storage service import: <ul> <li> use case 1 - the primary volume of the relationship is currently not a member of the root node (i.e. import a relationship to one of the primary hops). The subscription context must be specified. </li> <li> use case 2 - the primary volume of the relationship is already a member of the root node (i.e. import a relationship to the second leg of a fanout storage service). The subscription context is optional. </li> <li> use case 3 - import a relationship from a secondary to a tertiary to a cascading storage service. The subscription context input will be ignored for that particular imported member. </li> </ul>

=end html

=back



B<Outputs>

=over 2

=item * I<job-id>  =>   B<job-id>

=begin html

<br>ID of the job created by this API call. The job's task list is a manifest that expresses the set of different tasks and the sequence in which they are executed in order to accomplish a high level workflow.

=end html

=back



=head2 storage_service_iter



=begin html

Starts iteration to list storage services.

=end html



B<Inputs>

=over 2

=item * I<max-records>  =>   B<integer, optional>

=begin html

<br>The maximum number of records per return batch the caller wants to receive. The server may return smaller batch sizes based on performance constraints. If this field is not provided, then the server will return default number of records based on server performance.

=end html

=back



=over 2

=item * I<storage-service-client-tag>  =>   B<string, optional>

=begin html

<br>Arbitrary client provided description of the program utilizing the storage service. If storage-service-client-tag is specified as input, then storage-service-resource-key input must not be provided.

=end html

=back



=over 2

=item * I<storage-service-resource-key>  =>   B<resource-key, optional>

=begin html

<br>Resource key of a storage service. If specified, only the specified storage service is returned. If storage-service-resource-key is specified as input, then storage-service-client-tag input must not be provided.

=end html

=back



=over 2

=item * I<tag>  =>   B<string, optional>

=begin html

<br>Specify the tag from the last call. It is not specified for the first call. For subsequent calls, copy values from the 'next-tag' obtained from the previous call. Any resource-filters specified in the first call must be included in subsequent calls.

=end html

=back



B<Outputs>

=over 2

=item * I<next-tag>  =>   B<string, optional>

=begin html

<br>Tag for the next call. Not present when there are no more objects to return.

=end html

=back



=over 2

=item * I<num-records>  =>   B<integer>

=begin html

<br>The number of records returned in this call.

=end html

=back



=over 2

=item * I<records>  =>   B<L<"storage-service-info">[], optional>

=begin html

<br>The list of records.

=end html

=back



=head2 storage_service_member_iter



=begin html

Starts iteration to list members of the storage service.

=end html



B<Inputs>

=over 2

=item * I<max-records>  =>   B<integer, optional>

=begin html

<br>The maximum number of records per return batch the caller wants to receive. The server may return smaller batch sizes based on performance constraints. If this field is not provided, then the server will return default number of records based on server performance.

=end html

=back



=over 2

=item * I<node-resource-key>  =>   B<resource-key, optional>

=begin html

<br>Resource key of the node on which the members to be listed reside. If no node is specified, members on all nodes are listed.

=end html

=back



=over 2

=item * I<storage-service-resource-key>  =>   B<resource-key>

=begin html

<br>Resource key of the storage service for which members are listed.

=end html

=back



=over 2

=item * I<subscription-context>  =>   B<string, optional>

=begin html

<br>An optional client-defined string used to tag client-associated members when subscribing them to a storage service. The maximum length of a subscription-context is 255 characters.

=end html

=back



=over 2

=item * I<tag>  =>   B<string, optional>

=begin html

<br>Specify the tag from the last call. It is not specified for the first call. For subsequent calls, copy values from the 'next-tag' obtained from the previous call. Any resource-filters specified in the first call must be included in subsequent calls.

=end html

=back



B<Outputs>

=over 2

=item * I<next-tag>  =>   B<string, optional>

=begin html

<br>Tag for the next call. Not present when there are no more objects to return.

=end html

=back



=over 2

=item * I<num-records>  =>   B<integer>

=begin html

<br>The number of records returned in this call.

=end html

=back



=over 2

=item * I<records>  =>   B<L<"storage-service-member-info">[], optional>

=begin html

<br>The list of records.

=end html

=back



=head2 storage_service_modify



=begin html

Modify the attributes of an existing storage service. Clients will need to call storage-service-conform to provision destination volumes and create relationships to align the topology of the storage service and the modifications made in this API.

=end html



B<Inputs>

=over 2

=item * I<storage-service-client-tag>  =>   B<string, optional>

=begin html

<br>Arbitrary string describing the name of the client program that is creating the storage service. This value can be a maximum of 32 characters.

=end html

=back



=over 2

=item * I<storage-service-contact-list>  =>   B<email-address[], optional>

=begin html

<br>List of contact email addresses, each of which can be no longer than 255 characters.

=end html

=back



=over 2

=item * I<storage-service-description>  =>   B<string, optional>

=begin html

<br>Description of the storage service, up to 255 characters long.

=end html

=back



=over 2

=item * I<storage-service-name>  =>   B<obj-name, optional>

=begin html

<br>Modified name of the storage service object. This value can be a maximum of 255 characters.

=end html

=back



=over 2

=item * I<storage-service-owner>  =>   B<string, optional>

=begin html

<br>Name of the owner of the storage service, up to 255 characters long.

=end html

=back



=over 2

=item * I<storage-service-resource-key>  =>   B<resource-key>

=begin html

<br>Resource key of a storage service object.

=end html

=back



=over 2

=item * I<storage-service-topology-info>  =>   B<L<"storage-service-topology-info">, optional>

=begin html

<br>Topology to be modified. If any of the changes to the topology will cause the storage service to become non-conformant this will be mentioned in the job results. To change an existing element of a topology, you should specify all elements of the storage-service-topology-info. Any optional elements that are not specified will be set to their default value. For example, to modify the max-transfer-rate element of storage-service- topology-connection-info from 1024 KB/sec to 2048 KB/sec you should specify values for other storage-service-topology-connection-info elements such as lag-error-threshold and lag-warning-threshold otherwise default values for these elements are used. Similarly, omitting a node or connection from storage-service-topology-info will cause it to be removed from the storage service. A node omitted from storage-service-topology-info must not contain any protection artifacts, else an EINVALIDINPUT error will be returned. 'storage-service-cleanup' API should be used to remove the protection artifacts from the node, before deleting it. A storage service can only have maximum of one mirror relationship upstream from vault relationship in a mirror-vault cascade topology.

=end html

=back



B<Outputs>

=over 2

=item * I<job-id>  =>   B<job-id>

=begin html

<br>Refers to the job created for this call to storage-service-modify.

=end html

=back



=head2 storage_service_protection_update_start



=begin html

Updates data protection relationships for one or more members of the storage service. Storage service has a built-in topology relationship defined between the nodes. When the storage-service-conform API is called, protection relationships are created but not initialized. The first call to the storage-service-protection-update-start API triggers initialization (baseline data transfer). Subsequent calls trigger protection relationship updates.

=end html



B<Inputs>

=over 2

=item * I<destination-node-resource-key>  =>   B<resource-key, optional>

=begin html

<br>Resource key of destination node of the storage service. When destination-node-resource-key specified, members will be updated until the destination node; if not specified, members will be updated to the edge node(s) of the storage service topology. If provided destination node doesn't belong to this storage service, EINVALIDINPUT is returned. If source and destination nodes are specified, there must be a continuous downstream path between the two nodes, otherwise, EINVALIDINPUT is returned.

=end html

=back



=over 2

=item * I<member-snapshots>  =>   B<resource-key[], optional>

=begin html

<br>Resource keys of snapshot copies of the member whose relationships are to be updated. Snapshot copy existence on destination is verified after transfer completion. Snapshot copies must be of a member storage object which belongs to the root node or source node of the storage service if source node is specified. That member must have at least one active subscription. Otherwise, E_OBJECT_NOT_SUBSCRIBED error is returned. If an empty list is provided or this input is not provided, relationships for all the subscribed members are updated and snapshot copy existence is not verified. If specified, 'members' and 'subscription-context' input must not be provided, otherwise, EINVALIDINPUT is returned.

=end html

=back



=over 2

=item * I<members>  =>   B<resource-key[], optional>

=begin html

<br>Resource keys of the storage objects whose relationships are to be updated. Members must belong to the root node of the storage service. Members should have at least one active subscription with the storage service, otherwise E_OBJECT_NOT_SUBSCRIBED error is returned. Only relationships for storage objects specified in the 'members' list are updated. If specified, 'member-snapshots' and 'subscription-context' must not be provided, otherwise, EINVALIDINPUT will be returned. If an empty list is provided or this input is not provided, relationships for all the subscribed members are updated. When this input is used, Data ONTAP snapmirror-update will be invoked and will not verify snapshot existence. If storage service contains vault relationships, snapshot snapmirror-label attribute must be set to be used by the vaulting system to identify a vaulting scheme.

=end html

=back



=over 2

=item * I<source-node-resource-key>  =>   B<resource-key, optional>

=begin html

<br>Resource key of source node of storage service. When source-node-resource-key specified, members will be updated starting at the source node; if not specified, members will be updated starting at root node of the storage service. If provided source node doesn't belong to this storage service, EINVALIDINPUT is returned.

=end html

=back



=over 2

=item * I<storage-service-resource-key>  =>   B<resource-key>

=begin html

<br>Resource key of the storage service.

=end html

=back



=over 2

=item * I<subscription-context>  =>   B<string, optional>

=begin html

<br>An optional client-defined string used to tag client-associated members when subscribing them to a storage service. Members that are subscribed to a storage service via subscription-context can be specified with the subscription-context element or individually by their members element when APIs are called that require identification of the storage service members they affect. An API call cannot have both the subscription-context element and the members element as inputs. If specified, only the relationships for members subscribed via this context are updated. If omitted, then relationships for all the members of the root node are updated. If either 'members' or 'member-snapshots' input are specified, 'subscription-context' input must not be provided or must be empty, otherwise, EINVALIDINPUT is returned. This value can be a maximum of 255 characters. When this input is used, Data ONTAP snap-mirror-update will be invoked for members of this context and will not verify snapshot existence. If storage service contains vault relationships, snapshot snapmirror-label attribute must be set to be used by the vaulting system to identify a vaulting scheme.

=end html

=back



B<Outputs>

=over 2

=item * I<job-id>  =>   B<job-id>

=begin html

<br>Object-id of the job created by this API call. The job's task list is a manifest that expresses the set of different tasks and the sequence in which they are executed in order to accomplish a high level workflow.

=end html

=back



=head2 storage_service_subscribe



=begin html

Subscribes objects to a storage service. Currently, volumes are subscribable objects. Clients will need to call storage-service-conform to provision destination volumes and create relationships for the objects subscribed in here.

=end html



B<Inputs>

=over 2

=item * I<storage-service-resource-key>  =>   B<resource-key>

=begin html

<br>Resource key of the storage service.

=end html

=back



=over 2

=item * I<subscription-context>  =>   B<string>

=begin html

<br>An optional client-defined string used to tag client-associated members when subscribing them to a storage service. Members that are subscribed to a storage service via subscription-context can be specified with the subscription-context element or individually by their members element when APIs are called that require identification of the storage service members they affect. An API call cannot have both the subscription-context element and the members element as inputs. <p> The subscription context is provided as a convenience to the caller. The context may be used as a handle referring to all objects subscribed under the same context. The same object can be subscribed multiple times under different contexts. An object is fully unsubscribed from the storage service only after it is unsubscribed via all the subscription contexts. <p> This string must be unique within the storage service so that no two clients confuse their subscriptions. <p> The API creates a subscription for each new context, then adds storage objects to that subscription as subscription members. If all subscription members are removed, the subscription object becomes unnecessary, and the subscription is deleted at that point. <p> The maximum length is 255 characters.

=end html

=back



=over 2

=item * I<subscription-members>  =>   B<resource-key[], optional>

=begin html

<br>Resource keys of the object(s) subscribing to the storage service. <p> If an empty list is provided or this input is not provided, then an empty subscription object is created. <p> Subscription members are always added to that storage service's primary node. <p> <p> Only a read-writable volume can be subscribed to a storage service with mirror-vault cascade topology. <p> A volume can be subscribed to only one storage service with mirror-vault cascade topology. <p> If an object is already subscribed with the context provided in subscription-context, an E_OBJECT_ALREADY_SUBSCRIBED is returned.

=end html

=back



B<Outputs>

=over 2

=item * I<job-id>  =>   B<job-id>

=begin html

<br>Object-id of the job created by this API call. The job's task list is a manifest that expresses the set of different tasks and the sequence in which they are executed in order to accomplish a high level workflow.

=end html

=back



=head2 storage_service_subscription_context_get_metadata



=begin html

Returns metadata of a subscription context set by storage-service-subscription-context-set-metadata API.

=end html



B<Inputs>

=over 2

=item * I<storage-service-resource-key>  =>   B<resource-key>

=begin html

<br>Resource key of the storage service associated with the specified context.

=end html

=back



=over 2

=item * I<subscription-context>  =>   B<string>

=begin html

<br>The client-defined context string used to tag client-associated members when subscribing them to a storage service. If the specified subscription-context does not exist, E_CONTEXT_NOT_FOUND is returned. This value can be a maximum of 255 characters

=end html

=back



B<Outputs>

=over 2

=item * I<metadata>  =>   B<L<"keyvalue">[]>

=begin html

<br>Opaque metadata for this context. Metadata is usually set and interpreted by an external application.

=end html

=back



=head2 storage_service_subscription_context_set_metadata



=begin html

Sets metadata for an existing subscription context for a given storage service. The metadata is automatically deleted if the subscription context is removed for the storage service.

=end html



B<Inputs>

=over 2

=item * I<metadata>  =>   B<L<"keyvalue">[]>

=begin html

<br>Opaque metadata for this context. Metadata is usually set and interpreted by an external application. A maximum of 16 key value pairs are allowed per subscription context. If number of entries exceed this number with this request, E_MAX_ENTRY_COUNT_EXCEEDED is returned.

=end html

=back



=over 2

=item * I<storage-service-resource-key>  =>   B<resource-key>

=begin html

<br>Resource key of the storage service associated with the specified context. If the storage service is being deleted, E_STORAGE_SERVICE_MARKED_FOR_DELETION is returned.

=end html

=back



=over 2

=item * I<subscription-context>  =>   B<string>

=begin html

<br>The client-defined context string used to tag client-associated members when subscribing them to a storage service. If the specified subscription-context does not exist, E_CONTEXT_NOT_FOUND is returned. This value can be a maximum of 255 characters.

=end html

=back



B<Outputs>

=over 2

=item * None

=back



=head2 storage_service_subscription_iter



=begin html

Iterate over subscriptions of a storage service. The user must specify as input: the storage-service-resource-key element alone, the subscription-resource-key element alone, or a combination of (storage-service-resource-key, subscription-context) elements. The user cannot leave all three inputs unspecified.

=end html



B<Inputs>

=over 2

=item * I<max-records>  =>   B<integer, optional>

=begin html

<br>The maximum number of records per return batch the caller wants to receive. The server may return smaller batch sizes based on performance constraints. If this field is not provided, then the server will return default number of records based on server performance.

=end html

=back



=over 2

=item * I<storage-service-resource-key>  =>   B<resource-key, optional>

=begin html

<br>Resource key of the storage service whose subscriptions are listed.

=end html

=back



=over 2

=item * I<subscription-context>  =>   B<string, optional>

=begin html

<br>An optional client-defined string used to tag client-associated members when subscribing them to a storage service. The maximum length of a subscription-context is 255 characters.

=end html

=back



=over 2

=item * I<subscription-resource-key>  =>   B<resource-key, optional>

=begin html

<br>Resource key of the subscription returned. Subscription resource keys are unique, so the storage-service-resource-key input does not need to be specified. If specified, only subscription information for this specific subscription-resource-key is returned. If subscription-resource-key and (storage-service-resource-key, subscription-context) are specified, an error is returned.

=end html

=back



=over 2

=item * I<tag>  =>   B<string, optional>

=begin html

<br>Specify the tag from the last call. It is not specified for the first call. For subsequent calls, copy values from the 'next-tag' obtained from the previous call. Any resource-filters specified in the first call must be included in subsequent calls.

=end html

=back



B<Outputs>

=over 2

=item * I<next-tag>  =>   B<string, optional>

=begin html

<br>Tag for the next call. Not present when there are no more objects to return.

=end html

=back



=over 2

=item * I<num-records>  =>   B<integer>

=begin html

<br>The number of records returned in this call.

=end html

=back



=over 2

=item * I<records>  =>   B<L<"storage-service-subscription-info">[], optional>

=begin html

<br>The list of records.

=end html

=back



=head2 storage_service_unsubscribe



=begin html

Unsubscribes members from an existing storage service. If member is unsubscribed, it remains in the storage service but is marked disabled. When a member is marked disabled, all of its protection artifacts, such as relationships and storage objects, are preserved; however, it does not actively participate in future replication updates or conformance checks. <p> NOTE: To relinquish a member, or relinquish or destroy its related protection artifact members you can use the storage-service-cleanup API.

=end html



B<Inputs>

=over 2

=item * I<storage-service-resource-key>  =>   B<resource-key>

=begin html

<br>Resource key of the storage service.

=end html

=back



=over 2

=item * I<subscription-context>  =>   B<string>

=begin html

<br>A client-defined string used to tag client-associated members when subscribing them to a storage service. Members that are subscribed to a storage service via subscription-context can be specified with the subscription-context element or individually by their members element when APIs are called that require identification of the storage service members they affect. <p> The given 'subscription-members' subscribed to the storage service with this context are unsubscribed. If 'subscription-members' input is not specified, all objects subscribed to the storage service with this context are unsubscribed. <p> If all subscription members are removed for a given context, the subscription-context is automatically deleted. This value can be a maximum of 255 characters.

=end html

=back



=over 2

=item * I<subscription-members>  =>   B<resource-key[], optional>

=begin html

<br>Resource keys of the objects to unsubscribe from the storage service. Members must belong to the root node of the storage service. Members should be subscribed to the storage service via input 'subscription-context' tag, otherwise E_OBJECT_NOT_SUBSCRIBED error is returned. If an empty list is provided or this input is not provided, all the subscribed members under the specified context tag are unsubscribed.

=end html

=back



B<Outputs>

=over 2

=item * I<job-id>  =>   B<job-id>

=begin html

<br>Identifier of the job created by this API call. The job's task list is a manifest that expresses the set of different tasks and the sequence in which they are executed in order to accomplish a high level workflow.

=end html

=back



=head2 storage_service_workflow_list_info



=begin html

Lists all the available workflows that storage service supports. The workflows returned in output are uniquely identifiable across workflow listings in OnCommand product suite.

=end html



B<Inputs>

=over 2

=item * None

=back



B<Outputs>

=over 2

=item * I<storage-service-workflows>  =>   B<L<"storage-service-workflow-info">[]>

=begin html

<br>List of storage service workflows that can be assigned to the non-root node of a storage service.

=end html

=back



=head2 system_about



=begin html

Retrieve system information.

=end html



B<Inputs>

=over 2

=item * None

=back



B<Outputs>

=over 2

=item * I<host-name>  =>   B<string>

=begin html

<br>Host name.

=end html

=back



=over 2

=item * I<snmp-local-engine-id>  =>   B<string>

=begin html

<br>The unique hexadecimal engine id used when sending SNMP V3 traps.

=end html

=back



=over 2

=item * I<system-id>  =>   B<string>

=begin html

<br>The system id for this installed instance of the application. This identifier is used to identify this application instance within MyAutosupport.

=end html

=back



=over 2

=item * I<system-time>  =>   B<timestamp>

=begin html

<br>System time in seconds since 00:00:00 Jan 1, 1970, UTC.

=end html

=back



=over 2

=item * I<version>  =>   B<string>

=begin html

<br>A string that adheres to the following regular expression: [1-9][0-9]+\.[1-9][0-9]+.* The first number is the major version. The second number is the minor version. Example: 3.5.0.4726

=end html

=back



=head2 volume_by_aggregate_iter



=begin html

Iterate over volumes contained entirely within a single aggregate. Currently returns flexible volumes and infinite volume constituents.

=end html



B<Inputs>

=over 2

=item * I<max-records>  =>   B<integer, optional>

=begin html

<br>The maximum number of records per return batch the caller wants to receive. The server may return smaller batch sizes based on performance constraints. If this field is not provided, then the server will return default number of records based on server performance.

=end html

=back



=over 2

=item * I<resource-filter>  =>   B<resource-key, optional>

=begin html

<br>Resource by which to filter the result set. Any resource-filters specified in the first call must be included in subsequent calls. The allowed object types for this argument are: <ul> <li> cluster <li> cluster-node <li> aggregate <li> volume </ul> If resource-filter identifies a volume, that single volume will be returned. If resource-filter resolves to more than one volume, all of them will be returned. If no resource-filter is provided, all volumes will be listed.

=end html

=back



=over 2

=item * I<tag>  =>   B<string, optional>

=begin html

<br>Specify the tag from the last call. It is not specified for the first call. For subsequent calls, copy values from the 'next-tag' obtained from the previous call. Any resource-filters specified in the first call must be included in subsequent calls.

=end html

=back



B<Outputs>

=over 2

=item * I<next-tag>  =>   B<string, optional>

=begin html

<br>Tag for the next call. Not present when there are no more objects to return.

=end html

=back



=over 2

=item * I<num-records>  =>   B<integer>

=begin html

<br>The number of records returned in this call.

=end html

=back



=over 2

=item * I<records>  =>   B<L<"volume-by-aggregate-info">[], optional>

=begin html

<br>The list of records.

=end html

=back



=head2 volume_iter



=begin html

Iterate over volumes.

=end html



B<Inputs>

=over 2

=item * I<max-records>  =>   B<integer, optional>

=begin html

<br>The maximum number of records per return batch the caller wants to receive. The server may return smaller batch sizes based on performance constraints. If this field is not provided, then the server will return default number of records based on server performance.

=end html

=back



=over 2

=item * I<resource-filter>  =>   B<resource-key, optional>

=begin html

<br>Resource by which to filter the result set. Any resource-filters specified in the first call must be included in subsequent calls. The allowed object types for this argument are: <ul> <li> cluster <li> vserver <li> volume </ul> If resource-filter identifies a volume, that single volume will be returned. If resource-filter resolves to more than one volume, all of them will be returned. If no resource-filter is provided, all volumes will be listed.

=end html

=back



=over 2

=item * I<tag>  =>   B<string, optional>

=begin html

<br>Specify the tag from the last call. It is not specified for the first call. For subsequent calls, copy values from the 'next-tag' obtained from the previous call. Any resource-filters specified in the first call must be included in subsequent calls.

=end html

=back



B<Outputs>

=over 2

=item * I<next-tag>  =>   B<string, optional>

=begin html

<br>Tag for the next call. Not present when there are no more objects to return.

=end html

=back



=over 2

=item * I<num-records>  =>   B<integer>

=begin html

<br>The number of records returned in this call.

=end html

=back



=over 2

=item * I<records>  =>   B<L<"volume-info">[], optional>

=begin html

<br>The list of records.

=end html

=back



=head2 volume_move_history_list_info_iter_end



=begin html

Ends the iteration to list the history of volume moves.

=end html



B<Inputs>

=over 2

=item * I<tag>  =>   B<string>

=begin html

<br>Tag from a previous volume-move-history-list-info-iter-start.

=end html

=back



B<Outputs>

=over 2

=item * None

=back



=head2 volume_move_history_list_info_iter_next



=begin html

Get next few records in the iteration started by volume-move-history-list-info-iter-start.

=end html



B<Inputs>

=over 2

=item * I<maximum>  =>   B<integer>

=begin html

<br>The maximum number of entries to retrieve.

=end html

=back



=over 2

=item * I<tag>  =>   B<string>

=begin html

<br>Tag from a previous volume-move-history-list-info-iter-start.

=end html

=back



B<Outputs>

=over 2

=item * I<records>  =>   B<integer>

=begin html

<br>The number of records actually returned.

=end html

=back



=over 2

=item * I<volume-move-history>  =>   B<L<"volume-move-history-info">[]>

=begin html

<br>List of volume move histories.

=end html

=back



=head2 volume_move_history_list_info_iter_start



=begin html

Starts the iteration to list the history of volume moves.

=end html



B<Inputs>

=over 2

=item * I<volume-resource-key>  =>   B<resource-key, optional>

=begin html

<br>Name or identifier of a volume to list move histories for. If no volume-resource-key is provided, all volume move histories will be listed.

=end html

=back



B<Outputs>

=over 2

=item * I<records>  =>   B<integer>

=begin html

<br>Number which tells you how many items have been saved for future retrieval with volume-move-history-list-info-iter-next.

=end html

=back



=over 2

=item * I<tag>  =>   B<string>

=begin html

<br>An opaque handle used to identify a temporary store. Used in subsequent calls to volume-move-history-list-info-iter-next or volume-move-history-list-info-iter-end.

=end html

=back



=head2 vserver_iter



=begin html

Iterates through list of Vservers

=end html



B<Inputs>

=over 2

=item * I<max-records>  =>   B<integer, optional>

=begin html

<br>The maximum number of records per return batch the caller wants to receive. The server may return smaller batch sizes based on performance constraints. If this field is not provided, then the server will return default number of records based on server performance.

=end html

=back



=over 2

=item * I<resource-filter>  =>   B<resource-key, optional>

=begin html

<br>Resource by which to filter the result set. Any resource-filters specified in the first call must be included in subsequent calls. The allowed object types for this argument are: <ul> <li> cluster <li> vserver </ul> If resource-filter identifies a vserver, that single vserver will be returned. If resource-filter resolves to more than one vserver, all of them will be returned. If no resource-filter is provided, all vservers will be listed.

=end html

=back



=over 2

=item * I<tag>  =>   B<string, optional>

=begin html

<br>Specify the tag from the last call. It is not specified for the first call. For subsequent calls, copy values from the 'next-tag' obtained from the previous call. Any resource-filters specified in the first call must be included in subsequent calls.

=end html

=back



B<Outputs>

=over 2

=item * I<next-tag>  =>   B<string, optional>

=begin html

<br>Tag for the next call. Not present when there are no more objects to return.

=end html

=back



=over 2

=item * I<num-records>  =>   B<integer>

=begin html

<br>The number of records returned in this call.

=end html

=back



=over 2

=item * I<records>  =>   B<L<"vserver-info">[], optional>

=begin html

<br>The list of records.

=end html

=back



=head1 TYPEDEFS



=head2 aggr-volume-move-info

=begin html

Provides information about volumes moving into or out of aggregates.

=end html



B<Fields>

=over 2

=item * I<volume-in-count>  =>   B<integer>

=begin html

<br>Total number of volumes currently being moved into this aggregate whose volume move state is in-progress or pause.

=end html

=back



=over 2

=item * I<volume-in-total-size>  =>   B<integer>

=begin html

<br>Sum of the sizes, in bytes, of all the volumes currently being moved into this aggregate whose volume move state is in-progress or pause.

=end html

=back



=over 2

=item * I<volume-out-count>  =>   B<integer>

=begin html

<br>Total number of volumes currently being moved out of this aggregate whose volume move state is in-progress or pause.

=end html

=back



=over 2

=item * I<volume-out-total-size>  =>   B<integer>

=begin html

<br>Sum of the sizes, in bytes, of all the volumes currently being moved out of this aggregate whose volume move state is in-progress or pause.

=end html

=back



=head2 aggregate-info

=begin html

Information about a aggregate.

=end html



B<Fields>

=over 2

=item * I<aggr-volume-move-info>  =>   B<L<"aggr-volume-move-info">>

=begin html

<br>Provides information about volumes moving into and out of aggregates.

=end html

=back



=over 2

=item * I<aggregate-name>  =>   B<string>

=begin html

<br>Full hierarchical name of the aggregate present in the output. The name is of the form, cluster-node:myaggr.

=end html

=back



=over 2

=item * I<aggregate-resource-key>  =>   B<resource-key>

=begin html

<br>The resource key for this aggregate.

=end html

=back



=over 2

=item * I<aggregate-size>  =>   B<L<"aggregate-size">>

=begin html

<br>Sizes of various parameters of the aggregate.

=end html

=back



=over 2

=item * I<aggregate-space-status>  =>   B<object-space-status>

=begin html

<br>Space status of the aggregate. This indicates the fullness of the aggregate in terms of whether the percentage of used space with respect to total size of the aggregate has reached or crossed the fullness thresholds given in aggregate-nearly-full-threshold and aggregate-full-threshold.

=end html

=back



=over 2

=item * I<aggregate-state>  =>   B<string>

=begin html

<br>State of aggregate. Following are the possible values: <ul> <li> offline <li> online <li> restricted <li> iron_restricted <li> creating <li> failed <li> partial <li> destroying <li> frozen <li> inconsistent <li> mounting <li> quiesced <li> quiescing <li> reverted <li> unmounted <li> unmounting <li> unknown </ul>

=end html

=back



=over 2

=item * I<aggregate-status>  =>   B<obj-status>

=begin html

<br>Current status of the aggregate based on all events

=end html

=back



=over 2

=item * I<block-type>  =>   B<file-system-block-type>

=begin html

<br>File system block type of the aggregate. The volumes on both the source and destination sides of a SnapMirror relationship must be of the same block type.

=end html

=back



=over 2

=item * I<cluster-name>  =>   B<string>

=begin html

<br>Name of the cluster present in the output. The name is any simple name such as myhost.

=end html

=back



=over 2

=item * I<cluster-node-name>  =>   B<string>

=begin html

<br>Name of controller. Always present in the output. The name is any simple name such as mynode.

=end html

=back



=over 2

=item * I<cluster-node-resource-key>  =>   B<resource-key>

=begin html

<br>The resource key for the cluster-node. Always present in the output.

=end html

=back



=over 2

=item * I<cluster-resource-key>  =>   B<resource-key>

=begin html

<br>The resource key for the cluster. Always present in the output.

=end html

=back



=over 2

=item * I<compression-space-savings>  =>   B<integer>

=begin html

<br>Space savings as a result of compression on the volume in bytes.

=end html

=back



=over 2

=item * I<dedupe-space-savings>  =>   B<integer>

=begin html

<br>Space savings as a result of deduplication on the aggregate's volumes in bytes.

=end html

=back



=over 2

=item * I<has-local-root>  =>   B<boolean>

=begin html

<br>Specifies whether the aggregate contains the local root volume.

=end html

=back



=over 2

=item * I<has-partner-root>  =>   B<boolean>

=begin html

<br>Specifies whether the aggregate contains the partner's root volume.

=end html

=back



=over 2

=item * I<hybrid-cache-size-total>  =>   B<integer>

=begin html

<br>Total cache size (in bytes) in a hybrid aggregate. If the referenced aggregate is restricted or offline, or if it is not a hybrid aggregate, a value of 0 is returned.

=end html

=back



=over 2

=item * I<is-hybrid>  =>   B<boolean>

=begin html

<br>Specifies whether a given aggregate contains a mix of SSD and HHD RAID groups.

=end html

=back



=over 2

=item * I<is-hybrid-enabled>  =>   B<boolean>

=begin html

<br>Specifies whether a given aggregate is eligible to contain both SSD and HDD RAID groups.

=end html

=back



=over 2

=item * I<raid-type>  =>   B<string, optional>

=begin html

<br>Name of an allowed RAID type. Possible values are "raid0", "raid4", "raid_dp" and "mixed_raid_type".

=end html

=back



=over 2

=item * I<time-to-full>  =>   B<integer, optional>

=begin html

<br>Estimated amount of time left in seconds for the aggregate to become full. This is returned as empty when the estimated amount of time is more than a year. This can happen due to a very low or negative rate of consumption of space in the aggregate. Also, this field will not be returned if sufficient history data about a given aggregate is unavailable.

=end html

=back



=head2 aggregate-size

=begin html

Sizes of various parameters of an aggregate.

=end html



B<Fields>

=over 2

=item * I<daily-growth-rate>  =>   B<integer, optional>

=begin html

<br>Percentage of change that occurs every 24 hours in the disk space used by the aggregate.

=end html

=back



=over 2

=item * I<size-available>  =>   B<integer>

=begin html

<br>Available bytes in the aggregate.

=end html

=back



=over 2

=item * I<size-total>  =>   B<integer>

=begin html

<br>Aggregate total size in bytes.

=end html

=back



=over 2

=item * I<size-used>  =>   B<integer>

=begin html

<br>Aggregate bytes used.

=end html

=back



=over 2

=item * I<size-used-per-day>  =>   B<integer, optional>

=begin html

<br>The capacity (in bytes) used per day. This can be either positive or negative depending on the growth of used space in the aggregate. The information is based on the regression slope of the aggregate usage history data.

=end html

=back



=over 2

=item * I<snapshot-reserve-avail>  =>   B<integer, optional>

=begin html

<br>The available capacity (in bytes) in the Snapshot reserve for the aggregate. If snapshot-reserve-used is greater than snapshot-reserve-total, this value will be zero.

=end html

=back



=over 2

=item * I<snapshot-reserve-total>  =>   B<integer, optional>

=begin html

<br>Total capacity (in bytes) of Snapshot copy reserve.

=end html

=back



=over 2

=item * I<snapshot-reserve-used>  =>   B<integer, optional>

=begin html

<br>Total capacity (in bytes) for Snapshot data. The number can be greater than the Snapshot reserve size, but does not include any space used out of overwrite reserve.

=end html

=back



=over 2

=item * I<space-total-committed>  =>   B<integer, optional>

=begin html

<br>Total space committed in bytes.

=end html

=back



=head2 cluster-info

=begin html

Cluster's information.

=end html



B<Fields>

=over 2

=item * I<cluster-address>  =>   B<string>

=begin html

<br>The cluster's primary IP address.

=end html

=back



=over 2

=item * I<cluster-diagnosis-status>  =>   B<string>

=begin html

<br>The diagnosis status of the cluster. Possible values: "ok", "ok-with-suppressed", "degraded" or "unreachable".

=end html

=back



=over 2

=item * I<cluster-name>  =>   B<string>

=begin html

<br>This is the name of the cluster. Length: [1..255]

=end html

=back



=over 2

=item * I<cluster-status>  =>   B<obj-status>

=begin html

<br>Current status of the host based on all events

=end html

=back



=over 2

=item * I<cluster-version>  =>   B<string>

=begin html

<br>This is the software release for a requested cluster. Length: [1..255]

=end html

=back



=over 2

=item * I<datasource-id>  =>   B<obj-id>

=begin html

<br>The id of the datasource used to collect information about this cluster.

=end html

=back



=over 2

=item * I<last-update-time>  =>   B<timestamp>

=begin html

<br>Start time of the last data collection.

=end html

=back



=over 2

=item * I<licenses>  =>   B<L<"license">[]>

=begin html

<br>List of licenses installed on the cluster.

=end html

=back



=over 2

=item * I<resource-key>  =>   B<resource-key>

=begin html

<br>The resource key for this cluster.

=end html

=back



=over 2

=item * I<serial-number>  =>   B<string>

=begin html

<br>The serial number of the cluster. Length: [1..64]

=end html

=back



=head2 cluster-node-aggr-size

=begin html

Information about the size of the aggregates in a node.

=end html



B<Fields>

=over 2

=item * I<aggr-bytes-total>  =>   B<integer>

=begin html

<br>Total capacity of the aggregates (in bytes) in a node.

=end html

=back



=over 2

=item * I<aggr-bytes-used>  =>   B<integer>

=begin html

<br>Used capacity of the aggregates (in bytes) in a node.

=end html

=back



=head2 cluster-node-disk-info

=begin html

Collected information about disks on a node. Optional items will not be returned if the value is not known.

=end html



B<Fields>

=over 2

=item * I<disk-failed-message>  =>   B<string, optional>

=begin html

<br>Provides information about a disk failure.

=end html

=back



=over 2

=item * I<failed-disk-count>  =>   B<integer, optional>

=begin html

<br>Number of failed disks on the node.

=end html

=back



=over 2

=item * I<reconstructing-disk-count>  =>   B<integer, optional>

=begin html

<br>Number of disks that are being reconstructing on the node.

=end html

=back



=over 2

=item * I<reconstructing-parity-disk-count>  =>   B<integer, optional>

=begin html

<br>Number of parity disks that are being reconstructed on the node.

=end html

=back



=over 2

=item * I<scrubbing-disk-count>  =>   B<integer, optional>

=begin html

<br>Number of disks that are being scrubbed on the node.

=end html

=back



=over 2

=item * I<verifying-parity-disk-count>  =>   B<integer, optional>

=begin html

<br>Number of parity disks that are being verified on the node.

=end html

=back



=head2 cluster-node-info

=begin html

Information for a given node.

=end html



B<Fields>

=over 2

=item * I<bytes-spare>  =>   B<integer>

=begin html

<br>Spare raw capacity of the node in bytes.

=end html

=back



=over 2

=item * I<bytes-total>  =>   B<integer>

=begin html

<br>Total raw capacity of the node in bytes.

=end html

=back



=over 2

=item * I<bytes-used>  =>   B<integer>

=begin html

<br>Used raw capacity of the node in bytes.

=end html

=back



=over 2

=item * I<cluster-name>  =>   B<obj-name>

=begin html

<br>Name of the cluster where the node is present.

=end html

=back



=over 2

=item * I<cluster-node-aggr-size-info>  =>   B<L<"cluster-node-aggr-size">>

=begin html

<br>Information about aggregates on a node.

=end html

=back



=over 2

=item * I<cluster-node-disk-info>  =>   B<L<"cluster-node-disk-info">>

=begin html

<br>Information about disks on a node.

=end html

=back



=over 2

=item * I<cluster-node-down-timestamp>  =>   B<timestamp>

=begin html

<br>The downtime of the node. This is the number of seconds elapsed since midnight on January 1, 1970.(UTC)

=end html

=back



=over 2

=item * I<cluster-node-interconnect-info>  =>   B<L<"cluster-node-interconnect-info">>

=begin html

<br>Information about the failover interconnect on a node.

=end html

=back



=over 2

=item * I<cluster-node-name>  =>   B<obj-name>

=begin html

<br>This is the name of the node. Length: [1..255]

=end html

=back



=over 2

=item * I<cluster-node-port-count>  =>   B<integer>

=begin html

<br>Number of physical ports (both ethernet and fibrechannel) in the node.

=end html

=back



=over 2

=item * I<cluster-node-resource-key>  =>   B<resource-key>

=begin html

<br>The resource key of the node.

=end html

=back



=over 2

=item * I<cluster-node-state>  =>   B<string>

=begin html

<br>State of the node. Possible values are: "online", "offline"

=end html

=back



=over 2

=item * I<cluster-node-status>  =>   B<string>

=begin html

<br>Current status of the node.

=end html

=back



=over 2

=item * I<cluster-node-uptime>  =>   B<integer>

=begin html

<br>The total time, in seconds, that the node has been up.

=end html

=back



=over 2

=item * I<cluster-node-uuid>  =>   B<string>

=begin html

<br>The univerally unique identifier for the node. It is a 36-character string composed of 32 hexadecimal characters. For example, '542366ea-a024-11dd-9caa-7302e474c5ae'.

=end html

=back



=over 2

=item * I<cluster-resource-key>  =>   B<resource-key>

=begin html

<br>Resource-key of the cluster where the node is present.

=end html

=back



=over 2

=item * I<contact>  =>   B<string, optional>

=begin html

<br>The owner of the node.

=end html

=back



=over 2

=item * I<cpu-percent-busy>  =>   B<integer, optional>

=begin html

<br>Percentage of the time that the node's CPU is busy.

=end html

=back



=over 2

=item * I<cpu-percent-busy-duration>  =>   B<integer, optional>

=begin html

<br>Time in seconds between measurements of CPU usage.

=end html

=back



=over 2

=item * I<env-failed-fan-status>  =>   B<string, optional>

=begin html

<br>Indication of the number of chassis fans which are not operating within the recommended RPM range. Possible values are: "normal", "one_failed", "many_failed"

=end html

=back



=over 2

=item * I<env-failed-power-supply-status>  =>   B<string, optional>

=begin html

<br>Indication of the number of failed power supply units. Possible values are: "normal", "one_failed", "many_failed"

=end html

=back



=over 2

=item * I<env-over-temperature-status>  =>   B<string, optional>

=begin html

<br>An indication of whether the hardware is currently operating outside of its recommended temperature range. The hardware will shutdown if the temperature exceeds critical thresholds. Possible values are: "normal", "hot"

=end html

=back



=over 2

=item * I<firmware-version>  =>   B<string, optional>

=begin html

<br>Firmware version of the controller.

=end html

=back



=over 2

=item * I<flash-cards>  =>   B<L<"flash-card-info">[], optional>

=begin html

<br>Information about flash cards on a node.

=end html

=back



=over 2

=item * I<location>  =>   B<string, optional>

=begin html

<br>The physical location of the node as reported by Data ONTAP.

=end html

=back



=over 2

=item * I<model>  =>   B<string, optional>

=begin html

<br>The model of the node.

=end html

=back



=over 2

=item * I<nvram-battery-status>  =>   B<string, optional>

=begin html

<br>Status of the NVRAM battery. Possible values include: <ul> <li> battery_ok <li> battery_partially_discharged <li> battery_fully_discharged <li> battery_not_present <li> battery_near_end_of_life <li> battery_at_end_of_life <li> battery_unknown <li> battery_over_charged <li> battery_fully_charged </ul>

=end html

=back



=over 2

=item * I<nvram-id>  =>   B<integer, optional>

=begin html

<br>Vendor specific NVRAM identifier of the node.

=end html

=back



=over 2

=item * I<os-version>  =>   B<string>

=begin html

<br>Data ONTAP version running on the node.

=end html

=back



=over 2

=item * I<serial-number>  =>   B<string>

=begin html

<br>Serial number of the node.

=end html

=back



=over 2

=item * I<sfo-info>  =>   B<L<"sfo-info">>

=begin html

<br>Information about the storage failover configuration of this node.

=end html

=back



=head2 cluster-node-interconnect-info

=begin html

Collected information about a failover interconnect between two nodes.

=end html



B<Fields>

=over 2

=item * I<interconnect-links>  =>   B<string, optional>

=begin html

<br>States of the individual interconnect links e.g. VIA Interconnect is down (link 0 down, link 1 down) VIA Interconnect is up (link 0 down, link 1 up) VIA Interconnect is up (link 0 up, link 1 down)

=end html

=back



=over 2

=item * I<interconnect-type>  =>   B<string, optional>

=begin html

<br>Type and vendor of the interconnect e.g. Infiniband (Mellanox Arbel) Infiniband (Mellanox Tavor) FCVI (Qlogic 2462)

=end html

=back



=over 2

=item * I<is-interconnect-up>  =>   B<boolean>

=begin html

<br>True, if storage clustering interconnect is up

=end html

=back



=head2 flash-card-info

=begin html

Collected information about a flash card on a node. Optional items will not be returned if the value is not known.

=end html



B<Fields>

=over 2

=item * I<capacity>  =>   B<integer>

=begin html

<br>Advertised capacity of the device, in gigabytes.

=end html

=back



=over 2

=item * I<firmware-revision>  =>   B<string>

=begin html

<br>Firmware revision of the FPGA on the flash device.

=end html

=back



=over 2

=item * I<model-name>  =>   B<string>

=begin html

<br>model name of the flash device in XXXXXX-XX format.

=end html

=back



=over 2

=item * I<percent-online>  =>   B<integer>

=begin html

<br>Percentage of device capacity that is currently online.

=end html

=back



=over 2

=item * I<serial-number>  =>   B<string>

=begin html

<br>unique 10 digit serial number of the flash device.

=end html

=back



=over 2

=item * I<slot-number>  =>   B<integer>

=begin html

<br>PCI-e slot number of the flash device.

=end html

=back



=over 2

=item * I<status>  =>   B<string>

=begin html

<br>The current status of the device. Possible values are "online", "offline_failed" and "offline_threshold".

=end html

=back



=head2 license

=begin html

License information of the Data ONTAP service.

=end html



B<Fields>

=over 2

=item * I<description>  =>   B<string>

=begin html

<br>Short description of the license package.

=end html

=back



=over 2

=item * I<expiration-time>  =>   B<timestamp>

=begin html

<br>Time this license expires. This is the number of seconds elapsed since midnight on January 1, 1970.(UTC)

=end html

=back



=over 2

=item * I<owner-name>  =>   B<string>

=begin html

<br>Name of the owner (cluster, or cluster-node) Length: [1..255]

=end html

=back



=over 2

=item * I<owner-resource-key>  =>   B<resource-key>

=begin html

<br>Resource-key of the owner of this license. Can be resource-key of a cluster or cluster-node depending on owner-type.

=end html

=back



=over 2

=item * I<owner-type>  =>   B<resource-type>

=begin html

<br>Resource Type of cluster or cluster-node owning the license.

=end html

=back



=over 2

=item * I<package-name>  =>   B<string>

=begin html

<br>Name of the licensed Data ONTAP service. <br> Possible values: <ul> <li>base <li>nfs <li>cifs <li>iscsi <li>fcp <li>cdmi <li>snaprestore <li>snapmirror <li>flexclone <li>snapvault <li>snaplock <li>snapmanagersuite <li>snapprotectapps <li>v_storageattach <li>snaplock_enterprise <li>insight_balance </ul>

=end html

=back



=over 2

=item * I<serial-number>  =>   B<string>

=begin html

<br>The serial number of the owner (cluster, or cluster-node). Length: [1..64]

=end html

=back



=head2 sfo-info

=begin html

Information about the storage failover configuration of this node.

=end html



B<Fields>

=over 2

=item * I<current-mode>  =>   B<string, optional>

=begin html

<br>Current HA mode

=end html

=back



=over 2

=item * I<giveback-state>  =>   B<string, optional>

=begin html

<br>Giveback state of the node. Possible values are: <ul> <li> nothing_to_gb - No partner aggregates owned by local node. <li> not_attempted_yet - Local node owns partner's aggregates and a giveback has not been attempted yet. <li> giveback_in_progress - Giveback is in progress. Refer to current-giveback-module field to get the current module, the giveback process is in. <li> giveback_failed_autogiveback_disabled- Previous giveback failed and auto giveback is disabled. Refer to current-giveback-module to get the module in which giveback process failed. <li> giveback_failed_autogiveback_scheduled- Previous giveback failed and an auto giveback is scheduled. Refer to current-giveback-module to get the module in which giveback process failed. Refer time-until-autogiveback field to check time remaining before an auto giveback is initiated. <li> previous_giveback_failed - Previous giveback failed. Refer to current-giveback-module to get the module in which giveback process failed. <li> giveback_vetoed_no_di - Normal giveback not possible as disk inventory from partner has not yet been received. <li> giveback_vetoed_missing_disks - Normal giveback not possible as the partner is missing some of its files system disks. <li> autogiveback_scheduled - An auto giveback is scheduled Refer time-until-autogiveback field to check time remaining before an auto giveback is initiated. <li> autogiveback_deferred - Auto giveback is deferred because the partner node was not ready to receive aggregates when the auto giveback timer expired. An auto giveback will be initiated as soon as the partner node is up and ready to receive aggregates. <li> node_upgrade_in_progress - Local node owns partner's aggregates as part of node upgrade process. <li> sfo_aggr_giveback_failed - Giveback of SFO aggregates failed. Call cf-aggregate-giveback-status API for more information regarding giveback failure. <li> sfo_aggr_giveback_in_progress - Giveback of SFO aggregates is in progress. Call cf-aggregate-giveback-status API for more information regarding giveback status. <li> partial_giveback - Local node owns partner's SFO aggregates. <li> partner_spare_disks_giveback_pending- Local node owns partner's spare disks. </ul>

=end html

=back



=over 2

=item * I<partner-name>  =>   B<obj-name>

=begin html

<br>The fully qualified domain name of the partner controller if this node is configured as part of an HA pair. Length: [1..255]

=end html

=back



=over 2

=item * I<partner-node-status>  =>   B<string>

=begin html

<br>Status of the partner node. This field is not returned if this node is not part of an HA pair.

=end html

=back



=over 2

=item * I<partner-resource-key>  =>   B<resource-key>

=begin html

<br>This is the resource key of the partner controller if this node is configured as part of an HA pair.

=end html

=back



=over 2

=item * I<sfo-state>  =>   B<string>

=begin html

<br>Storage failover configuration state. Possible values: "connected", "takeover_scheduled", "takeover_started", "takeover", "taken over", "takeover_failed", "giving_back", "giveback_partial_waiting", "giveback_partial_connected", "waiting_for_root_aggr", "waiting", "in_maintenance_mode", "pending_shutdown", "error".

=end html

=back



=over 2

=item * I<sfo-status>  =>   B<string>

=begin html

<br>Status of the SFO of the node. Possible values: "not_configured", "enabled", "disabled".

=end html

=back



=over 2

=item * I<takeover-by-partner-not-possible-reason>  =>   B<string, optional>

=begin html

<br>If takeover by the partner is not possible, list of one or more reasons why.

=end html

=back



=over 2

=item * I<takeover-failure-reason>  =>   B<string, optional>

=begin html

<br>Only returned if sfo-state is equal to takeover_failed. This is the reason for the takeover failure.

=end html

=back



=over 2

=item * I<takeover-of-partner-not-possible-reason>  =>   B<string, optional>

=begin html

<br>If the storage failover facility is disabled, list of one or more reasons why.

=end html

=back



=head2 dp-relationship-info

=begin html

Information about relationship.

=end html



B<Fields>

=over 2

=item * I<current-transfer-error>  =>   B<string, optional>

=begin html

<br>A message describing the last retryable error encountered by the current transfer. Applicable to Data ONTAP 8.2 and higher.

=end html

=back



=over 2

=item * I<destination-name>  =>   B<obj-full-name>

=begin html

<br>Full name of storage object where this relationship ends.

=end html

=back



=over 2

=item * I<destination-resource-key>  =>   B<resource-key>

=begin html

<br>Storage resource key of storage object where this relationship ends.

=end html

=back



=over 2

=item * I<is-healthy>  =>   B<boolean>

=begin html

<br>True if the most recent update succeeded and if it was a scheduled update occurred as scheduled. Otherwise false.

=end html

=back



=over 2

=item * I<lag-duration>  =>   B<integer, optional>

=begin html

<br>The amount of time in seconds by which the data on the mirror lags behind the source. Applicable to Data ONTAP 8.2 and higher.

=end html

=back



=over 2

=item * I<last-transfer-duration>  =>   B<integer, optional>

=begin html

<br>The amount of time in seconds it took for the last transfer to complete. Applicable to Data ONTAP 8.2 and higher.

=end html

=back



=over 2

=item * I<last-transfer-error>  =>   B<string, optional>

=begin html

<br>A message describing the cause of the last transfer failure. Present only if the last transfer was unsuccessful. Applicable to Data ONTAP 8.2 and higher.

=end html

=back



=over 2

=item * I<max-transfer-rate>  =>   B<integer>

=begin html

<br>Specifies the upper bound at which data is transferred between clusters, in kilobytes per second. 0 is unlimited which permits the relationship to fully utilize the available network bandwidth. The max-transfer-rate option does not affect relationships confined to a single cluster.

=end html

=back



=over 2

=item * I<relationship-name>  =>   B<obj-name>

=begin html

<br>Name of the relationship.

=end html

=back



=over 2

=item * I<relationship-progress>  =>   B<integer, optional>

=begin html

<br>The total number of bytes that have been processed so far for the current activity of the relationship as returned in the relationship-status. This is set only when the relationship-status indicates activity is in progress.

=end html

=back



=over 2

=item * I<relationship-resource-key>  =>   B<resource-key>

=begin html

<br>Resource key of the relationship.

=end html

=back



=over 2

=item * I<relationship-state>  =>   B<relationship-state>

=begin html

<br>State of the relationship.

=end html

=back



=over 2

=item * I<relationship-status>  =>   B<relationship-status>

=begin html

<br>Status of the relationship.

=end html

=back



=over 2

=item * I<relationship-type>  =>   B<relationship-type>

=begin html

<br>Type of the relationship.

=end html

=back



=over 2

=item * I<schedule-name>  =>   B<obj-full-name>

=begin html

<br>Full name of the schedule associated with this relationship.

=end html

=back



=over 2

=item * I<schedule-resource-key>  =>   B<resource-key>

=begin html

<br>Resource key of the schedule associated with this relationship.

=end html

=back



=over 2

=item * I<source-name>  =>   B<obj-full-name>

=begin html

<br>Full name of storage object where this relationship originates.

=end html

=back



=over 2

=item * I<source-resource-key>  =>   B<resource-key>

=begin html

<br>Resource key of storage object where this relationship originates.

=end html

=back



=over 2

=item * I<storage-service-connection-resource-key>  =>   B<resource-key, optional>

=begin html

<br>Resource key of the storage service connection.

=end html

=back



=over 2

=item * I<storage-service-destination-node-resource-key>  =>   B<resource-key, optional>

=begin html

<br>Resource key of the storage service node for the destination of this relationship.

=end html

=back



=over 2

=item * I<storage-service-name>  =>   B<obj-name, optional>

=begin html

<br>Name of the storage-service owning this relationship. Not present if this relationship is not owned by any storage service.

=end html

=back



=over 2

=item * I<storage-service-resource-key>  =>   B<resource-key, optional>

=begin html

<br>Resource key of the storage-service owning this relationship. Not present if this relationship is not owned by any storage-service.

=end html

=back



=over 2

=item * I<storage-service-source-node-resource-key>  =>   B<resource-key, optional>

=begin html

<br>Storage object resource key of the storage service node for the source of this relationship.

=end html

=back



=head2 dp-restore-request-info

=begin html

Restore request information pertaining to a single restore request.

=end html



B<Fields>

=over 2

=item * I<destination-path>  =>   B<string, optional>

=begin html

<br>Path to the destination directory where the data is restored. Path is relative to the root of the destination volume and should not contain name of the file. If omitted, data is restored to the root of the volume. For in-place volume restore, a destination-path must not be specified. If both destination-path and use-snapshot-restore-volume inputs are specified and use-snapshot-restore-volume is set to true, then EINVALIDINPUT is returned. Leading '/' is optional in the destination-path. Examples of the destination-path are "dir1/dir2", "/dir1/dir2" or "/". If the destination-path is "/dir1/dir2", it is interpreted as "&lt;destination-volume&gt;/dir1/dir2". '/' must be used in place of '\' when restoring to or from a Windows path.

=end html

=back



=over 2

=item * I<destination-volume-resource-key>  =>   B<resource-key>

=begin html

<br>Resource key of the target volume to restore the data to.

=end html

=back



=over 2

=item * I<preserve-directory-hierarchy>  =>   B<boolean, optional>

=begin html

<br>Flag to preserve the directory hierarchy in the restore path. When true the directory hierarchy is recreated during restore. For example, if the path of the storage object 'c' to be restored is originally located on /a/b/c within the given Snapshot copy and the destination path to where it needs to be stored is /dest, then after restore, 'c' is stored at /dest/a/b/c. When false, 'c' is stored at /dest/c. Default is false.

=end html

=back



=over 2

=item * I<source-path>  =>   B<string, optional>

=begin html

<br>Path within the Snapshot copy of the storage object that is being restored. If use-snapshot-restore-volume flag is specified, then the source-path element must not be specified. Source path is relative to the Snapshot copy location and it can be a directory or a file. If a directory is specified, the files and subdirectories of that directory are restored. Leading '/' is optional in the source-path. Examples of the source-path are "dir1/dir2" or "/dir1/dir2" or "/dir1/dir2/file1". If the source-path is "/dir1/dir2", it is interpreted as "&lt;source-volume&gt;/.snapshot/&lt;snapshot&gt;/dir1/dir2". '/' must be used in place of '\' when restoring to or from a Windows path.

=end html

=back



=over 2

=item * I<source-snapshot-resource-key>  =>   B<resource-key>

=begin html

<br>Resource key of the snapshot copy. This is the immutable natural key to uniquely identify a snapshot on clustered Data ONTAP.

=end html

=back



=over 2

=item * I<use-snapshot-restore-volume>  =>   B<boolean, optional>

=begin html

<br>The flag to use the snapshot-restore-volume API. This flag is applicable only for in-place restoration of a volume from a local Snapshot copy. When true, this flag indicates that Data ONTAP's snapshot-restore-volume API is used for volume restoration. As a side-effect, any Snapshot copies created after this Snapshot copy creation no longer remain on the source volume after the restore. In effect, after the reversion, the volume is in the same state as it was when the Snapshot copy was created. If the volume is in a SnapMirror relationship, then only Snapshot copies that were created after the last SnapMirror update could be used. Otherwise, the job will fail indicating that the volume has a locked Snapshot copy. If this flag is set true, then both source-path and destination-path must not be specified. Otherwise, EINVALIDINPUT is returned. <br> <b>WARNING</b>: The storage system will reboot after the restore if the specified snapshot-identifier belongs to the root volume of a node Vserver. See Data ONTAP's guide for the "snapshot-restore-volume" API for more information. <br> When this flag is not specified or false, the snapshot-restore-volume API is not used. Default is false.

=end html

=back



=head2 relationship-state

=begin html

State of the relationship. Possible values are: <ul> <li> uninitialized <li> snapmirrored <li> broken-off </ul>

=end html



B<Fields>

=over 2

=item * None

=back



=head2 relationship-status

=begin html

Status of the relationship. Possible values are: <ul> <li> idle <li> transferring <li> checking <li> quiescing <li> quiesced <li> queued (Data ONTAP 8.2 and higher) <li> preparing (Data ONTAP 8.2 and higher) <li> waiting (Data ONTAP 8.2 and higher) <li> finalizing (Data ONTAP 8.2 and higher) <li> aborting (Data ONTAP 8.2 and higher) </ul>

=end html



B<Fields>

=over 2

=item * None

=back



=head2 relationship-type

=begin html

Type of a relationship. Possible values are: <ul> <li> data_protection (aka "mirror") <li> load_sharing <li> vault (Data ONTAP 8.2 and higher) <li> restore (Data ONTAP 8.2 and higher) <li> transition_data_protection (Data ONTAP 8.2 and higher) </ul>

=end html



B<Fields>

=over 2

=item * None

=back



=head2 snapshot-identifier

=begin html

Information used to identify a Snapshot copy within the storage system. In some cases the snapshot-identifier element might match multiple Snapshot copies. A unique match in the result is guaranteed, if 'snapshot-resource-key' is provided in the input of snapshot-identifier.

=end html



B<Fields>

=over 2

=item * I<snapshot-name>  =>   B<string, optional>

=begin html

<br>Name of the Snapshot copy. A volume-resource-key value is required when snapshot-name is specified.

=end html

=back



=over 2

=item * I<snapshot-resource-key>  =>   B<resource-key, optional>

=begin html

<br>Resource key of the Snapshot copy. This is the immutable natural key to uniquely identify a snapshot on Data ONTAP.

=end html

=back



=over 2

=item * I<snapshot-version-uuid>  =>   B<uuid, optional>

=begin html

<br>A unique identifier of this Snapshot copy and its logical data layout. If any two Snapshot copies exist that have the same version UUID, their contents must be logically equivalent. Snapshot copies within the same volume might have the same snapshot-version-uuid.

=end html

=back



=over 2

=item * I<volume-resource-key>  =>   B<resource-key, optional>

=begin html

<br>Resource key of the original source volume where the Snapshot copy resides.

=end html

=back



=head2 container-type

=begin html

Type of overlying disk container. Possible values: <ul> <li> "aggregate" - Container is an aggregate. <li> "broken" - Container is broken pool. <li> "labelmaint" - Container is online label maintenance list. <li> "maintenance" - Container is disk maintenance center. <li> "spare" - Container is spare pool. <li> "unassigned" - Disk ownership has not been assigned. <li> "unknown" - Container is currently unknown. <li> "volume" - Container is a traditional volume. </ul>

=end html



B<Fields>

=over 2

=item * None

=back



=head2 disk-info

=begin html

Information about a disk.

=end html



B<Fields>

=over 2

=item * I<aggregate-name>  =>   B<obj-full-name, optional>

=begin html

<br>Name of the aggregate to which the disk belongs. When the aggregate the disk belongs to is not known or disk is a spare disk, aggregate-name will not be returned. The name is any simple name such as myaggr.

=end html

=back



=over 2

=item * I<aggregate-resource-key>  =>   B<resource-key, optional>

=begin html

<br>Resource key of the aggregate to which the disk belongs. When the aggregate the disk belongs to is not known or disk is a spare disk, aggregate-resource-key will not be returned.

=end html

=back



=over 2

=item * I<capacity-sectors>  =>   B<integer>

=begin html

<br>Total number of disk sectors on this disk, given in units of 'bytes-per-sector'.

=end html

=back



=over 2

=item * I<cluster-resource-key>  =>   B<resource-key>

=begin html

<br>Resource key of the cluster to which the disk belongs.

=end html

=back



=over 2

=item * I<container-type>  =>   B<container-type>

=begin html

<br>Type of overlying disk container.

=end html

=back



=over 2

=item * I<disk-name>  =>   B<string>

=begin html

<br>Name of the disk. Always present in the output. The name will look like "data disk 0b.18", "parity disk 0b.17", "dparity disk 0b.16" etc. Maximum length of 64 characters.

=end html

=back



=over 2

=item * I<disk-path-info>  =>   B<L<"disk-path-info">[]>

=begin html

<br>Information about the paths of nodes attached to this disk.

=end html

=back



=over 2

=item * I<disk-resource-key>  =>   B<resource-key>

=begin html

<br>Resource key of the disk. Always present in the output.

=end html

=back



=over 2

=item * I<disk-size>  =>   B<integer>

=begin html

<br>Disk size in bytes.

=end html

=back



=over 2

=item * I<disk-type>  =>   B<string>

=begin html

<br>Type of the disk. Maximum length of 64 characters.

=end html

=back



=over 2

=item * I<disk-uid>  =>   B<string, optional>

=begin html

<br>Identifier of the disk. This will be the Unique Identifier (UID) of the disk. When UID of a disk is not known, this field will not be returned. Maximum length of 90 characters. Format of disk UUID will look like: 2000000C:50A9022F:00000000:00000000:00000000:00000000: 00000000:00000000:00000000:00000000

=end html

=back



=over 2

=item * I<effective-disk-type>  =>   B<string>

=begin html

<br>Effective type of the disk. Disks can report different disk-type, but the same effective-disk-type. Disks with the same effective-disk-type are compatible for use within the same aggregate.

=end html

=back



=over 2

=item * I<failure-reason>  =>   B<string, optional>

=begin html

<br>The reason the disk is not in service.

=end html

=back



=over 2

=item * I<is-permanently-failed>  =>   B<boolean>

=begin html

<br>Whether the disk is in the failed disk registry.

=end html

=back



=over 2

=item * I<node-name>  =>   B<obj-name>

=begin html

<br>Name of host to which the disk belongs. Always present in the output. The name is any simple name such as myhost.

=end html

=back



=over 2

=item * I<node-resource-key>  =>   B<resource-key>

=begin html

<br>Resource key of the host to which the disk belongs.

=end html

=back



=over 2

=item * I<plex-name>  =>   B<string, optional>

=begin html

<br>Name of the plex to which the disk belongs. The name is any simple name such as plex0. When the plex the disk belongs to is not known or disk is a spare disk, plex-name will not be returned. Maximum length of 64 characters.

=end html

=back



=over 2

=item * I<plex-resource-key>  =>   B<resource-key, optional>

=begin html

<br>Resource key of the plex to which the disk belongs. When the plex the disk belongs to is not known or disk is a spare disk, plex-resource-key will not be returned.

=end html

=back



=over 2

=item * I<raidgroup-name>  =>   B<string, optional>

=begin html

<br>Name of the raidgroup to which the disk belongs. The name is any simple name such as rg0. When the raidgroup the disk belongs to is not known or disk is a spare disk, raidgroup-name will not be returned. Maximum length of 64 characters.

=end html

=back



=over 2

=item * I<raidgroup-resource-key>  =>   B<resource-key, optional>

=begin html

<br>Resource key of the raidgroup to which the disk belongs. When the raidgroup the disk belongs to is not known or disk is a spare disk, raidgroup-resource-key will not be returned.

=end html

=back



=head2 disk-path-info

=begin html

Contains per path statistics, errors and other related data.

=end html



B<Fields>

=over 2

=item * I<disk-port>  =>   B<string, optional>

=begin html

<br>Disk port associated with this path. Possible values are "A" or "B". Omitted for non-disk target.

=end html

=back



=over 2

=item * I<disk-port-name>  =>   B<string, optional>

=begin html

<br>Disk port name associated with this path. This has the form <attachment-style>:<disk-port>, where <attachment-style> is either "FC" for FibreChannel, or "SA" for SAS, and <disk-port> is either "A" or "B". Omitted for non-disk target. <p>Possible values: <ul> <li> "FC:A" <li> "FC:B" <li> "SA:A" <li> "SA:B" </ul>

=end html

=back



=over 2

=item * I<node-name>  =>   B<obj-name>

=begin html

<br>Name of the controller with the initiator port for this path. Always present in the output. The name is any simple name such as myhost.

=end html

=back



=over 2

=item * I<node-resource-key>  =>   B<resource-key>

=begin html

<br>Resource key of the controller with the initiator port for this path.

=end html

=back



=head2 disk-physical-summary-disk-info

=begin html

Summary Disk Information.

=end html



B<Fields>

=over 2

=item * I<data-disk-count>  =>   B<integer>

=begin html

<br>Number of data disks.

=end html

=back



=over 2

=item * I<parity-disk-count>  =>   B<integer>

=begin html

<br>Number of parity disks.

=end html

=back



=over 2

=item * I<parity-space>  =>   B<integer>

=begin html

<br>Total parity disk space in bytes.

=end html

=back



=over 2

=item * I<raw-space>  =>   B<integer>

=begin html

<br>Total data disk space in bytes.

=end html

=back



=over 2

=item * I<spare-disk-count>  =>   B<integer, optional>

=begin html

<br>Number of spare disks. This is not returned if the specified object is an aggregate.

=end html

=back



=over 2

=item * I<spare-space>  =>   B<integer, optional>

=begin html

<br>Total spare disk space in bytes. This is not returned if the specified object is an aggregate.

=end html

=back



=over 2

=item * I<total-disk-count>  =>   B<integer>

=begin html

<br>Number of disks. This is the sum of the data disk, parity disk, and spare disk counts.

=end html

=back



=over 2

=item * I<total-space>  =>   B<integer>

=begin html

<br>Total disk space in bytes. This is the sum of the raw space, parity space, and spare space.

=end html

=back



=head2 disk-physical-summary-lun-info

=begin html

Summary LUN Information.

=end html



B<Fields>

=over 2

=item * I<data-lun-count>  =>   B<integer>

=begin html

<br>Number of data LUNs.

=end html

=back



=over 2

=item * I<raw-space>  =>   B<integer>

=begin html

<br>Total data LUN space in bytes.

=end html

=back



=over 2

=item * I<spare-lun-count>  =>   B<integer, optional>

=begin html

<br>Number of spare LUNs. This is not returned if the specified object is an aggregate.

=end html

=back



=over 2

=item * I<spare-space>  =>   B<integer, optional>

=begin html

<br>Total spare LUN space in bytes. This is not returned if the specified object is an aggregate.

=end html

=back



=over 2

=item * I<total-lun-count>  =>   B<integer>

=begin html

<br>Number of LUNs. This is the sum of the data LUN and spare LUN counts.

=end html

=back



=over 2

=item * I<total-space>  =>   B<integer>

=begin html

<br>Total LUN space in bytes. This is the sum of the raw space and spare space.

=end html

=back



=head2 event-action-info

=begin html

Result of action taken on event. Timestamp returned on success, and error code on failure.

=end html



B<Fields>

=over 2

=item * I<error-code>  =>   B<integer, optional>

=begin html

<br>Error code corresponding to errno returned from event acknowledge/resolve/assign. Absent on success.

=end html

=back



=over 2

=item * I<error-message>  =>   B<string, optional>

=begin html

<br>Error message returned from event acknowledge/resolve/assign. Absent on success.

=end html

=back



=over 2

=item * I<event-id>  =>   B<integer>

=begin html

<br>The input event identifier.

=end html

=back



=over 2

=item * I<timestamp>  =>   B<integer, optional>

=begin html

<br>Timestamp when the event was acknowledged/resolved/assigned. Timestamps absent for IDs that can not be found, or have already been acknowledged/resolved.

=end html

=back



=over 2

=item * I<warning-message>  =>   B<string, optional>

=begin html

<br>Warning message returned from event acknowledge/resolve/assign.

=end html

=back



=head2 event-id-type

=begin html

Event identifier.

=end html



B<Fields>

=over 2

=item * None

=back



=head2 event-info

=begin html

Event information structure

=end html



B<Fields>

=over 2

=item * I<event-about>  =>   B<string>

=begin html

<br>Description of the event type.

=end html

=back



=over 2

=item * I<event-acknowledged-timestamp>  =>   B<timestamp, optional>

=begin html

<br>Timestamp when event was acknowledged.

=end html

=back



=over 2

=item * I<event-acknowledged-user>  =>   B<string, optional>

=begin html

<br>User who acknowledged the event.

=end html

=back



=over 2

=item * I<event-arguments>  =>   B<L<"key-value-pair">[], optional>

=begin html

<br>Argument list for this particular event. Present only if include-event-arguments was set to true in the event-list-iter-start call. If the event has no arguments, this element will be empty. The arguments returned are dependent on the event type and status.

=end html

=back



=over 2

=item * I<event-assigned-user>  =>   B<string, optional>

=begin html

<br>User to whom the event is assigned.

=end html

=back



=over 2

=item * I<event-category>  =>   B<event-category, optional>

=begin html

<br>Category of the event.

=end html

=back



=over 2

=item * I<event-condition>  =>   B<string>

=begin html

<br>Condition of the event.

=end html

=back



=over 2

=item * I<event-id>  =>   B<integer>

=begin html

<br>Id of the event.

=end html

=back



=over 2

=item * I<event-impact-area>  =>   B<event-impact-area>

=begin html

<br>Impact area of the event.

=end html

=back



=over 2

=item * I<event-impact-level>  =>   B<event-impact-level>

=begin html

<br>Impact level of the event.

=end html

=back



=over 2

=item * I<event-name>  =>   B<string>

=begin html

<br>Name of the event. The list of all event names can be obtained using eventclass-list APIs. The element eventclass-info -> event-names[] -> event-name-pretty gives the name of an event.

=end html

=back



=over 2

=item * I<event-notes>  =>   B<L<"event-note">[], optional>

=begin html

<br>List of notes for this particular event. Present only if include-notes is set to true in the event-list-iter-start call. If the event has no notes, this element will be empty.

=end html

=back



=over 2

=item * I<event-obsolete-condition>  =>   B<string, optional>

=begin html

<br>Condition that caused event to become obsolete. An event becomes obsolete when a newer event of the same type is generated.

=end html

=back



=over 2

=item * I<event-obsolete-timestamp>  =>   B<timestamp, optional>

=begin html

<br>Timestamp when event became obsolete. An event becomes obsolete when a newer event of the same type is generated.

=end html

=back



=over 2

=item * I<event-resolved-timestamp>  =>   B<timestamp, optional>

=begin html

<br>Timestamp when event was resolved.

=end html

=back



=over 2

=item * I<event-resolved-user>  =>   B<string, optional>

=begin html

<br>User who resolved the event.

=end html

=back



=over 2

=item * I<event-severity>  =>   B<event-severity>

=begin html

<br>Severity of the event.

=end html

=back



=over 2

=item * I<event-source-name>  =>   B<string>

=begin html

<br>Name of the source of the event. Example: "storage01.example.com".

=end html

=back



=over 2

=item * I<event-source-resource-key>  =>   B<resource-key>

=begin html

<br>Resource key of the source of the event.

=end html

=back



=over 2

=item * I<event-source-type>  =>   B<resource-type>

=begin html

<br>Type of object that generated the event.

=end html

=back



=over 2

=item * I<event-state>  =>   B<event-state>

=begin html

<br>State of the event.

=end html

=back



=over 2

=item * I<event-time>  =>   B<integer>

=begin html

<br>Time when the event was fired.

=end html

=back



=over 2

=item * I<event-type>  =>   B<string>

=begin html

<br>Type or class to which the event belongs to. A list of event types can be obtained by using eventclass-list-iter APIs. The element eventclass-info -> event-class-name in eventclass-info gives the name of an event type.

=end html

=back



=head2 event-note

=begin html

Event note.

=end html



B<Fields>

=over 2

=item * I<author>  =>   B<string>

=begin html

<br>Author of the note.

=end html

=back



=over 2

=item * I<content>  =>   B<string>

=begin html

<br>Content of the note.

=end html

=back



=over 2

=item * I<timestamp>  =>   B<timestamp>

=begin html

<br>Timestamp when the note was added.

=end html

=back



=head2 event-state

=begin html

State of the event. <p> Possible values are: 'new', 'acknowledged', 'resolved', 'obsolete'. <ul> <li>new: The state of an event when it is first triggered. <li>acknowledged: The state of an event which has been acknowledged by a user (and is being worked on). Both new and acknowledged events identify events which are open and need user attention. <li>resolved: The state of an event after a user explicitly resolves it. <li>obsolete: The state of an event which is no longer deemed valid by the system. Both resolved and obsolete events together identify events that no longer need user attention. </ul>

=end html



B<Fields>

=over 2

=item * None

=back



=head2 event-timestamp-range

=begin html

range of event timestamps

=end html



B<Fields>

=over 2

=item * I<end-time>  =>   B<integer>

=begin html

<br>End timestamp, in seconds elapsed since midnight on January 1, 1970.(UTC)

=end html

=back



=over 2

=item * I<start-time>  =>   B<integer>

=begin html

<br>Start timestamp, in seconds elapsed since midnight on January 1, 1970.(UTC)

=end html

=back



=head2 event-type-filter

=begin html

Array of event filters.

=end html



B<Fields>

=over 2

=item * I<event-filter>  =>   B<string>

=begin html

<br>name of the event-filter.

=end html

=back



=head2 event-category

=begin html

Severity of the event. <p> Possible values are: <ul> <li>aggregate_availability <li>aggregate_capacity <li>controller_availability <li>disk_failure <li>disk_shelf_availability <li>lun_availability <li>lun_capacity <li>node_availability <li>node_hardware_failure <li>port_failure <li>qtree_capacity <li>volume_availability <li>volume_capacity <li>vserver_data_availability </ul>

=end html



B<Fields>

=over 2

=item * None

=back



=head2 event-impact-area

=begin html

Impact area of the event. <p> Possible values are: 'configuration', 'capacity', 'availability', 'protection'

=end html



B<Fields>

=over 2

=item * None

=back



=head2 event-impact-level

=begin html

Impact level of the event. <p> Possible values are: <ul> <li>incident: An error or critical event. <li>risk: A warning event which could lead to an incident. <li>event: A simple event from Data ONTAP. </ul>

=end html



B<Fields>

=over 2

=item * None

=back



=head2 event-severity

=begin html

Severity of the event. <p> Possible values are: 'normal', 'information', 'warning', 'error', 'critical'

=end html



B<Fields>

=over 2

=item * None

=back



=head2 igroup-info

=begin html

Information about one igroup.

=end html



B<Fields>

=over 2

=item * I<alua-enabled>  =>   B<boolean, optional>

=begin html

<br>Indicates whether ALUA (Asymmetric Logical Unit Access) features are enabled for luns mapped to this initiator group.

=end html

=back



=over 2

=item * I<igroup-name>  =>   B<obj-name>

=begin html

<br>Name of the igroup.

=end html

=back



=over 2

=item * I<igroup-type>  =>   B<string>

=begin html

<br>Specifies the type (protocol) of the igroup. Possible values are: 'fcp', 'iscsi', and 'mixed'

=end html

=back



=over 2

=item * I<initiators>  =>   B<initiator-name[]>

=begin html

<br>Lists the initiators belonging to this igroup.

=end html

=back



=over 2

=item * I<os-type>  =>   B<string>

=begin html

<br>Specifies the operating system of the igroup. Possible values are: 'windows', 'linux', 'aix', 'hpux', 'solaris', 'hyper_v', 'vmware', 'xen', 'netware', 'openvms' and 'default'.

=end html

=back



=over 2

=item * I<portset-name>  =>   B<obj-name, optional>

=begin html

<br>Name of the portset to which the igroup is bound to. This element will be present only if the igroup is bound to a portset. Portset contains a set of iSCSI Target Portal Groups and/or FCP logical interfaces. The initiators in the igroup can access the mapped LUNs only through the ports added to the portset.

=end html

=back



=over 2

=item * I<portset-resource-key>  =>   B<resource-key, optional>

=begin html

<br>Resource key of the portset to which the igroup is bound to. This element will be present only if the igroup is bound to a portset.

=end html

=back



=over 2

=item * I<resource-key>  =>   B<resource-key>

=begin html

<br>Resource key of this igroup.

=end html

=back



=over 2

=item * I<vsa-enabled>  =>   B<boolean, optional>

=begin html

<br>Indicates whether this initiator group has Volume Set Addressing (VSA) enabled or disabled.

=end html

=back



=over 2

=item * I<vserver-name>  =>   B<obj-name>

=begin html

<br>Name of the Vserver to which the igroup belongs.

=end html

=back



=over 2

=item * I<vserver-resource-key>  =>   B<resource-key>

=begin html

<br>Resource key of the Vserver to which the igroup belongs.

=end html

=back



=head2 initiator-name

=begin html

Name of the initiator.

=end html



B<Fields>

=over 2

=item * None

=back



=head2 job-detail

=begin html

Detail information specific to the task base on task type.

=end html



B<Fields>

=over 2

=item * I<storage-service-job-info>  =>   B<L<"storage-service-job-info">, optional>

=begin html

<br>Information specific to storage service job. Returned only when the job-type is <ul> <li> protect_storage_service_subscribe <li> protect_storage_service_unsubscribe <li> protect_storage_service_update <li> protect_storage_service_conform <li> protect_storage_service_import <li> protect_storage_service_cleanup <li> protect_storage_service_modify <li> protect_storage_service_destroy </ul>

=end html

=back



=head2 job-id

=begin html

Opaque identifier for a job.

=end html



B<Fields>

=over 2

=item * None

=back



=head2 job-info

=begin html

Information about a job. A job may be triggered by an explicit user action or through scheduled operations. Each info includes current state of execution and status of the operation.

=end html



B<Fields>

=over 2

=item * I<end-time>  =>   B<timestamp, optional>

=begin html

<br>Time at which the job completed.

=end html

=back



=over 2

=item * I<estimated-percent-complete>  =>   B<integer, optional>

=begin html

<br>Estimated percent of the work completed for a job. Hold the aggregate estimated percent of work completed based on the completion of all job tasks. This information is an estimate and may not always be available.

=end html

=back



=over 2

=item * I<estimated-time-to-complete>  =>   B<integer, optional>

=begin html

<br>Estimated time (measured in seconds) for job completion. This will hold the aggregate estimated time to completion based on time to completion of all job tasks and in accordance to their execution dependency order. This information is an estimate and may not always be available.

=end html

=back



=over 2

=item * I<job-description>  =>   B<string>

=begin html

<br>Description of the job.

=end html

=back



=over 2

=item * I<job-detail>  =>   B<L<"job-detail">, optional>

=begin html

<br>Additional information relevant to job base on its type.

=end html

=back



=over 2

=item * I<job-id>  =>   B<job-id>

=begin html

<br>Identifier of this job.

=end html

=back



=over 2

=item * I<job-name>  =>   B<string>

=begin html

<br>Name of the job.

=end html

=back



=over 2

=item * I<job-state-events>  =>   B<L<"state-event-info">[]>

=begin html

<br>Job life cycle execution state audit log

=end html

=back



=over 2

=item * I<start-time>  =>   B<timestamp, optional>

=begin html

<br>Time at which the job started.

=end html

=back



=over 2

=item * I<state>  =>   B<job-state>

=begin html

<br>State of the job indicating if the job is currently running etc.

=end html

=back



=over 2

=item * I<status>  =>   B<job-status>

=begin html

<br>Status of the job indicating the overall success or failure. Overall status is computed based on status of the actions performed as part of the job.

=end html

=back



=over 2

=item * I<type>  =>   B<job-type>

=begin html

<br>Type of the job.

=end html

=back



=head2 job-state

=begin html

The state of the job. The possible values are: <ul> <li> queued <li> running <li> completed <li> aborting <li> aborted </ul>

=end html



B<Fields>

=over 2

=item * None

=back



=head2 job-status

=begin html

The status of the job. Rolled up status of the whole job based on all tasks. The possible values are: <ul> <li> normal <li> warning <li> partial_failures <li> error </ul>

=end html



B<Fields>

=over 2

=item * None

=back



=head2 job-task-id

=begin html

Opaque identifier for a job task.

=end html



B<Fields>

=over 2

=item * None

=back



=head2 job-task-info

=begin html

Information about the action for executing one task.

=end html



B<Fields>

=over 2

=item * I<dependency-list>  =>   B<job-task-id[]>

=begin html

<br>List of job-task-id(s) on which this task depends.

=end html

=back



=over 2

=item * I<end-time>  =>   B<timestamp, optional>

=begin html

<br>Time at which the task completed.

=end html

=back



=over 2

=item * I<estimated-percent-complete>  =>   B<integer, optional>

=begin html

<br>Estimated percent of the work completed for a task. Some task allow tracking of progress, such as in the case of data transfer. For this type of tasks, this element will hold the estimated percent completed.

=end html

=back



=over 2

=item * I<estimated-time-to-complete>  =>   B<integer, optional>

=begin html

<br>Estimated time for task completion (measured in seconds).

=end html

=back



=over 2

=item * I<failure-reason>  =>   B<string, optional>

=begin html

<br>Reason causing task failure.

=end html

=back



=over 2

=item * I<job-id>  =>   B<job-id>

=begin html

<br>Identifier of the parent job.

=end html

=back



=over 2

=item * I<messages>  =>   B<L<"task-message-info">[], optional>

=begin html

<br>Messages generated by the task during execution.

=end html

=back



=over 2

=item * I<object-interactions>  =>   B<L<"task-interaction-object">[], optional>

=begin html

<br>Objects the task interacted with during execution.

=end html

=back



=over 2

=item * I<start-time>  =>   B<timestamp, optional>

=begin html

<br>Time at which the task started.

=end html

=back



=over 2

=item * I<state>  =>   B<task-state>

=begin html

<br>State of the task indicating the task current execution state.

=end html

=back



=over 2

=item * I<status>  =>   B<task-status>

=begin html

<br>Status of the task indicating the task current execution status.

=end html

=back



=over 2

=item * I<task-description>  =>   B<string>

=begin html

<br>Description of the task e.g. "Add Vault node to the storage service Gold Mirror".

=end html

=back



=over 2

=item * I<task-detail>  =>   B<L<"task-detail">, optional>

=begin html

<br>Additional information relevant to task based on its type.

=end html

=back



=over 2

=item * I<task-id>  =>   B<job-task-id>

=begin html

<br>Identifier of the task.

=end html

=back



=over 2

=item * I<task-state-events>  =>   B<L<"state-event-info">[]>

=begin html

<br>Task life cycle execution state audit log.

=end html

=back



=over 2

=item * I<type>  =>   B<task-type>

=begin html

<br>Type of the task. Each task type will have additional type specific data.

=end html

=back



=head2 job-type

=begin html

Job types. The possible values are: <ul> <li> protect_storage_service_subscribe <li> protect_storage_service_unsubscribe <li> protect_storage_service_update <li> protect_storage_service_conform <li> protect_storage_service_import <li> protect_storage_service_cleanup <li> protect_storage_service_modify <li> protect_storage_service_destroy <li> protect_restore <li> monitor <li> active_management <li> compensation <li>

=end html



B<Fields>

=over 2

=item * None

=back



=head2 relationship-task-info

=begin html

Details specific to the SnapMirror relationship operations.

=end html



B<Fields>

=over 2

=item * I<connection-resource-key>  =>   B<resource-key, optional>

=begin html

<br>Resource key of the destination node in topology graph of this storage service.

=end html

=back



=over 2

=item * I<destination-member-name>  =>   B<obj-name, optional>

=begin html

<br>Name of the destination object for this relationship.

=end html

=back



=over 2

=item * I<destination-member-resource-key>  =>   B<resource-key, optional>

=begin html

<br>Resource key of the destination object for this relationship.

=end html

=back



=over 2

=item * I<destination-node-name>  =>   B<obj-name, optional>

=begin html

<br>Name of the destination node in topology graph of this storage service.

=end html

=back



=over 2

=item * I<destination-node-resource-key>  =>   B<resource-key, optional>

=begin html

<br>Resource key of the destination node in topology graph of this storage service.

=end html

=back



=over 2

=item * I<last-progress-info>  =>   B<L<"transfer-progress-task-info">, optional>

=begin html

<br>Most recent progress information for a data transfer. Returned only when the task-type is <ul> <li> protect_relationship_transfer_progress </ul>

=end html

=back



=over 2

=item * I<relationship-resource-key>  =>   B<resource-key, optional>

=begin html

<br>Resource key of the relationship between source-member and destination-member. Returned only when the task-type is: <ul> <li> protect_relationship_initialize <li> protect_relationship_update <li> protect_relationship_transfer_progress <li> protect_relationship_destroy <li> protect_relationship_abort <li> protect_relationship_quiesce </ul>

=end html

=back



=over 2

=item * I<source-member-name>  =>   B<obj-name, optional>

=begin html

<br>Name of the source object for this relationship.

=end html

=back



=over 2

=item * I<source-member-resource-key>  =>   B<resource-key, optional>

=begin html

<br>Resource key of the source object for this relationship.

=end html

=back



=over 2

=item * I<source-node-name>  =>   B<obj-name, optional>

=begin html

<br>Name of the source node in topology graph of this storage service.

=end html

=back



=over 2

=item * I<source-node-resource-key>  =>   B<resource-key, optional>

=begin html

<br>Resource key of the source node in topology graph of this storage service.

=end html

=back



=head2 state-event-info

=begin html

Information specific to execution state audit events.

=end html



B<Fields>

=over 2

=item * I<event>  =>   B<string>

=begin html

<br>Possible values can be: </ul> <li> submitted <li> started <li> canceled <li> aborted <li> completed </ul>

=end html

=back



=over 2

=item * I<timestamp>  =>   B<timestamp>

=begin html

<br>Time at which the state changed.

=end html

=back



=head2 storage-service-job-info

=begin html

Detail information specific to the task base on task type.

=end html



B<Fields>

=over 2

=item * I<storage-service-id>  =>   B<obj-id>

=begin html

<br>ID of storage service used in operation.

=end html

=back



=over 2

=item * I<storage-service-name>  =>   B<obj-name>

=begin html

<br>Name of storage service used in operation.

=end html

=back



=over 2

=item * I<subscription-context>  =>   B<string, optional>

=begin html

<br>Subscription context used in the request which generated the job. Only present for a jobs generated with a request containing specific subscription context.

=end html

=back



=head2 task-detail

=begin html

Detailed information specific to the task based on task type.

=end html



B<Fields>

=over 2

=item * I<relationship-info>  =>   B<L<"relationship-task-info">, optional>

=begin html

<br>Information specific to setting up relationships. Returned only when the task-type is: <ul> <li> protect_relationship_create <li> protect_relationship_initialize <li> protect_relationship_update <li> protect_relationship_transfer_progress <li> protect_relationship_destroy <li> protect_relationship_abort <li> protect_relationship_quiesce </ul>

=end html

=back



=head2 task-interaction-object

=begin html

An object that a task interacted with.

=end html



B<Fields>

=over 2

=item * I<task-interaction-object-name>  =>   B<string>

=begin html

<br>Name of the object that the task reported interaction with. Example: "storage01.example.com".

=end html

=back



=over 2

=item * I<task-interaction-object-resource-key>  =>   B<resource-key>

=begin html

<br>Resource key of the object that the task reported interaction with.

=end html

=back



=over 2

=item * I<task-interaction-object-type>  =>   B<resource-type>

=begin html

<br>Type of object that the task reported interaction with.

=end html

=back



=head2 task-message-info

=begin html

Task message information.

=end html



B<Fields>

=over 2

=item * I<message>  =>   B<string>

=begin html

<br>Generated message.

=end html

=back



=over 2

=item * I<timestamp>  =>   B<timestamp, optional>

=begin html

<br>Timestamp when the message was generated.

=end html

=back



=over 2

=item * I<type>  =>   B<task-message-type>

=begin html

<br>Type of message.

=end html

=back



=head2 task-message-type

=begin html

Task message types. The possible values are: <ul> <li> info <li> warning <li> error </ul>

=end html



B<Fields>

=over 2

=item * None

=back



=head2 task-state

=begin html

The state of the task. The possible values are: <ul> <li> waiting <li> queued <li> running <li> completed </ul>

=end html



B<Fields>

=over 2

=item * None

=back



=head2 task-status

=begin html

The status of the task. Valid values are: <ul> <li> normal <li> error <li> skipped </ul>

=end html



B<Fields>

=over 2

=item * None

=back



=head2 task-type

=begin html

Task types. Valid values are: <ul> <li> protect_secondary_provision <li> protect_secondary_destroy <li> protect_secondary_offline <li> protect_relationship_create <li> protect_relationship_initialize <li> protect_relationship_modify <li> protect_relationship_update <li> protect_relationship_transfer_progress <li> protect_relationship_destroy <li> protect_relationship_abort <li> protect_relationship_quiesce <li> protect_restore <li> protect_restore_ndmp_utility <li> protect_storage_service_utility <li> protect_vserver_peering <li> monitor_discover <li> active_quota_management <li> empty <li> administrative <li> compensation </ul>

=end html



B<Fields>

=over 2

=item * None

=back



=head2 transfer-progress-task-info

=begin html

Data transfer progress update details.

=end html



B<Fields>

=over 2

=item * I<ontap-transfer-job-id>  =>   B<integer, optional>

=begin html

<br>The Data ONTAP job identifier of the current relationship transfer.

=end html

=back



=over 2

=item * I<progress-last-updated>  =>   B<timestamp>

=begin html

<br>A timestamp indicating when the progress of the transfer was last updated.

=end html

=back



=over 2

=item * I<relationship-progress>  =>   B<integer, optional>

=begin html

<br>The total number of bytes that have been processed so far for the current transfer activity of the relationship.

=end html

=back



=over 2

=item * I<snapshot-checkpoint>  =>   B<integer, optional>

=begin html

<br>The number of bytes transferred as recorded for the checkpoint of the current or most recent transfer snapshot.

=end html

=back



=over 2

=item * I<snapshot-progress>  =>   B<integer, optional>

=begin html

<br>The number of bytes transferred for the transfer-snapshot.

=end html

=back



=over 2

=item * I<transfer-snapshot>  =>   B<string, optional>

=begin html

<br>The name of the current snapshot copy being transferred.

=end html

=back



=head2 igroup-reference

=begin html

Name and Id of an igroup.

=end html



B<Fields>

=over 2

=item * I<igroup-mapping-id>  =>   B<obj-id>

=begin html

<br>ID of the mapping of this igroup to the corresponding LUN.

=end html

=back



=over 2

=item * I<igroup-name>  =>   B<obj-name>

=begin html

<br>Name of the igroup.

=end html

=back



=over 2

=item * I<igroup-resource-key>  =>   B<resource-key>

=begin html

<br>Resource key of the igroup.

=end html

=back



=head2 lun-info

=begin html

Information about a lun.

=end html



B<Fields>

=over 2

=item * I<alignment>  =>   B<string>

=begin html

<br>Alignment of the LUN. Possible values: <ul> <li> aligned <li> misaligned <li> partial_writes <li> indeterminite </ul>

=end html

=back



=over 2

=item * I<comment>  =>   B<string>

=begin html

<br>User-specified comment for the LUN. This field is unavailable when the LUN is in a snapshot or while the LUN fenced for a restore operation.

=end html

=back



=over 2

=item * I<igroups>  =>   B<L<"igroup-reference">[], optional>

=begin html

<br>list of igroups to which the LUN is mapped to. Returns emtpy array incase the LUN is not mapped to any igroup.

=end html

=back



=over 2

=item * I<is-lun-space-reserved>  =>   B<boolean>

=begin html

<br>Indicates if the space for LUN is reserved the containing volume.

=end html

=back



=over 2

=item * I<is-space-alloc-enabled>  =>   B<boolean>

=begin html

<br>Whether or not the LUN has space allocation enabled. This field is unavailable when the LUN is in a snapshot or while fenced for a restore operation.

=end html

=back



=over 2

=item * I<lun-class>  =>   B<string>

=begin html

<br>The class of the LUN. Possible values: <ul> <li> regular - The LUN is intended for normal blocks access <li> protocol_endpoint - The LUN is a VMware vvol protocol endpoint <li> vvol - The LUN is a VMware vvol data LUN </ul>

=end html

=back



=over 2

=item * I<lun-path>  =>   B<obj-name>

=begin html

<br>Path name of the lun including the volume or qtree where the lun exists. The name will be similar to myvol/mylun or myvol/myqtree/mylun.

=end html

=back



=over 2

=item * I<lun-size>  =>   B<integer>

=begin html

<br>Lun size in bytes.

=end html

=back



=over 2

=item * I<lun-status>  =>   B<obj-status>

=begin html

<br>Current status of the lun based on all events

=end html

=back



=over 2

=item * I<lun-used-space>  =>   B<integer>

=begin html

<br>Number of bytes used by the LUN.

=end html

=back



=over 2

=item * I<mapped>  =>   B<boolean>

=begin html

<br>Whether or not the LUN is mapped to any initiators. "true" if mapped, "false" otherwise. This field is not applicable to LUNs where the lun-class attribute is set to 'vvol'.

=end html

=back



=over 2

=item * I<multiprotocol-type>  =>   B<string>

=begin html

<br>The image type of the lun. This value determines the proper alignment settings for the desired host filesystem layout. Possible values: <ul> <li> aix - The LUN will be used to store an AIX filesystem. <li> hpux - The LUN will be used to store an HP-UX filesystem. <li> hyper_v - The LUN will be used to store Hyper-V VHDs (Virtual Hard Disks). <li> image - The default type indicating no assumptions will be made about the data stored in the LUN. <li> linux - The LUN will be used to store a Linux filesystem with no partition table. <li> netware - The LUN will be used to store a Netware filesystem. <li> openvms - The LUN will be used to store an OpenVMS filesystem. <li> solaris - The LUN will be used to store a Solaris filesystem, in a single slice partition. <li> solaris_efi - The LUN will be used to store a Solaris filesystem with an EFI partition table. <li> vmware - The LUN will be used to store a VMware Virtual Machine File System (VMFS) containing Virtual Machine Disk Files (VMDKs). <li> windows - The LUN will be used to store a Windows filesystem with a Master Boot Record (MBR) partition table. <li> windows_2008 - The LUN will be used to store a Windows filesystem with a Master Boot Record(MBR) partition table on Windows 2008 or later. <li> windows_gpt - The LUN will be used to store a Windows filesystem with a GUID Partition Table (GPT). </ul>

=end html

=back



=over 2

=item * I<qtree-name>  =>   B<obj-name, optional>

=begin html

<br>Name of qtree on which the lun resides. Present in the output only if the lun resides on a qtree. The name is any simple name such as myqtree.

=end html

=back



=over 2

=item * I<qtree-resource-key>  =>   B<resource-key>

=begin html

<br>Resource key of the Qtree to which the lun belongs.

=end html

=back



=over 2

=item * I<resource-key>  =>   B<resource-key>

=begin html

<br>Resource key of this lun.

=end html

=back



=over 2

=item * I<serial-number>  =>   B<string>

=begin html

<br>Serial number of the LUN. The serial number is a 12-character string formed of upper and lower-case letters, numbers, slashes (/), and hyphen (-) characters.

=end html

=back



=over 2

=item * I<volume-name>  =>   B<obj-name, optional>

=begin html

<br>Name of volume on which the lun resides. The name is any simple name such as myvol. volume-name is not returned if the lun belongs to a qtree and the authenticated admin does not have the required capability.

=end html

=back



=over 2

=item * I<volume-resource-key>  =>   B<resource-key>

=begin html

<br>Resource key of the Volume to which the lun belongs.

=end html

=back



=over 2

=item * I<vserver-name>  =>   B<obj-name>

=begin html

<br>Name of the vserver on which the lun resides. Always present in the output. The name is any simple name such as myvserver.

=end html

=back



=over 2

=item * I<vserver-resource-key>  =>   B<resource-key>

=begin html

<br>Resource key of the Vserver to which the lun belongs.

=end html

=back



=head2 data-protocol

=begin html

Data protocol configured on an interface. Possible values: <ul> <li> "nfs" - Used for NFS connections, <li> "cifs" - Used for CIFS connections, <li> "iscsi" - Used for iSCSI connections, <li> "fcp" - Used for Fibre Channel connections, <li> "fcache" - Used for FlexCache connections, <li> "none" - Used for management. Does not serve any file protocols. </ul>

=end html



B<Fields>

=over 2

=item * None

=back



=head2 net-interface-info

=begin html

Information of about one interface.

=end html



B<Fields>

=over 2

=item * I<address-type>  =>   B<string, optional>

=begin html

<br>Type of IP address configured for the interface. Possible values are: <ul> <li> ipv4 <li> ipv6 </ul>

=end html

=back



=over 2

=item * I<administrative-status>  =>   B<string, optional>

=begin html

<br>The administrative status of the interface. The administrative status can differ from the operational status; for instance, if you specify the status as up but a network problem prevents the interface from functioning, the operational status remains as down. Possible values: <ul> <li> 'up', <li> 'down', <li> 'unknown' </ul>

=end html

=back



=over 2

=item * I<cluster-name>  =>   B<string>

=begin html

<br>Name of the cluster that the interface resides on.

=end html

=back



=over 2

=item * I<current-node>  =>   B<string, optional>

=begin html

<br>Name of the interface's current node.

=end html

=back



=over 2

=item * I<current-port>  =>   B<string, optional>

=begin html

<br>Name of the interface's current port.

=end html

=back



=over 2

=item * I<data-protocols>  =>   B<data-protocol[], optional>

=begin html

<br>The list of data protocols configured on the interface.

=end html

=back



=over 2

=item * I<failover-group>  =>   B<string, optional>

=begin html

<br>The failover group name of this interface.

=end html

=back



=over 2

=item * I<failover-policy>  =>   B<string>

=begin html

<br>Failover policy: "nextavail", "priority", "disabled", "unmapped".

=end html

=back



=over 2

=item * I<home-node>  =>   B<string, optional>

=begin html

<br>Name of the interface's home node.

=end html

=back



=over 2

=item * I<home-port>  =>   B<string, optional>

=begin html

<br>Name of the interface's home port.

=end html

=back



=over 2

=item * I<is-home>  =>   B<boolean, optional>

=begin html

<br>True if the interface is currently on 'home-node' and 'home-port'.

=end html

=back



=over 2

=item * I<name>  =>   B<obj-name>

=begin html

<br>Name of the interface (e.g.: e0a).

=end html

=back



=over 2

=item * I<network-address>  =>   B<string, optional>

=begin html

<br>Network address for the interface.

=end html

=back



=over 2

=item * I<network-prefix-length>  =>   B<integer, optional>

=begin html

<br>Prefix length for the network mask of the interface.

=end html

=back



=over 2

=item * I<operational-status>  =>   B<string>

=begin html

<br>Operational status of the interface, valid values are "up", "down", "testing", "unknown".

=end html

=back



=over 2

=item * I<owner-name>  =>   B<obj-name>

=begin html

<br>Name of the owner of the interface.

=end html

=back



=over 2

=item * I<owner-resource-key>  =>   B<resource-key>

=begin html

<br>The resource key for the owner of the interface. The owner is determined from the network interface's role. If the role is "data" then the owner will be a vserver. If the role is "node_mgmt" then the owner will be a cluster node. Otherwise the owner will be a cluster.

=end html

=back



=over 2

=item * I<owner-type>  =>   B<obj-type>

=begin html

<br>Type of the interface's owner. Possible values are: <ul> <li> cluster <li> cluster_node <li> vserver </ul>

=end html

=back



=over 2

=item * I<resource-key>  =>   B<resource-key>

=begin html

<br>The resource key for the interface.

=end html

=back



=head2 portset-igroup

=begin html

List of initiator group bound to the portset.

=end html



B<Fields>

=over 2

=item * I<igroup-name>  =>   B<string>

=begin html

<br>Name of initiator group bound to this portset.

=end html

=back



=over 2

=item * I<igroup-resource-key>  =>   B<resource-key>

=begin html

<br>Identifier of initiator group.

=end html

=back



=head2 portset-info

=begin html

Information about a portset.

=end html



B<Fields>

=over 2

=item * I<portset-igroups>  =>   B<L<"portset-igroup">[]>

=begin html

<br>List of initiator group bound to this portset.

=end html

=back



=over 2

=item * I<portset-members>  =>   B<portset-member[]>

=begin html

<br>List of portset members. The portset members can be tpgroups, FCP data LIFs.

=end html

=back



=over 2

=item * I<portset-name>  =>   B<obj-name>

=begin html

<br>Name of the portset.

=end html

=back



=over 2

=item * I<portset-type>  =>   B<string>

=begin html

<br>Portset type. The type of portset can be <ul> <li>iscsi <li>fcp <li>mixed </ul>

=end html

=back



=over 2

=item * I<resource-key>  =>   B<resource-key>

=begin html

<br>Resource Key for this portset.

=end html

=back



=over 2

=item * I<vserver-name>  =>   B<obj-name>

=begin html

<br>Name of vserver on which the portset resides. Always present in the output. The name is any simple name such as 'myhost'.

=end html

=back



=over 2

=item * I<vserver-resource-key>  =>   B<resource-key>

=begin html

<br>Identifier of vserver on which the portset resides. Always present in the output.

=end html

=back



=head2 portset-member

=begin html

Name of the portset member (tpgroups or FCP data LIF).

=end html



B<Fields>

=over 2

=item * None

=back



=head2 resource-key

=begin html

A self-describing string identifier for a managed resource.

=end html



B<Fields>

=over 2

=item * None

=back



=head2 resource-type

=begin html

A canonical type name for a managed resource. Includes both Data ONTAP and OnCommand resource types. Valid Data ONTAP resource types: <ul> <li>aggregate <li>cluster <li>cluster_node <li>disk <li>export_policy <li>export_rule <li>fcp_lif <li>fcp_port <li>flash_device <li>igroup <li>iscsi_portal_group <li>lun <li>lun_mapping <li>network_lif <li>network_port <li>ontap_job_schedule <li>plex <li>portset <li>qtree <li>raid_group <li>routing_group <li>service_processor <li>sis_policy <li>snap_mirror <li>snapshot <li>snapshot_policy <li>snapshot_policy_schedule <li>storage_class <li>storage_shelf <li>volume <li>volume_move <li>vserver </ul> Valid OnCommand resource types: <ul> <li>management_station <li>resource_pool <li>service_workflow <li>storage_service <li>storage_service_connection <li>storage_service_node </ul>

=end html



B<Fields>

=over 2

=item * None

=back



=head2 resource-pool-info

=begin html

Information about a resource pool.

=end html



B<Fields>

=over 2

=item * I<aggregates>  =>   B<resource-key[]>

=begin html

<br>The collection of aggregates that belong to the resource pool.

=end html

=back



=over 2

=item * I<capacity-available>  =>   B<integer>

=begin html

<br>The combined available capacity of all the aggregates in the resource pool (in bytes).

=end html

=back



=over 2

=item * I<capacity-total>  =>   B<integer>

=begin html

<br>The combined total capacity of all the aggregates in the resource pool (in bytes).

=end html

=back



=over 2

=item * I<capacity-used>  =>   B<integer>

=begin html

<br>The combined used capacity of all the aggregates in the resource pool (in bytes).

=end html

=back



=over 2

=item * I<description>  =>   B<string>

=begin html

<br>The description of the resource pool.

=end html

=back



=over 2

=item * I<name>  =>   B<string>

=begin html

<br>The name of the resource pool.

=end html

=back



=over 2

=item * I<resource-key>  =>   B<resource-key>

=begin html

<br>The resource key for the resource pool.

=end html

=back



=head2 snapshot-location-info

=begin html

Information about where a replica of the specified snapshot copy is located.

=end html



B<Fields>

=over 2

=item * I<node-name>  =>   B<obj-name, optional>

=begin html

<br>Name of the storage service node that the volume is a member of.

=end html

=back



=over 2

=item * I<node-resource-key>  =>   B<resource-key, optional>

=begin html

<br>Resource key of the storage service node that the volume is a member of.

=end html

=back



=over 2

=item * I<snapshot-instance-uuid>  =>   B<uuid>

=begin html

<br>This ID uniquely identifies a snapshot copy and its physical data layout. If any two snapshot copies in the world have the same instance UUID, they must be different instances of the exact same snapshot copy. Snapshot copies within the same volume must have different snapshot-instance-uuids.

=end html

=back



=over 2

=item * I<snapshot-name>  =>   B<string>

=begin html

<br>Name of the snapshot copy that was found.

=end html

=back



=over 2

=item * I<snapshot-resource-key>  =>   B<resource-key>

=begin html

<br>Resource key of the snapshot copy that was found.

=end html

=back



=over 2

=item * I<snapshot-version-uuid>  =>   B<uuid>

=begin html

<br>This ID identifies a snapshot copy and its logical data layout. If any two snapshot copies in the world have the same version UUID, their contents must be logically equivalent. Snapshot copies within the same volume may have the same snapshot-version-uuid.

=end html

=back



=over 2

=item * I<storage-service-name>  =>   B<obj-name>

=begin html

<br>Name of the storage service that the volume is a member of.

=end html

=back



=over 2

=item * I<storage-service-resource-key>  =>   B<resource-key>

=begin html

<br>Resource key of the storage service that the volume is a member of.

=end html

=back



=over 2

=item * I<volume-name>  =>   B<obj-full-name>

=begin html

<br>Name of the volume which holds the snapshot copy that was found.

=end html

=back



=over 2

=item * I<volume-resource-key>  =>   B<resource-key>

=begin html

<br>The resource key for the volume which holds the snapshot copy that was found.

=end html

=back



=head2 snapshot-location-result-info

=begin html

Results for the replica locations of the specified snapshot copy.

=end html



B<Fields>

=over 2

=item * I<requested-snapshot-identifier>  =>   B<L<"snapshot-identifier">>

=begin html

<br>Snapshot identifier as specified in the input.

=end html

=back



=over 2

=item * I<snapshot-locations>  =>   B<L<"snapshot-location-info">[]>

=begin html

<br>Information about where the replicas of the specified snapshot copy are located. List is empty if no replicas were found for the specified criteria.

=end html

=back



=head2 certificate

=begin html

An X.509 certificate in Privacy Enhanced Mail (PEM) format.

=end html



B<Fields>

=over 2

=item * None

=back



=head2 certificate-chain

=begin html

A chain of X.509 certificates in Privacy Enhanced Mail (PEM) format.

=end html



B<Fields>

=over 2

=item * None

=back



=head2 keyvalue

=begin html

Name-value field pair in the metadata.

=end html



B<Fields>

=over 2

=item * I<field-name>  =>   B<string>

=begin html

<br>Name of the metadata field. Field names can be 1 to 255 characters in length and are case-insensitive.

=end html

=back



=over 2

=item * I<field-value>  =>   B<string>

=begin html

<br>Arbitrary, user-defined data expressed as a string. The string is opaque to the server and must not exceed 16384 (16k) characters in length.

=end html

=back



=head2 storage-service-import-info

=begin html

Information about members to be imported into the storage service. Members are implied through the relationship source and destination objects.

=end html



B<Fields>

=over 2

=item * I<connection-resource-key>  =>   B<resource-key>

=begin html

<br>Resource key of the storage service connection which the relationship will be associated with.

=end html

=back



=over 2

=item * I<destination-volume-resource-key>  =>   B<resource-key, optional>

=begin html

<br>Resource key of the relationship's destination volume to be imported. The source and destination volumes of the relationship will be imported into their respective storage service nodes. If specified, relationship-resource-key should not be specified.

=end html

=back



=over 2

=item * I<relationship-resource-key>  =>   B<resource-key, optional>

=begin html

<br>Resource key of the relationship to be imported. The source and destination volumes of the relationship will be imported into their respective storage service nodes. If specified, destination-volume-resource-key should not be specified.

=end html

=back



=head2 storage-service-info

=begin html

null

=end html



B<Fields>

=over 2

=item * I<is-storage-service-marked-for-deletion>  =>   B<boolean>

=begin html

<br>Whether the storage service is marked for deletion. This flag is set for storage services for which attempted removal was not completely succesful. Periodic configuration check or storage-service-destroy may complete the removal later.

=end html

=back



=over 2

=item * I<storage-service-client-tag>  =>   B<string>

=begin html

<br>Arbitrary client provided description of the program utilizing the storage service. This value can be a maximum of 32 characters.

=end html

=back



=over 2

=item * I<storage-service-contact-list>  =>   B<email-address[], optional>

=begin html

<br>List of contact email addresses, each of which can be no longer than 255 characters.

=end html

=back



=over 2

=item * I<storage-service-description>  =>   B<string, optional>

=begin html

<br>Description of the storage service.

=end html

=back



=over 2

=item * I<storage-service-name>  =>   B<obj-name>

=begin html

<br>Name of the storage service. This value can be a maximum of 255 characters.

=end html

=back



=over 2

=item * I<storage-service-owner>  =>   B<string, optional>

=begin html

<br>Name of the owner of the storage service. This value can be a maximum of 64 characters.

=end html

=back



=over 2

=item * I<storage-service-resource-key>  =>   B<resource-key>

=begin html

<br>Resource key of the storage service.

=end html

=back



=over 2

=item * I<storage-service-topology-info>  =>   B<L<"storage-service-topology-info">>

=begin html

<br>Composite entity representing the nodes and connections of a protection and provisioning strategy.

=end html

=back



=head2 storage-service-member-info

=begin html

Information about one member of a storage service.

=end html



B<Fields>

=over 2

=item * I<incoming-connection-resource-key>  =>   B<resource-key, optional>

=begin html

<br>Resource key of the connection between member's source-node and the node to which the member belongs. Returned only for non-root members.

=end html

=back



=over 2

=item * I<incoming-relationship-resource-key>  =>   B<resource-key, optional>

=begin html

<br>Resource key of the relationship between source-member and this member. Returned only for non-root members when relationship exists.

=end html

=back



=over 2

=item * I<is-enabled>  =>   B<boolean>

=begin html

<br>Whether this member is enabled. If the member is disabled, it does not actively participate in the replication updates and conformance checks. All storage objects and relationships are preserved. However, relationships are not updated and no new relationships are created. Member is marked as disabled only if all its subscriptions have been removed.

=end html

=back



=over 2

=item * I<is-member-missing>  =>   B<boolean, optional>

=begin html

<br>If the value is true, it indicates that the storage service member volume no longer exists on the storage system or the member volume may exist but not associated with this node member.

=end html

=back



=over 2

=item * I<member-name>  =>   B<obj-full-name>

=begin html

<br>Name of the member.This string can be a maximum of 255 characters.

=end html

=back



=over 2

=item * I<member-resource-key>  =>   B<resource-key>

=begin html

<br>Resource key of the member.

=end html

=back



=over 2

=item * I<member-type>  =>   B<string>

=begin html

<br>Type of the member.Possible values are:'volume'.

=end html

=back



=over 2

=item * I<node-name>  =>   B<string>

=begin html

<br>Name of the node to which the member belongs. This value can be a maximum of 255 characters.

=end html

=back



=over 2

=item * I<node-resource-key>  =>   B<resource-key>

=begin html

<br>Resource key of the node to which the member belongs.

=end html

=back



=over 2

=item * I<source-member-name>  =>   B<obj-full-name, optional>

=begin html

<br>Name of the source member. Returned only for non-root members. This value can be a maximum of 255 characters.

=end html

=back



=over 2

=item * I<source-member-resource-key>  =>   B<resource-key, optional>

=begin html

<br>Resrouce key of the source member. For example, if this member is the destination volume for a mirror relationship, then source member is the corresponding source volume. Returned only for non-root members.

=end html

=back



=over 2

=item * I<source-node-name>  =>   B<string, optional>

=begin html

<br>Name of the node to which the source member belongs. Returned only for non-root members. This value can be a maximum of 255 characters.

=end html

=back



=over 2

=item * I<source-node-resource-key>  =>   B<resource-key, optional>

=begin html

<br>Resource key of the node to which the source member belongs. Returned only for non-root members.

=end html

=back



=over 2

=item * I<subscriptions>  =>   B<resource-key[], optional>

=begin html

<br>Subscription resource keys of the context that was used when subscribing. <p> Present only for the members of the root node. When member is fully unsubscribed via all contexts, this list is empty. In such case, no actions such as updating the SnapMirror relationship or provisioning secondary storage are taken for that member. However, existing storage and relationships are left intact. These leftover artifacts can be relinquished or destroyed using storage-service-cleanup. <p> Subscription information can be obtained by calling storage-service-subscription-iter API.

=end html

=back



=head2 storage-service-subscription-info

=begin html

Information about one storage service subscription.

=end html



B<Fields>

=over 2

=item * I<storage-service-name>  =>   B<obj-name>

=begin html

<br>Name of the storage service.

=end html

=back



=over 2

=item * I<storage-service-resource-key>  =>   B<resource-key>

=begin html

<br>Resource key of the storage service.

=end html

=back



=over 2

=item * I<subscription-context>  =>   B<string>

=begin html

<br>Subscription context used to subscribe the members. This value can be a maximum of 255 characters.

=end html

=back



=over 2

=item * I<subscription-members>  =>   B<L<"storage-service-subscription-member-info">[]>

=begin html

<br>List of member objects subscribed with this subscription. Subscription members are always on the root node of the storage service.

=end html

=back



=over 2

=item * I<subscription-resource-key>  =>   B<resource-key>

=begin html

<br>Resource key of the subscription object.

=end html

=back



=head2 storage-service-subscription-member-info

=begin html

Information about one member of a storage service subscription.

=end html



B<Fields>

=over 2

=item * I<is-member-deleted>  =>   B<boolean, optional>

=begin html

<br>If the value is true, it indicates that the storage service member volume no longer exists on the storage system.

=end html

=back



=over 2

=item * I<member-name>  =>   B<obj-full-name>

=begin html

<br>Name of the member. This value can be a maximum of 255 characters.

=end html

=back



=over 2

=item * I<member-resource-key>  =>   B<resource-key>

=begin html

<br>Resource key of the member.

=end html

=back



=over 2

=item * I<member-type>  =>   B<string>

=begin html

<br>Type of the member. Possible values are: 'volume'.

=end html

=back



=head2 storage-service-topology-connection-info

=begin html

Contains the configurable properties of the relationship between two nodes.

=end html



B<Fields>

=over 2

=item * I<connection-resource-key>  =>   B<resource-key, optional>

=begin html

<br>Resource key of the Connection. Always present in the output. Auto-assigned for the new connections. Must be included when referring to existing connections, for example while modifying existing connection attributes.

=end html

=back



=over 2

=item * I<connection-type>  =>   B<string>

=begin html

<br>Data ONTAP relationship between two nodes. Possible values are: 'mirror', 'vault'.

=end html

=back



=over 2

=item * I<destination-node-name>  =>   B<string>

=begin html

<br>Destination node name. The name of the connection's destination node end point. Must be present for newly created nodes. For modification, if node name changes, the new node name must be used. This value can be a maximum of 255 characters.

=end html

=back



=over 2

=item * I<destination-node-resource-key>  =>   B<resource-key, optional>

=begin html

<br>Resource key of the destination node. Must not be provided if the node is new. For modification of existing topologies, this value must be provided.

=end html

=back



=over 2

=item * I<is-lag-error-enabled>  =>   B<boolean, optional>

=begin html

<br>Indicates whether the system should generate an error event when the last update of relationship is older than lag-error-threshold value. The default value is true.

=end html

=back



=over 2

=item * I<is-lag-warning-enabled>  =>   B<boolean, optional>

=begin html

<br>Indicates whether the system should generate a warning event when the last update of relationship is older than the lag-warning-threshold value. The default value is true.

=end html

=back



=over 2

=item * I<lag-error-threshold>  =>   B<integer, optional>

=begin html

<br>Lag, in seconds. If the last update of relationship is older than this value, and if the element is-lag-error-enabled is set, the system generates an error event for that relationship. The default value is 172800 seconds (which is 2 days).

=end html

=back



=over 2

=item * I<lag-warning-threshold>  =>   B<integer, optional>

=begin html

<br>Lag, in seconds. If the last update of relationship is older than this value, and if the element is-lag-warning-enabled is set, the system generates a warning event for that relationship. The default value is 129600 seconds (which is 1.5 days).

=end html

=back



=over 2

=item * I<max-transfer-rate>  =>   B<integer, optional>

=begin html

<br>Specifies the upper bound for each relationship, in kilobytes per second, at which data is transferred between Data ONTAP clusters. The default is unlimited (0) which permits the relationship to fully utilize the available network bandwidth. The max-transfer-rate option does not affect relationships confined to a single cluster.

=end html

=back



=over 2

=item * I<source-node-name>  =>   B<string>

=begin html

<br>Source node name. The name of the connection's source node end point. Must be present for newly created nodes. For modification, if node name changes, the new node name must be used. This value can be a maximum of 255 characters.

=end html

=back



=over 2

=item * I<source-node-resource-key>  =>   B<resource-key, optional>

=begin html

<br>Resource key of the source node. Must not be provided if node is new. For modification of existing topologies, this value must be provided.

=end html

=back



=head2 storage-service-topology-info

=begin html

Information about the topology of a storage service which composite entity representing the nodes and connections of a protection and provisioning strategy.

=end html



B<Fields>

=over 2

=item * I<connections>  =>   B<L<"storage-service-topology-connection-info">[], optional>

=begin html

<br>Set of connections. Connection is a component of a topology. A connection has configurable properties of the relationship between two nodes. This field will not be set for single node topologies. But for multi-node topologies, it must be set.

=end html

=back



=over 2

=item * I<nodes>  =>   B<L<"storage-service-topology-node-info">[]>

=begin html

<br>Set of nodes. Node is a component of a topology. A node has configurable properties of storage service primary sources as well as mirror and vault destinations.

=end html

=back



=head2 storage-service-topology-node-info

=begin html

storage-service-topology-node-info contains the information about a node.

=end html



B<Fields>

=over 2

=item * I<node-name>  =>   B<string>

=begin html

<br>Name of the node. This value can be a maximum of 255 characters. Node name must be unique within the topology. When renaming an existing node during modify, the new node name must be specified in all the storage-service-topology-connection-info, that have this node as either the source or the destination.

=end html

=back



=over 2

=item * I<node-resource-key>  =>   B<resource-key, optional>

=begin html

<br>Resource key of the node. Always present in the output. Auto-assigned for the new nodes. Must be included when referring to existing nodes, for example when modifying existing node attributes.

=end html

=back



=over 2

=item * I<resource-pools>  =>   B<resource-key[], optional>

=begin html

<br>Pool of Data ONTAP resources that are used to provision secondary storage. Should not be specified for the root node, and optional for non-root nodes.

=end html

=back



=over 2

=item * I<service-workflow-resource-key>  =>   B<resource-key, optional>

=begin html

<br>Provisioning workflow that is used to provision secondary storage. Should not be specified for the root node, and optional for non-root nodes. The name of storage-service-workflow is obtainable from storage-service-workflow-list-info API.

=end html

=back



=head2 storage-service-workflow-info

=begin html

null

=end html



B<Fields>

=over 2

=item * I<storage-service-workflow-description>  =>   B<string>

=begin html

<br>Description of the storage service workflow.

=end html

=back



=over 2

=item * I<storage-service-workflow-name>  =>   B<obj-name>

=begin html

<br>Name of the storage service workflow. This value can be a maximum of 255 characters.

=end html

=back



=over 2

=item * I<storage-service-workflow-resource-key>  =>   B<resource-key>

=begin html

<br>Resource key of the storage service workflow.

=end html

=back



=over 2

=item * I<storage-service-workflow-type>  =>   B<string>

=begin html

<br>Type of storage service workflow. Possible values are "mirror" and "vault".

=end html

=back



=head2 email-address

=begin html

A single email address. It cannot contain spaces, semi-colons or unprintable characters.

=end html



B<Fields>

=over 2

=item * None

=back



=head2 file-system-block-type

=begin html

Block Type of the file system. The volumes on both the source and destination sides of a SnapMirror relationship must be of the same block type. Volumes contained in a larger parent agregate may have a block-type of 64_bit. For upgraded systems it is possible that this value may be unknown until the system can determine the block-type. Possible values are: <ul> <li> 32_bit <li> 64_bit <li> unknown </ul>

=end html



B<Fields>

=over 2

=item * None

=back



=head2 key-value-pair

=begin html

The key/value for a generic object attribute.

=end html



B<Fields>

=over 2

=item * I<key>  =>   B<string>

=begin html

<br>key of the generic object attribute

=end html

=back



=over 2

=item * I<value>  =>   B<string>

=begin html

<br>Value of the generic object attribute

=end html

=back



=head2 obj-full-name

=begin html

Full name of an object. This typedef is an alias for the builtin ZAPI type <b>string</b>. An object full name conforms to all the rules of an obj-name, except that the full name may be up to 255 characters long. <p> Full names are created by concatenating an object name with any parent object names, so as to create a unique name for an object. The format of full names is as follows: <ul> <li> <B>cluster</B> full names are the either the fully-qualified domain name or the IP address of the cluster. <li> <B>cluster-node</B> full names are the either the fully-qualified domain name or the IP address of the cluster. <li> <B>aggregate</B> full names are the cluster-node name and the aggregate name, separated by a colon, e.g. <I>cluster-node:aggr0</I>. <li> <B>volume</B> full names are the vserver name and the volume name, separated by ":/", e.g. <I>vserver:/volume</I>. Note this does not include the "/vol" prefix. Volume and aggregate full names are distinguished by the presence of a forward slash after the colon. <li> <B>qtree</B> full names are the containing volume full name and the qtree name, separated by a slash, e.g. <I>vserver:/volume/qtree</I>. The data not contained by any qtree may be represented by "-", e.g. <I>vserver:/volume/-</I>. <li> <B>lun</B> full names are either a volume or qtree full name and the LUN path, separated by a slash, e.g. <I>vserver:/volume/LUN</I> or <I>vserver:/volume/qtree/LUN</I>. <li> <B>initiator-group</B> full names are vserver name and the initiator group name, separated by a colon, e.g. <I>vserver:igroup</I>. <li> <B>export-policy</B> full names are vserver name and the policy name, separated by a colon, e.g. <I>vserver:policy-name</I>. <li> <B>lif</B> full names are a cluster, cluster-node, or vserver name and the interface name, separated by a colon, e.g. <I>cluster-name|cluster-node-name|vserver-name:lif</I>. <li> <B>port-set</B> full names are the vserver name and the portset name, separated by a colon, e.g. <I>vserver:portset</I>. <li> <B>fcp-target</B> full names are the cluster-node name and the target name, separated by a colon, e.g. <I>cluster-node:target</I>. </ul> For any object not listed above, the obj-name and obj-full-name are identical.

=end html



B<Fields>

=over 2

=item * None

=back



=head2 obj-id

=begin html

Identification number (ID) for an object. This typedef is an alias for the builtin ZAPI type <b>integer</b>. Object IDs are unsigned integers in the range [1..2^31 - 1]. In some contexts, an object ID is also allowed to be 0, which is interpreted as a null value, e.g., a reference to no object at all. <p> The ID for an object is always assigned by the system; the user is never allowed to assign an ID to an object. Therefore, an input element of type <b>obj-id</b> is always used to refer to an existing object by its ID. The ZAPI must specify the object's object type (e.g. cluster, volume, aggregate, etc.). Some ZAPIs allow the object to be one of several different types. <p> If the value of an <b>obj-id</b> input element does not match the ID of any existing object of the specified type or types, then typically the ZAPI fails with error code <b>EOBJECTNOTFOUND</b>. A ZAPI may deviate from this general rule, for example, it may return a more specific error code. In either case, the ZAPI specification must document its behavior.

=end html



B<Fields>

=over 2

=item * None

=back



=head2 obj-name

=begin html

Name of an object. This typedef is an alias for the built in ZAPI type <b>string</b>. An object name must conform to the following format: <ul> <li> It must contain between 1 and 64 characters. <li> It may start with any character and may contain any combination of characters, except that it may not consist solely of decimal digits ('0' through '9'). <li> In some contexts, a name may be the empty string (""), which is interpreted as a null value, e.g., a reference to no object at all. </ul> The behavior of a ZAPI when it encounters an error involving an <b>obj-name</b> input element depends on how the ZAPI uses the input element. Here are the general rules: <ul> <li> If the input name element is used to create a new object with the given name, or rename an existing object to that name, and the name does not conform to the above format, then the ZAPI fails with error code <b>EINVALIDINPUT</b>. Note that because <b>EINVALIDINPUT</b> is such a common error code, ZAPI specifications are not required to document cases when they may return it. <li> If the input name element is used to refer to an existing object with that name, and there is no object with that name, then the ZAPI fails with error code <b>EOBJECTNOTFOUND</b>. Generally the ZAPI specification documents cases when it may return this error code. </ul> A ZAPI may deviate from these general rules, for example, it may return more specific error codes. In such cases, the ZAPI specification must document its behavior. <p> If an input name element is used to refer to an existing object, then the ZAPI specification must specify which object type (e.g. cluster, vserver, volume etc.) is allowed. Some ZAPIs allow the object to be one of several different types. See the description of obj-full-name for examples of valid input formats. <p> Note that there is no requirement that all object names must be unique. However, the names for some specific types of objects are constrained such that no two objects of that type may have the same name.

=end html



B<Fields>

=over 2

=item * None

=back



=head2 obj-status

=begin html

A status value which can be associated with an object. This typedef is an alias for the builtin ZAPI type <b>string</b>. The severity associated with an event has this type. <p> Possible values are: 'normal', 'warning', 'error', 'critical'. <ul> <li>normal: An object has normal status when it is working within the thresholds specified. <li>warning: An object has the warning status when an event related to the object occurred that an administrator should know about. The event will not cause service disruption. <li>error: An object has error status when it does not cause any service disruption, but it may affect performance. <li>critical: An object has critical status when it is still performing, but service disruption may occur if corrective action is not taken immediately. </ul> In some contexts, it is important that severities are ordered (as above). For example, an alert might be triggered if an event with a given severity "or worse" occurs. In this example, worse means "after" in the list above.

=end html



B<Fields>

=over 2

=item * None

=back



=head2 obj-type

=begin html

Type of a managed object. Possible values: <ul> <li> "cluster" <li> "cluster-node" <li> "vserver" <li> "resource-group" <li> "volume" <li> "qtree" <li> "disk" <li> "network-interface" <li> "management-station" <li> "quota-user" <li> "initiator-group" <li> "lun" <li> "fcp-target" <li> "aggregate" <li> "port" <li> "port-set" <li> "lif" <li> "ifgrp" <li> "export-policy" <li> "role" <li> "storage-service" <li> "service-workflow" </ul>

=end html



B<Fields>

=over 2

=item * None

=back



=head2 timestamp

=begin html

Seconds since 1/1/1970 in UTC.

=end html



B<Fields>

=over 2

=item * None

=back



=head2 uuid

=begin html

The 128-bit universally-unique identifier (UUID). UUIDs are formatted as 36-character strings. These strings are composed of 32 hexadecimal characters broken up into 5 groupings separated by '-'s. The first grouping consists of 8 hex characters, the second through fourth groupings consist of 4 hex characters each, and the fifth and final grouping consists of 12 hex characters. Note that a leading '0x' is not used. An example of an actual UUID is: 73a010ec-3d28-11df-84e8-123478563412.

=end html



B<Fields>

=over 2

=item * None

=back



=head2 constituent-volume-by-aggregate-info

=begin html

Attributes applicable only for constituent volumes.

=end html



B<Fields>

=over 2

=item * I<infinite-volume-name>  =>   B<string>

=begin html

<br>Name of the constituent's infinite volume.

=end html

=back



=over 2

=item * I<infinite-volume-resource-key>  =>   B<resource-key>

=begin html

<br>The resource key for constituent's infinite volume.

=end html

=back



=over 2

=item * I<storage-class-name>  =>   B<string>

=begin html

<br>Name of storage class on which the constituent resides.

=end html

=back



=over 2

=item * I<storage-class-resource-key>  =>   B<resource-key>

=begin html

<br>The resource key for the storage class on which the constituent resides.

=end html

=back



=head2 flexible-volume-info

=begin html

Attributes applicable only for flexible volumes.

=end html



B<Fields>

=over 2

=item * I<aggregate-name>  =>   B<string>

=begin html

<br>Name of aggregate on which the volume resides.

=end html

=back



=over 2

=item * I<aggregate-resource-key>  =>   B<resource-key>

=begin html

<br>The resource key for the aggregate on which the volume resides.

=end html

=back



=over 2

=item * I<autogrow-increment-size>  =>   B<integer, optional>

=begin html

<br>The increment size (in bytes) by which the volume would be grown.

=end html

=back



=over 2

=item * I<is-autosize-enabled>  =>   B<boolean>

=begin html

<br>Indicates whether this volume has autosize feature enabled or not.

=end html

=back



=over 2

=item * I<is-snapshot-autodelete-enabled>  =>   B<boolean>

=begin html

<br>Indicates whether this volume has snapshot autodelete enabled or not.

=end html

=back



=over 2

=item * I<maximum-size>  =>   B<integer, optional>

=begin html

<br>Maximum size in bytes that this volume will be grown up to automatically by Data ONTAP. This is returned only if is-autosize-enabled is true.

=end html

=back



=over 2

=item * I<volume-clone-info>  =>   B<L<"volume-clone-info">, optional>

=begin html

<br>Volume FlexClone information.

=end html

=back



=head2 infinite-volume-info

=begin html

Attributes applicable only for infinite volumes.

=end html



B<Fields>

=over 2

=item * I<is-managed-by-service>  =>   B<boolean>

=begin html

<br>Specifies whether the infinite volume is managed by GUI services.

=end html

=back



=over 2

=item * I<is-snapdiff-enabled>  =>   B<boolean>

=begin html

<br>Specifies whether Snapdiff is enabled for the infinite volume.

=end html

=back



=over 2

=item * I<max-data-constituent-size>  =>   B<integer, optional>

=begin html

<br>The maximum size (in bytes) of each data constituent in bytes.

=end html

=back



=over 2

=item * I<max-namespace-constituent-size>  =>   B<integer, optional>

=begin html

<br>The maximum size (in bytes) of the namespace constituent.

=end html

=back



=head2 object-space-status

=begin html

Space status of the object. This indicates the fullness of the object in terms of whether the percentage of used space with respect to total size of the object has reached the fullness thresholds. Possible values: <ul> <li> ok - when the percentage of used space of the object is within the nearly full and full threshold of the object. <li> nearly_full - when the percentage of used space of the object is within the full threshold of the object but has reached or crossed the nearly full threshold. <li> full - when the percentage of used space of the object has reached or crossed the full threshold of the object. </ul>

=end html



B<Fields>

=over 2

=item * None

=back



=head2 volume-by-aggregate-info

=begin html

Information about an aggregate-based volume.

=end html



B<Fields>

=over 2

=item * I<actual-volume-size>  =>   B<integer, optional>

=begin html

<br>Actual size in bytes of the volume. For volumes which are destinations of a Volume SnapMirror relationship, the actual size of the volume may differ from the logical size (reported by the df command). The logical size for such volumes is equal to size of the source volume. For all other volume <b>actual-volume-size</b> will be same as <b>total</b> size.

=end html

=back



=over 2

=item * I<afs-avail>  =>   B<integer, optional>

=begin html

<br>Number of bytes available in active file system. This will be (afs-total - afs-used) or the available space in the aggregate, whichever is lower.

=end html

=back



=over 2

=item * I<afs-total>  =>   B<integer, optional>

=begin html

<br>Total number of bytes in active file system (total volume less snapshot reserve).

=end html

=back



=over 2

=item * I<afs-used>  =>   B<integer, optional>

=begin html

<br>Number of bytes used to hold active file system data. This is what "df" reports as used for the volume. It includes data, hole reserves, overwrite reserves and snapshot overflow.

=end html

=back



=over 2

=item * I<aggregate-name>  =>   B<string>

=begin html

<br>Name of aggregate on which the volume resides.

=end html

=back



=over 2

=item * I<aggregate-resource-key>  =>   B<resource-key>

=begin html

<br>The resource key for the aggregate on which the volume resides.

=end html

=back



=over 2

=item * I<block-type>  =>   B<file-system-block-type>

=begin html

<br>File system block type of the volume.

=end html

=back



=over 2

=item * I<constituent-volume-by-aggregate-info>  =>   B<L<"constituent-volume-by-aggregate-info">, optional>

=begin html

<br>This element contains data applicable exclusively to constituent volumes.

=end html

=back



=over 2

=item * I<is-snapshot-enabled>  =>   B<boolean>

=begin html

<br>Specifies whether the Snapshot copies are enabled for the volume.

=end html

=back



=over 2

=item * I<snapshot-reserve-avail>  =>   B<integer, optional>

=begin html

<br>Number of available bytes in snapshot reserve for this volume. If snapshot-reserve-used is greater than snapshot-reserve-total, this value will be zero.

=end html

=back



=over 2

=item * I<snapshot-reserve-total>  =>   B<integer, optional>

=begin html

<br>Total number of bytes of snapshot reserve.

=end html

=back



=over 2

=item * I<snapshot-reserve-used>  =>   B<integer, optional>

=begin html

<br>Total number of bytes used to hold snapshot data. This can be greater than the snapshot reserve size but will not include any space used out of the overwrite reserve.

=end html

=back



=over 2

=item * I<space-guarantee>  =>   B<string, optional>

=begin html

<br>The space reservation style associated with the volume. Possible values: <ul> <li> volume - Indicates that the entire size of the volume is pre-allocated. <li> file - Indicates that the space will be pre-allocated for all the space-reserved files and LUNs within the volume. Storage is not pre-allocated for files and LUNs that are not space-reserved. Writes to these can fail if the underlying aggregate has no space available to store the written data. <li> partial - Indicates that a FlexCache volume to reserve some amount of space that is less than its total size <li> none - Indicates that no space will be pre-allocated. </ul> This field does not appear if volume-state is restricted or offline.

=end html

=back



=over 2

=item * I<total>  =>   B<integer, optional>

=begin html

<br>Total number of bytes in volume. This includes the snapshot reserve.

=end html

=back



=over 2

=item * I<volume-efficiency-info>  =>   B<L<"volume-efficiency-info">, optional>

=begin html

<br>Volume efficiency information. This is returned only if deduplication or compression have ever been run on the volume.

=end html

=back



=over 2

=item * I<volume-name>  =>   B<string>

=begin html

<br>Name of the volume.

=end html

=back



=over 2

=item * I<volume-resource-key>  =>   B<resource-key>

=begin html

<br>The resource key for this volume.

=end html

=back



=over 2

=item * I<volume-state>  =>   B<string>

=begin html

<br>State of volume. Possible values are: <ul> <li> offline <li> online <li> restricted <li> unknown </ul>

=end html

=back



=over 2

=item * I<volume-type>  =>   B<string>

=begin html

<br>Type of volume. Possible values are: <ul> <li> rw - read-write <li> ls - load-sharing <li> dp - data-protection <li> dc - data-cache (FlexCache) <li> tmp temporary </ul>

=end html

=back



=over 2

=item * I<vserver-name>  =>   B<string>

=begin html

<br>Name of vserver on which the volume resides.

=end html

=back



=over 2

=item * I<vserver-resource-key>  =>   B<resource-key>

=begin html

<br>The resource key for the vserver on which the volume resides.

=end html

=back



=head2 volume-clone-info

=begin html

Volume FlexClone information. Based on the volume type the following fields are displayed: <p> For a FlexClone volume, the fields displayed are "clone-space-savings", "clone-space-savings-percentage", "is-clone-present", "is-clone", "parent-volume-resource-key" and "parent-volume-name". <p> For a parent volume containing FlexClone volumes, the fields displayed are "is-clone-present", "is-clone", and "clone-child-count". <p> For a volume that is both a FlexClone and parent volume, the fields displayed are "clone-space-savings", "clone-space-savings-percentage", "is-clone-present", "is-clone", "parent-volume-resource-key", "parent-volume-name", and "clone-child-count". <p> If the volume is neither a FlexClone volume nor a parent volume, then the "is-clone-present" and "is-clone" fields are displayed.

=end html



B<Fields>

=over 2

=item * I<clone-child-count>  =>   B<integer, optional>

=begin html

<br>Number of FlexClone volumes for which this volume is parent.

=end html

=back



=over 2

=item * I<clone-space-savings>  =>   B<integer, optional>

=begin html

<br>For a FlexClone volume this contains space savings as a result of sharing space with its FlexClone parent. <p> For a Parent volume, the space savings is the sum of space savings realised by all its FlexClone volumes.

=end html

=back



=over 2

=item * I<clone-space-savings-percentage>  =>   B<integer, optional>

=begin html

<br>Percentage of space savings generated by the shared FlexClone space.

=end html

=back



=over 2

=item * I<is-clone>  =>   B<boolean>

=begin html

<br>Specifies if the volume is a FlexClone volume.

=end html

=back



=over 2

=item * I<is-clone-present>  =>   B<boolean>

=begin html

<br>Specifies if the volume has one or more FlexClone volumes.

=end html

=back



=over 2

=item * I<parent-volume-name>  =>   B<string, optional>

=begin html

<br>Name of the FlexClone parent volume.

=end html

=back



=over 2

=item * I<parent-volume-resource-key>  =>   B<resource-key, optional>

=begin html

<br>Resource key of the FlexClone parent volume.

=end html

=back



=head2 volume-efficiency-info

=begin html

Volume efficiency information. Optional fields will not be returned if deduplication or compression have never run on the volume.

=end html



B<Fields>

=over 2

=item * I<compression-space-savings>  =>   B<integer, optional>

=begin html

<br>Space savings as a result of compression on the volume in bytes.

=end html

=back



=over 2

=item * I<compression-space-savings-percentage>  =>   B<integer, optional>

=begin html

<br>Percentage of space savings generated by the compression.

=end html

=back



=over 2

=item * I<dedupe-progress>  =>   B<string, optional>

=begin html

<br>The progress of the current deduplication operation on the volume with information as to which stage of de-duplication is currently in progress and how much data is processed for that stage. For eg: "25 MB Scanned, 20MB Searched, 40MB (20%) Done , 30MB Verified".

=end html

=back



=over 2

=item * I<dedupe-schedule>  =>   B<string, optional>

=begin html

<br>Schedule for the deduplication operation on the volume. The field is returned if deduplication operation is scheduled.

=end html

=back



=over 2

=item * I<dedupe-space-savings>  =>   B<integer, optional>

=begin html

<br>Space savings as a result of deduplication on the volume in bytes.

=end html

=back



=over 2

=item * I<dedupe-space-savings-percentage>  =>   B<integer, optional>

=begin html

<br>Percentage of space savings generated by the shared space.

=end html

=back



=over 2

=item * I<dedupe-status>  =>   B<string, optional>

=begin html

<br>Deduplication operation status of the volume. Possible values: "idle", "active", "pending", or "undoing".

=end html

=back



=over 2

=item * I<dedupe-type>  =>   B<string, optional>

=begin html

<br>Type of the volume depending on whether it has a Snapvault qtree in it or not. Possible values: "regular", or "snapvault".

=end html

=back



=over 2

=item * I<efficiency-policy>  =>   B<string, optional>

=begin html

<br>Policy for the deduplication operation on the volume. The field is returned if an efficiency policy is applied on the volume.

=end html

=back



=over 2

=item * I<is-compression-enabled>  =>   B<boolean>

=begin html

<br>Specifies if compression is enabled on the volume.

=end html

=back



=over 2

=item * I<is-dedupe-enabled>  =>   B<boolean>

=begin html

<br>Specifies if deduplication is enabled on the volume.

=end html

=back



=over 2

=item * I<last-dedupe-begin-timestamp>  =>   B<timestamp, optional>

=begin html

<br>Start timestamp of the last deduplication operation.

=end html

=back



=over 2

=item * I<last-dedupe-end-timestamp>  =>   B<timestamp, optional>

=begin html

<br>End timestamp of the last deduplication operation on the volume.

=end html

=back



=over 2

=item * I<last-dedupe-error>  =>   B<string, optional>

=begin html

<br>A human readable error message of the last deduplication operation on the volume. Returned only when there is a valid error.

=end html

=back



=over 2

=item * I<last-dedupe-scanned-size>  =>   B<integer, optional>

=begin html

<br>The size scanned in bytes of the last deduplication operation on the volume.

=end html

=back



=over 2

=item * I<last-dedupe-status>  =>   B<string, optional>

=begin html

<br>Indicates the completion status of the last deduplication operation performed on the volume. Possible values: "success", or "failure".

=end html

=back



=head2 volume-info

=begin html

Information about a volume.

=end html



B<Fields>

=over 2

=item * I<block-type>  =>   B<file-system-block-type>

=begin html

<br>File system block type of the volume.

=end html

=back



=over 2

=item * I<flexible-volume-info>  =>   B<L<"flexible-volume-info">, optional>

=begin html

<br>This element contains data applicable exclusively to flexible volumes.

=end html

=back



=over 2

=item * I<infinite-volume-info>  =>   B<L<"infinite-volume-info">, optional>

=begin html

<br>This element contains data applicable exclusively to infinite volumes.

=end html

=back



=over 2

=item * I<is-junction-path-active>  =>   B<boolean, optional>

=begin html

<br>Whether the junction path of the volume is active. The value will not be set if the junction path is unavailable.

=end html

=back



=over 2

=item * I<junction-parent-name>  =>   B<string, optional>

=begin html

<br>The name of the volume that contains the junction inode of the volume.

=end html

=back



=over 2

=item * I<junction-parent-resource-key>  =>   B<resource-key, optional>

=begin html

<br>The resource key of the volume that contains the junction inode of the volume.

=end html

=back



=over 2

=item * I<junction-path>  =>   B<string, optional>

=begin html

<br>Junction path of the volume.

=end html

=back



=over 2

=item * I<space-guarantee>  =>   B<string, optional>

=begin html

<br>The space reservation style associated with the flexible volume. Possible values: <ul> <li> volume - Indicates that the entire size of the volume is pre-allocated. <li> file - Indicates that the space will be pre-allocated for all the space-reserved files and LUNs within the volume. Storage is not pre-allocated for files and LUNs that are not space-reserved. Writes to these can fail if the underlying aggregate has no space available to store the written data. <li> partial - Indicates that a FlexCache volume to reserve some amount of space that is less than its total size <li> none - Indicates that no space will be pre-allocated. </ul> This field does not appear if volume-state is restricted or offline.

=end html

=back



=over 2

=item * I<volume-efficiency-info>  =>   B<L<"volume-efficiency-info">, optional>

=begin html

<br>Volume efficiency information. This is returned only if deduplication or compression have ever been run on the volume.

=end html

=back



=over 2

=item * I<volume-name>  =>   B<string>

=begin html

<br>Name of the volume.

=end html

=back



=over 2

=item * I<volume-resource-key>  =>   B<resource-key>

=begin html

<br>The resource key for this volume.

=end html

=back



=over 2

=item * I<volume-security-info>  =>   B<L<"volume-security-info">, optional>

=begin html

<br>The Unix-oriented security settings associated with this volume.

=end html

=back



=over 2

=item * I<volume-size>  =>   B<L<"volume-size">>

=begin html

<br>Volume size information.

=end html

=back



=over 2

=item * I<volume-state>  =>   B<string>

=begin html

<br>State of volume. Possible values are: <ul> <li> offline <li> online <li> restricted <li> unknown </ul>

=end html

=back



=over 2

=item * I<volume-status>  =>   B<obj-status>

=begin html

<br>Current status of the volume based on all events

=end html

=back



=over 2

=item * I<volume-type>  =>   B<string>

=begin html

<br>Type of volume. Possible values are: <ul> <li> rw - read-write <li> ls - load-sharing <li> dp - data-protection <li> dc - data-cache (FlexCache) <li> tmp temporary </ul>

=end html

=back



=over 2

=item * I<vserver-name>  =>   B<string>

=begin html

<br>Name of vserver on which the volume resides.

=end html

=back



=over 2

=item * I<vserver-resource-key>  =>   B<resource-key>

=begin html

<br>The resource key for the vserver on which the volume resides.

=end html

=back



=head2 volume-move-history-info

=begin html

Information about a volume move.

=end html



B<Fields>

=over 2

=item * I<destination-aggregate-name>  =>   B<obj-name, optional>

=begin html

<br>Name of the aggregate where the volume is already moved or being moved to. If the destination aggregate is deleted, this element is not returned.

=end html

=back



=over 2

=item * I<destination-aggregate-resource-key>  =>   B<resource-key, optional>

=begin html

<br>Resource key of the aggregate where the volume is already moved or being moved to. If the destination aggregate is deleted, this element is not returned.

=end html

=back



=over 2

=item * I<source-aggregate-name>  =>   B<obj-name, optional>

=begin html

<br>Name of the aggregate where the volume that is being moved originally resided or is still residing. If the source aggregate is deleted, this element is not returned.

=end html

=back



=over 2

=item * I<source-aggregate-resource-key>  =>   B<resource-key, optional>

=begin html

<br>Resource key of the aggregate where the volume that is being moved originally resided or is still residing. If the source aggregate is deleted, this element is not returned.

=end html

=back



=over 2

=item * I<volume-move-completion-time>  =>   B<timestamp, optional>

=begin html

<br>Timestamp, in seconds, indicating the completion of the volume move operation since Jan 1, 1970 00:00:00 UTC.

=end html

=back



=over 2

=item * I<volume-move-details>  =>   B<string>

=begin html

<br>Provides details about the state of the volume move operation.

=end html

=back



=over 2

=item * I<volume-move-estimated-completion-time>  =>   B<timestamp, optional>

=begin html

<br>Timestamp, indicating the estimated completion time of the volume move operation. Note that this time may keep increasing when the move goes into 'cutover', 'cutover hard deferred', 'cutover soft deferred' phase. In those cases where the input for cutover-action is wait, during data copy phase, estimated time of completion will approximate the time to reach cutover point and wait for user intervention. When the move is in queued phase this element is not returned.

=end html

=back



=over 2

=item * I<volume-move-percent-complete>  =>   B<integer, optional>

=begin html

<br>Percentage of volume move completed thus far. When the move is in queued phase this element will show zero percent completion.

=end html

=back



=over 2

=item * I<volume-move-phase>  =>   B<string>

=begin html

<br>Phase of the volume move operation. The possible phases are 'queued', 'initializing', 'replicating', 'cutover', 'cutover hard deferred', 'cutover soft deferred', 'completed', 'cleaning up', 'failed', and 'restarting'.

=end html

=back



=over 2

=item * I<volume-move-start-time>  =>   B<timestamp>

=begin html

<br>Timestamp, in seconds, indicating the start of the volume move operation since Jan 1, 1970 00:00:00 UTC.

=end html

=back



=over 2

=item * I<volume-move-state>  =>   B<string>

=begin html

<br>State of the volume move operation. The possible states are 'in-progress', 'completed', 'failed', and 'paused'. The state 'paused' indicates that the volume move operation is moving into a cutover-deferred phase and is waiting for user intervention in the case of errors.

=end html

=back



=over 2

=item * I<volume-name>  =>   B<obj-name>

=begin html

<br>Name of the volume.

=end html

=back



=over 2

=item * I<volume-resource-key>  =>   B<resource-key>

=begin html

<br>Resource key of the volume.

=end html

=back



=over 2

=item * I<vserver-name>  =>   B<obj-name>

=begin html

<br>Name of vserver on which the volume resides.

=end html

=back



=over 2

=item * I<vserver-resource-key>  =>   B<resource-key>

=begin html

<br>Resource key of the vserver on which the volume resides.

=end html

=back



=head2 volume-security-info

=begin html

Unix oriented security settings associated with this volume.

=end html



B<Fields>

=over 2

=item * I<group-id>  =>   B<string, optional>

=begin html

<br>Unix group ID for the volume. The default value is 0 ('root').

=end html

=back



=over 2

=item * I<permissions>  =>   B<string, optional>

=begin html

<br>Unix permission bits in octal string format. It is similar to unix style permission bits.<br> In Data ONTAP 7-mode, the default setting of '0755' gives read/write/execute permissions to owner and read/execute to group and other users. <br> In Clustered Data ONTAP, for security stype 'mixed' or 'unix', the default setting of '0755' gives read/write/execute permissions to owner and read/execute permissions to group and other users. For security style 'ntfs', the default setting of '0000' gives no permissions to owner, group and other users. <br> It consists of 4 octal digits derived by adding up bits 4, 2 and 1. Omitted digits are assumed to be zeros. First digit selects the set user ID(4), set group ID (2) and sticky (1) attributes. The second digit selects permission for the owner of the file: read (4), write (2) and execute (1); The third selects permissions for other users in the same group; The fourth for other users not in the group.

=end html

=back



=over 2

=item * I<user-id>  =>   B<string, optional>

=begin html

<br>Unix user ID for the volume. The default value is 0 ('root').

=end html

=back



=head2 volume-size

=begin html

Collected size information about a volume.

=end html



B<Fields>

=over 2

=item * I<actual-volume-size>  =>   B<integer, optional>

=begin html

<br>Actual size in bytes of the volume. For volumes which are destinations of a Volume SnapMirror relationship, the actual size of the volume may differ from the logical size (reported by the df command). The logical size for such volumes is equal to size of the source volume. For all other volume <b>actual-volume-size</b> will be same as <b>total</b> size.

=end html

=back



=over 2

=item * I<afs-avail>  =>   B<integer, optional>

=begin html

<br>Number of bytes available in active file system. This will be (afs-total - afs-used) or the available space in the aggregate, whichever is lower.

=end html

=back



=over 2

=item * I<afs-daily-growth-rate>  =>   B<integer, optional>

=begin html

<br>Percentage of volume used on a daily basis.

=end html

=back



=over 2

=item * I<afs-total>  =>   B<integer, optional>

=begin html

<br>Total number of bytes in active file system (total volume less snapshot reserve).

=end html

=back



=over 2

=item * I<afs-used>  =>   B<integer, optional>

=begin html

<br>Number of bytes used to hold active file system data. This is what "df" reports as used for the volume. It includes data, hole reserves, overwrite reserves and snapshot overflow.

=end html

=back



=over 2

=item * I<afs-used-per-day>  =>   B<integer>

=begin html

<br>Number of bytes used per day in the active file system of the volume. This can be either positive or negative depending on the growth of used space in the volume.

=end html

=back



=over 2

=item * I<is-snapshot-enabled>  =>   B<boolean>

=begin html

<br>Specifies whether the Snapshot copies are enabled for the volume.

=end html

=back



=over 2

=item * I<overwrite-reserve-avail>  =>   B<integer, optional>

=begin html

<br>Number of bytes available reserved space for data overwrites.

=end html

=back



=over 2

=item * I<overwrite-reserve-total>  =>   B<integer, optional>

=begin html

<br>Total number of bytes reserved for data overwrites. This is the space reserved for overwriting LUNs and other space-reserved files when the volume has snapshots and afs-avail is zero.

=end html

=back



=over 2

=item * I<overwrite-reserve-used>  =>   B<integer, optional>

=begin html

<br>Number of bytes used in overwrite reserve space.

=end html

=back



=over 2

=item * I<quota-committed-space>  =>   B<integer, optional>

=begin html

<br>Number of bytes committed for quotas within the volume.

=end html

=back



=over 2

=item * I<snapshot-reserve-avail>  =>   B<integer, optional>

=begin html

<br>Number of available bytes in snapshot reserve for this volume. If snapshot-reserve-used is greater than snapshot-reserve-total, this value will be zero.

=end html

=back



=over 2

=item * I<snapshot-reserve-days-until-full>  =>   B<integer, optional>

=begin html

<br>Number of days until the volume snapshot reserve becomes full. This is returned only if volume snapshot reserve is defined and 'snapshot-reserve-used-per-day' is positive.

=end html

=back



=over 2

=item * I<snapshot-reserve-total>  =>   B<integer, optional>

=begin html

<br>Total number of bytes of snapshot reserve.

=end html

=back



=over 2

=item * I<snapshot-reserve-used>  =>   B<integer, optional>

=begin html

<br>Total number of bytes used to hold snapshot data. This can be greater than the snapshot reserve size but will not include any space used out of the overwrite reserve.

=end html

=back



=over 2

=item * I<snapshot-reserve-used-per-day>  =>   B<integer, optional>

=begin html

<br>Number of bytes used per day in the volume snapshot reserve. This can be either positive or negative depending on the growth of used space in the volume snapshot reserve. The information is based on the regression slope of the volume snapshot reserve usage history data. This is returned only if volume snapshot reserve is defined.

=end html

=back



=over 2

=item * I<total>  =>   B<integer, optional>

=begin html

<br>Total number of bytes in volume. This includes the snapshot reserve.

=end html

=back



=head2 cifs-domain-info

=begin html

Details of the cifs domain.

=end html



B<Fields>

=over 2

=item * I<cifs-dns-domain-name>  =>   B<string>

=begin html

<br>Specifies the CIFS DNS domain name. Maximum length: 255 characters.

=end html

=back



=over 2

=item * I<cifs-domain-name>  =>   B<string>

=begin html

<br>Specifies the NETBIOS name of the cifs domain. Maximum length: 255 characters.

=end html

=back



=head2 dns-domain-name

=begin html

DNS domain name for the Vserver.

=end html



B<Fields>

=over 2

=item * None

=back



=head2 name-server-switch

=begin html

Name server switch configuration details for the Vserver

=end html



B<Fields>

=over 2

=item * None

=back



=head2 vserver-info

=begin html

Vserver's information.

=end html



B<Fields>

=over 2

=item * I<aggr-list>  =>   B<resource-key[]>

=begin html

<br>The list of aggregates assigned for volume operations. These aggregates could be shared for use with other Vservers.

=end html

=back



=over 2

=item * I<cifs-domain-info>  =>   B<L<"cifs-domain-info">, optional>

=begin html

<br>CIFS domain information of the Vserver.

=end html

=back



=over 2

=item * I<cluster-name>  =>   B<string>

=begin html

<br>Name of the cluster where the Vserver is present.

=end html

=back



=over 2

=item * I<cluster-resource-key>  =>   B<resource-key>

=begin html

<br>Resource key of the cluster where the Vserver is present.

=end html

=back



=over 2

=item * I<dns-domains>  =>   B<dns-domain-name[], optional>

=begin html

<br>An array of dns domain names for the Vserver.

=end html

=back



=over 2

=item * I<is-dns-enabled>  =>   B<boolean, optional>

=begin html

<br>Specifies if dns service is enabled for the Vserver.

=end html

=back



=over 2

=item * I<is-kerberos-enabled>  =>   B<boolean, optional>

=begin html

<br>Specifies if Kerberos security is enabled for the Vserver.

=end html

=back



=over 2

=item * I<is-ldap-client-enabled>  =>   B<boolean, optional>

=begin html

<br>Specifies if LDAP client configuration is enabled for the Vserver.

=end html

=back



=over 2

=item * I<is-nis-enabled>  =>   B<boolean, optional>

=begin html

<br>Specifies if nis service is enabled for the Vserver.

=end html

=back



=over 2

=item * I<is-repository>  =>   B<boolean>

=begin html

<br>Specifies if the Vserver contains Infinite Volume.

=end html

=back



=over 2

=item * I<name-server-switches>  =>   B<name-server-switch[]>

=begin html

<br>An array of name server switch configuration details for the Vserver.

=end html

=back



=over 2

=item * I<nis-domain-name>  =>   B<string, optional>

=begin html

<br>Active nis domain name for the Vserver.

=end html

=back



=over 2

=item * I<root-volume-name>  =>   B<string>

=begin html

<br>Name of the Vserver root volume.

=end html

=back



=over 2

=item * I<service-statuses>  =>   B<L<"vserver-service-status">[]>

=begin html

<br>List of services and their statuses.

=end html

=back



=over 2

=item * I<vserver-name>  =>   B<string>

=begin html

<br>Name of the Vserver. Length: [1..255]

=end html

=back



=over 2

=item * I<vserver-resource-key>  =>   B<resource-key>

=begin html

<br>Resource key of the Vserver.

=end html

=back



=over 2

=item * I<vserver-state>  =>   B<string>

=begin html

<br>Current state of the Vserver. Possible values: "running", "stopped", "starting" or "stopping".

=end html

=back



=over 2

=item * I<vserver-status>  =>   B<obj-status>

=begin html

<br>Current status of the Vserver based on all events.

=end html

=back



=head2 vserver-service-status

=begin html

Status indicating whether a service is up or down.

=end html



B<Fields>

=over 2

=item * I<service>  =>   B<string, optional>

=begin html

<br>Name of the service. Possible values: "nfs", "cifs", "iscsi" or "fcp".

=end html

=back



=over 2

=item * I<status>  =>   B<string, optional>

=begin html

<br>Indicates whether the service is up or not. Possible values: "up", "down".

=end html

=back



=head1 COPYRIGHT

Copyright (c) 1994-2013 NetApp, Inc. All rights reserved.

The product described in this manual may be protected by one or more U.S.A. patents, foreign patents, or pending applications.

RESTRICTED RIGHTS LEGEND: Use, duplication, or disclosure by the government is subject to restrictions as set forth in subparagraph (c)(1)(ii) of the Rights in Technical Data and Computer Software clause at DFARS 252.277-7103 (October 1988) and FAR 52-227-19 (June 1987).

=cut
