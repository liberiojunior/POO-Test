using System;

namespace DTO
{
    class DTO_Usuario
    {
        private int id;
        private string email, senha;

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

        public string Email
        {
            get
            {
                return email;
            }
            set
            {
                email = value;
            }
        }

        public string Senha
        {
            get
            {
                return senha;
            }
            set
            {
                senha = value;
            }
        }
    }
}
