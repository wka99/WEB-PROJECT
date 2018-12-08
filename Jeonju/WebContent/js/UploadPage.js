
$(function() {
    input_pics=0;
    $("#Uploading").on('change', function(){
        uploadPics(this);
    })
});
function uploadPics(input){
    if(input.files && input.files[0]){
		if(input_pics>=5)
		{
			alert("사진은 5장까지 올릴 수 있습니다.");
		}
		else
		{
			input_pics+=1;
			var filename = $(input)[0].files[0].name;
        	var boxName='#box'+input_pics.toString();
        	var reader=new FileReader();
        	reader.onload=function(e){
            $(boxName).attr('src',e.target.result);
            $(boxName).attr('value',filename);
            $(boxName).attr('width','100%');
			$(boxName).attr('height','100%');
			$(boxName).hide();
			$('#box').attr('src',e.target.result);
            select_small(input_pics);
        	}
        	reader.readAsDataURL(input.files[0])
		}
    }
}
function select_small(pics){
	var smallNames=new Array();
	var boxName='box'+pics.toString();
	var boxSrc=document.getElementById(boxName).getAttribute('src');
	for(var i=0;i<5;i++)
	{
		smallNames[i]='#small_'+(i+1).toString();
		$(smallNames[i]).attr('src','images/control.png');
	}
	$(smallNames[pics-1]).attr('src','images/control_on.png');
	$('#box').attr('src',boxSrc);
	
	if(input_pics<=5)
	{
		for(var k=0;k<input_pics;k++)
		{
			$(smallNames[k]).show();
		}
		for(var j=input_pics;j<5;j++)
		{
			$(smallNames[j]).hide();
		}
	}
}
