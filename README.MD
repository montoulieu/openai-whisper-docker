# Open AI Whisper Docker

This is a compact Docker image that offers an Open AI Whisper API for quick and efficient speech-to-text conversion.

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
You can test the API by sending a POST request to the route http://localhost:5000/whisper with a file in it. Body should be form-data.

```bash
curl -F "file=@/path/to/file" http://localhost:5000/whisper
```
