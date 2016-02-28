<cfoutput>
  <cfloop query="rc.content">
    <cfset articleData = {
      "id" = assetmeta_nID,
      "title" = assetcontent_sTitleText,
      "intro" = assetcontent_sIntroText,
      "body" = assetcontent_sBodyText
    } />
    #view( 'elements/content/article', articleData )#
  </cfloop>
</cfoutput>