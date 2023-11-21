#1 Base de Datos Hospital

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
SELECT h.id as habitacion, 
```

### Obtener el nombre del empleado que trabaja en el edificio con id 6.

```sql

```

### Mostrar el nombre de las especialidades en el piso principal del edificio con id 3.

```sql

```

### Obtener el nombre y el cargo de los empleados que trabajan en el edificio con id 7.

```sql

```

### Mostrar el nombre y la ubicación de los pisos con más de 15 camas.

```sql

```

### Obtener el nombre del complejo hospitalario que tiene el mayor número de edificios.

```sql

```

### Mostrar el nombre y la especialidad de los empleados que trabajan en el piso principal del edificio con id 1.

```sql

```

### Obtener el nombre y la ubicación de los pisos donde trabaja un "Jefe".

```sql

```

### Mostrar el nombre y el cargo de los empleados que trabajan en más de un piso.

```sql

```

### Obtener el nombre y la cantidad de camas de las habitaciones en el piso principal del edificio con id 2.

```sql

```

### Mostrar el nombre del complejo hospitalario que tiene al menos un edificio sin asignación de empleados.

```sql

```
