function tabcolor(){
    var table=document.getElementById("view").getElementsByTagName("tr");
    for(i=1;i<table.length;i++){
        if(i%2!=0){
            table[i].style.backgroundColor="#cccccc";
        }else{
            table[i].style.backgroundColor="#cceedd";
        }
    }
}
function deltab(){
    var table=document.getElementById("del").getElementsByTagName("tr");
    for(i=1;i<table.length;i++){
        if(i%2!=0){
            table[i].style.backgroundColor="#cccccc";
        }else{
            table[i].style.backgroundColor="#cceedd";
        }
    }
}