/* Javascript code to output the campus status messages from IndianaUniversity.info */ 

/* This code can be used to simply drop in an iframe that points back to our XML parser and outputs HTML and CSS
document.write( '<iframe width="100%" height="400" scrolling="no" frameborder="0" src="http://www.iu.edu/~iuinfo/backend/parser.php?campus=iub"></iframe>' );
*/

/*********************************************
	Needed Variables (implementation side)
**********************************************
<script type="text/javascript">
   	var crisis_com_show_all_clear = false; 		// options: true, false - will show the all clear message if set to true - default is false
	var crisis_com_campus = "iub";			// options: iub, iupui, ipfw, iupuc, iue, iuk, iun, iusb, ius - default is iub; KEEP THIS VALUE AT "IUPUI"
	var crisis_com_show_output = "mid_small"; 	// options: small, mid_small, medium, large - default is mid_small; KEEP THIS VALUE AT "LARGE"
</script>
*/

// first make sure the needed variables are set, if not set them to the defaults 
if( typeof(crisis_com_campus) != "string" )
{
	crisis_com_campus = "iub";	
}

if( typeof(crisis_com_show_all_clear) != "boolean" )
{
	crisis_com_show_all_clear = false;	
}

if( typeof(crisis_com_show_output) != "string" )
{
	crisis_com_show_output = "mid_small";	
}

document.write( '<link type="text/css" rel="stylesheet" title="Campus Status Messages" href="alertCSS.css" />' );
/* The code below grabs some json encoded data from IndianaUniversity.info and outputs it based on varaiables set by the script */
document.write( '<script type="text/javascript" src="http://www.iu.edu/~iuinfo/backend/json.php?campus=' + crisis_com_campus + '&callback=crisis_com_output"></script>' );

function crisis_com_output( json )
{
	document.write( '<div class="campus_status_messages">' );
		
	if( json.status.length ) // if there are more than 1 status
	{
		for( var i = 0; i < json.status.length; i++ )
		{
			outputStatus( json.status[i] );
		}
	}
	else
	{
		outputStatus( json.status );	
	}
	
	document.write( '</div>' );
}

function outputStatus( status )
{	
	/* Get the Data */
	var campus 		= status.campus;
	var type		= status.type;
	var title		= status.title;
	var text		= status.text;
	var info_url		= status.url;
	var code_small		= status.code.small;
	var code_mid_small	= status.code['mid-small'];
	var code_medium		= status.code.medium;
	var code_large		= status.code.large;
	var output		= null;
	
	if( typeof(info_url) == "string" )
	{
		var matchPos = code_small.indexOf("cmpstat_custom");
		
		if( matchPos == -1 ) // this status is custom, therefore do not add the link
		{
			var more_info_link 	= '<a href="' + info_url + '">';
			var old_code_small	= code_small;
			var old_code_mid_small	= code_mid_small;
			
			code_small	= more_info_link + old_code_small + "</a>";
			code_mid_small	= more_info_link + old_code_mid_small + "</a>";
		}
	}
	
	switch( crisis_com_show_output )
	{
		case "small":
			output = code_small;
			break;
		case "mid_small":
			output = code_mid_small;
			break;
		case "medium":
			output = code_medium;
			break;
		case "large":
			output = code_large;
			break;
		default:
			output = code_mid_small;
			break;
	}

	// for the large output type we need to add a wrapper
	if( crisis_com_show_output == "large" )
	{
		document.write( '<div class="campus_status_messages-'+type.toLowerCase()+'">');
	}
	
	if( type != "Normal" ) // if the type is something other than Normal we need to check the publish and expiration dates
	{
		document.write( output );	
	}
	else if( crisis_com_show_all_clear == true ) // type is Normal, check to see if option to show all clear is set to true
	{
		document.write( output );
	}
	
	// close the wrapper for the large output type
	if( crisis_com_show_output == "large" )
	{
		document.write( '</div>' );
	}
}