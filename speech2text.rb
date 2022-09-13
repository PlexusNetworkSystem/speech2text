# audio_file_path = "Path to file on which to perform speech recognition"

require "google/cloud/speech"

speech = Google::Cloud::Speech.speech

audio_file = File.binread audio_file_path
config     = { encoding:          :LINEAR16,
               sample_rate_hertz: 16_000,
               language_code:     "en-US" }
audio      = { content: audio_file }

operation = speech.long_running_recognize config: config, audio: audio

puts "Operation started"

operation.wait_until_done!

raise operation.results.message if operation.error?

results = operation.response.results

alternatives = results.first.alternatives
alternatives.each do |alternative|
  puts "Transcription: #{alternative.transcript}"
end
File.write("/usr/share/Plexus.Network/Asistan/stt/stt.file", "#{alternative.transcript}")
#Program ses komutunu stt.file dosyasına yazdırıyor (Şu an devre dışı).
