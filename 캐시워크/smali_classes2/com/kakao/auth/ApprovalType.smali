.class public final enum Lcom/kakao/auth/ApprovalType;
.super Ljava/lang/Enum;
.source "ApprovalType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/kakao/auth/ApprovalType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/kakao/auth/ApprovalType;

.field public static final enum INDIVIDUAL:Lcom/kakao/auth/ApprovalType;

.field public static final enum PROJECT:Lcom/kakao/auth/ApprovalType;

.field private static final REVERSE_MAP:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/kakao/auth/ApprovalType;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v4, 0x1

    const/4 v1, 0x0

    .line 27
    new-instance v2, Lcom/kakao/auth/ApprovalType;

    const-string v3, "INDIVIDUAL"

    invoke-direct {v2, v3, v1}, Lcom/kakao/auth/ApprovalType;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lcom/kakao/auth/ApprovalType;->INDIVIDUAL:Lcom/kakao/auth/ApprovalType;

    .line 28
    new-instance v2, Lcom/kakao/auth/ApprovalType;

    const-string v3, "PROJECT"

    invoke-direct {v2, v3, v4}, Lcom/kakao/auth/ApprovalType;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lcom/kakao/auth/ApprovalType;->PROJECT:Lcom/kakao/auth/ApprovalType;

    .line 26
    const/4 v2, 0x2

    new-array v2, v2, [Lcom/kakao/auth/ApprovalType;

    sget-object v3, Lcom/kakao/auth/ApprovalType;->INDIVIDUAL:Lcom/kakao/auth/ApprovalType;

    aput-object v3, v2, v1

    sget-object v3, Lcom/kakao/auth/ApprovalType;->PROJECT:Lcom/kakao/auth/ApprovalType;

    aput-object v3, v2, v4

    sput-object v2, Lcom/kakao/auth/ApprovalType;->$VALUES:[Lcom/kakao/auth/ApprovalType;

    .line 30
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    sput-object v2, Lcom/kakao/auth/ApprovalType;->REVERSE_MAP:Ljava/util/Map;

    .line 33
    invoke-static {}, Lcom/kakao/auth/ApprovalType;->values()[Lcom/kakao/auth/ApprovalType;

    move-result-object v2

    array-length v3, v2

    .local v0, "type":Lcom/kakao/auth/ApprovalType;
    :goto_0
    if-ge v1, v3, :cond_0

    aget-object v0, v2, v1

    .line 34
    sget-object v4, Lcom/kakao/auth/ApprovalType;->REVERSE_MAP:Ljava/util/Map;

    invoke-virtual {v0}, Lcom/kakao/auth/ApprovalType;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 33
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 36
    :cond_0
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 26
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static getApprovalTypeByString(Ljava/lang/String;)Lcom/kakao/auth/ApprovalType;
    .locals 4
    .param p0, "s"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidParameterException;
        }
    .end annotation

    .prologue
    .line 43
    if-nez p0, :cond_1

    .line 44
    const/4 v0, 0x0

    .line 47
    :cond_0
    return-object v0

    .line 45
    :cond_1
    sget-object v1, Lcom/kakao/auth/ApprovalType;->REVERSE_MAP:Ljava/util/Map;

    invoke-interface {v1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kakao/auth/ApprovalType;

    .line 46
    .local v0, "type":Lcom/kakao/auth/ApprovalType;
    if-nez v0, :cond_0

    .line 49
    new-instance v1, Ljava/security/InvalidParameterException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ApprovalType is one of "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Lcom/kakao/auth/ApprovalType;->values()[Lcom/kakao/auth/ApprovalType;

    move-result-object v3

    invoke-static {v3}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/security/InvalidParameterException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/kakao/auth/ApprovalType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 26
    const-class v0, Lcom/kakao/auth/ApprovalType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/kakao/auth/ApprovalType;

    return-object v0
.end method

.method public static values()[Lcom/kakao/auth/ApprovalType;
    .locals 1

    .prologue
    .line 26
    sget-object v0, Lcom/kakao/auth/ApprovalType;->$VALUES:[Lcom/kakao/auth/ApprovalType;

    invoke-virtual {v0}, [Lcom/kakao/auth/ApprovalType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/kakao/auth/ApprovalType;

    return-object v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 39
    invoke-super {p0}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
