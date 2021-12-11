# Base64-Encode-Decode-Win10

# Encode 
certutil -encode data.txt tmp.b64 | findstr /v /c:- tmp.b64 > data.b64 ; rm tmp.b64

# Decode 
certutil -decode data.b64 data.txt
