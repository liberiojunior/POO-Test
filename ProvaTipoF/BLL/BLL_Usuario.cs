using System;
using System.Data;
using DAL;
using DTO;

namespace BLL
{
    class BLL_Usuario
    {
        Conexao bd = new Conexao();

        public void InserirNovousuario(DTO_Usuario usuario)
        {
            try
            {
                string comando = "INSERT INTO usuario VALUES (NULL, '" + usuario.Email + "','" 
                                                                           + usuario.Senha + "');";

                bd.ExecutarComandos(comando);
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }
        
        public void ExcluirUsuario(DTO_Usuario usuario)
        {
            try
            {
                string comando = "DELETE FROM usuario WHERE id = '" + usuario.Id + "';";
                bd.ExecutarComandos(comando);
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }

        public void AtualizarUsuario(DTO_Usuario usuario)
        {
            try
            {
                string comando = "UPDATE usuario SET email =  '" + usuario.Email +
                                             "', senha =  '"     + usuario.Senha +                                                     
                                              "' WHERE id = '"   + usuario.Id + "';";
                bd.ExecutarComandos(comando);
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }

        public bool ValidarEmail(string email)
        {
            try
            {
                string comando = "SELECT email FROM usuario where email = '" + email + "';";
                if (bd.ExecutarConsulta(comando).Rows.Count == 0)
                    return true;
                else
                    return false;
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }

        public DTO_Usuario CarregarUsuario(string email, string senha)
        {
            try
            {
                string comando = "SELECT * FROM usuario WHERE email = '" + email + "' and senha = '" + senha + "';";
                DataTable dt = bd.ExecutarConsulta(comando);

                if (dt.Rows.Count == 1)
                {
                    DTO_Usuario usuario = new DTO_Usuario();

                    usuario.Id = int.Parse(dt.Rows[0][0].ToString());
                    usuario.Email = dt.Rows[0][1].ToString();                                        
                    return usuario;
                }
                else
                    return null;
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }

        public DataTable ListarUsuarios()
        {
            try
            {
                string comando = "SELECT * FROM usuario;";
                return bd.ExecutarConsulta(comando);
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }

        public DataTable ListarUsuarioPorID(int id)
        {
            try
            {
                string comando = "SELECT * FROM usuario WHERE id = " + id + ";";
                return bd.ExecutarConsulta(comando);
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }
    }
}
