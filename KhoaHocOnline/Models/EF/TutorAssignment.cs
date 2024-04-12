using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using System.Linq;
using System.Web;

namespace KhoaHocOnline.Models.EF
{
    [Table("tb_TutorAssignments")]
    public class TutorAssignment : CommonAbstract
    {
        [Key]
        [DatabaseGenerated(DatabaseGeneratedOption.Identity)]
        public int TutorAssignmentID { get; set; }

        [Required(ErrorMessage = "TUtor ID must not null.")]
        public int TutorID { get; set; }

        [Required(ErrorMessage = "Course ID must not null.")]
        public int CourseID { get; set; }

        [Required(ErrorMessage = "Number of student must not null.")]
        public int NumberOfStudent { get; set; }

        [Required(ErrorMessage = "Assignment date must not null.")]
        public DateTime AssignmentDate { get; set; }

        public virtual Tutor Tutor { get; set; }
    }
}