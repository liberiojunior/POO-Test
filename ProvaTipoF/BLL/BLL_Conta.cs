using System;
using System.Data;
using DAL;
using DTO;

namespace BLL
{
    class BLL_Conta
    {
        Conexao bd = new Conexao();

        public void InserirNovoConta(DTO_Conta Conta)
        {
            

            try
            {
                string comando = "INSERT INTO Conta VALUES (NULL, '" + Conta.CPF + "','" 
                                                                       + Conta.Idtipoconta + "','"
                                                                       + Conta.Agencia + "','"
                                                                       + Conta.Numeroconta + "','"
                                                                       + Conta.Dtabertura.ToString("yyyy/MM/dd") + "');";

                bd.ExecutarComandos(comando);
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }
       
        public void ExcluirConta(DTO_Conta Conta)
        {
            try
            {
                string comando = "DELETE FROM Conta WHERE idconta = '" + Conta.Id + "';";
                bd.ExecutarComandos(comando);
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }

        public void AtualizarConta(DTO_Conta Conta)
        {
            try
            {
                string comando = "UPDATE Conta SET cpftitular =  '" + Conta.CPF +
                                                "', idtipoconta =  '" + Conta.Idtipoconta +
                                                "', agencia =  '" + Conta.Agencia +
                                                "', numeroconta =  '" + Conta.Numeroconta +
                                                "', Dtabertura =  '" + Conta.Dtabertura.ToString("yyyy/MM/dd") +                                                     
                                            "' WHERE idconta = '" + Conta.Id + "';";
                bd.ExecutarComandos(comando);
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }        
        
        public DataTable ListarContas()
        {
            try
            {
                string comando = "SELECT * FROM Conta;";
                return bd.ExecutarConsulta(comando);
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }

        public DataTable ListarContaporID(int id)
        {
            try
            {
                string comando = "SELECT * FROM Conta WHERE idconta = " + id + ";";
                return bd.ExecutarConsulta(comando);
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }
    }
}
