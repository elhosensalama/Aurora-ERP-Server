const catchAsync = require('./../utils/catchAsync');
// const AppError = require('./../utils/appError');

exports.deleteOne = Table =>
    catchAsync(async (req, res, next) => {
        const sql = '';
        sql.query(`DELETE FROM ${Table} WHERE ID = ?`, req.params.id);

        res.status(204).json({
            status: 'success',
            data: null
        });
    });

exports.updateOne = (Table, Data) =>
    catchAsync(async (req, res, next) => {
        const sql = '';
        const results = sql.query(
            `UPDATE ${Table} SET ${Data} WHERE ID = ?`,
            req.params.id
        );

        res.status(200).json({
            status: 'success',
            data: {
                data: results
            }
        });
    });

exports.createOne = (Table, Data) =>
    catchAsync(async (req, res, next) => {
        const sql = '';
        const results = sql.query(`INSERT INTO ${Table} VALUES ${Data}`);

        res.status(200).json({
            status: 'success',
            data: {
                data: results
            }
        });
    });

exports.getOne = Table =>
    catchAsync(async (req, res, next) => {
        const sql = '';
        const results = sql.query(
            `SELECT * FROM ${Table} WHERE ID = ?`,
            req.params.id
        );

        res.status(200).json({
            status: 'success',
            data: {
                data: results
            }
        });
    });

exports.getAll = Table =>
    catchAsync(async (req, res, next) => {
        const sql = '';
        const results = sql.query(`SELECT * FROM ${Table}`);
        // SEND RESPONSE
        res.status(200).json({
            status: 'success',
            results: results.length,
            data: {
                data: results
            }
        });
    });
