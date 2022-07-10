#!/bin/bash

java -javaagent:opentelemetry-javaagent.jar \
  -Dotel.service.name=producer \
  -Dotel.traces.exporter=zipkin \
  -Dotel.traces.sampler=parentbased_traceidratio \
  -Dotel.traces.sampler.arg=1.0 \
  -Dotel.instrumentation.kafka.experimental-span-attributes=true \
  -Dotel.instrumentation.common.experimental.suppress-messaging-receive-spans=true \
  -jar producer.jar