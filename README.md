# 1 Base de Datos Hospital



## Procedimientos
1. Crear un procedimiento almacenado que asigne un empleado a un piso dado su identificador.

   ```sql
   # Solucion
   ```

2. Crear un procedimiento almacenado que asigne un empleado a un piso dado su identificador.

   ```sql
   # Solucion
   ```

3. Crear un procedimiento almacenado que cuente el número de habitaciones en un piso específico.

   ```sql
   # Solucion
   ```

4. Crear un procedimiento almacenado que actualice la ubicación de un piso dado su identificador.

     ```sql
       # Solucion
     ```


5. Crear un procedimiento almacenado que elimine la asignación de un empleado de un piso dado su identificador.

    ```sql
   # Solucion
   ```

6. Crear un procedimiento almacenado que devuelva los empleados que tienen una especialidad específica.

     ```sql
       # Solucion
     ```

7. Crear un procedimiento almacenado que cuente el número de edificios en un complejo hospitalario específico.

    ```sql
   # Solucion
   ```

8. Crear un procedimiento almacenado que devuelva los pisos asignados a empleados de un cargo específico.

    ```sql
   # Solucion
   ```

9. Crear un procedimiento almacenado que asigne una especialidad a un piso específico.

    ```sql
   # Solucion
   ```

10. Crear un procedimiento almacenado que devuelva los empleados que no están asignados a ningún piso.

     ```sql
       # Solucion
     ```


## Consultas

### Obtener el nombre del empleado que trabaja en el piso con id 3.

```sql
    SELECT e.nombre
    FROM empleado e
    JOIN piso p ON e.id = p.id_empleado
    WHERE p.nro_piso = '03';
```

### Mostrar el nombre y la especialidad de los pisos principales.

```sql
SELECT p.id_piso_edificio, es.nombre
FROM piso p
JOIN piso_especialidad pe ON p.id_piso_edificio = pe.id_piso
JOIN 
```

### Obtener el nombre del complejo hospitalario al que pertenece el edificio con id 5.

```sql
SELECT c.nombre
FROM complejo_hospitalario c
JOIN edificio e ON c.id = e.id
WHERE e.id = (
    SELECT e.id 
    FROM edificio e
    LIMIT 1 OFFSET 5
);
```

### Mostrar el nombre y la cantidad de camas de las habitaciones en el piso con id 8.

```sql
SELECT h.id as habitacion, h.camas as camas
FROM habitacion h
JOIN piso p ON h.id_piso = p.id_piso_edificio
WHERE p.nro_piso LIKE '08';
```

### Obtener el nombre del empleado que trabaja en el edificio con id 'C'.

```sql
SELECT e.nombre 
FROM empleado e
JOIN piso p ON e.id = p.id_empleado
JOIN edificio ed ON p.id_edificio = ed.id
WHERE ed.id LIKE 'C';  
```

### Mostrar el nombre de las especialidades en el piso principal del edificio con id 'A'.

```sql
SELECT es.nombre
FROM especialidad es
JOIN piso_especialidad pe ON es.id = pe.id_especialidad
JOIN piso p ON pe.id_piso = p.id_piso_edificio
WHERE p.id_edificio LIKE 'A'
AND pe.estado LIKE 'Principal';
```

### Obtener el nombre y el cargo de los empleados que trabajan en el edificio con id 'B'.

```sql
SELECT e.nombre, e.cargo
FROM empleado e
JOIN piso p ON e.id_piso = p.id_piso_edificio
JOIN edificio ed ON e.id = p.id_edificio
WHERE e.id LIKE 'B';
```

### Mostrar el nombre y la ubicación de los pisos con más de 15 camas.

```sql
SELECT p.id_piso_edificio, ed.ubicacion
FROM piso p
JOIN edificio ed ON p.id_edificio = ed.id
JOIN habitacion h ON p.id_piso_edificio = h.id_piso
WHERE h.camas >15;
```

### Obtener el nombre del complejo hospitalario que tiene el mayor número de edificios.

```sql
SELECT DISTINCT c.nombre 
FROM edificio e, complejo_hospitalario c
WHERE e.id_complejo >= ALL(
    SELECT MAX(ed.id_complejo)
    FROM edificio ed
    JOIN complejo_hospitalario co ON ed.id_complejo = co.id
)
GROUP BY c.nombre;

```

### Mostrar el nombre y la especialidad de los empleados que trabajan en el piso principal del edificio con id 1.

```sql
SELECT e.nombre, es.nombre
FROM empleado e
JOIN piso p ON e.id_piso = p.id_piso_edificio
JOIN edificio ed ON ed.id = p.id_edificio
JOIN piso_especialidad pe ON p.id_piso_edificio = pe.id_piso
JOIN especialidad es ON pe.id_especialidad = es.id
WHERE pe.estado LIKE 'Principal';
```

### Obtener el nombre y la ubicación de los pisos donde trabaja un "Jefe".

```sql
SELECT p.id_piso_edificio, ed.ubicacion
FROM piso p
JOIN empleado e ON e.id_piso = p.id_piso_edificio
JOIN edificio ed ON ed.id = p.id_edificio
WHERE e.cargo = 'Jefe';
```

### Mostrar el nombre y el cargo de los empleados que trabajan en más de un piso.

```sql
SELECT e.nombre, e.cargo
FROM piso p
JOIN empleado e ON p.id_piso_edificio = e.id_piso
GROUP BY e.nombre, e.cargo
HAVING COUNT(DISTINCT p.id_piso_edificio) > 2;
```

### Obtener el nombre y la cantidad de camas de las habitaciones en el piso principal del edificio con id 'D'.

```sql
SELECT h.id, h.camas
FROM habitacion h
JOIN piso p ON h.id_piso = p.id_piso_edificio
WHERE p.id_edificio = (SELECT id FROM edificio WHERE id = 'D');
```

### Mostrar el nombre del complejo hospitalario que tiene al menos un edificio sin asignación de empleados.

```sql
SELECT c.nombre
FROM complejo_hospitalario c
WHERE c.id NOT IN (SELECT DISTINCT ed.id_complejo FROM edificio)
```
