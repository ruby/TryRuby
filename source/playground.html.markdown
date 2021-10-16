---
title: "TryRuby playground"
description: Play around with Ruby programs
---

<div class="row">
  <div class="col-md-6">
    <div id="tryruby-explanation">
      <h2 id="tryruby-title">TryRuby playground</h2>
      <div id="tryruby-content">
        <iframe src="https://www.ruby-doc.org/core/Kernel.html" width="125%" height="740px">www.ruby-doc.org</iframe>
      </div>

      <p>In the Playground you can try any Ruby code you like.<br/>The Ruby documentation is included.</p>
    </div>
  </div>

  <div class="col-md-6">

    <div class="row" id="wrapper">

      <div class="col-md-12">
        <h4>Output</h4>
        <div id="output" class="well" style="padding:0">
        </div>
      </div>

      <div id="editor_wrapper" class="col-md-12">
        <h4>Editor</h4>
        <div id="editor" class="well" style="padding:0"></div>

        <div class="row">
          <div class="col-md-8">
            <button type="button" id="btn_run" class="btn btn-primary btn-block">Run <span class="glyphicon glyphicon-play" aria-hidden="true"></span></button>
          </div>
          <div class="col-md-4">
            <button type="button" id="btn_copy_url"  class="btn btn-default btn-block"><span class="glyphicon glyphicon-share-alt" aria-hidden="true"></span> Copy URL</button>
          </div>
        </div>
      </div>

    </div>
  </div>
</div>

<script>
Opal.loaded(OpalLoaded || []);
Opal.require('try_ruby');
</script>
