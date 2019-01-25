curl "http://localhost:4741/bookmarks" \
  --include \
  --request POST \
  --header "Content-Type: application/json" \
  --data '{
    "bookmark": {
      "job_post_id": "'"${ID1}"'",
      "job_seeker_id": "'"${ID2}"'"
    }
  }'

echo
