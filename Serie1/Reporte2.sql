GO
SET QUOTED_IDENTIFIER ON
GO


ALTER PROCEDURE [dbo].[sp_sel_reporte2]
	--DECLARE
    @PUsuario INT = NULL
AS
BEGIN
	SET NOCOUNT ON;

	SELECT a.ActivoID, a.Nombre, a.Descripcion,  a.Valor, a.Estado, b.Descripcion, c.MovimientoID, c.TipoMovimientoID, d.Descripcion
	FROM LocalDB.dbo.TblActivo a
	INNER JOIN LocalDB.dbo.TblEstado b ON a.Estado = b.EStadoID 
    INNER JOIN LocalDB.dbo.TblMovimientos c ON a.ActivoID = c.ActivoID 
    INNER JOIN LocalDB.dbo.TblTipoMovimiento d ON c.TipoMovimientoID = d.TipoMovimientoID
	WHERE c.UsuarioID = ISNULL(@PUsuario, a.Estado)
END
GO
