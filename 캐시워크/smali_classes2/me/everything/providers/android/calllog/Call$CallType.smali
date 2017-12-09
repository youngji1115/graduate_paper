.class public final enum Lme/everything/providers/android/calllog/Call$CallType;
.super Ljava/lang/Enum;
.source "Call.java"

# interfaces
.implements Lme/everything/providers/core/EnumInt;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lme/everything/providers/android/calllog/Call;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "CallType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lme/everything/providers/android/calllog/Call$CallType;",
        ">;",
        "Lme/everything/providers/core/EnumInt;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lme/everything/providers/android/calllog/Call$CallType;

.field public static final enum INCOMING:Lme/everything/providers/android/calllog/Call$CallType;

.field public static final enum MISSED:Lme/everything/providers/android/calllog/Call$CallType;

.field public static final enum OUTGOING:Lme/everything/providers/android/calllog/Call$CallType;


# instance fields
.field val:I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x0

    const/4 v3, 0x2

    const/4 v2, 0x1

    .line 42
    new-instance v0, Lme/everything/providers/android/calllog/Call$CallType;

    const-string v1, "INCOMING"

    invoke-direct {v0, v1, v4, v2}, Lme/everything/providers/android/calllog/Call$CallType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lme/everything/providers/android/calllog/Call$CallType;->INCOMING:Lme/everything/providers/android/calllog/Call$CallType;

    .line 43
    new-instance v0, Lme/everything/providers/android/calllog/Call$CallType;

    const-string v1, "OUTGOING"

    invoke-direct {v0, v1, v2, v3}, Lme/everything/providers/android/calllog/Call$CallType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lme/everything/providers/android/calllog/Call$CallType;->OUTGOING:Lme/everything/providers/android/calllog/Call$CallType;

    .line 44
    new-instance v0, Lme/everything/providers/android/calllog/Call$CallType;

    const-string v1, "MISSED"

    invoke-direct {v0, v1, v3, v5}, Lme/everything/providers/android/calllog/Call$CallType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lme/everything/providers/android/calllog/Call$CallType;->MISSED:Lme/everything/providers/android/calllog/Call$CallType;

    .line 41
    new-array v0, v5, [Lme/everything/providers/android/calllog/Call$CallType;

    sget-object v1, Lme/everything/providers/android/calllog/Call$CallType;->INCOMING:Lme/everything/providers/android/calllog/Call$CallType;

    aput-object v1, v0, v4

    sget-object v1, Lme/everything/providers/android/calllog/Call$CallType;->OUTGOING:Lme/everything/providers/android/calllog/Call$CallType;

    aput-object v1, v0, v2

    sget-object v1, Lme/everything/providers/android/calllog/Call$CallType;->MISSED:Lme/everything/providers/android/calllog/Call$CallType;

    aput-object v1, v0, v3

    sput-object v0, Lme/everything/providers/android/calllog/Call$CallType;->$VALUES:[Lme/everything/providers/android/calllog/Call$CallType;

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
    .line 48
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 49
    iput p3, p0, Lme/everything/providers/android/calllog/Call$CallType;->val:I

    .line 50
    return-void
.end method

.method public static fromVal(I)Lme/everything/providers/android/calllog/Call$CallType;
    .locals 5
    .param p0, "val"    # I

    .prologue
    .line 53
    invoke-static {}, Lme/everything/providers/android/calllog/Call$CallType;->values()[Lme/everything/providers/android/calllog/Call$CallType;

    move-result-object v0

    .local v0, "arr$":[Lme/everything/providers/android/calllog/Call$CallType;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v2, :cond_1

    aget-object v3, v0, v1

    .line 54
    .local v3, "messageStatus":Lme/everything/providers/android/calllog/Call$CallType;
    iget v4, v3, Lme/everything/providers/android/calllog/Call$CallType;->val:I

    if-ne v4, p0, :cond_0

    .line 58
    .end local v3    # "messageStatus":Lme/everything/providers/android/calllog/Call$CallType;
    :goto_1
    return-object v3

    .line 53
    .restart local v3    # "messageStatus":Lme/everything/providers/android/calllog/Call$CallType;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 58
    .end local v3    # "messageStatus":Lme/everything/providers/android/calllog/Call$CallType;
    :cond_1
    const/4 v3, 0x0

    goto :goto_1
.end method

.method public static valueOf(Ljava/lang/String;)Lme/everything/providers/android/calllog/Call$CallType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 41
    const-class v0, Lme/everything/providers/android/calllog/Call$CallType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lme/everything/providers/android/calllog/Call$CallType;

    return-object v0
.end method

.method public static values()[Lme/everything/providers/android/calllog/Call$CallType;
    .locals 1

    .prologue
    .line 41
    sget-object v0, Lme/everything/providers/android/calllog/Call$CallType;->$VALUES:[Lme/everything/providers/android/calllog/Call$CallType;

    invoke-virtual {v0}, [Lme/everything/providers/android/calllog/Call$CallType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lme/everything/providers/android/calllog/Call$CallType;

    return-object v0
.end method
