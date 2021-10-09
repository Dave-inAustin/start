#!sh
x=`cygpath -m "${PWD}"`
xs=` echo "$x" | sed -e 's/^.*\(.\{45\}$\)/\1/' `
if [ "$x" != "$xs" ]; then
    xs="...$xs"
fi
echo "$xs"

