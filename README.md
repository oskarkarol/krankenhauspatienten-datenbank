# Projekt - Erstellen einer Datenbank | Heinrich-Hertz-Schule (HHS)

# Aufgabe: [Download PDF](./datenbankprojekt2.pdf)

---

***

___

# Eine kurze Beschreibung der Datenbank

Die Datenbank ist eine Krankenhauspatienten-Datenbank, die dazu dient, Informationen über Patienten, Krankheiten, Behandlungen, Medikamente, Ärzte und Versicherungen zu speichern. Sie ermöglicht es, Patientendaten zu verwalten, Behandlungen zu dokumentieren, Medikationen zuzuordnen, Ärzte zuzuweisen und Informationen über Krankheiten und Versicherungen zu speichern. Die Datenbank verwendet Beziehungen zwischen den verschiedenen Tabellen, um die Zusammenhänge und Abhängigkeiten zwischen den Daten darzustellen. Sie ermöglicht eine effiziente Verwaltung und Abfrage von Informationen für medizinisches Personal und Administratoren im Krankenhausumfeld.

# ER-Modell
![Screenshot](https://raw.githubusercontent.com/oskarkarol/krankenhauspatienten-datenbank/main/krankenhauspatienten.png)

# Relationsschreibweise

Patient(patient_id, first_name, last_name, gender, birth_date, contact_number, insurance_id)

Disease(disease_id, name, description, symptoms)

Doctor(doctor_id, first_name, last_name, specialization, contact_number, employment_status)

Insurance(insurance_id, insurance_provider, coverage_details)

Medication(medication_id, name, dosage, side_effects, administration_instructions)

Treatment(treatment_id, patient_id, doctor_id, disease_id, treatment_date, duration)

TreatmentMedication(treatment_id, medication_id)

# SQL-Statements

**3 Abfragen an eine einzige Tabelle:**

```sql
SELECT * FROM Disease;

Beschreibung: Diese Abfrage ruft alle Datensätze aus der Tabelle "Disease" ab.
```

```sql
SELECT COUNT(*) FROM Patient;

Beschreibung: Diese Abfrage zählt die Anzahl der Datensätze in der Tabelle "Patient".
```

```sql
SELECT AVG(duration) FROM Treatment;

Beschreibung: Diese Abfrage berechnet den durchschnittlichen Wert der Spalte "duration" in der Tabelle "Treatment".
```

**4 Abfragen ohne INNER JOIN:**

```sql
SELECT * FROM Patient WHERE gender = 'weiblich';

Beschreibung: Diese Abfrage ruft alle Datensätze aus der Tabelle "Patient" ab, bei denen das Geschlecht "weiblich" ist.
```

```sql
SELECT Doctor.first_name, Doctor.last_name, COUNT(*) AS patient_count
FROM Doctor, Treatment
WHERE Doctor.doctor_id = Treatment.doctor_id
GROUP BY Doctor.doctor_id;

Beschreibung: Diese Abfrage ruft die Vornamen, Nachnamen und die Anzahl der Patienten für jeden Arzt aus der Tabelle "Doctor" und der Tabelle "Treatment" ab.
```

```sql
SELECT DISTINCT gender FROM Patient;

Beschreibung: Diese Abfrage ruft alle eindeutigen Werte der Spalte "gender" aus der Tabelle "Patient" ab.
```

```sql
SELECT Insurance.insurance_provider, COUNT(*) AS patient_count
FROM Insurance, Patient
WHERE Insurance.insurance_id = Patient.insurance_id
GROUP BY Insurance.insurance_id;

Beschreibung: Diese Abfrage ruft den Krankenversicherungsanbieter und die Anzahl der Patienten für jeden Versicherungsanbieter aus der Tabelle "Insurance" und der Tabelle "Patient" ab.
```

**4 Abfragen mit INNER JOIN:**

```sql
SELECT Patient.first_name, Patient.last_name, Disease.name
FROM Patient
INNER JOIN Treatment ON Patient.patient_id = Treatment.patient_id
INNER JOIN Disease ON Treatment.disease_id = Disease.disease_id;

Beschreibung: Diese Abfrage ruft die Vornamen, Nachnamen der Patienten und den Namen der Krankheit für jeden Behandlungsdatensatz aus der Tabelle "Patient", der Tabelle "Treatment" und der Tabelle "Disease" ab.
```

```sql
SELECT p.first_name, p.last_name, d.name AS disease_name, t.treatment_date
FROM Patient p
INNER JOIN Treatment t ON p.patient_id = t.patient_id
INNER JOIN Disease d ON t.disease_id = d.disease_id
WHERE p.gender = 'weiblich';

Beschreibung: Diese Abfrage gibt den Vor- und Nachnamen der weiblichen Patienten zusammen mit dem Namen der Krankheit und dem Behandlungsdatum zurück.
```

```sql
SELECT p.first_name, p.last_name, COUNT(t.treatment_id) AS treatment_count
FROM Patient p
INNER JOIN Treatment t ON p.patient_id = t.patient_id
GROUP BY p.first_name, p.last_name;

Beschreibung: Diese Abfrage zählt die Anzahl der Behandlungen für jeden Patienten und gibt den Vornamen, Nachnamen und die Anzahl der Behandlungen zurück. Sie verwendet den INNER JOIN zwischen den Tabellen "Patient" und "Treatment" und gruppiert die Ergebnisse nach Vorname und Nachname des Patienten.
```

```sql
SELECT d.name AS disease_name, COUNT(t.patient_id) AS patient_count
FROM Disease d
INNER JOIN Treatment t ON d.disease_id = t.disease_id
GROUP BY d.name;

Beschreibung: Diese Abfrage zählt die Anzahl der Patienten für jede Krankheit in der Tabelle "Disease". Sie verwendet den INNER JOIN zwischen den Tabellen "Disease" und "Treatment", um die Krankheitsdaten mit den entsprechenden Behandlungsdaten zu verknüpfen. Anschließend wird die Anzahl der Patienten pro Krankheit gruppiert und zurückgegeben.
```

**5 Abfragen mit Gruppierung und Aggregationsfunktionen:**

```sql
SELECT specialization, COUNT(*) AS total_doctors
FROM Doctor
GROUP BY specialization;

Beschreibung: Diese Abfrage gruppiert die Ärzte nach ihrer Spezialisierung und zählt die Gesamtzahl der Ärzte pro Spezialisierung.
```

```sql
SELECT disease_id, COUNT(*) AS total_cases
FROM Treatment
GROUP BY disease_id
HAVING COUNT(*) > 5;

Beschreibung: Diese Abfrage gruppiert die Behandlungen nach Krankheits-ID und zählt die Anzahl der Fälle pro Krankheit. Es werden nur die Krankheiten zurückgegeben, die mehr als 5 Fälle haben.
```

```sql
SELECT disease_id, COUNT(*) AS total_cases
FROM Treatment
GROUP BY disease_id;

Beschreibung: Diese Abfrage gruppiert die Behandlungen nach Krankheits-ID und zählt die Anzahl der Fälle pro Krankheit.
```

```sql
SELECT gender, MAX(birth_date) AS oldest_birthdate
FROM Patient
GROUP BY gender;

Beschreibung: Diese Abfrage gruppiert die Patienten nach Geschlecht und gibt das älteste Geburtsdatum pro Geschlecht zurück.
```

```sql
SELECT doctor_id, COUNT(DISTINCT patient_id) AS unique_patients
FROM Treatment
GROUP BY doctor_id;

Beschreibung: Diese Abfrage gruppiert die Behandlungen nach Arzt-ID und zählt die Anzahl der eindeutigen Patienten pro Arzt.
```

**Hier sind zwei Abfragen, die die Struktur der Tabellen ansprechen:**

```sql
Beschreibung: Diese Abfrage erstellt eine neue Tabelle mit dem Namen "LabTest" und den entsprechenden Spalten.

CREATE TABLE LabTest (
  test_id INT PRIMARY KEY AUTO_INCREMENT,
  patient_id INT,
  test_name VARCHAR(100),
  test_date DATE,
  FOREIGN KEY (patient_id) REFERENCES Patient(patient_id)
);
```

```sql
Beschreibung: Diese Abfrage fügt der Tabelle "Patient" eine neue Spalte "email" hinzu.

ALTER TABLE Patient ADD COLUMN email VARCHAR(100);
```
