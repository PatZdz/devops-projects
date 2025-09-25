from fastapi import FastAPI
from prometheus_client import Counter, generate_latest
from fastapi.responses import Response

app = FastAPI()

# prosty licznik requestów
REQUEST_COUNT = Counter("request_count", "Total number of requests")


@app.get("/")
def read_root():
    REQUEST_COUNT.inc()
    return {"message": "Hello, observability!"}


@app.get("/metrics")
def metrics():
    return Response(generate_latest(), media_type="text/plain")
