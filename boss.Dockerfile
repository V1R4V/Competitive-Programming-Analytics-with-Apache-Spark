# boss.Dockerfile
FROM p5-base

ENV SPARK_HOME=/spark-3.5.7-bin-hadoop3
ENV PATH="$PATH:$SPARK_HOME/bin:$SPARK_HOME/sbin"

WORKDIR /app

# Spark Master ports
EXPOSE 7077 8080

CMD ["bash", "-lc", "start-master.sh --host boss && tail -f /dev/null"]
