.class final Lcom/kakao/friends/response/model/FriendInfo$FriendRelation$1;
.super Lcom/kakao/network/response/ResponseBody$BodyConverter;
.source "FriendInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kakao/friends/response/model/FriendInfo$FriendRelation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/kakao/network/response/ResponseBody$BodyConverter",
        "<",
        "Lcom/kakao/friends/response/model/FriendInfo$FriendRelation;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 90
    invoke-direct {p0}, Lcom/kakao/network/response/ResponseBody$BodyConverter;-><init>()V

    return-void
.end method


# virtual methods
.method public convert(Lcom/kakao/network/response/ResponseBody;)Lcom/kakao/friends/response/model/FriendInfo$FriendRelation;
    .locals 1
    .param p1, "body"    # Lcom/kakao/network/response/ResponseBody;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/kakao/network/response/ResponseBody$ResponseBodyException;
        }
    .end annotation

    .prologue
    .line 93
    new-instance v0, Lcom/kakao/friends/response/model/FriendInfo$FriendRelation;

    invoke-direct {v0, p1}, Lcom/kakao/friends/response/model/FriendInfo$FriendRelation;-><init>(Lcom/kakao/network/response/ResponseBody;)V

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
    .line 90
    invoke-virtual {p0, p1}, Lcom/kakao/friends/response/model/FriendInfo$FriendRelation$1;->convert(Lcom/kakao/network/response/ResponseBody;)Lcom/kakao/friends/response/model/FriendInfo$FriendRelation;

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
    .line 90
    check-cast p1, Lcom/kakao/network/response/ResponseBody;

    invoke-virtual {p0, p1}, Lcom/kakao/friends/response/model/FriendInfo$FriendRelation$1;->convert(Lcom/kakao/network/response/ResponseBody;)Lcom/kakao/friends/response/model/FriendInfo$FriendRelation;

    move-result-object v0

    return-object v0
.end method
