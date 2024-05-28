document.addEventListener('DOMContentLoaded', function() {
    document.getElementById('savevacuna').addEventListener('click', saveVacuna);
    document.getElementById('getvacuna').addEventListener('click', getVacunas);
});

function saveVacuna() {
    const vacunaId = document.getElementById('Vacuna_ID').value;
    const name = document.getElementById('name').value;
    const fecha = document.getElementById('Fecha').value;

    const data = {
        Vacuna_ID: vacunaId,
        name: name,
        Fecha: fecha
    };

    fetch('https://01izjvw587.execute-api.us-east-1.amazonaws.com/dev', {
        method: 'POST',
        body: JSON.stringify(data),
        headers: {
            'Content-Type': 'application/json'
        }
    })
    .then(response => response.json())
    .then(data => {
        document.getElementById('vacunaSaved').textContent = 'Vacuna data saved successfully!';
        console.log('Success:', data);
    })
    .catch((error) => {
        document.getElementById('vacunaSaved').textContent = 'Error saving vacuna data.';
        console.error('Error:', error);
    });
}

function getVacunas() {
    fetch('https://01izjvw587.execute-api.us-east-1.amazonaws.com/dev')
    .then(response => response.json())
    .then(data => {
        const tableBody = document.querySelector('#Tabla_Vacunas tbody');
        tableBody.innerHTML = ''; // Clear the table before adding new rows

        data.forEach(vacuna => {
            const row = document.createElement('tr');
            row.innerHTML = `
                <td>${vacuna.Vacuna_ID}</td>
                <td>${vacuna.name}</td>
                <td>${vacuna.Fecha}</td>
            `;
            tableBody.appendChild(row);
        });
    })
    .catch((error) => {
        console.error('Error:', error);
    });
}
