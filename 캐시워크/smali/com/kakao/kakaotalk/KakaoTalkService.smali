.class public Lcom/kakao/kakaotalk/KakaoTalkService;
.super Ljava/lang/Object;
.source "KakaoTalkService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kakao/kakaotalk/KakaoTalkService$ChatType;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static requestChatList(Lcom/kakao/kakaotalk/callback/TalkResponseCallback;Lcom/kakao/kakaotalk/ChatListContext;)V
    .locals 2
    .param p1, "context"    # Lcom/kakao/kakaotalk/ChatListContext;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/kakao/kakaotalk/callback/TalkResponseCallback",
            "<",
            "Lcom/kakao/kakaotalk/response/ChatListResponse;",
            ">;",
            "Lcom/kakao/kakaotalk/ChatListContext;",
            ")V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 149
    .local p0, "callback":Lcom/kakao/kakaotalk/callback/TalkResponseCallback;, "Lcom/kakao/kakaotalk/callback/TalkResponseCallback<Lcom/kakao/kakaotalk/response/ChatListResponse;>;"
    invoke-static {}, Lcom/kakao/network/tasks/KakaoTaskQueue;->getInstance()Lcom/kakao/network/tasks/KakaoTaskQueue;

    move-result-object v0

    new-instance v1, Lcom/kakao/kakaotalk/KakaoTalkService$5;

    invoke-direct {v1, p0, p1}, Lcom/kakao/kakaotalk/KakaoTalkService$5;-><init>(Lcom/kakao/network/callback/ResponseCallback;Lcom/kakao/kakaotalk/ChatListContext;)V

    invoke-virtual {v0, v1}, Lcom/kakao/network/tasks/KakaoTaskQueue;->addTask(Lcom/kakao/network/tasks/KakaoResultTask;)Ljava/util/concurrent/Future;

    .line 155
    return-void
.end method

.method public static requestChatRoomList(Lcom/kakao/kakaotalk/callback/TalkResponseCallback;Lcom/kakao/kakaotalk/ChatListContext;)V
    .locals 2
    .param p1, "context"    # Lcom/kakao/kakaotalk/ChatListContext;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/kakao/kakaotalk/callback/TalkResponseCallback",
            "<",
            "Lcom/kakao/kakaotalk/response/ChatListResponse;",
            ">;",
            "Lcom/kakao/kakaotalk/ChatListContext;",
            ")V"
        }
    .end annotation

    .prologue
    .line 167
    .local p0, "callback":Lcom/kakao/kakaotalk/callback/TalkResponseCallback;, "Lcom/kakao/kakaotalk/callback/TalkResponseCallback<Lcom/kakao/kakaotalk/response/ChatListResponse;>;"
    invoke-static {}, Lcom/kakao/network/tasks/KakaoTaskQueue;->getInstance()Lcom/kakao/network/tasks/KakaoTaskQueue;

    move-result-object v0

    new-instance v1, Lcom/kakao/kakaotalk/KakaoTalkService$6;

    invoke-direct {v1, p0, p1}, Lcom/kakao/kakaotalk/KakaoTalkService$6;-><init>(Lcom/kakao/network/callback/ResponseCallback;Lcom/kakao/kakaotalk/ChatListContext;)V

    invoke-virtual {v0, v1}, Lcom/kakao/network/tasks/KakaoTaskQueue;->addTask(Lcom/kakao/network/tasks/KakaoResultTask;)Ljava/util/concurrent/Future;

    .line 173
    return-void
.end method

.method public static requestFriends(Lcom/kakao/kakaotalk/callback/TalkResponseCallback;Lcom/kakao/friends/FriendContext;)V
    .locals 2
    .param p1, "context"    # Lcom/kakao/friends/FriendContext;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/kakao/kakaotalk/callback/TalkResponseCallback",
            "<",
            "Lcom/kakao/friends/response/FriendsResponse;",
            ">;",
            "Lcom/kakao/friends/FriendContext;",
            ")V"
        }
    .end annotation

    .prologue
    .line 99
    .local p0, "callback":Lcom/kakao/kakaotalk/callback/TalkResponseCallback;, "Lcom/kakao/kakaotalk/callback/TalkResponseCallback<Lcom/kakao/friends/response/FriendsResponse;>;"
    invoke-static {}, Lcom/kakao/network/tasks/KakaoTaskQueue;->getInstance()Lcom/kakao/network/tasks/KakaoTaskQueue;

    move-result-object v0

    new-instance v1, Lcom/kakao/kakaotalk/KakaoTalkService$2;

    invoke-direct {v1, p0, p1}, Lcom/kakao/kakaotalk/KakaoTalkService$2;-><init>(Lcom/kakao/network/callback/ResponseCallback;Lcom/kakao/friends/FriendContext;)V

    invoke-virtual {v0, v1}, Lcom/kakao/network/tasks/KakaoTaskQueue;->addTask(Lcom/kakao/network/tasks/KakaoResultTask;)Ljava/util/concurrent/Future;

    .line 105
    return-void
.end method

.method public static requestProfile(Lcom/kakao/kakaotalk/callback/TalkResponseCallback;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/kakao/kakaotalk/callback/TalkResponseCallback",
            "<",
            "Lcom/kakao/kakaotalk/response/KakaoTalkProfile;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 75
    .local p0, "callback":Lcom/kakao/kakaotalk/callback/TalkResponseCallback;, "Lcom/kakao/kakaotalk/callback/TalkResponseCallback<Lcom/kakao/kakaotalk/response/KakaoTalkProfile;>;"
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/kakao/kakaotalk/KakaoTalkService;->requestProfile(Lcom/kakao/kakaotalk/callback/TalkResponseCallback;Z)V

    .line 76
    return-void
.end method

.method public static requestProfile(Lcom/kakao/kakaotalk/callback/TalkResponseCallback;Z)V
    .locals 2
    .param p1, "secureResource"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/kakao/kakaotalk/callback/TalkResponseCallback",
            "<",
            "Lcom/kakao/kakaotalk/response/KakaoTalkProfile;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 84
    .local p0, "callback":Lcom/kakao/kakaotalk/callback/TalkResponseCallback;, "Lcom/kakao/kakaotalk/callback/TalkResponseCallback<Lcom/kakao/kakaotalk/response/KakaoTalkProfile;>;"
    invoke-static {}, Lcom/kakao/network/tasks/KakaoTaskQueue;->getInstance()Lcom/kakao/network/tasks/KakaoTaskQueue;

    move-result-object v0

    new-instance v1, Lcom/kakao/kakaotalk/KakaoTalkService$1;

    invoke-direct {v1, p0, p1}, Lcom/kakao/kakaotalk/KakaoTalkService$1;-><init>(Lcom/kakao/network/callback/ResponseCallback;Z)V

    invoke-virtual {v0, v1}, Lcom/kakao/network/tasks/KakaoTaskQueue;->addTask(Lcom/kakao/network/tasks/KakaoResultTask;)Ljava/util/concurrent/Future;

    .line 90
    return-void
.end method

.method public static requestSendMemo(Lcom/kakao/kakaotalk/callback/TalkResponseCallback;Ljava/lang/String;Ljava/util/Map;)V
    .locals 2
    .param p1, "templateId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/kakao/kakaotalk/callback/TalkResponseCallback",
            "<",
            "Ljava/lang/Boolean;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 139
    .local p0, "callback":Lcom/kakao/kakaotalk/callback/TalkResponseCallback;, "Lcom/kakao/kakaotalk/callback/TalkResponseCallback<Ljava/lang/Boolean;>;"
    .local p2, "args":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-static {}, Lcom/kakao/network/tasks/KakaoTaskQueue;->getInstance()Lcom/kakao/network/tasks/KakaoTaskQueue;

    move-result-object v0

    new-instance v1, Lcom/kakao/kakaotalk/KakaoTalkService$4;

    invoke-direct {v1, p0, p1, p2}, Lcom/kakao/kakaotalk/KakaoTalkService$4;-><init>(Lcom/kakao/network/callback/ResponseCallback;Ljava/lang/String;Ljava/util/Map;)V

    invoke-virtual {v0, v1}, Lcom/kakao/network/tasks/KakaoTaskQueue;->addTask(Lcom/kakao/network/tasks/KakaoResultTask;)Ljava/util/concurrent/Future;

    .line 145
    return-void
.end method

.method public static requestSendMessage(Lcom/kakao/kakaotalk/callback/TalkResponseCallback;Lcom/kakao/auth/common/MessageSendable;Ljava/lang/String;Ljava/util/Map;)V
    .locals 2
    .param p1, "receiverInfo"    # Lcom/kakao/auth/common/MessageSendable;
    .param p2, "templateId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/kakao/kakaotalk/callback/TalkResponseCallback",
            "<",
            "Ljava/lang/Boolean;",
            ">;",
            "Lcom/kakao/auth/common/MessageSendable;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 119
    .local p0, "callback":Lcom/kakao/kakaotalk/callback/TalkResponseCallback;, "Lcom/kakao/kakaotalk/callback/TalkResponseCallback<Ljava/lang/Boolean;>;"
    .local p3, "args":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-static {}, Lcom/kakao/network/tasks/KakaoTaskQueue;->getInstance()Lcom/kakao/network/tasks/KakaoTaskQueue;

    move-result-object v0

    new-instance v1, Lcom/kakao/kakaotalk/KakaoTalkService$3;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/kakao/kakaotalk/KakaoTalkService$3;-><init>(Lcom/kakao/network/callback/ResponseCallback;Lcom/kakao/auth/common/MessageSendable;Ljava/lang/String;Ljava/util/Map;)V

    invoke-virtual {v0, v1}, Lcom/kakao/network/tasks/KakaoTaskQueue;->addTask(Lcom/kakao/network/tasks/KakaoResultTask;)Ljava/util/concurrent/Future;

    .line 125
    return-void
.end method
