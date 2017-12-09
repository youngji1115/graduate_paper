.class final Lcom/kakao/auth/api/AuthApi$1;
.super Ljava/lang/Object;
.source "AuthApi.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kakao/auth/api/AuthApi;->requestShowAgeAuthDialog(Landroid/os/Bundle;Z)I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$ageAuthParams:Landroid/os/Bundle;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$lock:Ljava/util/concurrent/CountDownLatch;

.field final synthetic val$result:Ljava/util/concurrent/atomic/AtomicInteger;

.field final synthetic val$useSmsReceiver:Z


# direct methods
.method constructor <init>(Ljava/util/concurrent/atomic/AtomicInteger;Ljava/util/concurrent/CountDownLatch;Landroid/content/Context;Landroid/os/Bundle;Z)V
    .locals 0

    .prologue
    .line 108
    iput-object p1, p0, Lcom/kakao/auth/api/AuthApi$1;->val$result:Ljava/util/concurrent/atomic/AtomicInteger;

    iput-object p2, p0, Lcom/kakao/auth/api/AuthApi$1;->val$lock:Ljava/util/concurrent/CountDownLatch;

    iput-object p3, p0, Lcom/kakao/auth/api/AuthApi$1;->val$context:Landroid/content/Context;

    iput-object p4, p0, Lcom/kakao/auth/api/AuthApi$1;->val$ageAuthParams:Landroid/os/Bundle;

    iput-boolean p5, p0, Lcom/kakao/auth/api/AuthApi$1;->val$useSmsReceiver:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 112
    :try_start_0
    new-instance v1, Lcom/kakao/auth/api/AuthApi$1$1;

    invoke-static {}, Lcom/kakao/auth/api/AuthApi;->access$000()Landroid/os/Handler;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/kakao/auth/api/AuthApi$1$1;-><init>(Lcom/kakao/auth/api/AuthApi$1;Landroid/os/Handler;)V

    .line 131
    .local v1, "resultReceiver":Landroid/os/ResultReceiver;
    iget-object v2, p0, Lcom/kakao/auth/api/AuthApi$1;->val$context:Landroid/content/Context;

    iget-object v3, p0, Lcom/kakao/auth/api/AuthApi$1;->val$ageAuthParams:Landroid/os/Bundle;

    iget-boolean v4, p0, Lcom/kakao/auth/api/AuthApi$1;->val$useSmsReceiver:Z

    invoke-static {v2, v3, v4, v1}, Lcom/kakao/auth/api/AuthApi;->access$100(Landroid/content/Context;Landroid/os/Bundle;ZLandroid/os/ResultReceiver;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 137
    .end local v1    # "resultReceiver":Landroid/os/ResultReceiver;
    :goto_0
    return-void

    .line 132
    :catch_0
    move-exception v0

    .line 133
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/kakao/util/helper/log/Logger;->d(Ljava/lang/Throwable;)I

    .line 134
    iget-object v2, p0, Lcom/kakao/auth/api/AuthApi$1;->val$result:Ljava/util/concurrent/atomic/AtomicInteger;

    sget-object v3, Lcom/kakao/auth/AuthService$AgeAuthStatus;->CLIENT_ERROR:Lcom/kakao/auth/AuthService$AgeAuthStatus;

    invoke-virtual {v3}, Lcom/kakao/auth/AuthService$AgeAuthStatus;->getValue()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 135
    iget-object v2, p0, Lcom/kakao/auth/api/AuthApi$1;->val$lock:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v2}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    goto :goto_0
.end method
