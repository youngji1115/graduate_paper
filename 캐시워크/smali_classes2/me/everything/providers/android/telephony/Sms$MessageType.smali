.class public final enum Lme/everything/providers/android/telephony/Sms$MessageType;
.super Ljava/lang/Enum;
.source "Sms.java"

# interfaces
.implements Lme/everything/providers/core/EnumInt;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lme/everything/providers/android/telephony/Sms;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "MessageType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lme/everything/providers/android/telephony/Sms$MessageType;",
        ">;",
        "Lme/everything/providers/core/EnumInt;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lme/everything/providers/android/telephony/Sms$MessageType;

.field public static final enum ALL:Lme/everything/providers/android/telephony/Sms$MessageType;

.field public static final enum DRAFT:Lme/everything/providers/android/telephony/Sms$MessageType;

.field public static final enum FAILED:Lme/everything/providers/android/telephony/Sms$MessageType;

.field public static final enum INBOX:Lme/everything/providers/android/telephony/Sms$MessageType;

.field public static final enum OUTBOX:Lme/everything/providers/android/telephony/Sms$MessageType;

.field public static final enum QUEUED:Lme/everything/providers/android/telephony/Sms$MessageType;

.field public static final enum SENT:Lme/everything/providers/android/telephony/Sms$MessageType;


# instance fields
.field val:I


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 81
    new-instance v0, Lme/everything/providers/android/telephony/Sms$MessageType;

    const-string v1, "ALL"

    invoke-direct {v0, v1, v4, v4}, Lme/everything/providers/android/telephony/Sms$MessageType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lme/everything/providers/android/telephony/Sms$MessageType;->ALL:Lme/everything/providers/android/telephony/Sms$MessageType;

    .line 82
    new-instance v0, Lme/everything/providers/android/telephony/Sms$MessageType;

    const-string v1, "INBOX"

    invoke-direct {v0, v1, v5, v5}, Lme/everything/providers/android/telephony/Sms$MessageType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lme/everything/providers/android/telephony/Sms$MessageType;->INBOX:Lme/everything/providers/android/telephony/Sms$MessageType;

    .line 83
    new-instance v0, Lme/everything/providers/android/telephony/Sms$MessageType;

    const-string v1, "SENT"

    invoke-direct {v0, v1, v6, v6}, Lme/everything/providers/android/telephony/Sms$MessageType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lme/everything/providers/android/telephony/Sms$MessageType;->SENT:Lme/everything/providers/android/telephony/Sms$MessageType;

    .line 84
    new-instance v0, Lme/everything/providers/android/telephony/Sms$MessageType;

    const-string v1, "DRAFT"

    invoke-direct {v0, v1, v7, v7}, Lme/everything/providers/android/telephony/Sms$MessageType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lme/everything/providers/android/telephony/Sms$MessageType;->DRAFT:Lme/everything/providers/android/telephony/Sms$MessageType;

    .line 85
    new-instance v0, Lme/everything/providers/android/telephony/Sms$MessageType;

    const-string v1, "OUTBOX"

    invoke-direct {v0, v1, v8, v8}, Lme/everything/providers/android/telephony/Sms$MessageType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lme/everything/providers/android/telephony/Sms$MessageType;->OUTBOX:Lme/everything/providers/android/telephony/Sms$MessageType;

    .line 86
    new-instance v0, Lme/everything/providers/android/telephony/Sms$MessageType;

    const-string v1, "FAILED"

    const/4 v2, 0x5

    const/4 v3, 0x5

    invoke-direct {v0, v1, v2, v3}, Lme/everything/providers/android/telephony/Sms$MessageType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lme/everything/providers/android/telephony/Sms$MessageType;->FAILED:Lme/everything/providers/android/telephony/Sms$MessageType;

    .line 87
    new-instance v0, Lme/everything/providers/android/telephony/Sms$MessageType;

    const-string v1, "QUEUED"

    const/4 v2, 0x6

    const/4 v3, 0x6

    invoke-direct {v0, v1, v2, v3}, Lme/everything/providers/android/telephony/Sms$MessageType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lme/everything/providers/android/telephony/Sms$MessageType;->QUEUED:Lme/everything/providers/android/telephony/Sms$MessageType;

    .line 80
    const/4 v0, 0x7

    new-array v0, v0, [Lme/everything/providers/android/telephony/Sms$MessageType;

    sget-object v1, Lme/everything/providers/android/telephony/Sms$MessageType;->ALL:Lme/everything/providers/android/telephony/Sms$MessageType;

    aput-object v1, v0, v4

    sget-object v1, Lme/everything/providers/android/telephony/Sms$MessageType;->INBOX:Lme/everything/providers/android/telephony/Sms$MessageType;

    aput-object v1, v0, v5

    sget-object v1, Lme/everything/providers/android/telephony/Sms$MessageType;->SENT:Lme/everything/providers/android/telephony/Sms$MessageType;

    aput-object v1, v0, v6

    sget-object v1, Lme/everything/providers/android/telephony/Sms$MessageType;->DRAFT:Lme/everything/providers/android/telephony/Sms$MessageType;

    aput-object v1, v0, v7

    sget-object v1, Lme/everything/providers/android/telephony/Sms$MessageType;->OUTBOX:Lme/everything/providers/android/telephony/Sms$MessageType;

    aput-object v1, v0, v8

    const/4 v1, 0x5

    sget-object v2, Lme/everything/providers/android/telephony/Sms$MessageType;->FAILED:Lme/everything/providers/android/telephony/Sms$MessageType;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lme/everything/providers/android/telephony/Sms$MessageType;->QUEUED:Lme/everything/providers/android/telephony/Sms$MessageType;

    aput-object v2, v0, v1

    sput-object v0, Lme/everything/providers/android/telephony/Sms$MessageType;->$VALUES:[Lme/everything/providers/android/telephony/Sms$MessageType;

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
    .line 91
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 92
    iput p3, p0, Lme/everything/providers/android/telephony/Sms$MessageType;->val:I

    .line 93
    return-void
.end method

.method public static fromVal(I)Lme/everything/providers/android/telephony/Sms$MessageType;
    .locals 5
    .param p0, "val"    # I

    .prologue
    .line 96
    invoke-static {}, Lme/everything/providers/android/telephony/Sms$MessageType;->values()[Lme/everything/providers/android/telephony/Sms$MessageType;

    move-result-object v0

    .local v0, "arr$":[Lme/everything/providers/android/telephony/Sms$MessageType;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v2, :cond_1

    aget-object v3, v0, v1

    .line 97
    .local v3, "messageType":Lme/everything/providers/android/telephony/Sms$MessageType;
    iget v4, v3, Lme/everything/providers/android/telephony/Sms$MessageType;->val:I

    if-ne v4, p0, :cond_0

    .line 101
    .end local v3    # "messageType":Lme/everything/providers/android/telephony/Sms$MessageType;
    :goto_1
    return-object v3

    .line 96
    .restart local v3    # "messageType":Lme/everything/providers/android/telephony/Sms$MessageType;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 101
    .end local v3    # "messageType":Lme/everything/providers/android/telephony/Sms$MessageType;
    :cond_1
    const/4 v3, 0x0

    goto :goto_1
.end method

.method public static valueOf(Ljava/lang/String;)Lme/everything/providers/android/telephony/Sms$MessageType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 80
    const-class v0, Lme/everything/providers/android/telephony/Sms$MessageType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lme/everything/providers/android/telephony/Sms$MessageType;

    return-object v0
.end method

.method public static values()[Lme/everything/providers/android/telephony/Sms$MessageType;
    .locals 1

    .prologue
    .line 80
    sget-object v0, Lme/everything/providers/android/telephony/Sms$MessageType;->$VALUES:[Lme/everything/providers/android/telephony/Sms$MessageType;

    invoke-virtual {v0}, [Lme/everything/providers/android/telephony/Sms$MessageType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lme/everything/providers/android/telephony/Sms$MessageType;

    return-object v0
.end method
