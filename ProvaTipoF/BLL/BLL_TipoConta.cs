using System;
using System.Data;
using DAL;

namespace BLL
{
    class BLL_TipoConta
    {
        Conexao bd = new Conexao();

        public DataTable ListarContas()
        {
            try
            {
                string comando = "SELECT * FROM tipoconta;";
                return bd.ExecutarConsulta(comando);
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }  
    }
}
