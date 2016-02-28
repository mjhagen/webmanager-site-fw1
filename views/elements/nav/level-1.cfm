<cfoutput>
  <div id="nav" class="row">
    <a href="/">Home</a>
    <cfloop query="rc.nav.level1">
      <cfset local.active = listFind( rc.lCurrentNavPath, assetmeta_nID ) gt 0 />

      <div class="col-sm-3 level-1">
        <cfset local.navitem = {
          "active" = listFind( rc.lCurrentNavPath, assetmeta_nID ) gt 0,
          "name" = listFirst( assetContent_sTitleText, chr( 0182 )),
          "link" = assetContent_sTitleText contains chr( 0182 ) ? listRest( assetContent_sTitleText, chr( 0182 )) : "/#rc.xdirectlinks[assetmeta_nID]#"
        } />

        #view( 'elements/nav/item', local.navitem )#

        <cfif local.navitem.active>
          <div class="text-xs-left level-2" id="nav-#request.variableFormat( assetContent_sTitleText, true )#">
            #view( "elements/nav/level-2" )#
          </div>
        </cfif>
      </div>
    </cfloop>
  </div>
</cfoutput>