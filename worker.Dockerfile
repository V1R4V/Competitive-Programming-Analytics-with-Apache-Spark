# worker.Dockerfile
FROM p5-base

ENV SPARK_HOME=/spark-3.5.7-bin-hadoop3
ENV PATH="$PATH:$SPARK_HOME/bin:$SPARK_HOME/sbin"

WORKDIR /app

EXPOSE 8081

CMD ["bash", "-lc", "start-slave.sh spark://boss:7077 && tail -f /dev/null"]
