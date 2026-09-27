import React, {useState} from "react";
import {Layout} from "./components/Layout.jsx";
import "./App.css";

function App() {
  const [vistaActual, setVistaActual] = useState("inicio");
  return (
      <Layout vistaActual={vistaActual} setVistaActual={setVistaActual}>
        {vistaActual === 'inicio' && (
            <div>
              <h2>Inicio / Datos de Sesión</h2>
              <p>Bienvenido al Sistema Académico Institucional.</p>
            </div>
        )}
        {vistaActual === 'calificaciones' && (
            <div>
              <h2>Módulo de Calificaciones</h2>
              <p>Carga y consulta de notas por curso y materia.</p>
            </div>
        )}
        {vistaActual === 'alumnos' && (
            <div>
              <h2>Listado de Alumnos</h2>
              <p>Consulta de nómina de estudiantes.</p>
            </div>
        )}
        {vistaActual === 'informes' && (
            <div>
              <h2>Libretas e Informes</h2>
              <p>Resumen de rendimiento y boletines.</p>
            </div>
        )}
      </Layout>
  );
}

export default App
