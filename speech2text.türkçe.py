#Program ses komutunu stt.file dosyasına yazdırıyor
import speech_recognition as sr

r = sr.Recognizer()
with sr.Microphone() as source:
    print("Speak Anything :")
    audio = r.listen(source)
    try:
        text = r.recognize_google(audio,  language='tr-tr')
        print("You said : {}".format(text))
        f = open("/usr/share/Plexus.Network/Asistan/stt/stt.türkçe.file", "w")
        f.write("{}".format(text))
        f.close()
    except:
        print("Dediğini anlamadım.")

