.class public Lme/everything/providers/android/browser/Bookmark;
.super Lme/everything/providers/core/Entity;
.source "Bookmark.java"


# static fields
.field public static uri:Landroid/net/Uri;
    .annotation runtime Lme/everything/providers/core/IgnoreMapping;
    .end annotation
.end field


# instance fields
.field public bookmark:I
    .annotation runtime Lme/everything/providers/core/FieldMapping;
        columnName = "bookmark"
        physicalType = .enum Lme/everything/providers/core/FieldMapping$PhysicalType;->Int:Lme/everything/providers/core/FieldMapping$PhysicalType;
    .end annotation
.end field

.field public created:J
    .annotation runtime Lme/everything/providers/core/FieldMapping;
        columnName = "created"
        physicalType = .enum Lme/everything/providers/core/FieldMapping$PhysicalType;->Long:Lme/everything/providers/core/FieldMapping$PhysicalType;
    .end annotation
.end field

.field public date:J
    .annotation runtime Lme/everything/providers/core/FieldMapping;
        columnName = "date"
        physicalType = .enum Lme/everything/providers/core/FieldMapping$PhysicalType;->Long:Lme/everything/providers/core/FieldMapping$PhysicalType;
    .end annotation
.end field

.field public favicon:[B
    .annotation runtime Lme/everything/providers/core/FieldMapping;
        columnName = "favicon"
        physicalType = .enum Lme/everything/providers/core/FieldMapping$PhysicalType;->Blob:Lme/everything/providers/core/FieldMapping$PhysicalType;
    .end annotation
.end field

.field public title:Ljava/lang/String;
    .annotation runtime Lme/everything/providers/core/FieldMapping;
        columnName = "title"
        physicalType = .enum Lme/everything/providers/core/FieldMapping$PhysicalType;->String:Lme/everything/providers/core/FieldMapping$PhysicalType;
    .end annotation
.end field

.field public url:Ljava/lang/String;
    .annotation runtime Lme/everything/providers/core/FieldMapping;
        columnName = "url"
        physicalType = .enum Lme/everything/providers/core/FieldMapping$PhysicalType;->String:Lme/everything/providers/core/FieldMapping$PhysicalType;
    .end annotation
.end field

.field public visits:I
    .annotation runtime Lme/everything/providers/core/FieldMapping;
        columnName = "visits"
        physicalType = .enum Lme/everything/providers/core/FieldMapping$PhysicalType;->Int:Lme/everything/providers/core/FieldMapping$PhysicalType;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 14
    sget-object v0, Landroid/provider/Browser;->BOOKMARKS_URI:Landroid/net/Uri;

    sput-object v0, Lme/everything/providers/android/browser/Bookmark;->uri:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Lme/everything/providers/core/Entity;-><init>()V

    return-void
.end method
