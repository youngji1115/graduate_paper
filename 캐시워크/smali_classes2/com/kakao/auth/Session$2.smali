.class Lcom/kakao/auth/Session$2;
.super Ljava/lang/Object;
.source "Session.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kakao/auth/Session;->notifySessionState(Lcom/kakao/auth/Session$SessionState;Lcom/kakao/util/exception/KakaoException;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kakao/auth/Session;

.field final synthetic val$dumpSessionCallbacks:Ljava/util/List;

.field final synthetic val$exception:Lcom/kakao/util/exception/KakaoException;

.field final synthetic val$newState:Lcom/kakao/auth/Session$SessionState;


# direct methods
.method constructor <init>(Lcom/kakao/auth/Session;Lcom/kakao/auth/Session$SessionState;Ljava/util/List;Lcom/kakao/util/exception/KakaoException;)V
    .locals 0
    .param p1, "this$0"    # Lcom/kakao/auth/Session;

    .prologue
    .line 745
    iput-object p1, p0, Lcom/kakao/auth/Session$2;->this$0:Lcom/kakao/auth/Session;

    iput-object p2, p0, Lcom/kakao/auth/Session$2;->val$newState:Lcom/kakao/auth/Session$SessionState;

    iput-object p3, p0, Lcom/kakao/auth/Session$2;->val$dumpSessionCallbacks:Ljava/util/List;

    iput-object p4, p0, Lcom/kakao/auth/Session$2;->val$exception:Lcom/kakao/util/exception/KakaoException;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 747
    iget-object v2, p0, Lcom/kakao/auth/Session$2;->val$newState:Lcom/kakao/auth/Session$SessionState;

    invoke-static {v2}, Lcom/kakao/auth/Session$SessionState;->access$000(Lcom/kakao/auth/Session$SessionState;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 748
    const v2, 0xa4cb80

    iget-object v3, p0, Lcom/kakao/auth/Session$2;->this$0:Lcom/kakao/auth/Session;

    invoke-static {v3}, Lcom/kakao/auth/Session;->access$500(Lcom/kakao/auth/Session;)Lcom/kakao/auth/authorization/accesstoken/AccessToken;

    move-result-object v3

    invoke-virtual {v3}, Lcom/kakao/auth/authorization/accesstoken/AccessToken;->getRemainedExpiresInAccessTokenTime()I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 749
    .local v1, "interval":I
    iget-object v2, p0, Lcom/kakao/auth/Session$2;->this$0:Lcom/kakao/auth/Session;

    int-to-long v4, v1

    invoke-static {v2, v4, v5}, Lcom/kakao/auth/Session;->access$1100(Lcom/kakao/auth/Session;J)V

    .line 754
    .end local v1    # "interval":I
    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/kakao/auth/Session$2;->val$dumpSessionCallbacks:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kakao/auth/ISessionCallback;

    .line 755
    .local v0, "callback":Lcom/kakao/auth/ISessionCallback;
    iget-object v3, p0, Lcom/kakao/auth/Session$2;->val$newState:Lcom/kakao/auth/Session$SessionState;

    invoke-static {v3}, Lcom/kakao/auth/Session$SessionState;->access$000(Lcom/kakao/auth/Session$SessionState;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 756
    invoke-interface {v0}, Lcom/kakao/auth/ISessionCallback;->onSessionOpened()V

    goto :goto_1

    .line 750
    .end local v0    # "callback":Lcom/kakao/auth/ISessionCallback;
    :cond_2
    iget-object v2, p0, Lcom/kakao/auth/Session$2;->val$newState:Lcom/kakao/auth/Session$SessionState;

    invoke-static {v2}, Lcom/kakao/auth/Session$SessionState;->access$1200(Lcom/kakao/auth/Session$SessionState;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 751
    iget-object v2, p0, Lcom/kakao/auth/Session$2;->this$0:Lcom/kakao/auth/Session;

    invoke-static {v2}, Lcom/kakao/auth/Session;->access$1300(Lcom/kakao/auth/Session;)V

    goto :goto_0

    .line 757
    .restart local v0    # "callback":Lcom/kakao/auth/ISessionCallback;
    :cond_3
    iget-object v3, p0, Lcom/kakao/auth/Session$2;->val$newState:Lcom/kakao/auth/Session$SessionState;

    invoke-static {v3}, Lcom/kakao/auth/Session$SessionState;->access$1200(Lcom/kakao/auth/Session$SessionState;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 758
    iget-object v3, p0, Lcom/kakao/auth/Session$2;->val$exception:Lcom/kakao/util/exception/KakaoException;

    invoke-interface {v0, v3}, Lcom/kakao/auth/ISessionCallback;->onSessionOpenFailed(Lcom/kakao/util/exception/KakaoException;)V

    goto :goto_1

    .line 762
    .end local v0    # "callback":Lcom/kakao/auth/ISessionCallback;
    :cond_4
    return-void
.end method
