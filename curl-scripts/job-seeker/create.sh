#!/bin/bash

curl "http://localhost:4741/job_seekers" \
  --include \
  --request POST \
  --header "Content-Type: application/json" \
  --data '{
    "job_seeker": {
      "user_id": "'"${UI}"'",
      "about_me": "'"${AM}"'",
      "location": "'"${LOC}"'",
      "code_wars_username": "'"${CW}"'"
    }
  }'

echo
