using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using System.Linq;
using System.Web;

namespace KhoaHocOnline.Models.EF
{
    [Table("tb_StatusType")]
    public class StatusType : CommonAbstract
    {
        public StatusType()
        {
            this.Enrollments = new HashSet<Enrollment>();
        }
        [Key]
        [DatabaseGenerated(DatabaseGeneratedOption.Identity)]
        public int StatusTypeID { get; set; }

        [Required(ErrorMessage = "Status name must not null.")]
        public string StatusName { get; set; }

        public virtual ICollection<Enrollment> Enrollments { get; set; }
    }
}