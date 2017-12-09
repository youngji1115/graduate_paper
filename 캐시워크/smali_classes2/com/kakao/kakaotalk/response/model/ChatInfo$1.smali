.class final Lcom/kakao/kakaotalk/response/model/ChatInfo$1;
.super Lcom/kakao/network/response/ResponseBody$BodyConverter;
.source "ChatInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kakao/kakaotalk/response/model/ChatInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/kakao/network/response/ResponseBody$BodyConverter",
        "<",
        "Lcom/kakao/kakaotalk/response/model/ChatInfo;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 120
    invoke-direct {p0}, Lcom/kakao/network/response/ResponseBody$BodyConverter;-><init>()V

    return-void
.end method


# virtual methods
.method public convert(Lcom/kakao/network/response/ResponseBody;)Lcom/kakao/kakaotalk/response/model/ChatInfo;
    .locals 1
    .param p1, "body"    # Lcom/kakao/network/response/ResponseBody;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/kakao/network/response/ResponseBody$ResponseBodyException;
        }
    .end annotation

    .prologue
    .line 123
    new-instance v0, Lcom/kakao/kakaotalk/response/model/ChatInfo;

    invoke-direct {v0, p1}, Lcom/kakao/kakaotalk/response/model/ChatInfo;-><init>(Lcom/kakao/network/response/ResponseBody;)V

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
    .line 120
    invoke-virtual {p0, p1}, Lcom/kakao/kakaotalk/response/model/ChatInfo$1;->convert(Lcom/kakao/network/response/ResponseBody;)Lcom/kakao/kakaotalk/response/model/ChatInfo;

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
    .line 120
    check-cast p1, Lcom/kakao/network/response/ResponseBody;

    invoke-virtual {p0, p1}, Lcom/kakao/kakaotalk/response/model/ChatInfo$1;->convert(Lcom/kakao/network/response/ResponseBody;)Lcom/kakao/kakaotalk/response/model/ChatInfo;

    move-result-object v0

    return-object v0
.end method
