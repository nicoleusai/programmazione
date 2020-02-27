import ("stdfaust.lib");
bpm2samp(t)=(60  * ma.SR)/(t);
beat = bpm2samp(vslider("tempo[style:knob]", 60,32,240,0.1));
process=ba.pulsen (1,beat) : fi.lowpass (128,1000);
//freq = vslider ("frequenza")
//oggetto che fa clik (ba.pulsen).
//su ba.pulsen, il primo indica quanto è lungo in campioni il clik, il secondo numero indica ogni quanti campioni avviene il clik.
// (ba.pulsen) genera un clik ogni beat  
//il beat è una funzione che abbiamo fatto noi e che uttilizza la funzione bpm2samples che converte i campioni una durata espressa in beat per minuto.
//ma.sr chiede a che frequenza sta lavorando.  
//process = ba.pulsen(1,123): fi.highpass (128.freq);
//beat ha lo scopo di riassumere 
//bpm è l'acronimo di beat per minute 
