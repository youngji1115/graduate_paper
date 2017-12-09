.class public Lcom/kakao/kakaotalk/response/TalkProfileResponse;
.super Lcom/kakao/auth/network/response/JSONObjectResponse;
.source "TalkProfileResponse.java"


# instance fields
.field private final profile:Lcom/kakao/kakaotalk/response/KakaoTalkProfile;


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
    .line 28
    invoke-direct {p0, p1}, Lcom/kakao/auth/network/response/JSONObjectResponse;-><init>(Lcom/kakao/network/response/ResponseData;)V

    .line 30
    new-instance v0, Lcom/kakao/kakaotalk/response/KakaoTalkProfile;

    iget-object v1, p0, Lcom/kakao/kakaotalk/response/TalkProfileResponse;->body:Lcom/kakao/network/response/ResponseBody;

    invoke-direct {v0, v1}, Lcom/kakao/kakaotalk/response/KakaoTalkProfile;-><init>(Lcom/kakao/network/response/ResponseBody;)V

    iput-object v0, p0, Lcom/kakao/kakaotalk/response/TalkProfileResponse;->profile:Lcom/kakao/kakaotalk/response/KakaoTalkProfile;

    .line 31
    return-void
.end method


# virtual methods
.method public getProfile()Lcom/kakao/kakaotalk/response/KakaoTalkProfile;
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lcom/kakao/kakaotalk/response/TalkProfileResponse;->profile:Lcom/kakao/kakaotalk/response/KakaoTalkProfile;

    return-object v0
.end method
