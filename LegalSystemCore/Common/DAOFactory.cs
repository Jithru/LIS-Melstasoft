﻿using LegalSystemCore.Infrastructure;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;


namespace LegalSystemCore.Common
{
    public class DAOFactory
    {
        public static ICompanyDAO CreateCompanyDAO()
        {
            ICompanyDAO companyDAO = new CompanySqlDAOImpl();
            return (ICompanyDAO)companyDAO;
        }

        public static ICompanyUnitDAO CreateCompanyUnitDAO()
        {
            ICompanyUnitDAO companyUnitDAO = new CompanyUnitSqlDAOImpl();
            return (ICompanyUnitDAO)companyUnitDAO;
        }

        public static ILocationDAO CreateLocationDAO()
        {
            ILocationDAO locationDAO = new LocationSqlDAOImpl();
            return (ILocationDAO)locationDAO;
        }

        public static ICourtDAO CreateCourtDAO()
        {
            ICourtDAO courtDAO = new CourtSqlDAOImpl();
            return (ICourtDAO)courtDAO;
        }
    }
}
