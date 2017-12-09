.class public final enum Lme/everything/providers/android/telephony/Thread$ThreadType;
.super Ljava/lang/Enum;
.source "Thread.java"

# interfaces
.implements Lme/everything/providers/core/EnumInt;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lme/everything/providers/android/telephony/Thread;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ThreadType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lme/everything/providers/android/telephony/Thread$ThreadType;",
        ">;",
        "Lme/everything/providers/core/EnumInt;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lme/everything/providers/android/telephony/Thread$ThreadType;

.field public static final enum BROADCAST:Lme/everything/providers/android/telephony/Thread$ThreadType;

.field public static final enum COMMON:Lme/everything/providers/android/telephony/Thread$ThreadType;


# instance fields
.field val:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 58
    new-instance v0, Lme/everything/providers/android/telephony/Thread$ThreadType;

    const-string v1, "COMMON"

    invoke-direct {v0, v1, v2, v2}, Lme/everything/providers/android/telephony/Thread$ThreadType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lme/everything/providers/android/telephony/Thread$ThreadType;->COMMON:Lme/everything/providers/android/telephony/Thread$ThreadType;

    .line 59
    new-instance v0, Lme/everything/providers/android/telephony/Thread$ThreadType;

    const-string v1, "BROADCAST"

    invoke-direct {v0, v1, v3, v3}, Lme/everything/providers/android/telephony/Thread$ThreadType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lme/everything/providers/android/telephony/Thread$ThreadType;->BROADCAST:Lme/everything/providers/android/telephony/Thread$ThreadType;

    .line 57
    const/4 v0, 0x2

    new-array v0, v0, [Lme/everything/providers/android/telephony/Thread$ThreadType;

    sget-object v1, Lme/everything/providers/android/telephony/Thread$ThreadType;->COMMON:Lme/everything/providers/android/telephony/Thread$ThreadType;

    aput-object v1, v0, v2

    sget-object v1, Lme/everything/providers/android/telephony/Thread$ThreadType;->BROADCAST:Lme/everything/providers/android/telephony/Thread$ThreadType;

    aput-object v1, v0, v3

    sput-object v0, Lme/everything/providers/android/telephony/Thread$ThreadType;->$VALUES:[Lme/everything/providers/android/telephony/Thread$ThreadType;

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
    .line 63
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 64
    iput p3, p0, Lme/everything/providers/android/telephony/Thread$ThreadType;->val:I

    .line 65
    return-void
.end method

.method public static fromVal(I)Lme/everything/providers/android/telephony/Thread$ThreadType;
    .locals 5
    .param p0, "val"    # I

    .prologue
    .line 68
    invoke-static {}, Lme/everything/providers/android/telephony/Thread$ThreadType;->values()[Lme/everything/providers/android/telephony/Thread$ThreadType;

    move-result-object v0

    .local v0, "arr$":[Lme/everything/providers/android/telephony/Thread$ThreadType;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v2, :cond_1

    aget-object v3, v0, v1

    .line 69
    .local v3, "threadType":Lme/everything/providers/android/telephony/Thread$ThreadType;
    iget v4, v3, Lme/everything/providers/android/telephony/Thread$ThreadType;->val:I

    if-ne v4, p0, :cond_0

    .line 73
    .end local v3    # "threadType":Lme/everything/providers/android/telephony/Thread$ThreadType;
    :goto_1
    return-object v3

    .line 68
    .restart local v3    # "threadType":Lme/everything/providers/android/telephony/Thread$ThreadType;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 73
    .end local v3    # "threadType":Lme/everything/providers/android/telephony/Thread$ThreadType;
    :cond_1
    const/4 v3, 0x0

    goto :goto_1
.end method

.method public static valueOf(Ljava/lang/String;)Lme/everything/providers/android/telephony/Thread$ThreadType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 57
    const-class v0, Lme/everything/providers/android/telephony/Thread$ThreadType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lme/everything/providers/android/telephony/Thread$ThreadType;

    return-object v0
.end method

.method public static values()[Lme/everything/providers/android/telephony/Thread$ThreadType;
    .locals 1

    .prologue
    .line 57
    sget-object v0, Lme/everything/providers/android/telephony/Thread$ThreadType;->$VALUES:[Lme/everything/providers/android/telephony/Thread$ThreadType;

    invoke-virtual {v0}, [Lme/everything/providers/android/telephony/Thread$ThreadType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lme/everything/providers/android/telephony/Thread$ThreadType;

    return-object v0
.end method
