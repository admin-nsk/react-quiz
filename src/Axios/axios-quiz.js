import axios from "axios";


export default axios.create({
    baseURL: 'https://reactedu-123456-default-rtdb.europe-west1.firebasedatabase.app'
})