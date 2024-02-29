import pandas as pd
from sklearn.model_selection import train_test_split
from sklearn.preprocessing import StandardScaler
from sklearn.neighbors import KNeighborsClassifier
from sklearn.metrics import accuracy_score, classification_report, confusion_matrix
import joblib

# Citirea datelor din fișierul Excel
df = pd.read_excel('clusterizare.xlsx')

# Selecția atributelor pentru clasificare și variabila țintă
X = df[['id_angajat', 'salariu', 'VechimeInCompanie', 'ProcentTimpProiect']]
y = df['cluster']  # Înlocuiți 'Clasa_de_etichetat' cu numele corect al coloanei țintă

# Standardizarea datelor
scaler = StandardScaler()
X_scaled = scaler.fit_transform(X)

# Impartirea datelor în setul de antrenare și setul de test
X_train, X_test, y_train, y_test = train_test_split(X_scaled, y, test_size=0.2, random_state=42)

# Inițializarea și antrenarea modelului KNN
knn = KNeighborsClassifier(n_neighbors=3)  # Schimbați n_neighbors la numărul dorit de vecini
knn.fit(X_train, y_train)

# Salvarea modelului într-un fișier pkl
joblib.dump(knn, 'model_knn.pkl')

# Realizarea previziunilor pe setul de test
y_pred = knn.predict(X_test)

# Evaluarea performanțelor modelului
accuracy = accuracy_score(y_test, y_pred)
conf_matrix = confusion_matrix(y_test, y_pred)
classification_rep = classification_report(y_test, y_pred)

print(f'Precizia modelului: {accuracy:.2f}')
print('Matricea de confuzie:')
print(conf_matrix)
print('Raportul de clasificare:')
print(classification_rep)
