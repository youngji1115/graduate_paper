.class public Lme/everything/providers/android/media/Playlist;
.super Lme/everything/providers/core/Entity;
.source "Playlist.java"


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
        logicalType = .enum Lme/everything/providers/core/FieldMapping$LogicalType;->Long:Lme/everything/providers/core/FieldMapping$LogicalType;
        physicalType = .enum Lme/everything/providers/core/FieldMapping$PhysicalType;->Int:Lme/everything/providers/core/FieldMapping$PhysicalType;
    .end annotation
.end field

.field public dateModified:J
    .annotation runtime Lme/everything/providers/core/FieldMapping;
        columnName = "date_modified"
        logicalType = .enum Lme/everything/providers/core/FieldMapping$LogicalType;->Long:Lme/everything/providers/core/FieldMapping$LogicalType;
        physicalType = .enum Lme/everything/providers/core/FieldMapping$PhysicalType;->Int:Lme/everything/providers/core/FieldMapping$PhysicalType;
    .end annotation
.end field

.field public id:J
    .annotation runtime Lme/everything/providers/core/FieldMapping;
        columnName = "_id"
        physicalType = .enum Lme/everything/providers/core/FieldMapping$PhysicalType;->Long:Lme/everything/providers/core/FieldMapping$PhysicalType;
    .end annotation
.end field

.field public name:Ljava/lang/String;
    .annotation runtime Lme/everything/providers/core/FieldMapping;
        columnName = "name"
        physicalType = .enum Lme/everything/providers/core/FieldMapping$PhysicalType;->String:Lme/everything/providers/core/FieldMapping$PhysicalType;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 17
    sget-object v0, Landroid/provider/MediaStore$Audio$Playlists;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    sput-object v0, Lme/everything/providers/android/media/Playlist;->uriExternal:Landroid/net/Uri;

    .line 20
    sget-object v0, Landroid/provider/MediaStore$Audio$Playlists;->INTERNAL_CONTENT_URI:Landroid/net/Uri;

    sput-object v0, Lme/everything/providers/android/media/Playlist;->uriInternal:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Lme/everything/providers/core/Entity;-><init>()V

    return-void
.end method
