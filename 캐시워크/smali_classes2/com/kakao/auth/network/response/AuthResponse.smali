.class public Lcom/kakao/auth/network/response/AuthResponse;
.super Ljava/lang/Object;
.source "AuthResponse.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kakao/auth/network/response/AuthResponse$AuthResponseStatusError;
    }
.end annotation


# direct methods
.method protected constructor <init>()V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    return-void
.end method

.method public constructor <init>(Lcom/kakao/network/response/ResponseBody;)V
    .locals 4
    .param p1, "body"    # Lcom/kakao/network/response/ResponseBody;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/kakao/auth/network/response/AuthResponse$AuthResponseStatusError;,
            Lcom/kakao/network/response/ResponseBody$ResponseBodyException;
        }
    .end annotation

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    invoke-virtual {p1}, Lcom/kakao/network/response/ResponseBody;->getStatusCode()I

    move-result v0

    .line 37
    .local v0, "statusCode":I
    const/16 v1, 0xc8

    if-eq v0, v1, :cond_0

    .line 38
    new-instance v1, Lcom/kakao/auth/network/response/AuthResponse$AuthResponseStatusError;

    const-string v2, "error"

    invoke-virtual {p1, v2}, Lcom/kakao/network/response/ResponseBody;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "error_description"

    invoke-virtual {p1, v3}, Lcom/kakao/network/response/ResponseBody;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3, p1}, Lcom/kakao/auth/network/response/AuthResponse$AuthResponseStatusError;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/kakao/network/response/ResponseBody;)V

    throw v1

    .line 40
    :cond_0
    return-void
.end method
