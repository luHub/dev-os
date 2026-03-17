#/!bin/bash


# (1) Do only acceptable changes per patch.

# (1.1) Run git in your top level repository
git format-patch -s -v1 -1

# (1.2) Run check patch to check your patch 
./scripts/checkpatch.pl 0001-your-patch-name.patch

# (1.3) Find the recipient 
./scripts/get_maintainer.pl  0001-your-patch-name.patch



# (2) Check Commit:  
# Subject: staging: <driver_name>: <summary>
# Body: Explain what you changed and why
# Sign-off: if is a checkpatch warning, explain  which #one.
# (3) Check Grammar spell 
# (4) Check Subject
# (5) Check Body
# (6) Check Sign-off


(3) Send Patch
git send-email \
  --to-cmd="./scripts/get_maintainer.pl --norolestats" \
  --cc-cmd="./scripts/get_maintainer.pl --norolestats" \
  0001-your-patch-name.patch
