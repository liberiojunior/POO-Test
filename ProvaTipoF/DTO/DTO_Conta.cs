using System;

namespace DTO
{
    class DTO_Conta
    {
        private int id, idtipoconta;
        private string cpf, agencia, numeroconta;
        private DateTime dtabertura;       

        public int Id
        {
            get
            {
                return id;
            }
            set
            {
                id = value;
            }
        }

        public string CPF
        {
            get
            {
                return cpf;
            }
            set
            {
                cpf = value;
            }
        }

        public int Idtipoconta
        {
            get
            {
                return idtipoconta;
            }
            set
            {
                idtipoconta = value;
            }
        }
        
        public string Agencia
        {
            get
            {
                return agencia;
            }
            set
            {
                agencia = value;
            }
        }

        public string Numeroconta
        {
            get
            {
                return numeroconta;
            }
            set
            {
                numeroconta = value;
            }
        }

        public DateTime Dtabertura
        {
            get
            {
                return dtabertura;
            }
            set
            {
                dtabertura = value;
            }
        }
    }
}
