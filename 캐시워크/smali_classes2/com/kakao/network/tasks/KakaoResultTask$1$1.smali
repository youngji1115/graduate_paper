.class Lcom/kakao/network/tasks/KakaoResultTask$1$1;
.super Ljava/lang/Object;
.source "KakaoResultTask.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kakao/network/tasks/KakaoResultTask$1;->call()Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/kakao/network/tasks/KakaoResultTask$1;

.field final synthetic val$lock:Ljava/util/concurrent/CountDownLatch;

.field final synthetic val$response:Ljava/lang/Object;

.field final synthetic val$t:Ljava/lang/Exception;


# direct methods
.method constructor <init>(Lcom/kakao/network/tasks/KakaoResultTask$1;Ljava/lang/Exception;Ljava/lang/Object;Ljava/util/concurrent/CountDownLatch;)V
    .locals 0
    .param p1, "this$1"    # Lcom/kakao/network/tasks/KakaoResultTask$1;

    .prologue
    .line 61
    .local p0, "this":Lcom/kakao/network/tasks/KakaoResultTask$1$1;, "Lcom/kakao/network/tasks/KakaoResultTask$1$1;"
    iput-object p1, p0, Lcom/kakao/network/tasks/KakaoResultTask$1$1;->this$1:Lcom/kakao/network/tasks/KakaoResultTask$1;

    iput-object p2, p0, Lcom/kakao/network/tasks/KakaoResultTask$1$1;->val$t:Ljava/lang/Exception;

    iput-object p3, p0, Lcom/kakao/network/tasks/KakaoResultTask$1$1;->val$response:Ljava/lang/Object;

    iput-object p4, p0, Lcom/kakao/network/tasks/KakaoResultTask$1$1;->val$lock:Ljava/util/concurrent/CountDownLatch;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 65
    .local p0, "this":Lcom/kakao/network/tasks/KakaoResultTask$1$1;, "Lcom/kakao/network/tasks/KakaoResultTask$1$1;"
    :try_start_0
    iget-object v2, p0, Lcom/kakao/network/tasks/KakaoResultTask$1$1;->this$1:Lcom/kakao/network/tasks/KakaoResultTask$1;

    iget-object v2, v2, Lcom/kakao/network/tasks/KakaoResultTask$1;->this$0:Lcom/kakao/network/tasks/KakaoResultTask;

    iget-object v2, v2, Lcom/kakao/network/tasks/KakaoResultTask;->callback:Lcom/kakao/network/callback/ResponseCallback;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v2, :cond_0

    .line 83
    iget-object v2, p0, Lcom/kakao/network/tasks/KakaoResultTask$1$1;->val$lock:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v2}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 85
    :goto_0
    return-void

    .line 69
    :cond_0
    :try_start_1
    iget-object v2, p0, Lcom/kakao/network/tasks/KakaoResultTask$1$1;->val$t:Ljava/lang/Exception;

    if-eqz v2, :cond_2

    .line 71
    iget-object v2, p0, Lcom/kakao/network/tasks/KakaoResultTask$1$1;->val$t:Ljava/lang/Exception;

    instance-of v2, v2, Lcom/kakao/network/exception/ResponseStatusError;

    if-eqz v2, :cond_1

    .line 72
    iget-object v0, p0, Lcom/kakao/network/tasks/KakaoResultTask$1$1;->val$t:Ljava/lang/Exception;

    check-cast v0, Lcom/kakao/network/exception/ResponseStatusError;

    .line 73
    .local v0, "err":Lcom/kakao/network/exception/ResponseStatusError;
    new-instance v1, Lcom/kakao/network/ErrorResult;

    invoke-direct {v1, v0}, Lcom/kakao/network/ErrorResult;-><init>(Lcom/kakao/network/exception/ResponseStatusError;)V

    .line 78
    .end local v0    # "err":Lcom/kakao/network/exception/ResponseStatusError;
    .local v1, "errorResult":Lcom/kakao/network/ErrorResult;
    :goto_1
    iget-object v2, p0, Lcom/kakao/network/tasks/KakaoResultTask$1$1;->this$1:Lcom/kakao/network/tasks/KakaoResultTask$1;

    iget-object v2, v2, Lcom/kakao/network/tasks/KakaoResultTask$1;->this$0:Lcom/kakao/network/tasks/KakaoResultTask;

    iget-object v2, v2, Lcom/kakao/network/tasks/KakaoResultTask;->callback:Lcom/kakao/network/callback/ResponseCallback;

    invoke-virtual {v2, v1}, Lcom/kakao/network/callback/ResponseCallback;->onFailureForUiThread(Lcom/kakao/network/ErrorResult;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 83
    .end local v1    # "errorResult":Lcom/kakao/network/ErrorResult;
    :goto_2
    iget-object v2, p0, Lcom/kakao/network/tasks/KakaoResultTask$1$1;->val$lock:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v2}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    goto :goto_0

    .line 75
    :cond_1
    :try_start_2
    new-instance v1, Lcom/kakao/network/ErrorResult;

    iget-object v2, p0, Lcom/kakao/network/tasks/KakaoResultTask$1$1;->val$t:Ljava/lang/Exception;

    invoke-direct {v1, v2}, Lcom/kakao/network/ErrorResult;-><init>(Ljava/lang/Exception;)V

    .restart local v1    # "errorResult":Lcom/kakao/network/ErrorResult;
    goto :goto_1

    .line 80
    .end local v1    # "errorResult":Lcom/kakao/network/ErrorResult;
    :cond_2
    iget-object v2, p0, Lcom/kakao/network/tasks/KakaoResultTask$1$1;->this$1:Lcom/kakao/network/tasks/KakaoResultTask$1;

    iget-object v2, v2, Lcom/kakao/network/tasks/KakaoResultTask$1;->this$0:Lcom/kakao/network/tasks/KakaoResultTask;

    iget-object v2, v2, Lcom/kakao/network/tasks/KakaoResultTask;->callback:Lcom/kakao/network/callback/ResponseCallback;

    iget-object v3, p0, Lcom/kakao/network/tasks/KakaoResultTask$1$1;->val$response:Ljava/lang/Object;

    invoke-virtual {v2, v3}, Lcom/kakao/network/callback/ResponseCallback;->onSuccessForUiThread(Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2

    .line 83
    :catchall_0
    move-exception v2

    iget-object v3, p0, Lcom/kakao/network/tasks/KakaoResultTask$1$1;->val$lock:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v3}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    throw v2
.end method
