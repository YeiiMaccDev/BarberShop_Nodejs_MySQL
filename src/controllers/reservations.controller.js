import { pool } from "../database.js";

export const renderAddLink = (req, res) => {
  res.render("reservations/add");
};

export const addLink = async (req, res) => {
  const { date_r, time_r, } = req.body;
  const newLink = {
    date_r,
    time_r,
    user_id: req.user.id,
  };
  await pool.query("INSERT INTO reservations set ?", [newLink]);
  req.flash("success", "Reserva guardada correctamente");
  res.redirect("/reservations");
};

export const renderReservations = async (req, res) => {
  if (req.user.rol == 1) {
    const [rows] = await pool.query("SELECT reservations.id, reservations.date_r, reservations.time_r, reservations.user_id, users.fullname FROM barbershop_db.reservations INNER JOIN barbershop_db.users ON reservations.user_id = users.id ORDER BY reservations.date_r DESC");
    res.render("reservations/list", { reservations: rows });
  } else {
    const [rows] = await pool.query("SELECT reservations.id, reservations.date_r, reservations.time_r, reservations.user_id, users.fullname FROM barbershop_db.reservations INNER JOIN barbershop_db.users ON reservations.user_id = users.id WHERE reservations.user_id = ?", [
      req.user.id,
    ], "ORDER BY reservations.date_r DESC");
    res.render("reservations/list", { reservations: rows });
  }
};

export const deleteLink = async (req, res) => {
  const { id } = req.params;
  await pool.query("DELETE FROM reservations WHERE ID = ?", [id]);
  req.flash("success", "Reserva eliminada con éxito");
  res.redirect("/reservations");
};

export const renderEditLink = async (req, res) => {
  const { id } = req.params;
  const [rows] = await pool.query("SELECT * FROM reservations WHERE id = ?", [id]);
  res.render("reservations/edit", { reservation: rows[0] });
};

export const editLink = async (req, res) => {
  const { id } = req.params;
  const { date_r, time_r } = req.body;
  const newLink = {
    date_r,
    time_r,
  };
  await pool.query("UPDATE reservations set ? WHERE id = ?", [newLink, id]);
  req.flash("success", "Reserva Actualizada con éxito.");
  res.redirect("/reservations");
};
