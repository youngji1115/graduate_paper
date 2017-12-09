.class public Lme/everything/providers/android/telephony/Sms;
.super Lme/everything/providers/core/Entity;
.source "Sms.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x13
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lme/everything/providers/android/telephony/Sms$MessageStatus;,
        Lme/everything/providers/android/telephony/Sms$MessageType;
    }
.end annotation


# static fields
.field public static uri:Landroid/net/Uri;
    .annotation runtime Lme/everything/providers/core/IgnoreMapping;
    .end annotation
.end field

.field public static uriDraft:Landroid/net/Uri;
    .annotation runtime Lme/everything/providers/core/IgnoreMapping;
    .end annotation
.end field

.field public static uriInbox:Landroid/net/Uri;
    .annotation runtime Lme/everything/providers/core/IgnoreMapping;
    .end annotation
.end field

.field public static uriOutbox:Landroid/net/Uri;
    .annotation runtime Lme/everything/providers/core/IgnoreMapping;
    .end annotation
.end field

.field public static uriSent:Landroid/net/Uri;
    .annotation runtime Lme/everything/providers/core/IgnoreMapping;
    .end annotation
.end field


# instance fields
.field public address:Ljava/lang/String;
    .annotation runtime Lme/everything/providers/core/FieldMapping;
        columnName = "address"
        physicalType = .enum Lme/everything/providers/core/FieldMapping$PhysicalType;->String:Lme/everything/providers/core/FieldMapping$PhysicalType;
    .end annotation
.end field

.field public body:Ljava/lang/String;
    .annotation runtime Lme/everything/providers/core/FieldMapping;
        columnName = "body"
        physicalType = .enum Lme/everything/providers/core/FieldMapping$PhysicalType;->String:Lme/everything/providers/core/FieldMapping$PhysicalType;
    .end annotation
.end field

.field public errorCode:I
    .annotation runtime Lme/everything/providers/core/FieldMapping;
        columnName = "error_code"
        physicalType = .enum Lme/everything/providers/core/FieldMapping$PhysicalType;->Int:Lme/everything/providers/core/FieldMapping$PhysicalType;
    .end annotation
.end field

.field public id:J
    .annotation runtime Lme/everything/providers/core/FieldMapping;
        columnName = "_id"
        physicalType = .enum Lme/everything/providers/core/FieldMapping$PhysicalType;->Long:Lme/everything/providers/core/FieldMapping$PhysicalType;
    .end annotation
.end field

.field public locked:Z
    .annotation runtime Lme/everything/providers/core/FieldMapping;
        columnName = "locked"
        logicalType = .enum Lme/everything/providers/core/FieldMapping$LogicalType;->Boolean:Lme/everything/providers/core/FieldMapping$LogicalType;
        physicalType = .enum Lme/everything/providers/core/FieldMapping$PhysicalType;->Int:Lme/everything/providers/core/FieldMapping$PhysicalType;
    .end annotation
.end field

.field public person:I
    .annotation runtime Lme/everything/providers/core/FieldMapping;
        columnName = "person"
        physicalType = .enum Lme/everything/providers/core/FieldMapping$PhysicalType;->Int:Lme/everything/providers/core/FieldMapping$PhysicalType;
    .end annotation
.end field

.field public protocol:I
    .annotation runtime Lme/everything/providers/core/FieldMapping;
        columnName = "protocol"
        physicalType = .enum Lme/everything/providers/core/FieldMapping$PhysicalType;->Int:Lme/everything/providers/core/FieldMapping$PhysicalType;
    .end annotation
.end field

.field public read:Z
    .annotation runtime Lme/everything/providers/core/FieldMapping;
        columnName = "read"
        logicalType = .enum Lme/everything/providers/core/FieldMapping$LogicalType;->Boolean:Lme/everything/providers/core/FieldMapping$LogicalType;
        physicalType = .enum Lme/everything/providers/core/FieldMapping$PhysicalType;->Int:Lme/everything/providers/core/FieldMapping$PhysicalType;
    .end annotation
.end field

.field public receivedDate:J
    .annotation runtime Lme/everything/providers/core/FieldMapping;
        columnName = "date"
        physicalType = .enum Lme/everything/providers/core/FieldMapping$PhysicalType;->Long:Lme/everything/providers/core/FieldMapping$PhysicalType;
    .end annotation
.end field

.field public seen:Z
    .annotation runtime Lme/everything/providers/core/FieldMapping;
        columnName = "seen"
        logicalType = .enum Lme/everything/providers/core/FieldMapping$LogicalType;->Boolean:Lme/everything/providers/core/FieldMapping$LogicalType;
        physicalType = .enum Lme/everything/providers/core/FieldMapping$PhysicalType;->Int:Lme/everything/providers/core/FieldMapping$PhysicalType;
    .end annotation
.end field

.field public sentDate:J
    .annotation runtime Lme/everything/providers/core/FieldMapping;
        columnName = "date_sent"
        physicalType = .enum Lme/everything/providers/core/FieldMapping$PhysicalType;->Long:Lme/everything/providers/core/FieldMapping$PhysicalType;
    .end annotation
.end field

.field public serviceCenter:Ljava/lang/String;
    .annotation runtime Lme/everything/providers/core/FieldMapping;
        columnName = "service_center"
        physicalType = .enum Lme/everything/providers/core/FieldMapping$PhysicalType;->String:Lme/everything/providers/core/FieldMapping$PhysicalType;
    .end annotation
.end field

.field public status:Lme/everything/providers/android/telephony/Sms$MessageStatus;
    .annotation runtime Lme/everything/providers/core/FieldMapping;
        columnName = "status"
        logicalType = .enum Lme/everything/providers/core/FieldMapping$LogicalType;->EnumInt:Lme/everything/providers/core/FieldMapping$LogicalType;
        physicalType = .enum Lme/everything/providers/core/FieldMapping$PhysicalType;->Int:Lme/everything/providers/core/FieldMapping$PhysicalType;
    .end annotation
.end field

.field public subject:Ljava/lang/String;
    .annotation runtime Lme/everything/providers/core/FieldMapping;
        columnName = "subject"
        physicalType = .enum Lme/everything/providers/core/FieldMapping$PhysicalType;->String:Lme/everything/providers/core/FieldMapping$PhysicalType;
    .end annotation
.end field

.field public threadId:I
    .annotation runtime Lme/everything/providers/core/FieldMapping;
        columnName = "thread_id"
        physicalType = .enum Lme/everything/providers/core/FieldMapping$PhysicalType;->Int:Lme/everything/providers/core/FieldMapping$PhysicalType;
    .end annotation
.end field

.field public type:Lme/everything/providers/android/telephony/Sms$MessageType;
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
    .line 18
    sget-object v0, Landroid/provider/Telephony$Sms;->CONTENT_URI:Landroid/net/Uri;

    sput-object v0, Lme/everything/providers/android/telephony/Sms;->uri:Landroid/net/Uri;

    .line 21
    sget-object v0, Landroid/provider/Telephony$Sms$Inbox;->CONTENT_URI:Landroid/net/Uri;

    sput-object v0, Lme/everything/providers/android/telephony/Sms;->uriInbox:Landroid/net/Uri;

    .line 24
    sget-object v0, Landroid/provider/Telephony$Sms$Outbox;->CONTENT_URI:Landroid/net/Uri;

    sput-object v0, Lme/everything/providers/android/telephony/Sms;->uriOutbox:Landroid/net/Uri;

    .line 27
    sget-object v0, Landroid/provider/Telephony$Sms$Sent;->CONTENT_URI:Landroid/net/Uri;

    sput-object v0, Lme/everything/providers/android/telephony/Sms;->uriSent:Landroid/net/Uri;

    .line 30
    sget-object v0, Landroid/provider/Telephony$Sms$Draft;->CONTENT_URI:Landroid/net/Uri;

    sput-object v0, Lme/everything/providers/android/telephony/Sms;->uriDraft:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Lme/everything/providers/core/Entity;-><init>()V

    .line 105
    return-void
.end method
