XMLLIST = {
 
        //general settings
        xml: 'data.xml?' + Math.random(0,1), //solve ie weird caching issue
        display: '10', //number of items to be displayed
        random: true, //display randomly {true|false}
        appendTo: '#list', //set the id/class to insert XML data
     
        init: function () {
     
            //jQuery ajax call to retrieve the XML file
            $.ajax({
                type: "GET",
                url: XMLLIST.xml,
                dataType: "xml",            
                success: XMLLIST.parseXML
            }); 
     
        }, // end: init()
     
        parseXML: function (xml) {
     
            //Grab every single Row tags in the XML file
            var data = $('Row', xml).get();
            //Allow user to toggle display randomly or vice versa
            var list = (XMLLIST.random) ? XMLLIST.randomize(data) : data;
            var i = 1;
         
            //Loop through all the ITEMs
            $(list).each(function () {
             
                //Parse data and embed it with HTML
                XMLLIST.insertHTML($(this));            
 
                //If it reached user predefined total of display item, stop the loop, job done.
                if (i == XMLLIST.display) return false;
                i++;
            });
        }, // end: parseXML()
 
        insertHTML: function (item) { //do I have to replace 'item' with 'Row'???
 
            //retrieve each of the data fields from Row
            var jobTitle = item.find('job_JobTitle').text();
            var orgName = item.find('OrganizationName').text();
            var expireDate = item.find('job_expiredate').text();
            var link = item.find('ExternalLink').text();
            var html;
         
            //Embed them into HTML code
            html = '<div class="item">';
            html += '<a href="' + link + '">';
            html += '<span>' + jobTitle + '</span></a>';
            html += '<p>' + orgName + '</p>';
            html += '<p>' + expireDate + '</p>';
            html += '</div>';
         
            //Append it to user predefined element
            $(html).appendTo(XMLLIST.appendTo);
            
        }, // end: insertHTML()
 
     
        randomize: function(arr) {
         
            //randomize the data
            //Credit to JSFromHell http://jsfromhell.com/array/shuffle
            for(var j, x, i = arr.length; i; j = parseInt(Math.random() * i), x = arr[--i], arr[i] = arr[j], arr[j] = x);
                return arr;
   
        } // end: randomize()    
     

    }
 
    //Run this script
    XMLLIST.init();