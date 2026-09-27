import React from "react";
import {Header} from "./Header.jsx";
import {Sidebar} from "./Sidebar.jsx";

export const Layout = ({children, vistaActual, setVistaActual}) => {
    return (
        <div className="app-layout">
            <Sidebar vistaActual={vistaActual} setVistaActual={setVistaActual} />
            <div className="main-wrapper">
                <Header usuario="Esteban Rivarola" />
                <main className="content-area">
                    {children}
                </main>
            </div>
        </div>
    );
};