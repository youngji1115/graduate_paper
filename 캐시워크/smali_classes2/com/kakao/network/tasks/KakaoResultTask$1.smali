.class Lcom/kakao/network/tasks/KakaoResultTask$1;
.super Ljava/lang/Object;
.source "KakaoResultTask.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kakao/network/tasks/KakaoResultTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable",
        "<TT;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kakao/network/tasks/KakaoResultTask;


# direct methods
.method constructor <init>(Lcom/kakao/network/tasks/KakaoResultTask;)V
    .locals 0
    .param p1, "this$0"    # Lcom/kakao/network/tasks/KakaoResultTask;

    .prologue
    .line 40
    .local p0, "this":Lcom/kakao/network/tasks/KakaoResultTask$1;, "Lcom/kakao/network/tasks/KakaoResultTask$1;"
    iput-object p1, p0, Lcom/kakao/network/tasks/KakaoResultTask$1;->this$0:Lcom/kakao/network/tasks/KakaoResultTask;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()Ljava/lang/Object;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 43
    .local p0, "this":Lcom/kakao/network/tasks/KakaoResultTask$1;, "Lcom/kakao/network/tasks/KakaoResultTask$1;"
    const/4 v4, 0x0

    .line 44
    .local v4, "result":Ljava/lang/Object;, "TT;"
    const/4 v1, 0x0

    .line 47
    .local v1, "ex":Ljava/lang/Exception;
    :try_start_0
    iget-object v6, p0, Lcom/kakao/network/tasks/KakaoResultTask$1;->this$0:Lcom/kakao/network/tasks/KakaoResultTask;

    invoke-virtual {v6}, Lcom/kakao/network/tasks/KakaoResultTask;->onDidStart()V

    .line 49
    iget-object v6, p0, Lcom/kakao/network/tasks/KakaoResultTask$1;->this$0:Lcom/kakao/network/tasks/KakaoResultTask;

    iget-object v6, v6, Lcom/kakao/network/tasks/KakaoResultTask;->callback:Lcom/kakao/network/callback/ResponseCallback;

    if-eqz v6, :cond_0

    .line 50
    iget-object v6, p0, Lcom/kakao/network/tasks/KakaoResultTask$1;->this$0:Lcom/kakao/network/tasks/KakaoResultTask;

    iget-object v6, v6, Lcom/kakao/network/tasks/KakaoResultTask;->callback:Lcom/kakao/network/callback/ResponseCallback;

    invoke-virtual {v6}, Lcom/kakao/network/callback/ResponseCallback;->onDidStart()V

    .line 52
    :cond_0
    iget-object v6, p0, Lcom/kakao/network/tasks/KakaoResultTask$1;->this$0:Lcom/kakao/network/tasks/KakaoResultTask;

    invoke-virtual {v6}, Lcom/kakao/network/tasks/KakaoResultTask;->call()Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    move-object v3, v4

    .line 58
    .end local v4    # "result":Ljava/lang/Object;, "TT;"
    .local v3, "response":Ljava/lang/Object;, "TT;"
    .local v3, "result":Ljava/lang/Object;, "TT;"
    :goto_0
    move-object v5, v1

    .line 60
    .local v5, "t":Ljava/lang/Exception;
    new-instance v2, Ljava/util/concurrent/CountDownLatch;

    const/4 v6, 0x1

    invoke-direct {v2, v6}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 61
    .local v2, "lock":Ljava/util/concurrent/CountDownLatch;
    invoke-static {}, Lcom/kakao/network/tasks/KakaoResultTask;->access$000()Landroid/os/Handler;

    move-result-object v6

    new-instance v7, Lcom/kakao/network/tasks/KakaoResultTask$1$1;

    invoke-direct {v7, p0, v5, v3, v2}, Lcom/kakao/network/tasks/KakaoResultTask$1$1;-><init>(Lcom/kakao/network/tasks/KakaoResultTask$1;Ljava/lang/Exception;Ljava/lang/Object;Ljava/util/concurrent/CountDownLatch;)V

    invoke-virtual {v6, v7}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 88
    invoke-virtual {v2}, Ljava/util/concurrent/CountDownLatch;->await()V

    .line 90
    iget-object v6, p0, Lcom/kakao/network/tasks/KakaoResultTask$1;->this$0:Lcom/kakao/network/tasks/KakaoResultTask;

    iget-object v6, v6, Lcom/kakao/network/tasks/KakaoResultTask;->callback:Lcom/kakao/network/callback/ResponseCallback;

    if-eqz v6, :cond_1

    .line 91
    iget-object v6, p0, Lcom/kakao/network/tasks/KakaoResultTask$1;->this$0:Lcom/kakao/network/tasks/KakaoResultTask;

    iget-object v6, v6, Lcom/kakao/network/tasks/KakaoResultTask;->callback:Lcom/kakao/network/callback/ResponseCallback;

    invoke-virtual {v6}, Lcom/kakao/network/callback/ResponseCallback;->onDidEnd()V

    .line 93
    :cond_1
    iget-object v6, p0, Lcom/kakao/network/tasks/KakaoResultTask$1;->this$0:Lcom/kakao/network/tasks/KakaoResultTask;

    invoke-virtual {v6}, Lcom/kakao/network/tasks/KakaoResultTask;->onDidEnd()V

    .line 95
    return-object v3

    .line 53
    .end local v2    # "lock":Ljava/util/concurrent/CountDownLatch;
    .end local v3    # "result":Ljava/lang/Object;, "TT;"
    .end local v5    # "t":Ljava/lang/Exception;
    .restart local v4    # "result":Ljava/lang/Object;, "TT;"
    :catch_0
    move-exception v0

    .line 54
    .local v0, "e":Ljava/lang/Exception;
    move-object v1, v0

    move-object v3, v4

    .end local v4    # "result":Ljava/lang/Object;, "TT;"
    .local v3, "result":Ljava/lang/Object;, "TT;"
    goto :goto_0
.end method
