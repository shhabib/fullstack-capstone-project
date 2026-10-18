GiftLink login for the registered test user
The throwaway password and authentication token are redacted.

PowerShell cURL command:
$body = '{"email":"giftlink-assessment-db723cb6dedc4964b21e896b95e59ccd@example.invalid","password":"[REDACTED]"}'
$body | curl.exe --silent --show-error --write-out "`nHTTP_STATUS:%{http_code}" --request POST --url "http://localhost:3060/api/auth/login" --header "Content-Type: application/json" --data-binary "@-"

HTTP_STATUS:200
{"authtoken":"[REDACTED]","userName":"Capstone","userEmail":"giftlink-assessment-db723cb6dedc4964b21e896b95e59ccd@example.invalid"}
