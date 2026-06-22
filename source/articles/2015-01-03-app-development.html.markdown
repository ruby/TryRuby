---
title: "Is there an App for that?"
date: 2015/01/03
author: Ivo Herweijer
the_summary: Is there an App for that, or how to deliver your fantastic new service to your customers.
---

## Is there an App for that?

This article is about how to deliver a service (aka your software) to your customers.

### A brief history of software delivery
Life used to be very simple for software developers. You made some code, copied it to a disc and
sent it to a customer. Next came the internet, so you could distribute code via a download.
Or the website itself became the product.

Then computers started to shrink to the size of tablets, smartphones, and wristwatches, with small
touch operated screens, without a real keyboard and sometimes requiring your code to run on the
device itself.

These days, to deliver the service to a customer we really have to support multiple distribution
channels:
a website usable from a variety of computers and devices, plus a native app for each of the major
platforms (Android, iOS).
A lot of different technologies to learn!

Life for software developers isn't that simple anymore. What are your options?

### HTML5
The first route available to you is to create only a web-based version of your service.
Web browsers are getting more powerful every year. Giving you better control over the look
and feel of your website, regardless of the size or type of device used by your customer.

But your customer will still need constant internet access to use your service. Fortunately
the web browser can help us here as well. HTML 5 enabled web browsers support something called
local storage and service workers, which you can use to make the customer feel like they are still
connected to your service. When an internet connection becomes available again, you can sync changes.
I am not saying this is easy to do, far from it, but it's doable.

One thing that can make life easier is to use <a href="http://opalrb.com/" target="_blank">Opal</a>.
This means that you can run Ruby code in the web browser. Normally web browsers only run Javascript,
but Opal cleverly translates your Ruby code to Javascript. This saves you having to learn Javascript.  
It is also very handy to use the same language for both the front-end (web browser) and the back-end
(webserver with Rails for instance).

> TryRuby uses Ruby and Opal for everything.

### Native apps
The other possible route is to go native. Create an app for every mobile platform that you want
to support. Native apps give you ultimate control over the look and feel of your program.
You will also have better access to the sensors built into the device (movement, position, ...).

Huge drawback to this approach is that every mobile platform uses a completely different development
environment and programming language. You might need to learn about Java, Objective-C, Swift,
C-Sharp and others.

But you are in luck! There are cross-platform tools available where you create your app once and
distribute it to multiple mobile platforms.
