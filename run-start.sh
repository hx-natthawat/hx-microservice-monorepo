docker build -t jaroen/headless-cms .
docker tag jaroen/headless-cms:latest jaroen/headless-cms:staging
# docker-compose up
docker-compose up --build --force-recreate
