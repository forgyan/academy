var app = angular.module("staffType",[]);

app.controller("staffTypeController", ['$scope', '$http', function($scope, $http){
	
	$scope.getStaffType = function(){
		 var post = $http({
             method: "GET",
             url: "/academy/staff/getAll",
             dataType: 'json',
             data: { 
            	 id :0,
            	 staffType : $scope.staffType
				 },
             headers: { "Content-Type": "application/json" }
         });
		 
		 post.success(function (data, status) {

				var deletePrivilege =true;
				var viewPrivilege=true;
				var editPrivilege=true;
			       var i = 1;
			 $('#exampleTbl').DataTable().clear().draw();
					   $.each(data, function(index, value) {
						   		 edit= '';
				    			 delet = '';
				    			 print = '';
				    			 view='';
				    			 status ='';
			    			   
			    				     if(editPrivilege){	 
			    				     edit='<form action="#"  method="get" style="display: inline-block;">'+
					 	 		           	'<input type="hidden" name="id" value='+value.id+'>'+
					 	 		            '<i class=\"fa fa-edit\"></i>'+
					 	 		            '<input type="checkbox" class="submitLink" onclick="editAy('+value.id+')" value="Edit"></input>'+
										'</form>';
			    				     }
			    				     else
			    				     edit= '<span ><i class=\"fa fa-edit\"></i><input class="non-privilege-link"  type="checkbox" onclick="editOpen('+value.chartId+')" value="Edit" tabindex="15"/></span>';
								
			    				   if(deletePrivilege){	 
			    				    delet ='<form action="#" method="post" style="display:inline-block;">'+
			 	 		           	'<input type="hidden" name="id" value='+value.id+'>'+
			 	 		            '<i class="fa fa-trash" aria-hidden="true"></i>'+
									'<input type="checkbox" class="submitLink" onclick="editAy('+value.id+',this)" tabindex="15" value="Delete"></input>'+
								   '</form>';
			    				   }
			    				   else
			    					 delet = '<span ><i class="fa fa-trash" aria-hidden="true"></i><input  class="non-privilege-link" type="button" onclick="deleteMst('+value.id+',$(this))" value="Delete" tabindex="15"/> </span>';
			    					 
			    			      
				    			
			    			 $('#exampleTbl').DataTable()
				 	 		   .row
				 	 		   .add([ '<td >'+i+'</td>', 
				 	 		         '<td >'+value.staffType+'</td>',
				 	 		       	 '<td>'+edit+'&nbsp;|&nbsp;'+delet+'</td>'
		    	 		         
				 	 		        ])
			 	 		   .draw();
			 	 		   i++;
		 				 })
         });

         post.error(function (data, status) {
             $window.alert(data.Message);
         });
	
		
	}
	
	$scope.getStaffType();
	$scope.addStaff = function(){
		 var post = $http({
             method: "POST",
             url: "/academy/staff/add",
             dataType: 'json',
             data: { 
            	 id :0,
            	 staffType : $scope.staffType
				 },
             headers: { "Content-Type": "application/json" }
         });
		 
		 post.success(function (data, status) {
			 $scope.getStaffType();
			 $scope.staffType="";
		 });

         post.error(function (data, status) {
             $window.alert(data.Message);
         });
	}
}]);