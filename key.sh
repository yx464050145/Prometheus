#!/bin/bash
# Runs a textfile collector.

textfile_dir=$(dirname $0)
source /etc/profile.d/node_exporter.sh
metric="$1"
shift
script="$textfile_dir/$metric"
prom_file="$textfile_dir/$metric".prom

if [[ ! -x "$script" || -d "$script" ]]; then
  echo "ERROR: Can't find script for '$metric'. Aborting."
  exit 1
fi

VALUE=`"$script" "$@"`
if [[ ! -n $VALUE ]]; then
    exit 0
    # echo "ERROR: Can't get value for '$metric'. Aborting."
    # exit 1
else
    echo "# TYPE${metric}gauge"> "$prom_file".$$
    echo "${metric}${VALUE}" >> "$prom_file".$$ && mv "$prom_file".$$ "$prom_file"
fi 


cat node_exporter.sh
#!/bin/bash
node_exporter_HOME='/usr/local/node_exporter'
PATH=$node_exporter_HOME:$PATH
