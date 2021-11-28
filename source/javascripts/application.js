//= require try_ruby

document.addEventListener("DOMContentLoaded", () => {
  Opal.loaded(OpalLoaded || []);
  Opal.require("try_ruby");
})
