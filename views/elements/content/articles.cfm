<cfoutput>
  <cfloop query="rc.content">
    <cfset local.articleData = {
      "id" = assetmeta_nID,
      "title" = assetcontent_sTitleText,
      "intro" = assetcontent_sIntroText,
      "body" = assetcontent_sBodyText
    } />
    <div class="row">
      <div class="col-md-4">#view( 'elements/content/article', local.articleData )#</div>
      <div class="col-md-4">#view( 'elements/content/images' )#</div>
    </div>
  </cfloop>
</cfoutput>