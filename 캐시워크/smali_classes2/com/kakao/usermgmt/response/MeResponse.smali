.class public Lcom/kakao/usermgmt/response/MeResponse;
.super Lcom/kakao/auth/network/response/JSONObjectResponse;
.source "MeResponse.java"


# instance fields
.field private final userProfile:Lcom/kakao/usermgmt/response/model/UserProfile;


# direct methods
.method public constructor <init>(Lcom/kakao/network/response/ResponseData;)V
    .locals 2
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
    new-instance v0, Lcom/kakao/usermgmt/response/model/UserProfile;

    iget-object v1, p0, Lcom/kakao/usermgmt/response/MeResponse;->body:Lcom/kakao/network/response/ResponseBody;

    invoke-direct {v0, v1}, Lcom/kakao/usermgmt/response/model/UserProfile;-><init>(Lcom/kakao/network/response/ResponseBody;)V

    iput-object v0, p0, Lcom/kakao/usermgmt/response/MeResponse;->userProfile:Lcom/kakao/usermgmt/response/model/UserProfile;

    .line 31
    return-void
.end method


# virtual methods
.method public getUserProfile()Lcom/kakao/usermgmt/response/model/UserProfile;
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lcom/kakao/usermgmt/response/MeResponse;->userProfile:Lcom/kakao/usermgmt/response/model/UserProfile;

    return-object v0
.end method
