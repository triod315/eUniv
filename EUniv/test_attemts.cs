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
    
    public partial class test_attemts
    {
        public int test_attemt { get; set; }
        public Nullable<System.DateTime> test_date { get; set; }
        public string test_name { get; set; }
        public string test_type { get; set; }
        public Nullable<int> mark { get; set; }
        public string grade { get; set; }
        public Nullable<int> student_id { get; set; }
        public Nullable<int> course_id { get; set; }
    
        public virtual cours cours { get; set; }
        public virtual student student { get; set; }
    }
}
