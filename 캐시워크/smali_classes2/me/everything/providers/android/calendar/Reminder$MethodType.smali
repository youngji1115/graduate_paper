.class public final enum Lme/everything/providers/android/calendar/Reminder$MethodType;
.super Ljava/lang/Enum;
.source "Reminder.java"

# interfaces
.implements Lme/everything/providers/core/EnumInt;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lme/everything/providers/android/calendar/Reminder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "MethodType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lme/everything/providers/android/calendar/Reminder$MethodType;",
        ">;",
        "Lme/everything/providers/core/EnumInt;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lme/everything/providers/android/calendar/Reminder$MethodType;

.field public static final enum ALARM:Lme/everything/providers/android/calendar/Reminder$MethodType;

.field public static final enum ALERT:Lme/everything/providers/android/calendar/Reminder$MethodType;

.field public static final enum DEFAULT:Lme/everything/providers/android/calendar/Reminder$MethodType;

.field public static final enum EMAIL:Lme/everything/providers/android/calendar/Reminder$MethodType;

.field public static final enum SMS:Lme/everything/providers/android/calendar/Reminder$MethodType;


# instance fields
.field val:I


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 41
    new-instance v0, Lme/everything/providers/android/calendar/Reminder$MethodType;

    const-string v1, "DEFAULT"

    invoke-direct {v0, v1, v2, v2}, Lme/everything/providers/android/calendar/Reminder$MethodType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lme/everything/providers/android/calendar/Reminder$MethodType;->DEFAULT:Lme/everything/providers/android/calendar/Reminder$MethodType;

    .line 42
    new-instance v0, Lme/everything/providers/android/calendar/Reminder$MethodType;

    const-string v1, "ALERT"

    invoke-direct {v0, v1, v3, v3}, Lme/everything/providers/android/calendar/Reminder$MethodType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lme/everything/providers/android/calendar/Reminder$MethodType;->ALERT:Lme/everything/providers/android/calendar/Reminder$MethodType;

    .line 43
    new-instance v0, Lme/everything/providers/android/calendar/Reminder$MethodType;

    const-string v1, "EMAIL"

    invoke-direct {v0, v1, v4, v4}, Lme/everything/providers/android/calendar/Reminder$MethodType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lme/everything/providers/android/calendar/Reminder$MethodType;->EMAIL:Lme/everything/providers/android/calendar/Reminder$MethodType;

    .line 44
    new-instance v0, Lme/everything/providers/android/calendar/Reminder$MethodType;

    const-string v1, "SMS"

    invoke-direct {v0, v1, v5, v5}, Lme/everything/providers/android/calendar/Reminder$MethodType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lme/everything/providers/android/calendar/Reminder$MethodType;->SMS:Lme/everything/providers/android/calendar/Reminder$MethodType;

    .line 45
    new-instance v0, Lme/everything/providers/android/calendar/Reminder$MethodType;

    const-string v1, "ALARM"

    invoke-direct {v0, v1, v6, v6}, Lme/everything/providers/android/calendar/Reminder$MethodType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lme/everything/providers/android/calendar/Reminder$MethodType;->ALARM:Lme/everything/providers/android/calendar/Reminder$MethodType;

    .line 40
    const/4 v0, 0x5

    new-array v0, v0, [Lme/everything/providers/android/calendar/Reminder$MethodType;

    sget-object v1, Lme/everything/providers/android/calendar/Reminder$MethodType;->DEFAULT:Lme/everything/providers/android/calendar/Reminder$MethodType;

    aput-object v1, v0, v2

    sget-object v1, Lme/everything/providers/android/calendar/Reminder$MethodType;->ALERT:Lme/everything/providers/android/calendar/Reminder$MethodType;

    aput-object v1, v0, v3

    sget-object v1, Lme/everything/providers/android/calendar/Reminder$MethodType;->EMAIL:Lme/everything/providers/android/calendar/Reminder$MethodType;

    aput-object v1, v0, v4

    sget-object v1, Lme/everything/providers/android/calendar/Reminder$MethodType;->SMS:Lme/everything/providers/android/calendar/Reminder$MethodType;

    aput-object v1, v0, v5

    sget-object v1, Lme/everything/providers/android/calendar/Reminder$MethodType;->ALARM:Lme/everything/providers/android/calendar/Reminder$MethodType;

    aput-object v1, v0, v6

    sput-object v0, Lme/everything/providers/android/calendar/Reminder$MethodType;->$VALUES:[Lme/everything/providers/android/calendar/Reminder$MethodType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .param p3, "val"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .prologue
    .line 49
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 50
    iput p3, p0, Lme/everything/providers/android/calendar/Reminder$MethodType;->val:I

    .line 51
    return-void
.end method

.method public static fromVal(I)Lme/everything/providers/android/calendar/Reminder$MethodType;
    .locals 5
    .param p0, "val"    # I

    .prologue
    .line 54
    invoke-static {}, Lme/everything/providers/android/calendar/Reminder$MethodType;->values()[Lme/everything/providers/android/calendar/Reminder$MethodType;

    move-result-object v0

    .local v0, "arr$":[Lme/everything/providers/android/calendar/Reminder$MethodType;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v2, :cond_1

    aget-object v3, v0, v1

    .line 55
    .local v3, "methodType":Lme/everything/providers/android/calendar/Reminder$MethodType;
    iget v4, v3, Lme/everything/providers/android/calendar/Reminder$MethodType;->val:I

    if-ne v4, p0, :cond_0

    .line 59
    .end local v3    # "methodType":Lme/everything/providers/android/calendar/Reminder$MethodType;
    :goto_1
    return-object v3

    .line 54
    .restart local v3    # "methodType":Lme/everything/providers/android/calendar/Reminder$MethodType;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 59
    .end local v3    # "methodType":Lme/everything/providers/android/calendar/Reminder$MethodType;
    :cond_1
    sget-object v3, Lme/everything/providers/android/calendar/Reminder$MethodType;->DEFAULT:Lme/everything/providers/android/calendar/Reminder$MethodType;

    goto :goto_1
.end method

.method public static valueOf(Ljava/lang/String;)Lme/everything/providers/android/calendar/Reminder$MethodType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 40
    const-class v0, Lme/everything/providers/android/calendar/Reminder$MethodType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lme/everything/providers/android/calendar/Reminder$MethodType;

    return-object v0
.end method

.method public static values()[Lme/everything/providers/android/calendar/Reminder$MethodType;
    .locals 1

    .prologue
    .line 40
    sget-object v0, Lme/everything/providers/android/calendar/Reminder$MethodType;->$VALUES:[Lme/everything/providers/android/calendar/Reminder$MethodType;

    invoke-virtual {v0}, [Lme/everything/providers/android/calendar/Reminder$MethodType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lme/everything/providers/android/calendar/Reminder$MethodType;

    return-object v0
.end method
