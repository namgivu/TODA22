SH=`cd $(dirname ${BASH_SOURCE:-$0}) && pwd`
cd $SH

docker build             \
  -f "$SH/../Dockerfile" \
  -t midterm_test_i      \
  .  `# context_d`

echo

docker run midterm_test_i
