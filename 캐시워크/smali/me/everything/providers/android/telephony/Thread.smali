.class public Lme/everything/providers/android/telephony/Thread;
.super Lme/everything/providers/core/Entity;
.source "Thread.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x13
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lme/everything/providers/android/telephony/Thread$ThreadType;
    }
.end annotation


# static fields
.field public static uri:Landroid/net/Uri;
    .annotation runtime Lme/everything/providers/core/IgnoreMapping;
    .end annotation
.end field


# instance fields
.field public createdDate:J
    .annotation runtime Lme/everything/providers/core/FieldMapping;
        columnName = "date"
        physicalType = .enum Lme/everything/providers/core/FieldMapping$PhysicalType;->Long:Lme/everything/providers/core/FieldMapping$PhysicalType;
    .end annotation
.end field

.field public error:I
    .annotation runtime Lme/everything/providers/core/FieldMapping;
        columnName = "error"
        physicalType = .enum Lme/everything/providers/core/FieldMapping$PhysicalType;->Int:Lme/everything/providers/core/FieldMapping$PhysicalType;
    .end annotation

    .annotation runtime Lme/everything/providers/core/IgnoreMapping;
    .end annotation
.end field

.field public hasAttachment:Z
    .annotation runtime Lme/everything/providers/core/FieldMapping;
        columnName = "has_attachment"
        logicalType = .enum Lme/everything/providers/core/FieldMapping$LogicalType;->Boolean:Lme/everything/providers/core/FieldMapping$LogicalType;
        physicalType = .enum Lme/everything/providers/core/FieldMapping$PhysicalType;->Int:Lme/everything/providers/core/FieldMapping$PhysicalType;
    .end annotation

    .annotation runtime Lme/everything/providers/core/IgnoreMapping;
    .end annotation
.end field

.field public id:J
    .annotation runtime Lme/everything/providers/core/FieldMapping;
        columnName = "_id"
        physicalType = .enum Lme/everything/providers/core/FieldMapping$PhysicalType;->Long:Lme/everything/providers/core/FieldMapping$PhysicalType;
    .end annotation
.end field

.field public messageCount:I
    .annotation runtime Lme/everything/providers/core/FieldMapping;
        columnName = "message_count"
        physicalType = .enum Lme/everything/providers/core/FieldMapping$PhysicalType;->Int:Lme/everything/providers/core/FieldMapping$PhysicalType;
    .end annotation

    .annotation runtime Lme/everything/providers/core/IgnoreMapping;
    .end annotation
.end field

.field public read:Z
    .annotation runtime Lme/everything/providers/core/FieldMapping;
        columnName = "read"
        logicalType = .enum Lme/everything/providers/core/FieldMapping$LogicalType;->Boolean:Lme/everything/providers/core/FieldMapping$LogicalType;
        physicalType = .enum Lme/everything/providers/core/FieldMapping$PhysicalType;->Int:Lme/everything/providers/core/FieldMapping$PhysicalType;
    .end annotation
.end field

.field public recipientIds:[Ljava/lang/String;
    .annotation runtime Lme/everything/providers/core/FieldMapping;
        columnName = "recipient_ids"
        logicalType = .enum Lme/everything/providers/core/FieldMapping$LogicalType;->Array:Lme/everything/providers/core/FieldMapping$LogicalType;
        physicalType = .enum Lme/everything/providers/core/FieldMapping$PhysicalType;->Int:Lme/everything/providers/core/FieldMapping$PhysicalType;
    .end annotation

    .annotation runtime Lme/everything/providers/core/IgnoreMapping;
    .end annotation
.end field

.field public snippet:Ljava/lang/String;
    .annotation runtime Lme/everything/providers/core/FieldMapping;
        columnName = "snippet"
        physicalType = .enum Lme/everything/providers/core/FieldMapping$PhysicalType;->String:Lme/everything/providers/core/FieldMapping$PhysicalType;
    .end annotation

    .annotation runtime Lme/everything/providers/core/IgnoreMapping;
    .end annotation
.end field

.field public snippetCharset:I
    .annotation runtime Lme/everything/providers/core/FieldMapping;
        columnName = "snippet_cs"
        physicalType = .enum Lme/everything/providers/core/FieldMapping$PhysicalType;->Int:Lme/everything/providers/core/FieldMapping$PhysicalType;
    .end annotation

    .annotation runtime Lme/everything/providers/core/IgnoreMapping;
    .end annotation
.end field

.field public type:Lme/everything/providers/android/telephony/Thread$ThreadType;
    .annotation runtime Lme/everything/providers/core/FieldMapping;
        columnName = "type"
        logicalType = .enum Lme/everything/providers/core/FieldMapping$LogicalType;->EnumInt:Lme/everything/providers/core/FieldMapping$LogicalType;
        physicalType = .enum Lme/everything/providers/core/FieldMapping$PhysicalType;->Int:Lme/everything/providers/core/FieldMapping$PhysicalType;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 19
    sget-object v0, Landroid/provider/Telephony$Threads;->CONTENT_URI:Landroid/net/Uri;

    sput-object v0, Lme/everything/providers/android/telephony/Thread;->uri:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Lme/everything/providers/core/Entity;-><init>()V

    .line 57
    return-void
.end method
