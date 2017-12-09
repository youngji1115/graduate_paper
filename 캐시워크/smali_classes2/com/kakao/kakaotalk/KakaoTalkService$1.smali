.class final Lcom/kakao/kakaotalk/KakaoTalkService$1;
.super Lcom/kakao/network/tasks/KakaoResultTask;
.source "KakaoTalkService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kakao/kakaotalk/KakaoTalkService;->requestProfile(Lcom/kakao/kakaotalk/callback/TalkResponseCallback;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/kakao/network/tasks/KakaoResultTask",
        "<",
        "Lcom/kakao/kakaotalk/response/KakaoTalkProfile;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic val$secureResource:Z


# direct methods
.method constructor <init>(Lcom/kakao/network/callback/ResponseCallback;Z)V
    .locals 0

    .prologue
    .line 84
    .local p1, "x0":Lcom/kakao/network/callback/ResponseCallback;, "Lcom/kakao/network/callback/ResponseCallback<Lcom/kakao/kakaotalk/response/KakaoTalkProfile;>;"
    iput-boolean p2, p0, Lcom/kakao/kakaotalk/KakaoTalkService$1;->val$secureResource:Z

    invoke-direct {p0, p1}, Lcom/kakao/network/tasks/KakaoResultTask;-><init>(Lcom/kakao/network/callback/ResponseCallback;)V

    return-void
.end method


# virtual methods
.method public call()Lcom/kakao/kakaotalk/response/KakaoTalkProfile;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 87
    iget-boolean v0, p0, Lcom/kakao/kakaotalk/KakaoTalkService$1;->val$secureResource:Z

    invoke-static {v0}, Lcom/kakao/kakaotalk/api/KakaoTalkApi;->requestProfile(Z)Lcom/kakao/kakaotalk/response/KakaoTalkProfile;

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
    .line 84
    invoke-virtual {p0}, Lcom/kakao/kakaotalk/KakaoTalkService$1;->call()Lcom/kakao/kakaotalk/response/KakaoTalkProfile;

    move-result-object v0

    return-object v0
.end method
