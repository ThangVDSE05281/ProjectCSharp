//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated from a template.
//
//     Manual changes to this file may cause unexpected behavior in your application.
//     Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace Test.Models
{
    using System;
    using System.Collections.Generic;
    
    public partial class News
    {
        public int postId { get; set; }
        public string title { get; set; }
        public string image { get; set; }
        public string postContent { get; set; }
        public Nullable<int> viewCount { get; set; }
        public Nullable<int> commentCount { get; set; }
        public Nullable<int> shareCount { get; set; }
    }
}
