while :; do
dd if=out.fifo bs=1b count=1 2>/dev/null | grep $1
if [ $? -eq 0]; then
echo “$2” > in.fifo
exit 0
fi
done
