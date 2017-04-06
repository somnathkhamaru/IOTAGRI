/**
 * http://usejsdoc.org/
 */
$(document).ready(function(){

	var pumpval=0;
	 $( "#datepicker1" ).datepicker();
	 $( "#datepicker2" ).datepicker();
	 //$( "#datepicker3" ).datepicker();
	 var $radios = $('input[type="radio"]');
	    if($radios.is(':checked') === false) {
	        $radios.filter('[name=singledate]').prop('checked', true);
	    }
	 $('input[type="radio"]').click(function() {
		 if($(this).attr('name') == 'singledate') {
			 console.log('singledate');
			 $('#daterangeradio').prop('checked', false);
			// $('#singledate').css('display','block');
			 $('#daterange').css('display','none');
			 
		 }
		 else
		{
			 console.log('daterange');
			 $('#singledateradio').prop('checked', false);
			// $('#singledate').css('display','none');
			 $('#daterange').css('display','block');
		}
		 
		 
	 });
	 $(".dropdown-menu li a").click(function(){
		 	console.log($(this).text());
		    $("#sensor").text($(this).text());
	 });
	 
	 $('#on').click(function() {
		 $.post("https://api.thingspeak.com/update?api_key=ND5NURM86T07RZHX&",{
				field2:1
		    },"json").done(function( data ) {
		    	
		     console.log(data);
		    });
	 });
	 $('#off').click(function() {
		 $.post("https://api.thingspeak.com/update?api_key=ND5NURM86T07RZHX&",{
				field2:0
		    },"json").done(function( data ) {
		     console.log(data);
		     if(data==0)
		    	 window.alert("Server Busy with previous request. Try After 15 sec");
		    });
	 });
	 $('#submit').click(function() {
			console.log("submit");
			var type = $("#sensor").text();
			if(type=='No Sensor Selected')
			{
				alert("Please select a Sensor type to continue");
			}
			else{
			console.log(type);
			var startDate = $('#datepicker1').val();
			console.log(startDate);
			
			var endDate =$('#datepicker2').val();
			console.log(endDate);
			if(startDate=='')
			{
				alert("Please select a Start Date to Continue");
			}
			else
			{
				
				$("#loader").gSpinner();

				$.post("viewData",{
					type:type,startDate:startDate,endDate:endDate
				},"json").done(function( data ) {
					console.log(data );
					//data = JSON.stringify(data);
					//console.log(data );
					$("#Tabview").empty();
					var len = data.length;
					console.log("length:"+len);
					if(len!=0)
					{
						var hed1='<h3>TABULAR VIEW OF '+type.toUpperCase()+'</h3><table  class="table table-bordered" style="margin-bottom: 2px; margin-left: 10%;width: 79%">';
						var hed2='<thead> <tr class="headings"><th >RECORD_NO </th><th>'+type.toUpperCase()+'</th><th >TIME_STAMP</th></tr></thead>';
						var hed3='<tbody id="mainTable">';
						var hed6='</tbody></table><br><br>'
						$("#Tabview").append(hed1+hed2+hed3+hed6)
						for(var i=0; i<len;i++){
							var inter=data[i];
							var hed5='<tr> \
								<td>\
									'+inter.EntryID+'</td>\
								<td>\
									'+inter.Value+'</td>\
								<td>\
									'+inter.TimeStamp+'</td>\
							</tr>';
							$("#mainTable"). append(hed5);
						}
					
						google.setOnLoadCallback(displaygraph(data,type));	
						$("#loader").gSpinner("hide");

					}
					else{
						
						$("#chart_div").html("No Records found for graphical representation");
						$("#Tabview").html("No Records found for tabular representation");
						$("#loader").gSpinner("hide");

					}
				});
			
			}   //alert("on");
		}
	});
	 function parseDate(input) {
		 var firstpart=input.split(' ');
		 //console.log(firstpart[0]);
		 //console.log(firstpart[1]);
		 var parts = firstpart[0].split('-');
		 var time=firstpart[1].split(':');
		  // new Date(year, month [, day [, hours[, minutes[, seconds[, ms]]]]])
		  var year = parts[0];
		  var month=parts[1]-1;
		  var date=parts[2];
		  var hour=time[0];
		  var minute=time[1];
		  var second=time[2];
		  return new Date(year, month,date,hour,minute); // Note: months are 0-based
		}
	 
	 
	 setInterval(function(){ 
  		 $.getJSON( "https://api.thingspeak.com/channels/228461/fields/2/last.json", function( data ) {
  			 if(data.field2==1 )
  			{   
  				 if(pumpval!=data.field2)
  				{
  					pumpval= data.field2;
  					document.getElementById('pump').src='images/Animated gif Water.gif';
  					$('#pumpstatus').html('MOTOR ON');
  					$('#off').removeClass('disabled');		
  					$('#off').addClass('active');
  					$('#on').removeClass('active');		
  					$('#on').addClass('disabled');
  				}
  				
  				 
  			}
  			 else{
  				if(pumpval!=data.field2)
  				{
  					pumpval= data.field2;
  					document.getElementById('pump').src='images/PumpOFF.gif';
  					$('#pumpstatus').html('MOTOR OFF');
  					$('#on').removeClass('disabled');		
  					$('#on').addClass('active');
  					$('#off').removeClass('active');		
  					$('#off').addClass('disabled');
  				}
  			 }
  			 //console.log(data.field2);
  			  
  		
  		});
  	 
  	}, 1000);

	 function displaygraph(data,type){
		 var len = data.length;
		 var datachart=[];
			var Header=[ "TIMESTAMP",
			             type.toUpperCase()];
			 datachart.push(Header);
			 for (var i = 0; i < len; i++) {
				 var inter=data[i];
			      var temp=[];
			      
			      temp.push(parseDate(inter.TimeStamp));
			      temp.push(parseFloat(inter.Value));
			      datachart.push(temp);
			  }
		 var chartdata = new google.visualization.arrayToDataTable(datachart);   
		 var options = {"title":type.toUpperCase()+" VARIATION WITH TIME",
		            hAxis: {
		                "title": "TIMESTAMP",
		                color: '#f44242',
		                ticks: [parseDate(data[0].TimeStamp), parseDate(data[len-1].TimeStamp)]
		              },
		              'legend': {position: 'none'},
		              backgroundColor: '#6AB5D1',
		              vAxis: {
		               "title": type.toUpperCase(),
		               color: 'black',
		                ticks: [0 , 20, 40,60,80,100]
		              },
		              tooltip: {
		            	  isHtml: true 
		              },
		              'width':500,
		              'height':300
		          
		              ,curveType: 'function'
		            };
          // redraw the chart.
		chart = new google.visualization.LineChart(document.getElementById('chart_div'));
        chart.draw(chartdata, options);    
	 };

    });
