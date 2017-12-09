.class public final enum Lme/everything/providers/android/telephony/Sms$MessageStatus;
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
    name = "MessageStatus"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lme/everything/providers/android/telephony/Sms$MessageStatus;",
        ">;",
        "Lme/everything/providers/core/EnumInt;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lme/everything/providers/android/telephony/Sms$MessageStatus;

.field public static final enum COMPLETE:Lme/everything/providers/android/telephony/Sms$MessageStatus;

.field public static final enum FAILED:Lme/everything/providers/android/telephony/Sms$MessageStatus;

.field public static final enum NONE:Lme/everything/providers/android/telephony/Sms$MessageStatus;

.field public static final enum PENDING:Lme/everything/providers/android/telephony/Sms$MessageStatus;


# instance fields
.field val:I


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 106
    new-instance v0, Lme/everything/providers/android/telephony/Sms$MessageStatus;

    const-string v1, "NONE"

    const/4 v2, -0x1

    invoke-direct {v0, v1, v3, v2}, Lme/everything/providers/android/telephony/Sms$MessageStatus;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lme/everything/providers/android/telephony/Sms$MessageStatus;->NONE:Lme/everything/providers/android/telephony/Sms$MessageStatus;

    .line 107
    new-instance v0, Lme/everything/providers/android/telephony/Sms$MessageStatus;

    const-string v1, "COMPLETE"

    invoke-direct {v0, v1, v4, v3}, Lme/everything/providers/android/telephony/Sms$MessageStatus;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lme/everything/providers/android/telephony/Sms$MessageStatus;->COMPLETE:Lme/everything/providers/android/telephony/Sms$MessageStatus;

    .line 108
    new-instance v0, Lme/everything/providers/android/telephony/Sms$MessageStatus;

    const-string v1, "PENDING"

    const/16 v2, 0x20

    invoke-direct {v0, v1, v5, v2}, Lme/everything/providers/android/telephony/Sms$MessageStatus;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lme/everything/providers/android/telephony/Sms$MessageStatus;->PENDING:Lme/everything/providers/android/telephony/Sms$MessageStatus;

    .line 109
    new-instance v0, Lme/everything/providers/android/telephony/Sms$MessageStatus;

    const-string v1, "FAILED"

    const/16 v2, 0x40

    invoke-direct {v0, v1, v6, v2}, Lme/everything/providers/android/telephony/Sms$MessageStatus;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lme/everything/providers/android/telephony/Sms$MessageStatus;->FAILED:Lme/everything/providers/android/telephony/Sms$MessageStatus;

    .line 105
    const/4 v0, 0x4

    new-array v0, v0, [Lme/everything/providers/android/telephony/Sms$MessageStatus;

    sget-object v1, Lme/everything/providers/android/telephony/Sms$MessageStatus;->NONE:Lme/everything/providers/android/telephony/Sms$MessageStatus;

    aput-object v1, v0, v3

    sget-object v1, Lme/everything/providers/android/telephony/Sms$MessageStatus;->COMPLETE:Lme/everything/providers/android/telephony/Sms$MessageStatus;

    aput-object v1, v0, v4

    sget-object v1, Lme/everything/providers/android/telephony/Sms$MessageStatus;->PENDING:Lme/everything/providers/android/telephony/Sms$MessageStatus;

    aput-object v1, v0, v5

    sget-object v1, Lme/everything/providers/android/telephony/Sms$MessageStatus;->FAILED:Lme/everything/providers/android/telephony/Sms$MessageStatus;

    aput-object v1, v0, v6

    sput-object v0, Lme/everything/providers/android/telephony/Sms$MessageStatus;->$VALUES:[Lme/everything/providers/android/telephony/Sms$MessageStatus;

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
    .line 113
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 114
    iput p3, p0, Lme/everything/providers/android/telephony/Sms$MessageStatus;->val:I

    .line 115
    return-void
.end method

.method public static fromVal(I)Lme/everything/providers/android/telephony/Sms$MessageStatus;
    .locals 5
    .param p0, "val"    # I

    .prologue
    .line 118
    invoke-static {}, Lme/everything/providers/android/telephony/Sms$MessageStatus;->values()[Lme/everything/providers/android/telephony/Sms$MessageStatus;

    move-result-object v0

    .local v0, "arr$":[Lme/everything/providers/android/telephony/Sms$MessageStatus;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v2, :cond_1

    aget-object v3, v0, v1

    .line 119
    .local v3, "messageStatus":Lme/everything/providers/android/telephony/Sms$MessageStatus;
    iget v4, v3, Lme/everything/providers/android/telephony/Sms$MessageStatus;->val:I

    if-ne v4, p0, :cond_0

    .line 123
    .end local v3    # "messageStatus":Lme/everything/providers/android/telephony/Sms$MessageStatus;
    :goto_1
    return-object v3

    .line 118
    .restart local v3    # "messageStatus":Lme/everything/providers/android/telephony/Sms$MessageStatus;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 123
    .end local v3    # "messageStatus":Lme/everything/providers/android/telephony/Sms$MessageStatus;
    :cond_1
    const/4 v3, 0x0

    goto :goto_1
.end method

.method public static valueOf(Ljava/lang/String;)Lme/everything/providers/android/telephony/Sms$MessageStatus;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 105
    const-class v0, Lme/everything/providers/android/telephony/Sms$MessageStatus;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lme/everything/providers/android/telephony/Sms$MessageStatus;

    return-object v0
.end method

.method public static values()[Lme/everything/providers/android/telephony/Sms$MessageStatus;
    .locals 1

    .prologue
    .line 105
    sget-object v0, Lme/everything/providers/android/telephony/Sms$MessageStatus;->$VALUES:[Lme/everything/providers/android/telephony/Sms$MessageStatus;

    invoke-virtual {v0}, [Lme/everything/providers/android/telephony/Sms$MessageStatus;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lme/everything/providers/android/telephony/Sms$MessageStatus;

    return-object v0
.end method
