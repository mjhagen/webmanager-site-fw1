<cfoutput>
  <cfloop collection="#request.xImage#" item="key">
    <cfloop collection="#request.xImage[key]#" item="sortKey">
      <img class="img-responsive" src="/media/#request.xImage[key][sortKey].assetContent_sFileExtension#">
    </cfloop>
  </cfloop>
</cfoutput>