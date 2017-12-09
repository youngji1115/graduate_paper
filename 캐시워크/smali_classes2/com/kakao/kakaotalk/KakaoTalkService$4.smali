.class final Lcom/kakao/kakaotalk/KakaoTalkService$4;
.super Lcom/kakao/network/tasks/KakaoResultTask;
.source "KakaoTalkService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kakao/kakaotalk/KakaoTalkService;->requestSendMemo(Lcom/kakao/kakaotalk/callback/TalkResponseCallback;Ljava/lang/String;Ljava/util/Map;)V
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

.field final synthetic val$templateId:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/kakao/network/callback/ResponseCallback;Ljava/lang/String;Ljava/util/Map;)V
    .locals 0

    .prologue
    .line 139
    .local p1, "x0":Lcom/kakao/network/callback/ResponseCallback;, "Lcom/kakao/network/callback/ResponseCallback<Ljava/lang/Boolean;>;"
    iput-object p2, p0, Lcom/kakao/kakaotalk/KakaoTalkService$4;->val$templateId:Ljava/lang/String;

    iput-object p3, p0, Lcom/kakao/kakaotalk/KakaoTalkService$4;->val$args:Ljava/util/Map;

    invoke-direct {p0, p1}, Lcom/kakao/network/tasks/KakaoResultTask;-><init>(Lcom/kakao/network/callback/ResponseCallback;)V

    return-void
.end method


# virtual methods
.method public call()Ljava/lang/Boolean;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 142
    iget-object v0, p0, Lcom/kakao/kakaotalk/KakaoTalkService$4;->val$templateId:Ljava/lang/String;

    iget-object v1, p0, Lcom/kakao/kakaotalk/KakaoTalkService$4;->val$args:Ljava/util/Map;

    invoke-static {v0, v1}, Lcom/kakao/kakaotalk/api/KakaoTalkApi;->requestSendMemo(Ljava/lang/String;Ljava/util/Map;)Z

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
    .line 139
    invoke-virtual {p0}, Lcom/kakao/kakaotalk/KakaoTalkService$4;->call()Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method
