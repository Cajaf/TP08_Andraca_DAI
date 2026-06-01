import ProvinciaRepository from '../repository/provinciaRepository.js';

export default class ProvinciaService {
    constructor() {
        this.ProvinciaRepository = new ProvinciaRepository;
    }

     getAllAsync = async () => {
        const returnArray = await this.ProvinciaRepository.getAllProvincias();
        if (returnArray == null) return null;
        return returnArray
    }

    getByIdAsync = async (id) => {
        const returnEntity = await this.ProvinciaRepository.getByIdAsync(id)
        return returnEntity;
    }

    createAsync = async (entity) => {
        const rowsAffected = await this.ProvinciaRepository.createAsync(entity);
        return rowsAffected;
    }

    updateAsync = async (entity) => {  
        const rowsAffected = await this.ProvinciaRepository.updateAsync(entity);
        return rowsAffected;
    }

    deleteByIdAsync = async (id) => {
        const rowsAffected = await this.ProvinciaRepository.deleteByIdAsync(id);
        return rowsAffected;
    }

}