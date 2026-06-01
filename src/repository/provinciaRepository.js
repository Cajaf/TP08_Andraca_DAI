import pkg from 'pg'
import config from './../configs/db-config.js';     
const { Pool }  = pkg;

export default class ProvinciaRepository {
    constructor() {
        this.DBPool     = null;
    }

     getDBPool = () => {
        if (this.DBPool == null){
            this.DBPool = new Pool(config);
        }
        return this.DBPool;
    }

     getAllProvincias = async () => {
        let returnArray = null;
        try {
            const sql = `SELECT * FROM provincias`;
            const result = await this.getDBPool().query(sql);
            returnArray = result.rows;
        } catch (error) {
            console.log(error)
        }
        return returnArray;
    }

    getByIdAsync = async (id) => {
        let returnEntity = null;
        try {
            const sql = `SELECT * FROM provincias WHERE id=$1`;
            const values = [id];
            const result = await this.getDBPool().query(sql, values);
            if (result.rows.length > 0){
                returnEntity = result.rows[0];
            }
        } catch (error) {
            LogHelper.logError(error);
        } 
        return returnEntity;
    }

    deleteByIdAsync = async (id) => {
        let returnEntity = null;
         try {
            const sql = `DELETE FROM provincias WHERE id=$1`;
            const values = [id];
            const result = await this.getDBPool().query(sql, values);
            returnArray = result.rows;
        } catch (error) {
            console.log(error)
        }
        return returnEntity;
    }

     updateAsync = async (entity) => {
        let returnEntity = null;
         try {
            let id = entity.id;
            const previousEntity = await this.getByIdAsync(id);
            if (previousEntity == null) return 0;
            const sql = `UPDATE alumnos SET
                        name              = $2,
                        latitude            = $3,
                        longitude            = $4,
                        fullname    = $5,
                        displayorder       = $6
                    WHERE id = $1`;
            const values = [
            id,
            entity?.name           ?? previousEntity?.name,
            entity?.latitude         ?? previousEntity?.latitude,
            entity?.longitude         ?? previousEntity?.longitude,
            entity?.fullname ?? previousEntity?.fullname,
            entity?.displayorder    ?? previousEntity?.displayorder
        ];
            const result = await this.getDBPool().query(sql, values);
            returnArray = result.rows;
        } catch (error) {
            console.log(error)
        }
        return returnEntity;
    }
}

    createAsync = async (entity) => {
        console.log(`AlumnosRepository.createAsync(${JSON.stringify(entity)})`);
        let newId = 0;

        try {
            const sql = ` INSERT INTO alumnos (
                            name              , 
                            latitude            , 
                            longitude            , 
                            fullname    , 
                            displayorder
                        ) VALUES (
                            $1, 
                            $2, 
                            $3, 
                            $4, 
                            $5
                        ) RETURNING id`;
            const values =  [   entity.name,
                                entity.latitude,
                                entity.longitude,
                                entity.fullname,
                                entity.displayorder
                            ];
            const resultPg = await this.getDBPool().query(sql, values);
            newId = resultPg.rows[0].id;
        } catch (error) {
            LogHelper.logError(error);
        }
        return newId;
    }