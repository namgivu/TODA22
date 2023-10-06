SH=`cd $(dirname ${BASH_SOURCE:-$0}) && pwd`
cd $SH

set -e  # halt if err -> build fail wont run

docker build \
  -f "$SH/../sample_context_d/Dockerfile" \
  -t midterm_test_i \
  .  `# context_d`

echo

docker run midterm_test_i
