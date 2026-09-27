import React from "react";

export const Sidebar = ({vistaActual, setVistaActual}) => {
    const menuItems = [
        { id: `inicio`, label: `Inicio`, icon: `🏠`},
        { id: `calificaciones`, label: `Calificaciones`, icon: `📝`},
        { id: `alumnos`, label: `Alumnos`, icon: `📚`},
        { id: `informes`, label: `Informes`, icon: `📄`},
    ];
    return (
        <aside className="sidebar">
            <div className="sidebar-logo">
                <div className="logo-placeholder">🏫</div>
                <h2>Gestión Escolar</h2>
            </div>
            <nav className="sidebar-nav">
                <ul>
                    {menuItems.map((item) => (
                        <li key={item.id}>
                            <button
                                className={`nav-button ${vistaActual === item.id ? 'active' : ''}`}
                                onClick={() => setVistaActual(item.id)}
                            >
                                <span className="nav-icon">{item.icon}</span>
                                <span className="nav-label">{item.label}</span>
                            </button>
                        </li>
                    ))}
                </ul>
            </nav>
        </aside>
    );
};