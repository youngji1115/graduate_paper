.class final Lcom/kakao/kakaotalk/KakaoTalkService$5;
.super Lcom/kakao/network/tasks/KakaoResultTask;
.source "KakaoTalkService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kakao/kakaotalk/KakaoTalkService;->requestChatList(Lcom/kakao/kakaotalk/callback/TalkResponseCallback;Lcom/kakao/kakaotalk/ChatListContext;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/kakao/network/tasks/KakaoResultTask",
        "<",
        "Lcom/kakao/kakaotalk/response/ChatListResponse;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic val$context:Lcom/kakao/kakaotalk/ChatListContext;


# direct methods
.method constructor <init>(Lcom/kakao/network/callback/ResponseCallback;Lcom/kakao/kakaotalk/ChatListContext;)V
    .locals 0

    .prologue
    .line 149
    .local p1, "x0":Lcom/kakao/network/callback/ResponseCallback;, "Lcom/kakao/network/callback/ResponseCallback<Lcom/kakao/kakaotalk/response/ChatListResponse;>;"
    iput-object p2, p0, Lcom/kakao/kakaotalk/KakaoTalkService$5;->val$context:Lcom/kakao/kakaotalk/ChatListContext;

    invoke-direct {p0, p1}, Lcom/kakao/network/tasks/KakaoResultTask;-><init>(Lcom/kakao/network/callback/ResponseCallback;)V

    return-void
.end method


# virtual methods
.method public call()Lcom/kakao/kakaotalk/response/ChatListResponse;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 152
    iget-object v0, p0, Lcom/kakao/kakaotalk/KakaoTalkService$5;->val$context:Lcom/kakao/kakaotalk/ChatListContext;

    invoke-static {v0}, Lcom/kakao/kakaotalk/api/KakaoTalkApi;->requestChatList(Lcom/kakao/kakaotalk/ChatListContext;)Lcom/kakao/kakaotalk/response/ChatListResponse;

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
    .line 149
    invoke-virtual {p0}, Lcom/kakao/kakaotalk/KakaoTalkService$5;->call()Lcom/kakao/kakaotalk/response/ChatListResponse;

    move-result-object v0

    return-object v0
.end method
