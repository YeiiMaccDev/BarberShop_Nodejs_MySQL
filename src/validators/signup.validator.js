import { body } from "express-validator";

export const signupSchema = [
    body("fullname").isLength({ min: 3 }).withMessage("El nombre completo debe tener al menos 3 caracteres."),
    body("email").isEmail().withMessage("El correo electrónico no es válido"),
    body("password1").isLength({ min: 6 }).withMessage("La contraseña debe tener al menos 6 caracteres."),
    body("password2").isLength({ min: 6 }).withMessage("La contraseña debe tener al menos 6 caracteres."),
]