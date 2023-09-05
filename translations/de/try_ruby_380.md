---
lang:   DE
title:  Die Welt liegt uns zu Füßen
answer: ^\{\"William
ok:     Gut. Etwas schwierig zu lesen.
error:  
load:   def get_shakey; {"William Shakespeare"=>{"1"=>{"title"=>"The Two Gentlemen of Verona", "finished"=>1591},"2"=>{"title"=>"The Taming of the Shrew", "finished"=>1591},"3"=>{"title"=>"Henry VI, Part 2", "finished"=>1591},"4"=>{"title"=>"Henry VI, Part 3", "finished"=>1591},"5"=>{"title"=>"Henry VI, Part 1", "finished"=>1592},"6"=>{"title"=>"Titus Andronicus", "finished"=>1592},"7"=>{"title"=>"Richard III", "finished"=>1593},"8"=>{"title"=>"Edward III", "finished"=>1593},"9"=>{"title"=>"The Comedy of Errors", "finished"=>1594},"10"=>{"title"=>"Love's Labour's Lost", "finished"=>1595},"11"=>{"title"=>"Love's Labour's Won", "finished"=>1596},"12"=>{"title"=>"Richard II", "finished"=>1595},"13"=>{"title"=>"Romeo and Juliet", "finished"=>1595},"14"=>{"title"=>"A Midsummer Night's Dream", "finished"=>1595},"15"=>{"title"=>"King John", "finished"=>1596},"16"=>{"title"=>"The Merchant of Venice", "finished"=>1597},"17"=>{"title"=>"Henry IV, Part 1", "finished"=>1597},"18"=>{"title"=>"The Merry Wives of Windsor", "finished"=>1597},"19"=>{"title"=>"Henry IV, Part 2", "finished"=>1598},"20"=>{"title"=>"Much Ado About Nothing", "finished"=>1599},"21"=>{"title"=>"Henry V", "finished"=>1599},"22"=>{"title"=>"Julius Caesar", "finished"=>1599},"23"=>{"title"=>"As You Like It", "finished"=>1600},"24"=>{"title"=>"Hamlet", "finished"=>1601},"25"=>{"title"=>"Twelfth Night", "finished"=>1601},"26"=>{"title"=>"Troilus and Cressida", "finished"=>1602},"27"=>{"title"=>"Sir Thomas More", "finished"=>1604},"28"=>{"title"=>"Measure for Measure", "finished"=>1604},"29"=>{"title"=>"Othello", "finished"=>1604},"30"=>{"title"=>"All's Well That Ends Well", "finished"=>1605},"31"=>{"title"=>"King Lear", "finished"=>1606},"32"=>{"title"=>"Timon of Athens", "finished"=>1606},"33"=>{"title"=>"Macbeth", "finished"=>1606},"34"=>{"title"=>"Antony and Cleopatra", "finished"=>1606},"35"=>{"title"=>"Pericles, Prince of Tyre", "finished"=>1608},"36"=>{"title"=>"Coriolanus", "finished"=>1608},"37"=>{"title"=>"The Winter's Tale", "finished"=>1611},"38"=>{"title"=>"Cymbeline", "finished"=>1610},"39"=>{"title"=>"The Tempest", "finished"=>1611},"40"=>{"title"=>"Cardenio", "finished"=>1613},"41"=>{"title"=>"Henry VIII", "finished"=>1613},"42"=>{"title"=>"The Two Noble Kinsmen", "finished"=>1614}}}; end;
---

Bislang haben wir Programme laufen lassen, die nur Dinge verwenden, die wir 
selbst eingegeben haben.
Was schön ist, ich meine, dass _Odelaying_ episch war, aber dies ist das 
Internet-Zeitalter, also ist es an der Zeit, dass wir den Rest der Welt in 
unsere Programmierbemühungen mit einbeziehen.

Es gibt viele, viele, viele Websites, die du um Informationen bitten kannst. 
Unter diesem Link findest du zum Beispiel alle aktuellen 
<a href="http://news.google.com/news/section?q=ruby&output=rss" target="_blank">Google-Nachrichten</a> 
über Ruby.

Dein Webbrowser wird den Text wahrscheinlich recht gut anzeigen. Wenn du dir 
den Quelltext ansiehst (tippe: Strg-U), wirst du eine lange Kette von seltsam 
formatiertem Text sehen. Im Google-Beispiel ist er im Format __rss__.

### Formate
Es gibt viele andere Formate mit merkwürdigen Namen, die im Internet verfügbar 
sind und verwendet werden, wie html, xml und json. Ja, sogar diese Website 
verwendet einige von ihnen.

Ich habe eine Methode für dich vorbereitet, mit der du eine Liste der 
kompletten Werke von William Shakespeare aus dem Internet holt. (Keine Sorge, 
sie kommt vom selben Server, auf dem auch diese Website läuft, wir stören also 
niemanden.)

Hole die Daten mit:

    get_shakey
