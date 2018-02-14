sudo yum install python-requests -y

python tools/opam-updates.py . --ignore-updates --ignore-travis-opam --auth $GH_USER:$GH_TOKEN | tee /tmp/opam-updates.out

if cat /tmp/opam-updates.out | grep -q "Nothing to do";
then
    exit 0
fi

exit 1

