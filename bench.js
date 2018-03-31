function jsBench () {
  var str = '';
  document.body.appendChild(document.createTextNode(' '));
  var t0 = performance.now();
  for (var i = 0; i < 100000; i++)
    document.body.childNodes[0].textContent = (str += "!");
  var t1 = performance.now();
  console.log("Call to js took " + ((t1 - t0)/1000) + " seconds.");
  document.body.childNodes[0].textContent = '';
}
