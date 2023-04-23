# Open AI Whisper Docker

A minimal docker image that provides an Open AI Whisper API for fast speech to text.

## Usage

### Build

```bash
docker build -t openai-whisper .
```

### Run

```bash
docker run -p 5000:5000 openai-whisper
```

### Test

```bash
curl -X POST -H "Content-Type: application/json" -d '{"text":"Hello World"}' http://localhost:5000
```
