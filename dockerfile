FROM alpine:3.1

# Update
RUN apk add --update python py-pip

# Install app dependencies
RUN pip install Flask

# Bundle app source
COPY test.py /src/test.py
COPY requirements.txt /src/requirements.txt

EXPOSE  8000
CMD ["python", "/src/test.py", "-p 8000"]
