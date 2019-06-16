/* jshint indent: 1 */

module.exports = function(sequelize, DataTypes) {
	return sequelize.define('tickets', {
		id: {
			type: DataTypes.INTEGER(11).UNSIGNED,
			allowNull: false,
			primaryKey: true,
			autoIncrement: true
		},
		subject: {
			type: DataTypes.STRING(256),
			allowNull: false
		},
		priority_id: {
			type: DataTypes.INTEGER(11),
			allowNull: false
		},
		status_id: {
			type: DataTypes.INTEGER(4),
			allowNull: false
		},
		user_id: {
			type: DataTypes.INTEGER(11),
			allowNull: false
		},
		assigned_to_user_id: {
			type: DataTypes.INTEGER(11),
			allowNull: true
		}
	}, {
		tableName: 'tickets',
		timestamps: false
	});
};
