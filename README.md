# chromium_clean
Chromium startup script that deletes cookies and other website related data after Chromium gets closed.

My typical browsing workflow is that I don't keep any website related data around after I close the browser.

In Firefox this is easy to set up via the "Clear history when Firefox closes" setting. In Chromium however, the similar sounding option "Keep local data only until you quit your browser" never worked for me. I always noticed that there *is* data left from my previous browsing sessions. Starting Chromium in incognito mode also did not work.

So I wrote this little Chromium startup script that deletes the data after Chromium is closed. It keeps the bookmarks and preferences files but not anything else.

Be aware that if you rely on your browsing history in any way (saved passwords or auto form-filling or whatever) then running this might send you into deep trouble!

If you find anything else Chromium leaves behind on disk and should be deleted as well, please make a pull request.

One thing I am missing when using this script I cannot define custom search engines. Those seem to be kept in a sqlite file and so far I was too lazy to dabble with that. If you can think of an elegant solution, please make a pull request.
