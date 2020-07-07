FROM ruby:2.4.4

WORKDIR /app 
COPY . .

RUN curl -sL https://deb.nodesource.com/setup_12.x | bash - \
  && apt-get install -y nodejs \
  && node --version && npm --version \
  && npm install pm2@latest -g