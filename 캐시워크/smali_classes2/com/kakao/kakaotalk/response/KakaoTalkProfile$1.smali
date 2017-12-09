.class final Lcom/kakao/kakaotalk/response/KakaoTalkProfile$1;
.super Lcom/kakao/network/response/ResponseBody$BodyConverter;
.source "KakaoTalkProfile.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kakao/kakaotalk/response/KakaoTalkProfile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/kakao/network/response/ResponseBody$BodyConverter",
        "<",
        "Lcom/kakao/kakaotalk/response/KakaoTalkProfile;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 88
    invoke-direct {p0}, Lcom/kakao/network/response/ResponseBody$BodyConverter;-><init>()V

    return-void
.end method


# virtual methods
.method public convert(Lcom/kakao/network/response/ResponseBody;)Lcom/kakao/kakaotalk/response/KakaoTalkProfile;
    .locals 1
    .param p1, "body"    # Lcom/kakao/network/response/ResponseBody;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/kakao/network/response/ResponseBody$ResponseBodyException;
        }
    .end annotation

    .prologue
    .line 91
    new-instance v0, Lcom/kakao/kakaotalk/response/KakaoTalkProfile;

    invoke-direct {v0, p1}, Lcom/kakao/kakaotalk/response/KakaoTalkProfile;-><init>(Lcom/kakao/network/response/ResponseBody;)V

    return-object v0
.end method

.method public bridge synthetic convert(Lcom/kakao/network/response/ResponseBody;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/kakao/network/response/ResponseBody$ResponseBodyException;
        }
    .end annotation

    .prologue
    .line 88
    invoke-virtual {p0, p1}, Lcom/kakao/kakaotalk/response/KakaoTalkProfile$1;->convert(Lcom/kakao/network/response/ResponseBody;)Lcom/kakao/kakaotalk/response/KakaoTalkProfile;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic convert(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/kakao/network/response/ResponseBody$ResponseBodyException;
        }
    .end annotation

    .prologue
    .line 88
    check-cast p1, Lcom/kakao/network/response/ResponseBody;

    invoke-virtual {p0, p1}, Lcom/kakao/kakaotalk/response/KakaoTalkProfile$1;->convert(Lcom/kakao/network/response/ResponseBody;)Lcom/kakao/kakaotalk/response/KakaoTalkProfile;

    move-result-object v0

    return-object v0
.end method
