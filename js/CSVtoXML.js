// Set default test values for now
tbCSV.value = "block_number,task_id,task_description\n\
1,1,Identify organizational IA roles and responsibilities\n\
1,2,Identify and implement implicit deny ACL rules\n\
1,3,Calculate subnet ranges given subnet mask and addresses"

// funciton that parses CSV input to
function CSVtoXML(csvData){
	// start xml output with blank variable xml
  var xml = `<?xml version="1.0"?>\n<tasks>\n`;
	// splits input CSV data values by lines, puts values into csvData
	var csvData = csvData.value.split("\n").map(row => row.trim());
  // gets XML header values from the 0th line which contains them
  var headers = csvData[0].split(",");
  // for loop which goes through data and starts to populate XML values
  for(var i=1;i<csvData.length;i++)
  {
  	var values = csvData[i].split(",");
    xml += `<row${i}>\n`
    for (var j=0;j<headers.length;j++)
    {
    	xml += `<${headers[j]}>${values[j]}</${headers[j]}>
      `;
    }
    xml += `</row${i}>\n`
  }
  xml += `</tasks>`
	tbXML.value = xml;
}

/* OLD DOWNLOAD FUNCTIONS, NEED TO BE REDONE
// Function to download XML
function downloadData(contentType,data,filename){
   var link=document.createElement("A");
   link.setAttribute("href",encodeURI("data:"+contentType+","+data));
   link.setAttribute("style","display:none");
   link.setAttribute("download",filename);
   document.body.appendChild(link); //needed for firefox
   console.log(link.outerHTML);
   link.click();
   setTimeout(function(){
   	document.body.removeChild(link);
   },1000);
}


function download(frm){

	var data=fromToXml(frm);
  console.log(data);

  downloadData("text/xml",data,"export.xml");
}
*/
