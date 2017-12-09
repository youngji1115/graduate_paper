.class public Lme/everything/providers/android/calendar/Calendar;
.super Lme/everything/providers/core/Entity;
.source "Calendar.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0xe
.end annotation


# static fields
.field public static uri:Landroid/net/Uri;
    .annotation runtime Lme/everything/providers/core/IgnoreMapping;
    .end annotation
.end field


# instance fields
.field public accountName:Ljava/lang/String;
    .annotation runtime Lme/everything/providers/core/FieldMapping;
        columnName = "account_name"
        physicalType = .enum Lme/everything/providers/core/FieldMapping$PhysicalType;->String:Lme/everything/providers/core/FieldMapping$PhysicalType;
    .end annotation
.end field

.field public accountType:Ljava/lang/String;
    .annotation runtime Lme/everything/providers/core/FieldMapping;
        columnName = "account_type"
        physicalType = .enum Lme/everything/providers/core/FieldMapping$PhysicalType;->String:Lme/everything/providers/core/FieldMapping$PhysicalType;
    .end annotation
.end field

.field public allowedReminders:Ljava/lang/String;
    .annotation runtime Lme/everything/providers/core/FieldMapping;
        columnName = "allowedReminders"
        physicalType = .enum Lme/everything/providers/core/FieldMapping$PhysicalType;->String:Lme/everything/providers/core/FieldMapping$PhysicalType;
    .end annotation
.end field

.field public calendarAccessLevel:I
    .annotation runtime Lme/everything/providers/core/FieldMapping;
        columnName = "calendar_access_level"
        physicalType = .enum Lme/everything/providers/core/FieldMapping$PhysicalType;->Int:Lme/everything/providers/core/FieldMapping$PhysicalType;
    .end annotation
.end field

.field public calendarColor:I
    .annotation runtime Lme/everything/providers/core/FieldMapping;
        canUpdate = true
        columnName = "calendar_color"
        physicalType = .enum Lme/everything/providers/core/FieldMapping$PhysicalType;->Int:Lme/everything/providers/core/FieldMapping$PhysicalType;
    .end annotation
.end field

.field public calendarTimeZone:Ljava/lang/String;
    .annotation runtime Lme/everything/providers/core/FieldMapping;
        columnName = "calendar_timezone"
        physicalType = .enum Lme/everything/providers/core/FieldMapping$PhysicalType;->String:Lme/everything/providers/core/FieldMapping$PhysicalType;
    .end annotation
.end field

.field public canModifyTimeZone:Z
    .annotation runtime Lme/everything/providers/core/FieldMapping;
        columnName = "canModifyTimeZone"
        logicalType = .enum Lme/everything/providers/core/FieldMapping$LogicalType;->Boolean:Lme/everything/providers/core/FieldMapping$LogicalType;
        physicalType = .enum Lme/everything/providers/core/FieldMapping$PhysicalType;->Int:Lme/everything/providers/core/FieldMapping$PhysicalType;
    .end annotation
.end field

.field public canOrginizerRespond:Z
    .annotation runtime Lme/everything/providers/core/FieldMapping;
        columnName = "canOrganizerRespond"
        logicalType = .enum Lme/everything/providers/core/FieldMapping$LogicalType;->Boolean:Lme/everything/providers/core/FieldMapping$LogicalType;
        physicalType = .enum Lme/everything/providers/core/FieldMapping$PhysicalType;->Int:Lme/everything/providers/core/FieldMapping$PhysicalType;
    .end annotation
.end field

.field public canPartiallyUpdate:Z
    .annotation runtime Lme/everything/providers/core/FieldMapping;
        columnName = "canPartiallyUpdate"
        logicalType = .enum Lme/everything/providers/core/FieldMapping$LogicalType;->Boolean:Lme/everything/providers/core/FieldMapping$LogicalType;
        physicalType = .enum Lme/everything/providers/core/FieldMapping$PhysicalType;->Int:Lme/everything/providers/core/FieldMapping$PhysicalType;
    .end annotation
.end field

.field public deleted:Z
    .annotation runtime Lme/everything/providers/core/FieldMapping;
        columnName = "deleted"
        logicalType = .enum Lme/everything/providers/core/FieldMapping$LogicalType;->Boolean:Lme/everything/providers/core/FieldMapping$LogicalType;
        physicalType = .enum Lme/everything/providers/core/FieldMapping$PhysicalType;->Int:Lme/everything/providers/core/FieldMapping$PhysicalType;
    .end annotation
.end field

.field public dirty:J
    .annotation runtime Lme/everything/providers/core/FieldMapping;
        columnName = "dirty"
        physicalType = .enum Lme/everything/providers/core/FieldMapping$PhysicalType;->Long:Lme/everything/providers/core/FieldMapping$PhysicalType;
    .end annotation
.end field

.field public displayName:Ljava/lang/String;
    .annotation runtime Lme/everything/providers/core/FieldMapping;
        canUpdate = true
        columnName = "calendar_displayName"
        physicalType = .enum Lme/everything/providers/core/FieldMapping$PhysicalType;->String:Lme/everything/providers/core/FieldMapping$PhysicalType;
    .end annotation
.end field

.field public id:J
    .annotation runtime Lme/everything/providers/core/FieldMapping;
        columnName = "_id"
        physicalType = .enum Lme/everything/providers/core/FieldMapping$PhysicalType;->Long:Lme/everything/providers/core/FieldMapping$PhysicalType;
    .end annotation
.end field

.field public location:Ljava/lang/String;
    .annotation runtime Lme/everything/providers/core/FieldMapping;
        columnName = "calendar_location"
        physicalType = .enum Lme/everything/providers/core/FieldMapping$PhysicalType;->String:Lme/everything/providers/core/FieldMapping$PhysicalType;
    .end annotation
.end field

.field public maxReminders:I
    .annotation runtime Lme/everything/providers/core/FieldMapping;
        columnName = "maxReminders"
        physicalType = .enum Lme/everything/providers/core/FieldMapping$PhysicalType;->Int:Lme/everything/providers/core/FieldMapping$PhysicalType;
    .end annotation
.end field

.field public name:Ljava/lang/String;
    .annotation runtime Lme/everything/providers/core/FieldMapping;
        columnName = "name"
        physicalType = .enum Lme/everything/providers/core/FieldMapping$PhysicalType;->String:Lme/everything/providers/core/FieldMapping$PhysicalType;
    .end annotation
.end field

.field public ownerAccount:Ljava/lang/String;
    .annotation runtime Lme/everything/providers/core/FieldMapping;
        columnName = "ownerAccount"
        physicalType = .enum Lme/everything/providers/core/FieldMapping$PhysicalType;->String:Lme/everything/providers/core/FieldMapping$PhysicalType;
    .end annotation
.end field

.field public sortOrder:Ljava/lang/String;
    .annotation runtime Lme/everything/providers/core/FieldMapping;
        columnName = "calendar_displayName"
        physicalType = .enum Lme/everything/providers/core/FieldMapping$PhysicalType;->String:Lme/everything/providers/core/FieldMapping$PhysicalType;
    .end annotation

    .annotation runtime Lme/everything/providers/core/IgnoreMapping;
    .end annotation
.end field

.field public syncEvents:I
    .annotation runtime Lme/everything/providers/core/FieldMapping;
        columnName = "sync_events"
        physicalType = .enum Lme/everything/providers/core/FieldMapping$PhysicalType;->Int:Lme/everything/providers/core/FieldMapping$PhysicalType;
    .end annotation
.end field

.field public syncId:Ljava/lang/String;
    .annotation runtime Lme/everything/providers/core/FieldMapping;
        columnName = "_sync_id"
        physicalType = .enum Lme/everything/providers/core/FieldMapping$PhysicalType;->String:Lme/everything/providers/core/FieldMapping$PhysicalType;
    .end annotation
.end field

.field public visible:Z
    .annotation runtime Lme/everything/providers/core/FieldMapping;
        columnName = "visible"
        logicalType = .enum Lme/everything/providers/core/FieldMapping$LogicalType;->Boolean:Lme/everything/providers/core/FieldMapping$LogicalType;
        physicalType = .enum Lme/everything/providers/core/FieldMapping$PhysicalType;->Int:Lme/everything/providers/core/FieldMapping$PhysicalType;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 23
    sget-object v0, Landroid/provider/CalendarContract$Calendars;->CONTENT_URI:Landroid/net/Uri;

    sput-object v0, Lme/everything/providers/android/calendar/Calendar;->uri:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Lme/everything/providers/core/Entity;-><init>()V

    return-void
.end method
