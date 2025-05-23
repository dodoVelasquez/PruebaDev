GO
SET QUOTED_IDENTIFIER ON
GO


CREATE PROCEDURE [dbo].[sp_sel_reporte1]
	--DECLARE
    @PUsuario INT = NULL
	,@PEstado INT = NULL
AS
BEGIN
	SET NOCOUNT ON;

	SELECT a.ActivoID, a.Nombre, a.Descripcion,  a.Valor, a.Estado, b.Descripcion, a.FechaAdquisicion
	FROM LocalDB.dbo.TblActivo a
	INNER JOIN LocalDB.dbo.TblEstado b ON a.Estado = b.EStadoID 
	WHERE a.Estado = ISNULL(@PEstado, a.Estado)
END
GO
