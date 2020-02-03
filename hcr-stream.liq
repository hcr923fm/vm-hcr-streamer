stream_input = input.alsa()

output.icecast(%mp3.cbr(bitrate=128,stereo=true,samplerate=44100),
	host="rss-streaming.co.uk",
	port="8034",
	password="hcr654389",
	mount="/stream",
	name="HCR 92.3 FM",
	description="Halton Community Radio",
	url="https://hcr923fm.com/listen",
	icy_metadata="true",
	stream_input)