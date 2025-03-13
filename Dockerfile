FROM hrishi2861/wzv3:v3

WORKDIR /usr/src/app
RUN chmod 777 /usr/src/app

COPY . .
RUN uv pip install --no-cache-dir -r requirements.txt
CMD ["bash", "start.sh"]
