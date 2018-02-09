sudo yum install python-requests -y

if python tools/opam-updates.py --auth $USER:$TOKEN \
    | grep -q "Nothing to do, xs-opam is already up to date.";
then
    exit 0
fi

exit 1

