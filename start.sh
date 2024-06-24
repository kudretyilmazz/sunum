docker build -t sunum .
docker rm -f sunum-test
docker run -d -p 5173:5173 --name sunum-test sunum