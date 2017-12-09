.class public Lcom/kakao/network/response/ResponseData;
.super Ljava/lang/Object;
.source "ResponseData.java"


# instance fields
.field private final data:[B

.field private final httpStatusCode:I


# direct methods
.method public constructor <init>(I[B)V
    .locals 0
    .param p1, "httpStatusCode"    # I
    .param p2, "data"    # [B

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput p1, p0, Lcom/kakao/network/response/ResponseData;->httpStatusCode:I

    .line 27
    iput-object p2, p0, Lcom/kakao/network/response/ResponseData;->data:[B

    .line 28
    return-void
.end method


# virtual methods
.method public getData()[B
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lcom/kakao/network/response/ResponseData;->data:[B

    return-object v0
.end method

.method public getHttpStatusCode()I
    .locals 1

    .prologue
    .line 31
    iget v0, p0, Lcom/kakao/network/response/ResponseData;->httpStatusCode:I

    return v0
.end method

.method public getStringData()Ljava/lang/String;
    .locals 2

    .prologue
    .line 39
    iget-object v0, p0, Lcom/kakao/network/response/ResponseData;->data:[B

    if-nez v0, :cond_0

    .line 40
    const/4 v0, 0x0

    .line 42
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/kakao/network/response/ResponseData;->data:[B

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    goto :goto_0
.end method
