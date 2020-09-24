# Nagios plugin to check health of a NetApp Ontap cluster

## Idea

This Perl script is able to monitor most components of a NetApp Ontap cluster, such as volume, aggregate,
snapshot, quota, snapmirror, filer hardware, port, interface cluster and disk health.

## Status

Production ready.

## How To

This script requires NetApp Manageability SDK for Perl to be installed.
Can be found on https://mysupport.netapp.com/NOW/cgi-bin/software

<!-- Please visit https://outsideit.net/monitoring-netapp-ontap/ for more information on how to use this plugin. -->

<!-- Contents from https://outsideit.net/monitoring-netapp-ontap/ (from Google Cache) -->

There are of course numerous way to monitor your NetApp Ontap storage, but this post focusses for now on how to achieve
quality monitoring with the help of a Nagios plugin, which was originally developed by John Murphy. The plugin
definitely has some flaws, so all help is welcome to improve it. Read the post about debugging Perl scripts, make a
fork of the project on GitHub and start experimenting.

The plugin is able monitor multiple critical NetApp Ontap components, from disk to aggregates to volumes.
It can also alert you if it finds any unhealthy components.

<!-- missing image: NetApp Ontap Logical View -->

### How to monitor Netapp Ontap with Nagios?

Download the latest release from GitHub to a temp directory and then navigate to it.

Copy the contents of `NetApp/*` to your `/usr/lib/perl5` or `/usr/lib64/perl5` directory to install the required version
of the NetApp Perl SDK. (confirmed to work with SDK 5.1 and 5.2)

Copy `check_netapp_ontap.pl` script to your nagios libexec folder and configure the correct permissions

**Parameters:**

* –hostname, -H => Hostname or address of the cluster administrative interface.
* –node, -n => Name of a vhost or cluster-node to restrict this query to.
* –user, -u => Username of a Netapp Ontapi enabled user.
* –password, -p => Password for the netapp Ontapi enabled user.
* –option, -o => The name of the option you want to check. See the option and threshold list at the bottom of this help text.
* –warning, -w => A custom warning threshold value. See the option and threshold list at the bottom of this help text.
* –critical, -c => A custom warning threshold value. See the option and threshold list at the bottom of this help text.
* –modifier, -m => This modifier is used to set an inclusive or exclusive filter on what you want to monitor.
* –help, -h => Display this help text.

### Options

**volume_health**

Check the space and inode health of a vServer volume on a NetApp Ontap cluster. If space % and space in *B are both defined the smaller value of the two will be used when deciding if the volume is in a warning or critical state. This allows you to accomodate large volume monitoring better. thresh: space % used, space in *B (i.e MB) remaining, inode count remaining, inode % used (Usage example: 80%i), “offline” keyword node: The node option restricts this check by vserver name.

* Examples
  * `-w 80%` - Warn if volume grows more than 80% full
  * `-w 100GB` - Warn if volume has less than 100GB free space
  * `-w 80%,50GB` - Warn if volume is more than 80% used *and* has less than 50GB free space

**aggregate_health**

Check the space and inode health of a cluster aggregate on a NetApp Ontap cluster. If space % and space in *B are both defined the smaller value of the two will be used when deciding if the volume is in a warning or critical state. This allows you to better accomodate large aggregate monitoring. thresh: space % used, space in *B (i.e MB) remaining, inode count remaining, inode % used (Usage example: 80%i), “offline” keyword, “is-home” keyword node: The node option restricts this check by cluster-node name.

**snapshot_health**

Check the space and inode health of a vServer snapshot. If space % and space in *B are both defined the smaller value of the two will be used when deciding if the volume is in a warning or critical state. This allows you to better accomodate large snapshot monitoring. thresh: space % used, space in *B (i.e MB) remaining, inode count remaining, inode % used (Usage example: 80%i), “offline” keyword node: The node option restricts this check by vserver name.

**quota_health**

Check that the space and file thresholds have not been crossed on a quota. thresh: N/A storage defined. node: The node option restricts this check by vserver name. snapmirror_health: Check the lag time and health flag of the snapmirror relationships. thresh: snapmirror lag time (valid intervals are s, m, h, d). node: The node options restricts this check by snapmirror destination cluster-node name.

**snapmirror_health**

Check the lag time and health flag of the snapmirror relationships. thresh: Snapmirror lag time (valid intervals are s, m, h, d). node: The node options restricts this check by snapmirror destination cluster-node name.

**filer_hardware_health**

Check the environment hardware health of the filers (fan, psu, temperature, battery). thresh: component name (fan, psu, temperature, battery). There is no default alert level they MUST be defined. node: The node option restricts this check by cluster-node name.

**port_health**

Checks the state of a physical network port. thresh: N/A not customizable. node: The node option restricts this check by cluster-node name.

**vscan_health**

Check if vscan is disabled. node: The node option restricts this check by vserver name.

**interface_health**

Check that a LIF is in the correctly configured state and that it is on its home node and port. Additionally checks the state of a physical port. thresh: N/A not customizable. node: The node option restricts this check by vserver name.

**netapp_alarms**

Check for Netapp console alarms. thresh: N/A not customizable. node: The node option restricts this check by cluster-node name.

**cluster_health**

Check the cluster disks for failure or other potentially undesirable states. thresh: N/A not customizable. node: The node option restricts this check by cluster-node name.

**clusternnode_health**

Check the cluster-nodes for unhealthy conditions. thresh: N/A not customizable. node: The node option restricts this check by cluster-node name.

**disk_health**

Check the health of the disks in the cluster. thresh: Not customizable yet. node: The node option restricts this check by cluster-node name.

**disk_spare**

Check the number of spare disks. thresh: Warning / critical required spare disks. Default thresholds are 2 / 1. node: The node option restricts this check by cluster-node name.

For keyword thresholds, if you want to ignore alerts for that particular keyword you set it at the same threshold that the alert defaults to.

## Help

In case you find a bug or have a feature request, please make an issue on GitHub.

## On Nagios Exchange

https://exchange.nagios.org/directory/Plugins/Hardware/Storage-Systems/SAN-and-NAS/NetApp/Check-Netapp-Ontap/details

## Copyright

This program is free software: you can redistribute it and/or modify it under the terms of the GNU General Public
License as published by the Free Software Foundation, either version 3 of the License, or (at your option) any later
version. This program is distributed in the hope that it will be useful, but WITHOUT ANY WARRANTY; without even the
implied warranty of MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the GNU General Public License for more
details at <http://www.gnu.org/licenses/>.
