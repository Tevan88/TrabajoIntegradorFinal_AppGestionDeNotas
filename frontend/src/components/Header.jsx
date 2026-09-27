import React from "react";

export const Header = ({usuario = "Esteban Rivarola"}) => {
    return (
        <header className="header">
            <div className="header-title">
                <h1>Sitema Académico - Nivel Primario</h1>
            </div>
            <div className="header-user">
                <span>{usuario}</span>
            </div>
        </header>
    );
};