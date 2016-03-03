<cfoutput><!DOCTYPE html>
<html lang="nl">
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta http-equiv="x-ua-compatible" content="ie=edge">

    <title><cfif len( trim( request.site.sTitleText ))>#request.site.sTitleText#</cfif></title>
    <meta name="description" content="#request.site.sDescription#">
    <meta name="keywords" content="#request.site.sKeywords#">

    <link rel="stylesheet" href="//cdn.rawgit.com/twbs/bootstrap/v4-dev/dist/css/bootstrap.css">
    <link rel="stylesheet" href="/inc/css/main.css">

    <script src="//code.jquery.com/jquery-2.2.1.min.js"></script>
    <script src="//cdn.rawgit.com/twbs/bootstrap/v4-dev/dist/js/bootstrap.js"></script>
    <script src="/inc/js/main.js"></script>
  </head>
  <body>
    <div class="container">
      #view( 'elements/nav/level-1' )#
      #view( 'elements/content/articles' )#
    </div>
  </body>
</html></cfoutput>