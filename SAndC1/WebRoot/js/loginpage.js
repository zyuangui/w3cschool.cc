function $(id){
	return typeof id==='string'?document.getElementById(id):id;
}

window.onload=function(){
	//获取鼠标滑过或点击的标签和要切换的内容的元素
	var heads=$('head').getElementsByTagName('li'),
		bodys=$('body').getElementsByTagName('div');
	//遍历head下的所有li
	for (var i = 0; i < heads.length; i++) {
		heads[i].id=i;
		heads[i].onclick=function(){
			for(var j=0;j<heads.length;j++){
				heads[j].className='';
				bodys[j].style.display='none';
			}
			this.className='select';
			bodys[this.id].style.display='block';
	    };
    }
};