Description:  
A health monitoring script for Netapp Cluster-Mode filers.

Download:  
https://github.com/jsmroshamboot/NACMP/archive/master.zip

Known Issues:  
- Snapshot and Volume monitoring may not work on large clusters due to execution time.

Project Status:  
Working - Beta

Patch Notes:  
v0.6
- No longer stands in defiance of the laws of mathematics by attempting to divide by 0 when calculating disk health. (Thanks HW)
- No longer attempts to monitor a volume that is being moved or provisioned. (Thanks HW)
- Resolved a number of minor packaging and informational problems present in the 0.5 not-quite-release (Thanks WD)

v0.5
- *NEW* Quota monitoring (Warning: Completely untested and experimental. )
- *NEW* The new �n parameter allows you to filter the queries to only get information from a specific vhost or cluster node depending on the check, use the -�help parameter to get a list of which checks are filtered to which objects.
- check_netapp_ontapi.pl is now compatible with SDK 5.2 and hopefully OnTap 8.2.
- significant changes have been made to snapmirror monitoring so that it now works as intended.
- Physical port monitoring and vhost interface monitoring are now separate checks and can be accessed with check_port and check_interface respectively.

v0.4
- Additional sanitization on disk_health check to prevent errors when a disk has no assigned home (Thanks WD).

v0.3:
- The package has been changed to include the required version of the Netapp SDK (Thanks WD).

v0.2:
- All pre-existing checks (volume, snapshot and aggregate) updated for better scability.
- Added six new check categories, see usage below for full list.

v0.1:
- First release

Usage:  
1. Extract the contents of check_netapp_ontapi.zip to a temp directory and then navigate to it.  
2. Copy the contents of NetApp/* to your /usr/lib/perl5 directory to install the required version of the NetApp Perl SDK.  
3. Copy check_netapp_ontapi.pl script to your nagios libexec folder.

--hostname, -H  
Hostname or address of the cluster administrative interface. 
--node, -n  
Name of a vhost or cluster-node to restrict this query to.   
--user, -u  
Username of a Netapp Ontapi enabled user.  
--password, -p  
Password for the netapp Ontapi enabled user.  
--option, -o  
The name of the option you want to check. See the option and threshold list at the bottom of this help text.  
--warning, -w  
A custom warning threshold value. See the option and threshold list at the bottom of this help text.  
--critical, -c  
A custom warning threshold value. See the option and threshold list at the bottom of this help text.  
--modifier, -m  
This modifier is used to set an inclusive or exclusive filter on what you want to monitor.  
--help, -h  
Display this help text.

=========================================
Option List
=========================================
volume_health  
desc: Check the space and inode health of a vServer volume. If space % and space in *B are both defined the smaller value of the two will be used when deciding if the volume is in a warning or critical state. This allows you to better accomodate large volume monitoring.  
thresh: space % used, space in *B (i.e MB) remaining, inode count remaining, inode % used (Usage example: 80%i), "offline" keyword  
node: The node option restricts this check by vserver name.  

aggregate_health  
desc: Check the space and inode health of a cluster aggregate. If space % and space in *B are both defined the smaller value of the two will be used when deciding if the volume is in a warning or critical state. This allows you to better accomodate large aggregate monitoring.  
thresh: space % used, space in *B (i.e MB) remaining, inode count remaining, inode % used (Usage example: 80%i), "offline" keyword, "is-home" keyword  
node: The node option restricts this check by cluster-node name.  

snapshot_health  
desc: Check the space and inode health of a vServer snapshot. If space % and space in *B are both defined the smaller value of the two will be used when deciding if the volume is in a warning or critical state. This allows you to better accomodate large snapshot monitoring.  
thresh: space % used, space in *B (i.e MB) remaining, inode count remaining, inode % used (Usage example: 80%i), "offline" keyword  
node: The node option restricts this check by vserver name.  

quota_health  
desc: Check that the space and file thresholds have not been crossed on a quota.  
thresh: N/A storage defined.  
node: The node option restricts this check by vserver name.  

snapmirror_health  
desc: Check the lag time and health flag of the snapmirror relationships.  
thresh: snapmirror lag time (valid intervals are s, m, h, d).  
node: The node options restricts this check by snapmirror destination cluster-node name.  

filer_hardware_health  
desc: Check the environment hardware health of the filers (fan, psu, temperature, battery).  
thresh: component name (fan, psu, temperature, battery). There is no default alert level they MUST be defined.  
node: The node option restricts this check by cluster-node name.  

port_health  
desc: Checks the state of a physical network port.  
thresh: N/A not customizable.  
node: The node option restricts this check by cluster-node name.   

interface_health  
desc: Check that a LIF is in the correctly configured state and that it is on its home node and port. Additionally checks the state of a physical port.  
thresh: N/A not customizable.  
node: The node option restricts this check by vserver name.  

netapp_alarms  
desc: Check for Netapp console alarms.  
thresh: N/A not customizable.  
ode: The node option restricts this check by cluster-node name.  

cluster_health  
desc: Check the cluster disks for failure or other potentially undesirable states.  
thresh: N/A not customizable.  
node: The node option restricts this check by cluster-node name.  

disk_health  
desc: Check the health of the disks in the cluster.  
thresh: Not customizable yet.  
node: The node option restricts this check by cluster-node name.  

For keyword thresholds, if you want to ignore alerts for that particular keyword you set it at the same threshold that the alert defaults to.  
