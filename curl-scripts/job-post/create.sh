#!/bin/bash

curl "http://localhost:4741/job_posts" \
  --include \
  --request POST \
  --header "Content-Type: application/json" \
  --data '{
    "job_post": {
      "employer_id": "'"${UI}"'",
      "job_title": "'"${CN}"'",
      "job_description": "'"${CD}"'"
    }
  }'

echo
