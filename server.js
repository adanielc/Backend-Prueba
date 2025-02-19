const express = require("express");

const app = express();
const PORT = 3000;

// Middleware para manejar JSON
app.use(express.json());

// Ruta de prueba
app.get("/", (req, res) => {
    res.send("¡Hola, mundo desde Express!");
});

app.get("/api/saludo", (req, res) => {
    res.json({ mensaje: "¡Hola desde la API!" });
});

// Iniciar el servidor
app.listen(PORT, () => {
    console.log(`Servidor corriendo en http://localhost:${PORT}`);
});