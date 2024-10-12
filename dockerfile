FROM python:3.11.9-slim AS build

WORKDIR /usr/src/rag

COPY requirements.txt ./
COPY pets.py ./
RUN pip install --upgrade pip
RUN pip install tiktoken
RUN pip install numpy
RUN pip install psutil
RUN pip install -r requirements.txt
ENV OPENAI_API_KEY=
ENV STORE-ADMIN-IP=
#COPY . .

CMD [ "python", "./pets.py" ]