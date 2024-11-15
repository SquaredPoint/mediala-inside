cat <<-'DOCUMENT_OPTIONS' > docraptor_parameters.json
  {
    "test": true,
    "document_type": "pdf",
    "document_url": "https://raw.githubusercontent.com/elmika/mediala-report/refs/heads/main/combined.html"
  }
DOCUMENT_OPTIONS

curl https://KN_O87EwbQ0SWpmWlxtp@api.docraptor.com/docs \
  --fail --silent --show-error \
  --header "Content-Type:application/json" \
  --data @docraptor_parameters.json \
  > combined.pdf