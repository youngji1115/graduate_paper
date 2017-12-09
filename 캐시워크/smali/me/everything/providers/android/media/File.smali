.class public Lme/everything/providers/android/media/File;
.super Lme/everything/providers/core/Entity;
.source "File.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lme/everything/providers/android/media/File$MediaType;
    }
.end annotation


# static fields
.field public static uriExternal:Landroid/net/Uri;
    .annotation runtime Lme/everything/providers/core/IgnoreMapping;
    .end annotation
.end field

.field public static uriInternal:Landroid/net/Uri;
    .annotation runtime Lme/everything/providers/core/IgnoreMapping;
    .end annotation
.end field


# instance fields
.field public data:[B
    .annotation runtime Lme/everything/providers/core/FieldMapping;
        columnName = "_data"
        physicalType = .enum Lme/everything/providers/core/FieldMapping$PhysicalType;->Blob:Lme/everything/providers/core/FieldMapping$PhysicalType;
    .end annotation
.end field

.field public dateAdded:J
    .annotation runtime Lme/everything/providers/core/FieldMapping;
        columnName = "date_added"
        physicalType = .enum Lme/everything/providers/core/FieldMapping$PhysicalType;->Long:Lme/everything/providers/core/FieldMapping$PhysicalType;
    .end annotation
.end field

.field public dateModified:J
    .annotation runtime Lme/everything/providers/core/FieldMapping;
        columnName = "date_modified"
        physicalType = .enum Lme/everything/providers/core/FieldMapping$PhysicalType;->Long:Lme/everything/providers/core/FieldMapping$PhysicalType;
    .end annotation
.end field

.field public displayName:Ljava/lang/String;
    .annotation runtime Lme/everything/providers/core/FieldMapping;
        columnName = "_display_name"
        physicalType = .enum Lme/everything/providers/core/FieldMapping$PhysicalType;->String:Lme/everything/providers/core/FieldMapping$PhysicalType;
    .end annotation
.end field

.field public height:I
    .annotation runtime Lme/everything/providers/core/FieldMapping;
        columnName = "height"
        physicalType = .enum Lme/everything/providers/core/FieldMapping$PhysicalType;->Int:Lme/everything/providers/core/FieldMapping$PhysicalType;
    .end annotation
.end field

.field public id:J
    .annotation runtime Lme/everything/providers/core/FieldMapping;
        columnName = "_id"
        physicalType = .enum Lme/everything/providers/core/FieldMapping$PhysicalType;->Long:Lme/everything/providers/core/FieldMapping$PhysicalType;
    .end annotation
.end field

.field public mediaType:Lme/everything/providers/android/media/File$MediaType;
    .annotation runtime Lme/everything/providers/core/FieldMapping;
        columnName = "media_type"
        logicalType = .enum Lme/everything/providers/core/FieldMapping$LogicalType;->EnumInt:Lme/everything/providers/core/FieldMapping$LogicalType;
        physicalType = .enum Lme/everything/providers/core/FieldMapping$PhysicalType;->Int:Lme/everything/providers/core/FieldMapping$PhysicalType;
    .end annotation
.end field

.field public mimeType:Ljava/lang/String;
    .annotation runtime Lme/everything/providers/core/FieldMapping;
        columnName = "mime_type"
        physicalType = .enum Lme/everything/providers/core/FieldMapping$PhysicalType;->String:Lme/everything/providers/core/FieldMapping$PhysicalType;
    .end annotation
.end field

.field public parent:I
    .annotation runtime Lme/everything/providers/core/FieldMapping;
        columnName = "parent"
        physicalType = .enum Lme/everything/providers/core/FieldMapping$PhysicalType;->Int:Lme/everything/providers/core/FieldMapping$PhysicalType;
    .end annotation
.end field

.field public size:I
    .annotation runtime Lme/everything/providers/core/FieldMapping;
        columnName = "_size"
        physicalType = .enum Lme/everything/providers/core/FieldMapping$PhysicalType;->Int:Lme/everything/providers/core/FieldMapping$PhysicalType;
    .end annotation
.end field

.field public title:Ljava/lang/String;
    .annotation runtime Lme/everything/providers/core/FieldMapping;
        columnName = "title"
        physicalType = .enum Lme/everything/providers/core/FieldMapping$PhysicalType;->String:Lme/everything/providers/core/FieldMapping$PhysicalType;
    .end annotation
.end field

.field public width:I
    .annotation runtime Lme/everything/providers/core/FieldMapping;
        columnName = "width"
        physicalType = .enum Lme/everything/providers/core/FieldMapping$PhysicalType;->Int:Lme/everything/providers/core/FieldMapping$PhysicalType;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 18
    const-string v0, "external"

    invoke-static {v0}, Landroid/provider/MediaStore$Files;->getContentUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lme/everything/providers/android/media/File;->uriExternal:Landroid/net/Uri;

    .line 21
    const-string v0, "internal"

    invoke-static {v0}, Landroid/provider/MediaStore$Files;->getContentUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lme/everything/providers/android/media/File;->uriInternal:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Lme/everything/providers/core/Entity;-><init>()V

    .line 59
    return-void
.end method
