import { Router } from 'express';
import { StatusCodes } from 'http-status-codes';
import ProvinciaService from './../services/provincia-service.js'
import Provincia from './../entities/provincia.js'

const router = Router();
const currentService = new ProvinciaService();