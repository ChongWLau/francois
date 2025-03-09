import axios from 'axios';

// Create axios instance with base URL from environment variables
const apiClient = axios.create({
  baseURL: process.env.VUE_APP_API_URL,
  timeout: 10000,
  headers: {
    'Content-Type': 'application/json',
    'Accept': 'application/json'
  }
});

// Add request interceptor for auth token
// apiClient.interceptors.request.use(config => {
//   const token = localStorage.getItem('token');
//   if (token) {
//     config.headers['Authorization'] = `Bearer ${token}`;
//   }
//   return config;
// });

export default {
  // Users
//   login(credentials) {
//     return apiClient.post('/auth/login/', credentials);
//   },
//   register(userData) {
//     return apiClient.post('/auth/register/', userData);
//   },
  
  // Example resource endpoints
  getItems() {
    return apiClient.get('/items/');
  },
  getItem(id) {
    return apiClient.get(`/items/${id}/`);
  },
  createItem(item) {
    return apiClient.post('/items/', item);
  },
  updateItem(id, item) {
    return apiClient.put(`/items/${id}/`, item);
  },
  deleteItem(id) {
    return apiClient.delete(`/items/${id}/`);
  }
  
  // Add more API methods as needed
};