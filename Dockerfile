FROM hrishi2861/wzv3:v3

WORKDIR /usr/src/app
RUN chmod 777 /usr/src/app

RUN pip3 uninstall megasdk --break-system-packages -y && pip3 install https://github.com/Hrishi2861/mega-sdk-py-4.8.0/raw/refs/heads/main/megasdk-4.8.0-py2.py3-none-any.whl --break-system-packages

RUN uv venv --system-site-packages

COPY requirements.txt .
RUN uv pip install --no-cache-dir -r requirements.txt

COPY . .

CMD ["bash", "start.sh"]
