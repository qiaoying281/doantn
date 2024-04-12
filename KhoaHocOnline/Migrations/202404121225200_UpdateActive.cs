namespace KhoaHocOnline.Migrations
{
    using System;
    using System.Data.Entity.Migrations;
    
    public partial class UpdateActive : DbMigration
    {
        public override void Up()
        {
            DropForeignKey("dbo.tb_Lecture", "CoursePartID", "dbo.tb_CoursePart");
            DropIndex("dbo.tb_Lecture", new[] { "CoursePartID" });
            AddColumn("dbo.tb_Course", "IsActive", c => c.Boolean(nullable: false));
            AddColumn("dbo.tb_CoursePart", "IsWatched", c => c.Boolean(nullable: false));
            AddColumn("dbo.tb_CoursePart", "IsWatching", c => c.Boolean(nullable: false));
            AddColumn("dbo.tb_CoursePart", "IsAvailable", c => c.Boolean(nullable: false));
            AddColumn("dbo.tb_CoursePart", "IsActive", c => c.Boolean(nullable: false));
            AddColumn("dbo.tb_Exam", "IsActive", c => c.Boolean(nullable: false));
            AddColumn("dbo.tb_Question", "IsActive", c => c.Boolean(nullable: false));
            DropTable("dbo.tb_Lecture");
        }
        
        public override void Down()
        {
            CreateTable(
                "dbo.tb_Lecture",
                c => new
                    {
                        LectureID = c.Int(nullable: false, identity: true),
                        CoursePartID = c.Int(nullable: false),
                        LectureTitle = c.String(nullable: false),
                        LectureLink = c.String(nullable: false),
                        Duration = c.Int(nullable: false),
                        IsWatched = c.Boolean(nullable: false),
                        IsWatching = c.Boolean(nullable: false),
                        IsAvailable = c.Boolean(nullable: false),
                        Index = c.Int(nullable: false),
                        CreatedAt = c.DateTime(nullable: false),
                        UpdatedAt = c.DateTime(nullable: false),
                    })
                .PrimaryKey(t => t.LectureID);
            
            DropColumn("dbo.tb_Question", "IsActive");
            DropColumn("dbo.tb_Exam", "IsActive");
            DropColumn("dbo.tb_CoursePart", "IsActive");
            DropColumn("dbo.tb_CoursePart", "IsAvailable");
            DropColumn("dbo.tb_CoursePart", "IsWatching");
            DropColumn("dbo.tb_CoursePart", "IsWatched");
            DropColumn("dbo.tb_Course", "IsActive");
            CreateIndex("dbo.tb_Lecture", "CoursePartID");
            AddForeignKey("dbo.tb_Lecture", "CoursePartID", "dbo.tb_CoursePart", "CoursePartID", cascadeDelete: true);
        }
    }
}
