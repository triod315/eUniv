//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated from a template.
//
//     Manual changes to this file may cause unexpected behavior in your application.
//     Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace EUniv
{
    using System;
    using System.Collections.Generic;
    
    public partial class admin
    {
        public int admin_id { get; set; }
        public string department { get; set; }
        public string user_name { get; set; }
    
        public virtual user user { get; set; }
    }
}
