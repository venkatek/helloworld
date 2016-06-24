FROM alpine:3.1

# Update
RUN apk add --update python py-pip

# Install app dependencies
RUN pip install Flask

# Bundle app source
COPY test.py ~/dockerdemo/test.py
COPY requirements.txt ~/dockerdemo/requirements.txt

EXPOSE  8000
CMD ["python", "~/dockerdemo/test.py", "-p 8000"]
