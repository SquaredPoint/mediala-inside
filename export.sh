cat <<-'DOCUMENT_OPTIONS' > docraptor_parameters.json
  {
    "test": true,
    "document_type": "pdf",
    "document_url": "https://amazing-boba-762f47.netlify.app/combined.html"
  }
DOCUMENT_OPTIONS

curl https://ZY_O87EwbQ0SWumWlxtp@api.docraptor.com/docs \
  --fail --silent --show-error \
  --header "Content-Type:application/json" \
  --data @docraptor_parameters.json \
  > combined.pdf