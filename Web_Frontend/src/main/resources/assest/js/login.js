function pas(p)
{
    if(p<5)
    {
        alert("password too short")
        return false;
    }


}
function validate()
{
    let name=document.getElementById("user")
    let pass=document.getElementById("pass")

    if(name.value==""&&pass.value=="")
    {
        alert("user and pass blank value not allowed!!")
    }
    else if(name.value.trim()=="")
    {
        alert("user blank vlaue not allowed!")
        return false;
    }
    else if(pass.value=="")
    {
        alert("password blank vlaue not allowed!")
        return false;
    }
    else if(pas(pass.value))
    {
         
    }
    else 
    {
        return true;
    }
    
}