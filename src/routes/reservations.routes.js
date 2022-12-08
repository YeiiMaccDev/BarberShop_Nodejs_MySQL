import { Router } from "express";
import { isLoggedIn } from "../lib/auth.js";
import {
  renderAddLink,
  addLink,
  renderReservations,
  deleteLink,
  editLink,
  renderEditLink,
} from "../controllers/reservations.controller.js";

const router = Router();
// Authorization
router.use(isLoggedIn);

// Routes
router.get("/add", renderAddLink);
router.post("/add", addLink);
router.get("/", isLoggedIn, renderReservations);
router.get("/delete/:id", deleteLink);
router.get("/edit/:id", renderEditLink);
router.post("/edit/:id", editLink);

export default router;
