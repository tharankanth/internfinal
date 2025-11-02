# internfinal
EV Charging Station Locator with Smart Route Optimization
Project Overview An AIpowered web application that helps electric vehicle (EV) owners find optimal charging stations along their route, considering multiple factors like distance, charging speed, price, availability, and ratings.
Domain: Software Development with AIML
Key Features
1. Smart Route Optimization Multi-factor optimization algorithm considering: Distance from current location Route efficiency (minimal detour) Charging power (faster charging preferred) Station availability User ratings Price per kWh Estimated charging time
2. AIML Integration Random Forest Regressor: Predicts optimal charging times Realtime Scoring Algorithm: Weighted scoring system for station recommendations Geodesic Distance Calculation: Accurate Haversine formula implementation Dynamic Battery Range Prediction: Based on current charge level and vehicle specs
3. Interactive Visualizations Folium Maps: Interactive map with user location, destination, and charging stations Plotly Charts: Power distribution analysis Price vs. power scatter plots Network comparison analytics Realtime Metrics Dashboard: Key performance indicators
4. UserFriendly Interface Clean, intuitive Streamlit interface Responsive design with gradient backgrounds Realtime updates based on user inputs Export functionality for recommendations
Technology Stack
Frontend Streamlit (Web Framework) Folium (Interactive Maps) Plotly (Data Visualizations)
Backend Python 3.9+ Pandas (Data Processing) NumPy (Numerical Computing)
AIML Scikitlearn (Machine Learning) Random Forest Regressor StandardScaler (Feature Normalization)
Geospatial Geopy (Distance Calculations) Folium (Map Rendering)
Dataset Information
Charging Stations Dataset Size: 50 charging stations Source: Synthetically generated based on realworld patterns Location: San Francisco Bay Area (37.70°N 37.85°N, 122.50°W 122.35°W)
Project Structure




ev-charging-locator/
│
├── app.py                      # Main Streamlit application
├── requirements.txt            # Python dependencies
├── README.md                   # Project documentation
├── .gitignore                  # Git ignore file
│
├── data/
│   └── charging_stations.csv  # Dataset (generated in-app)
│
├── models/
│   ├── ml_model.pkl           # Trained ML model
│   └── scaler.pkl             # Feature scaler
│
├── docs/
│   ├── Project_Report.pdf     # Detailed project report
│   └── Presentation.pptx      # Project presentation
│
├── screenshots/
│   ├── dashboard.png
│   ├── map_view.png
│   └── analytics.png
│
└── tests/
    └── test_app.py            # Unit tests

