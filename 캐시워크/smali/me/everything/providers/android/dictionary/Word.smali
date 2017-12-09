.class public Lme/everything/providers/android/dictionary/Word;
.super Lme/everything/providers/core/Entity;
.source "Word.java"


# static fields
.field public static uri:Landroid/net/Uri;
    .annotation runtime Lme/everything/providers/core/IgnoreMapping;
    .end annotation
.end field


# instance fields
.field public appId:I
    .annotation runtime Lme/everything/providers/core/FieldMapping;
        columnName = "appid"
        physicalType = .enum Lme/everything/providers/core/FieldMapping$PhysicalType;->Int:Lme/everything/providers/core/FieldMapping$PhysicalType;
    .end annotation
.end field

.field public frequency:I
    .annotation runtime Lme/everything/providers/core/FieldMapping;
        columnName = "frequency"
        physicalType = .enum Lme/everything/providers/core/FieldMapping$PhysicalType;->Int:Lme/everything/providers/core/FieldMapping$PhysicalType;
    .end annotation
.end field

.field public id:J
    .annotation runtime Lme/everything/providers/core/FieldMapping;
        columnName = "_id"
        physicalType = .enum Lme/everything/providers/core/FieldMapping$PhysicalType;->Long:Lme/everything/providers/core/FieldMapping$PhysicalType;
    .end annotation
.end field

.field public locale:Ljava/lang/String;
    .annotation runtime Lme/everything/providers/core/FieldMapping;
        columnName = "locale"
        physicalType = .enum Lme/everything/providers/core/FieldMapping$PhysicalType;->String:Lme/everything/providers/core/FieldMapping$PhysicalType;
    .end annotation
.end field

.field public shortcut:Ljava/lang/String;
    .annotation runtime Lme/everything/providers/core/FieldMapping;
        columnName = "shortcut"
        physicalType = .enum Lme/everything/providers/core/FieldMapping$PhysicalType;->String:Lme/everything/providers/core/FieldMapping$PhysicalType;
    .end annotation
.end field

.field public word:Ljava/lang/String;
    .annotation runtime Lme/everything/providers/core/FieldMapping;
        columnName = "word"
        physicalType = .enum Lme/everything/providers/core/FieldMapping$PhysicalType;->String:Lme/everything/providers/core/FieldMapping$PhysicalType;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 17
    sget-object v0, Landroid/provider/UserDictionary$Words;->CONTENT_URI:Landroid/net/Uri;

    sput-object v0, Lme/everything/providers/android/dictionary/Word;->uri:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Lme/everything/providers/core/Entity;-><init>()V

    return-void
.end method
