FROM python:3

WORKDIR /usr/src/app

COPY requirements.txt ./
RUN pip install --no-cache-dir -r requirements.txt
ENV PIP_ROOT_USER_ACTION=ignore

COPY . .

CMD [ "python", "./your-daemon-or-script.py" ]

EXPOSE 443