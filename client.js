
/* 
** R&D sophia webdav
**
** get-Content and Create-Dir Test 
** August-2020
** 
*/

const { createClient } = require("webdav");

var client = createClient(
    "https://sodev.anzen.com.mx/alfresco/webdav/",	//< URL WebDav Sophia-Dev
    {
        username: "jhon",				//< Username
        password: "6chito98"				//< Password
    }
);

/* 
** Get Content Dir
*/

client
    .getDirectoryContents("/Shared")
    .then(function(contents) {
        console.log(JSON.stringify(contents, undefined, 4));
    });


/* 
** Create Dir
*/

try{
client
    .createDirectory("/Shared/testDir")
    .then(function(contents) {
        console.log(JSON.stringify(contents, undefined, 4));
    });
}catch(e) { 

}
