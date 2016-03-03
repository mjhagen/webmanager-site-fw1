<cfparam name="local.id" default="" />
<cfparam name="local.title" default="" />
<cfparam name="local.intro" default="" />
<cfparam name="local.body" default="" />

<cfoutput>
  <div class="article" id="article-#local.id#">
    <h1>#local.title# <small>#local.intro#</small></h1>
    #local.body#
  </div>
</cfoutput>