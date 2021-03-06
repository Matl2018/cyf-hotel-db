const express = require("express");

const filename = "./database/database.sqlite";
const knex = require("knex")({
  client: "sqlite3",
  connection: {
    filename
  }
});

const router = express.Router();

router.get("/customers", function(req, res) {
  const sqlStatement = "select * from customers";
  knex.raw(sqlStatement).then(function(data) {
    res.json(data);
  });
});

router.get("/customers/:id", function(req, res) {
  const sqlStatement = `select * from customers where id = ${req.params.id}`;
  knex.raw(sqlStatement).then(function(data) {
    res.json(data);
  });
});

router.get("/customers/:surname", function(req, res) {
  // TODO: add code here
});

router.post("/customers", function(req, res) {
  const sqlStatement = `INSERT INTO customers(title, firstname, surname, email) VALUES("${
    req.body.title
  }","${req.body.firstname}","${req.body.surname}","${req.body.email}")`;

  knex.raw(sqlStatement).then(function(data) {
    res.json(data);
  });
});

router.put("/customers/:id", function(req, res) {
  // EXPECTED JSON Object:
  // {
  //   title: 'Mr',
  //   firstname: 'Laurie',
  //   surname: 'Ainley',
  //   email: 'laurie@ainley.com'
  // }
  // TODO: add code here
});

// get '/reservations'
// TODO: add code here

// get '/reservations/:id'
// TODO: add code here

// delete '/reservations/:id'
// TODO: add code here

// get '/reservations/starting-on/:startDate'
// TODO: add code here

// get '/reservations/active-on/:date'
// TODO: add code here

// post '/reservations'
// EXPECTED JSON Object:
// {
//   customer_id: 1,
//   room_id: 1,
//   check_in_date: '2018-01-20',
//   check_out_date: '2018-01-22',
//   room_price: 129.90
// }
// TODO: add code here

// get `/detailed-invoices'
// TODO: add code here

// get `/reservations/details-between/:from_day/:to_day`
// TODO: add code here

module.exports = router;
