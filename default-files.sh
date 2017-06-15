
echo Enter new project name
read project_name
mkdir $project_name
cd $project_name
touch index.html main.css main.js
echo "An HTML, CSS, and JS file have been created in the new project folder"
read -p "Press Enter to add the default code to the files" enter

echo "<!DOCTYPE html>
<html>
  <head>
    <meta charset='utf-8'>
    <title></title>
    <link rel='stylesheet' href='main.css'>
    <link rel='icon' type='image/png' href=''> <!-- favicon -->
    <meta name='viewport' content='width=device-width, initial-scale=1'>
  </head>
  <body>

    <script type='text/javascript' src='main.js'></script>
  </body>
</html>" > index.html

echo "* {
box-sizing: border-box;
margin: 0 auto;
}

img {
  max-width: 100%;
}



/*-------RESPONSIVE DESIGN-------*/
/*-------Tablet Display-------*/

@media screen and ( min-width: 545px ) {

}

/*-------Desktop Display-------*/

@media screen and ( min-width: 769px ) {

}" > main.css

echo "fetch('url', {
  headers: {
  }
})
  .then(function (response) {
    return response.json()
  })
  .then(function (json) {
    console.log(json)
  })" > main.js

read -p "Press Enter to open the created files in Atom" enter

atom index.html main.css main.js
