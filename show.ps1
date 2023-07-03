Import-Module SimplySql

$connectionString = "server=localhost;port=3306;database=mydatabase;uid=root;pwd=280896;"
$connection = New-Object MySql.Data.MySqlClient.MySqlConnection($connectionString)
$connection.Open()

$paramDate = Read-Host "Please enter an Hiredate (YYYY-MM-DD HH:MI:SS)"

$query = @"
SELECT DEPT.name, EMPLOYEES.Fullname, EMPLOYEES.Hiredate
FROM DEPT
JOIN EMPLOYEES ON DEPT.id = EMPLOYEES.DeptId
WHERE EMPLOYEES.Hiredate > '$paramDate'
ORDER BY DEPT.name ASC, EMPLOYEES.Hiredate DESC;
"@

$command = New-Object MySql.Data.MySqlClient.MySqlCommand($query, $connection)
$adapter = New-Object MySql.Data.MySqlClient.MySqlDataAdapter($command)
$dataTable = New-Object System.Data.DataTable
$adapter.Fill($dataTable) | Out-Null

if ($dataTable.Rows.Count -gt 0) {
    Write-Host "Results:"
    Write-Host "--------------------------------------------------"

    foreach ($row in $dataTable.Rows) {
        $deptName = $row["name"]
        $fullName = $row["Fullname"]
        $hireDate = $row["Hiredate"]

        Write-Host "Department: $deptName"
        Write-Host "Employee: $fullName"
        Write-Host "Hire Date: $hireDate"
        Write-Host "--------------------------------------------------"
    }
}
else {
    Write-Host "No results found."
}

$connection.Close()
