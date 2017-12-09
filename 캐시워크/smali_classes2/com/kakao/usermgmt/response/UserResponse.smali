.class public Lcom/kakao/usermgmt/response/UserResponse;
.super Lcom/kakao/auth/network/response/JSONObjectResponse;
.source "UserResponse.java"


# instance fields
.field private final userId:J


# direct methods
.method public constructor <init>(Lcom/kakao/network/response/ResponseData;)V
    .locals 4
    .param p1, "responseData"    # Lcom/kakao/network/response/ResponseData;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/kakao/network/response/ResponseBody$ResponseBodyException;,
            Lcom/kakao/auth/network/response/ApiResponse$ApiResponseStatusError;
        }
    .end annotation

    .prologue
    .line 29
    invoke-direct {p0, p1}, Lcom/kakao/auth/network/response/JSONObjectResponse;-><init>(Lcom/kakao/network/response/ResponseData;)V

    .line 30
    iget-object v0, p0, Lcom/kakao/usermgmt/response/UserResponse;->body:Lcom/kakao/network/response/ResponseBody;

    const-string v1, "id"

    invoke-virtual {v0, v1}, Lcom/kakao/network/response/ResponseBody;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/kakao/usermgmt/response/UserResponse;->userId:J

    .line 31
    iget-wide v0, p0, Lcom/kakao/usermgmt/response/UserResponse;->userId:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gtz v0, :cond_0

    .line 32
    new-instance v0, Lcom/kakao/network/response/ResponseBody$ResponseBodyException;

    const-string v1, "User is called but the result user is null."

    invoke-direct {v0, v1}, Lcom/kakao/network/response/ResponseBody$ResponseBodyException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 34
    :cond_0
    return-void
.end method


# virtual methods
.method public getUserId()J
    .locals 2

    .prologue
    .line 37
    iget-wide v0, p0, Lcom/kakao/usermgmt/response/UserResponse;->userId:J

    return-wide v0
.end method
