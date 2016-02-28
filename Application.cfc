component extends="e-line_cm.lib.cfc.fw1.base" {
  variables.fsroot = getDirectoryFromPath( getCurrentTemplatePath());

  this.name = hash( variables.fsroot );
  this.sessionManagement = true;

  request.site.nBwsID = XXX;
  request.site.cfroot = "/#this.name#";
  request.site.fsroot = variables.fsroot;
  request.site.nRootID = YYY;
  request.site.webroot = "";
  request.site.bSkipEmptyMenus = true;

  request.ass.bEnabled = false;

  variables.domainname = cgi.server_name;

  this.mappings["/#this.name#"] = variables.fsroot;

  variables.framework.base = request.site.cfroot;
  variables.framework.reloadApplicationOnEveryRequest = true;
  variables.framework.routes = [
    { "/:page" = "/main/default/page/?404;:page" }
  ];

  public void function setupRequest() {
    if( !cgi.query_string contains '404;' ) {
      request.site.sOverrideQueryString = "404;#lcase( listFirst( cgi.server_protocol, '/' ))#://#cgi.server_name#:#cgi.server_port##replaceNoCase( cgi.path_info, 'index.cfm', '', 'one' )#";
    }

    super.setupRequest();
  }

  public function onError() {
    writeDump(arguments);abort;
  }
}