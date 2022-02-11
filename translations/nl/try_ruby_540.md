---
lang:   NL
title:  De nieuwste Blurbs
answer: Today
ok:     Bring on the blurbs
error:  
load:   prev;class Blurbalizer;attr_reader :titel;def initialize(titel);@titel=titel;@blurbs=[];end;def voeg_blurb_toe(stemming, tekst);@blurbs << Blurb.new(stemming, tekst);@blurbs.each {|t| t.tijd -= 73};end;def toon_timeline;puts "Blurbalizer: #{@titel} heeft #{@blurbs.count} Blurbs\n";@blurbs.sort_by { |t| t.tijd}.reverse.each { |t| puts "#{t.tekst.ljust(40)} #{t.tijd}"};end;end;mijnapp = Blurbalizer.new "De Laatste Blurbs";mijnapp.voeg_blurb_toe :verdrietig,"Today Mount Hood Was Stolen!";mijnapp.voeg_blurb_toe :verward,"I can not believe Mt. Hood was stolen!";mijnapp.voeg_blurb_toe :verdoofd,"I am speechless!";mijnapp.voeg_blurb_toe :boos,"It was stolen by a giraffe !!";mijnapp.voeg_blurb_toe :verdrietig,"I Left my Hoodie on the Mountain!";mijnapp.voeg_blurb_toe :boos,"I am never going back to that mountain."
---

Daar ben je. Denk je dat je alle Blurbify<sup>TM</sup> code hebt begrepen? Vast wel.

> In de Blurbify<sup>TM</sup> klasse zitten 2 __methoden__ (voeg\_blurb\_toe en
> toon\_timeline).
> Een klasse methode kan je buiten de klasse definitie gebruiken, net als accessors.

Hoog tijd om Blurbalizer<sup>TM</sup> op te starten.
Ik heb al wat Blurbs<sup>TM</sup> voor je toegevoegd, maar als je er zelf meer
toe wilt voegen: leef je uit.

Blurbs<sup>TM</sup> maken we nu niet meer rechtstreeks, maar via de __voeg\_blurb\_toe__
methode. Hierdoor weten we zeker dat alle nieuwe Blurbs<sup>TM</sup> worden opgeslagen
binnen het __mijnapp__ object.

    mijnapp.voeg_blurb_toe :stemming, "Mijn Blurb tekst"
    
    mijnapp.toon_timeline
