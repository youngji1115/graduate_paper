.class final Lcom/kakao/kakaotalk/KakaoTalkService$3;
.super Lcom/kakao/network/tasks/KakaoResultTask;
.source "KakaoTalkService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kakao/kakaotalk/KakaoTalkService;->requestSendMessage(Lcom/kakao/kakaotalk/callback/TalkResponseCallback;Lcom/kakao/auth/common/MessageSendable;Ljava/lang/String;Ljava/util/Map;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/kakao/network/tasks/KakaoResultTask",
        "<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic val$args:Ljava/util/Map;

.field final synthetic val$receiverInfo:Lcom/kakao/auth/common/MessageSendable;

.field final synthetic val$templateId:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/kakao/network/callback/ResponseCallback;Lcom/kakao/auth/common/MessageSendable;Ljava/lang/String;Ljava/util/Map;)V
    .locals 0

    .prologue
    .line 119
    .local p1, "x0":Lcom/kakao/network/callback/ResponseCallback;, "Lcom/kakao/network/callback/ResponseCallback<Ljava/lang/Boolean;>;"
    iput-object p2, p0, Lcom/kakao/kakaotalk/KakaoTalkService$3;->val$receiverInfo:Lcom/kakao/auth/common/MessageSendable;

    iput-object p3, p0, Lcom/kakao/kakaotalk/KakaoTalkService$3;->val$templateId:Ljava/lang/String;

    iput-object p4, p0, Lcom/kakao/kakaotalk/KakaoTalkService$3;->val$args:Ljava/util/Map;

    invoke-direct {p0, p1}, Lcom/kakao/network/tasks/KakaoResultTask;-><init>(Lcom/kakao/network/callback/ResponseCallback;)V

    return-void
.end method


# virtual methods
.method public call()Ljava/lang/Boolean;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 122
    iget-object v0, p0, Lcom/kakao/kakaotalk/KakaoTalkService$3;->val$receiverInfo:Lcom/kakao/auth/common/MessageSendable;

    iget-object v1, p0, Lcom/kakao/kakaotalk/KakaoTalkService$3;->val$templateId:Ljava/lang/String;

    iget-object v2, p0, Lcom/kakao/kakaotalk/KakaoTalkService$3;->val$args:Ljava/util/Map;

    invoke-static {v0, v1, v2}, Lcom/kakao/kakaotalk/api/KakaoTalkApi;->requestSendMessage(Lcom/kakao/auth/common/MessageSendable;Ljava/lang/String;Ljava/util/Map;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 119
    invoke-virtual {p0}, Lcom/kakao/kakaotalk/KakaoTalkService$3;->call()Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method
