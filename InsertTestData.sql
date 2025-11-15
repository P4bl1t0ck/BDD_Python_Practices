-- =============================================
-- Script para Poblar Base de Datos: Catequesis
-- Datos de Prueba para Testing
-- =============================================

USE Catequesis;
GO

PRINT 'Insertando datos de prueba...';
GO

-- =============================================
-- 1. INSERTAR PARROQUIAS
-- =============================================

PRINT 'Insertando Parroquias...';
GO

INSERT INTO Parroquía (ID_Parroquin, Nombre, Direccion, Telefono, Vicaria)
VALUES 
    ('PAR001', 'San José', 'Av. Principal 123', '0987654321', 'Vicaría Norte'),
    ('PAR002', 'Santa María', 'Calle Flores 456', '0987654322', 'Vicaría Sur'),
    ('PAR003', 'El Sagrario', 'Centro Histórico 789', '0987654323', 'Vicaría Centro'),
    ('PAR004', 'La Inmaculada', 'Av. América 321', '0987654324', 'Vicaría Este'),
    ('PAR005', 'San Francisco', 'Plaza Grande S/N', '0987654325', 'Vicaría Oeste');
GO

PRINT '✓ 5 Parroquias insertadas';
GO

-- =============================================
-- 2. INSERTAR FE DE BAUTISMO
-- =============================================

PRINT 'Insertando Fe de Bautismo...';
GO

INSERT INTO FeBautismo (ID_Bautismo, FechaBautismo, ParroquiaBautizo, Padrino, Madrina)
VALUES 
    ('BAU001', '2015-03-15', 'San José', 'Carlos Pérez', 'María González'),
    ('BAU002', '2014-07-20', 'Santa María', 'Jorge Morales', 'Ana Sánchez'),
    ('BAU003', '2016-01-10', 'El Sagrario', 'Luis Torres', 'Carmen Díaz'),
    ('BAU004', '2015-09-25', 'La Inmaculada', 'Roberto Gómez', 'Patricia Ruiz'),
    ('BAU005', '2014-11-30', 'San Francisco', 'Miguel Castro', 'Gabriela Vega'),
    ('BAU006', '2016-04-18', 'San José', 'Fernando López', 'Silvia Ortiz'),
    ('BAU007', '2015-06-22', 'Santa María', 'Daniel Herrera', 'Laura Mendoza'),
    ('BAU008', '2014-12-05', 'El Sagrario', 'Andrés Ramos', 'Verónica Silva');
GO

PRINT '✓ 8 Fe de Bautismo insertadas';
GO

-- =============================================
-- 3. INSERTAR CATEQUISTAS
-- =============================================

PRINT 'Insertando Catequistas...';
GO

INSERT INTO Catequista (ID_Catequista, Nombres, Apellidos, Telefono, Correo, Rol, Parroquía_ID_Parroquin)
VALUES 
    ('CAT001', 'María Elena', 'Rodríguez', '0998877665', 'maria.rodriguez@catequesis.com', 'Coordinadora', 'PAR001'),
    ('CAT002', 'Juan Carlos', 'Martínez', '0998877666', 'juan.martinez@catequesis.com', 'Catequista', 'PAR001'),
    ('CAT003', 'Ana Lucía', 'Fernández', '0998877667', 'ana.fernandez@catequesis.com', 'Catequista', 'PAR002'),
    ('CAT004', 'Pedro José', 'Gutiérrez', '0998877668', 'pedro.gutierrez@catequesis.com', 'Coordinador', 'PAR002'),
    ('CAT005', 'Sofía Isabel', 'Ramírez', '0998877669', 'sofia.ramirez@catequesis.com', 'Catequista', 'PAR003'),
    ('CAT006', 'Diego Andrés', 'Vargas', '0998877670', 'diego.vargas@catequesis.com', 'Catequista', 'PAR003'),
    ('CAT007', 'Carolina', 'Jiménez', '0998877671', 'carolina.jimenez@catequesis.com', 'Coordinadora', 'PAR004'),
    ('CAT008', 'Ricardo', 'Salazar', '0998877672', 'ricardo.salazar@catequesis.com', 'Catequista', 'PAR005');
GO

PRINT '✓ 8 Catequistas insertados';
GO

-- =============================================
-- 4. INSERTAR CATEQUIZANDOS
-- =============================================

PRINT 'Insertando Catequizandos...';
GO

INSERT INTO Catequizando (ID_Catequizando, Nombre, Apellido, Cedula, Fecha_Nacimiento, Telefono, Fecha_Registro, Observaciones, FeBautismo_ID_Bautismo)
VALUES 
    ('CZO001', 'Mateo', 'López', '1750123456', '2015-05-10', '0991234567', '2024-01-15', 'Estudiante aplicado', 'BAU001'),
    ('CZO002', 'Valentina', 'García', '1750123457', '2014-08-22', '0991234568', '2024-01-15', 'Muy participativa', 'BAU002'),
    ('CZO003', 'Santiago', 'Hernández', '1750123458', '2016-02-14', '0991234569', '2024-01-20', 'Necesita refuerzo', 'BAU003'),
    ('CZO004', 'Isabella', 'Díaz', '1750123459', '2015-11-30', '0991234570', '2024-01-20', 'Excelente comportamiento', 'BAU004'),
    ('CZO005', 'Sebastián', 'Torres', '1750123460', '2014-12-18', '0991234571', '2024-01-25', 'Regular asistencia', 'BAU005'),
    ('CZO006', 'Camila', 'Flores', '1750123461', '2016-06-25', '0991234572', '2024-01-25', 'Muy responsable', 'BAU006'),
    ('CZO007', 'Nicolás', 'Moreno', '1750123462', '2015-09-08', '0991234573', '2024-02-01', 'Buen estudiante', 'BAU007'),
    ('CZO008', 'Sofía', 'Castro', '1750123463', '2014-03-12', '0991234574', '2024-02-01', 'Excelente participación', 'BAU008'),
    ('CZO009', 'Lucas', 'Romero', '1750123464', '2015-07-20', '0991234575', '2024-02-05', 'Necesita motivación', 'BAU001'),
    ('CZO010', 'Emma', 'Vargas', '1750123465', '2016-01-15', '0991234576', '2024-02-05', 'Muy dedicada', 'BAU002');
GO

PRINT '✓ 10 Catequizandos insertados';
GO

-- =============================================
-- 5. INSERTAR GRUPOS DE CATEQUESIS
-- =============================================

PRINT 'Insertando Grupos de Catequesis...';
GO

INSERT INTO GrupoCatequesis (ID_Grupo, Parroquía_ID_Parroquin, Ano, Horario, ID_Parroquia, ID_Catequista, ID_Nivel, Catequista_ID_Catequista)
VALUES 
    ('GRP2024A', 'PAR001', '2024-01-01', '2024-01-15 15:00:00', 'PAR001', 'CAT001', 'NIV001', 'CAT001'),
    ('GRP2024B', 'PAR001', '2024-01-01', '2024-01-15 17:00:00', 'PAR001', 'CAT002', 'NIV002', 'CAT002'),
    ('GRP2024C', 'PAR002', '2024-01-01', '2024-01-16 15:00:00', 'PAR002', 'CAT003', 'NIV001', 'CAT003'),
    ('GRP2024D', 'PAR002', '2024-01-01', '2024-01-16 17:00:00', 'PAR002', 'CAT004', 'NIV002', 'CAT004'),
    ('GRP2024E', 'PAR003', '2024-01-01', '2024-01-17 15:00:00', 'PAR003', 'CAT005', 'NIV003', 'CAT005');
GO

PRINT '✓ 5 Grupos de Catequesis insertados';
GO

-- =============================================
-- 6. INSERTAR NIVELES DE CATEQUESIS
-- =============================================

PRINT 'Insertando Niveles de Catequesis...';
GO

INSERT INTO NivelCatequesis (ID_Nivel, NombreNivel, GrupoCatequesis_ID_Grupo, GrupoCatequesis_Parroquía_ID_Parroquin)
VALUES 
    ('NIV001', 'Primera Comunión - Nivel 1', 'GRP2024A', 'PAR001'),
    ('NIV002', 'Primera Comunión - Nivel 2', 'GRP2024B', 'PAR001'),
    ('NIV003', 'Confirmación - Nivel 1', 'GRP2024C', 'PAR002'),
    ('NIV004', 'Confirmación - Nivel 2', 'GRP2024D', 'PAR002'),
    ('NIV005', 'Post-Confirmación', 'GRP2024E', 'PAR003');
GO

PRINT '✓ 5 Niveles de Catequesis insertados';
GO

-- =============================================
-- 7. INSERTAR INSCRIPCIONES
-- =============================================

PRINT 'Insertando Inscripciones...';
GO

INSERT INTO Incripción (ID_Inscripción, FechaInscripción, EstadoDePago, Observaciones, ID_Grupo, ID_Catequizado, Catequizando_ID_Catequizando, GrupoCatequesis_ID_Grupo, GrupoCatequesis_ID_Parroquin)
VALUES 
    ('INS001', '2024-01-15', 'Pagado', 'Inscripción completa', 'GRP2024A', 'CZO001', 'CZO001', 'GRP2024A', 'PAR001'),
    ('INS002', '2024-01-15', 'Pagado', 'Inscripción completa', 'GRP2024A', 'CZO002', 'CZO002', 'GRP2024A', 'PAR001'),
    ('INS003', '2024-01-20', 'Pendiente', 'Pago en cuotas', 'GRP2024B', 'CZO003', 'CZO003', 'GRP2024B', 'PAR001'),
    ('INS004', '2024-01-20', 'Pagado', 'Inscripción completa', 'GRP2024B', 'CZO004', 'CZO004', 'GRP2024B', 'PAR001'),
    ('INS005', '2024-01-25', 'Pagado', 'Beca del 50%', 'GRP2024C', 'CZO005', 'CZO005', 'GRP2024C', 'PAR002'),
    ('INS006', '2024-01-25', 'Pagado', 'Inscripción completa', 'GRP2024C', 'CZO006', 'CZO006', 'GRP2024C', 'PAR002'),
    ('INS007', '2024-02-01', 'Pendiente', 'Esperando documentos', 'GRP2024D', 'CZO007', 'CZO007', 'GRP2024D', 'PAR002'),
    ('INS008', '2024-02-01', 'Pagado', 'Inscripción completa', 'GRP2024D', 'CZO008', 'CZO008', 'GRP2024D', 'PAR002'),
    ('INS009', '2024-02-05', 'Pagado', 'Inscripción completa', 'GRP2024E', 'CZO009', 'CZO009', 'GRP2024E', 'PAR003'),
    ('INS010', '2024-02-05', 'Pagado', 'Inscripción completa', 'GRP2024E', 'CZO010', 'CZO010', 'GRP2024E', 'PAR003');
GO

PRINT '✓ 10 Inscripciones insertadas';
GO

-- =============================================
-- 8. INSERTAR CERTIFICADOS
-- =============================================

PRINT 'Insertando Certificados...';
GO

INSERT INTO Certificado (ID_Certificado, Parroquía_ID_Parroquin, NivelCatequesis_ID_Nivel, Fecha_Emision, Aprobado, ID_Inscripción, ID_Nivel, Incripción_ID_Inscripción)
VALUES 
    ('CERT001', 'PAR001', 'NIV001', '2024-11-15', 1, 'INS001', 'NIV001', 'INS001'),
    ('CERT002', 'PAR001', 'NIV001', '2024-11-15', 1, 'INS002', 'NIV001', 'INS002'),
    ('CERT003', 'PAR001', 'NIV002', '2024-11-15', 0, 'INS003', 'NIV002', 'INS003'),
    ('CERT004', 'PAR001', 'NIV002', '2024-11-15', 1, 'INS004', 'NIV002', 'INS004'),
    ('CERT005', 'PAR002', 'NIV003', NULL, NULL, 'INS005', 'NIV003', 'INS005');
GO

PRINT '✓ 5 Certificados insertados';
GO

-- =============================================
-- 9. INSERTAR SACRAMENTOS
-- =============================================

PRINT 'Insertando Sacramentos...';
GO

INSERT INTO Sacramento (ID_Sacramento, Tipo, Fecha, ID_Certificado, Certificado_ID_Certificado, Certificado_ID_Parroquin, Certificado_ID_Nivel1)
VALUES 
    ('SAC001', 'Primera Comunión', '2024-11-20', 'CERT001', 'CERT001', 'PAR001', 'NIV001'),
    ('SAC002', 'Primera Comunión', '2024-11-20', 'CERT002', 'CERT002', 'PAR001', 'NIV001'),
    ('SAC003', 'Primera Comunión', NULL, 'CERT003', 'CERT003', 'PAR001', 'NIV002'),
    ('SAC004', 'Primera Comunión', '2024-11-20', 'CERT004', 'CERT004', 'PAR001', 'NIV002'),
    ('SAC005', 'Confirmación', NULL, 'CERT005', 'CERT005', 'PAR002', 'NIV003');
GO

PRINT '✓ 5 Sacramentos insertados';
GO

-- =============================================
-- 10. VERIFICACIÓN DE DATOS INSERTADOS
-- =============================================

PRINT '';
PRINT '==============================================';
PRINT 'RESUMEN DE DATOS INSERTADOS';
PRINT '==============================================';
GO

SELECT 'Parroquias' AS Tabla, COUNT(*) AS Total FROM Parroquía
UNION ALL
SELECT 'Fe de Bautismo', COUNT(*) FROM FeBautismo
UNION ALL
SELECT 'Catequistas', COUNT(*) FROM Catequista
UNION ALL
SELECT 'Catequizandos', COUNT(*) FROM Catequizando
UNION ALL
SELECT 'Grupos Catequesis', COUNT(*) FROM GrupoCatequesis
UNION ALL
SELECT 'Niveles Catequesis', COUNT(*) FROM NivelCatequesis
UNION ALL
SELECT 'Inscripciones', COUNT(*) FROM Incripción
UNION ALL
SELECT 'Certificados', COUNT(*) FROM Certificado
UNION ALL
SELECT 'Sacramentos', COUNT(*) FROM Sacramento;
GO

PRINT '';
PRINT '==============================================';
PRINT 'DATOS DE PRUEBA INSERTADOS EXITOSAMENTE';
PRINT '==============================================';
PRINT 'Total de registros: 61';
PRINT '  - 5 Parroquias';
PRINT '  - 8 Fe de Bautismo';
PRINT '  - 8 Catequistas';
PRINT '  - 10 Catequizandos';
PRINT '  - 5 Grupos de Catequesis';
PRINT '  - 5 Niveles de Catequesis';
PRINT '  - 10 Inscripciones';
PRINT '  - 5 Certificados';
PRINT '  - 5 Sacramentos';
PRINT '==============================================';
PRINT '';
PRINT 'Puede probar el sistema CRUD con estos datos.';
GO

-- =============================================
-- 11. CONSULTAS DE EJEMPLO
-- =============================================

PRINT 'Ejecutando consultas de ejemplo...';
PRINT '';
GO

-- Catequizandos con sus Parroquias
PRINT '--- CATEQUIZANDOS POR PARROQUIA ---';
SELECT 
    p.Nombre AS Parroquia,
    c.Nombre + ' ' + c.Apellido AS Catequizando,
    c.Cedula,
    c.Telefono
FROM Catequizando c
INNER JOIN FeBautismo fb ON c.FeBautismo_ID_Bautismo = fb.ID_Bautismo
INNER JOIN Incripción i ON c.ID_Catequizando = i.Catequizando_ID_Catequizando
INNER JOIN GrupoCatequesis gc ON i.GrupoCatequesis_ID_Grupo = gc.ID_Grupo AND i.GrupoCatequesis_ID_Parroquin = gc.Parroquía_ID_Parroquin
INNER JOIN Parroquía p ON gc.Parroquía_ID_Parroquin = p.ID_Parroquin
ORDER BY p.Nombre, c.Apellido;
GO

PRINT '';
PRINT '--- GRUPOS CON SUS CATEQUISTAS ---';
SELECT 
    gc.ID_Grupo,
    p.Nombre AS Parroquia,
    cat.Nombres + ' ' + cat.Apellidos AS Catequista,
    n.NombreNivel AS Nivel,
    COUNT(i.ID_Inscripción) AS Total_Inscritos
FROM GrupoCatequesis gc
INNER JOIN Parroquía p ON gc.Parroquía_ID_Parroquin = p.ID_Parroquin
INNER JOIN Catequista cat ON gc.Catequista_ID_Catequista = cat.ID_Catequista
LEFT JOIN NivelCatequesis n ON gc.ID_Grupo = n.GrupoCatequesis_ID_Grupo
LEFT JOIN Incripción i ON gc.ID_Grupo = i.GrupoCatequesis_ID_Grupo
GROUP BY gc.ID_Grupo, p.Nombre, cat.Nombres, cat.Apellidos, n.NombreNivel
ORDER BY gc.ID_Grupo;
GO

PRINT '';
PRINT '--- CERTIFICADOS APROBADOS ---';
SELECT 
    cert.ID_Certificado,
    cz.Nombre + ' ' + cz.Apellido AS Catequizando,
    n.NombreNivel AS Nivel,
    cert.Fecha_Emision,
    CASE WHEN cert.Aprobado = 1 THEN 'Aprobado' ELSE 'No Aprobado' END AS Estado
FROM Certificado cert
INNER JOIN Incripción i ON cert.Incripción_ID_Inscripción = i.ID_Inscripción
INNER JOIN Catequizando cz ON i.Catequizando_ID_Catequizando = cz.ID_Catequizando
INNER JOIN NivelCatequesis n ON cert.NivelCatequesis_ID_Nivel = n.ID_Nivel
WHERE cert.Aprobado IS NOT NULL
ORDER BY cert.Fecha_Emision DESC;
GO

PRINT '';
PRINT '==============================================';
PRINT 'Script de datos de prueba completado';
PRINT '==============================================';
GO
