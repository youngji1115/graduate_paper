.class public final enum Lcom/amazonaws/HttpMethod;
.super Ljava/lang/Enum;
.source "HttpMethod.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/amazonaws/HttpMethod;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/amazonaws/HttpMethod;

.field public static final enum DELETE:Lcom/amazonaws/HttpMethod;

.field public static final enum GET:Lcom/amazonaws/HttpMethod;

.field public static final enum HEAD:Lcom/amazonaws/HttpMethod;

.field public static final enum PATCH:Lcom/amazonaws/HttpMethod;

.field public static final enum POST:Lcom/amazonaws/HttpMethod;

.field public static final enum PUT:Lcom/amazonaws/HttpMethod;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 23
    new-instance v0, Lcom/amazonaws/HttpMethod;

    const-string v1, "GET"

    invoke-direct {v0, v1, v3}, Lcom/amazonaws/HttpMethod;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazonaws/HttpMethod;->GET:Lcom/amazonaws/HttpMethod;

    new-instance v0, Lcom/amazonaws/HttpMethod;

    const-string v1, "POST"

    invoke-direct {v0, v1, v4}, Lcom/amazonaws/HttpMethod;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazonaws/HttpMethod;->POST:Lcom/amazonaws/HttpMethod;

    new-instance v0, Lcom/amazonaws/HttpMethod;

    const-string v1, "PUT"

    invoke-direct {v0, v1, v5}, Lcom/amazonaws/HttpMethod;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazonaws/HttpMethod;->PUT:Lcom/amazonaws/HttpMethod;

    new-instance v0, Lcom/amazonaws/HttpMethod;

    const-string v1, "DELETE"

    invoke-direct {v0, v1, v6}, Lcom/amazonaws/HttpMethod;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazonaws/HttpMethod;->DELETE:Lcom/amazonaws/HttpMethod;

    new-instance v0, Lcom/amazonaws/HttpMethod;

    const-string v1, "HEAD"

    invoke-direct {v0, v1, v7}, Lcom/amazonaws/HttpMethod;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazonaws/HttpMethod;->HEAD:Lcom/amazonaws/HttpMethod;

    new-instance v0, Lcom/amazonaws/HttpMethod;

    const-string v1, "PATCH"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/amazonaws/HttpMethod;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazonaws/HttpMethod;->PATCH:Lcom/amazonaws/HttpMethod;

    .line 21
    const/4 v0, 0x6

    new-array v0, v0, [Lcom/amazonaws/HttpMethod;

    sget-object v1, Lcom/amazonaws/HttpMethod;->GET:Lcom/amazonaws/HttpMethod;

    aput-object v1, v0, v3

    sget-object v1, Lcom/amazonaws/HttpMethod;->POST:Lcom/amazonaws/HttpMethod;

    aput-object v1, v0, v4

    sget-object v1, Lcom/amazonaws/HttpMethod;->PUT:Lcom/amazonaws/HttpMethod;

    aput-object v1, v0, v5

    sget-object v1, Lcom/amazonaws/HttpMethod;->DELETE:Lcom/amazonaws/HttpMethod;

    aput-object v1, v0, v6

    sget-object v1, Lcom/amazonaws/HttpMethod;->HEAD:Lcom/amazonaws/HttpMethod;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/amazonaws/HttpMethod;->PATCH:Lcom/amazonaws/HttpMethod;

    aput-object v2, v0, v1

    sput-object v0, Lcom/amazonaws/HttpMethod;->$VALUES:[Lcom/amazonaws/HttpMethod;

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
    .line 21
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/amazonaws/HttpMethod;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 21
    const-class v0, Lcom/amazonaws/HttpMethod;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/amazonaws/HttpMethod;

    return-object v0
.end method

.method public static values()[Lcom/amazonaws/HttpMethod;
    .locals 1

    .prologue
    .line 21
    sget-object v0, Lcom/amazonaws/HttpMethod;->$VALUES:[Lcom/amazonaws/HttpMethod;

    invoke-virtual {v0}, [Lcom/amazonaws/HttpMethod;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/amazonaws/HttpMethod;

    return-object v0
.end method
