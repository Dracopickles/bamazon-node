var mysql = require("mysql");
var inquirer = require("inquirer");


var connection = mysql.createConnection({
  host: "localhost",

  // Your port; if not 3306
  port: 3306,

  // Your username
  user: "root",

  // Your password
  password: "Dracomaster6",
  database: "bamazon_DB"
});

connection.connect(function(err) {
  if (err) throw err;
  // run the start function after the connection is made to prompt the user
  // console.log(connection);
  readProducts();
});

function readProducts() {
  console.log("Selecting all products...\n");
  connection.query("SELECT * FROM products", function(err, res) {
    if (err) throw err;
    // Log all results of the SELECT statement
    console.table(res);
    start();
  });
}

function start() {
  function validateInteger(input)
    {
       var reg = /^\d+$/;
       return reg.test(input) || "Inputs needs to be a positive number only!";
    }
  inquirer
      .prompt([
        {
          message: "Please select item id of the item you want: ",
          type: "input",
          name: "item_id",
          validate: validateInteger
        },
        {
          message: "Please enter the number of items you want: ",
          type: "input",
          name: "userOrderAmount",
          validate: validateInteger
        }
      ])
      .then(function(input) {
        connection.query("SELECT * FROM products WHERE ?", {item_id: input.item_id}, function(err, results) {
          if (err) throw err;
          if (results.length === 0) {
            console.log("Item Id you select does not exist...");
            Start();
          } else {
            var product = results[0];
              if (input.userOrderAmount <= product.stock_quality) {
                console.log("Your order has been placed...");

                var adjustStock = "UPDATE products SET stock_quality = " + (product.stock_quality - input.userOrderAmount) + ' WHERE item_id = ' + input.item_id;

                connection.query(adjustStock, function(err, results) {
                  if (err) throw err;
                  console.log("Your total is $" + product.price * input.userOrderAmount);
                  console.log(product.price);
                  connection.end();
                })
              } else {
                console.log("You ordered more than we have. Please try reordering less...");
                start();
          }
        }
      })
    })
  }