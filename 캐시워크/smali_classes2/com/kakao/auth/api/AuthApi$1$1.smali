.class Lcom/kakao/auth/api/AuthApi$1$1;
.super Landroid/os/ResultReceiver;
.source "AuthApi.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kakao/auth/api/AuthApi$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kakao/auth/api/AuthApi$1;


# direct methods
.method constructor <init>(Lcom/kakao/auth/api/AuthApi$1;Landroid/os/Handler;)V
    .locals 0
    .param p1, "this$0"    # Lcom/kakao/auth/api/AuthApi$1;
    .param p2, "x0"    # Landroid/os/Handler;

    .prologue
    .line 112
    iput-object p1, p0, Lcom/kakao/auth/api/AuthApi$1$1;->this$0:Lcom/kakao/auth/api/AuthApi$1;

    invoke-direct {p0, p2}, Landroid/os/ResultReceiver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method protected onReceiveResult(ILandroid/os/Bundle;)V
    .locals 5
    .param p1, "resultCode"    # I
    .param p2, "resultData"    # Landroid/os/Bundle;

    .prologue
    .line 115
    sget-object v3, Lcom/kakao/auth/AuthService$AgeAuthStatus;->CLIENT_ERROR:Lcom/kakao/auth/AuthService$AgeAuthStatus;

    invoke-virtual {v3}, Lcom/kakao/auth/AuthService$AgeAuthStatus;->getValue()I

    move-result v2

    .line 116
    .local v2, "status":I
    if-nez p1, :cond_1

    .line 117
    const-string v3, "key.redirect.url"

    invoke-virtual {p2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 118
    .local v1, "redirectUrl":Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 119
    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    const-string v4, "status"

    invoke-virtual {v3, v4}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 120
    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    const-string v4, "status"

    invoke-virtual {v3, v4}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 127
    .end local v1    # "redirectUrl":Ljava/lang/String;
    :cond_0
    :goto_0
    iget-object v3, p0, Lcom/kakao/auth/api/AuthApi$1$1;->this$0:Lcom/kakao/auth/api/AuthApi$1;

    iget-object v3, v3, Lcom/kakao/auth/api/AuthApi$1;->val$result:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v3, v2}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 128
    iget-object v3, p0, Lcom/kakao/auth/api/AuthApi$1$1;->this$0:Lcom/kakao/auth/api/AuthApi$1;

    iget-object v3, v3, Lcom/kakao/auth/api/AuthApi$1;->val$lock:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v3}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 129
    return-void

    .line 123
    :cond_1
    const/4 v3, 0x1

    if-ne p1, v3, :cond_0

    .line 124
    const-string v3, "key.exception"

    invoke-virtual {p2, v3}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/kakao/util/exception/KakaoException;

    .line 125
    .local v0, "kakaoException":Lcom/kakao/util/exception/KakaoException;
    invoke-static {v0}, Lcom/kakao/util/helper/log/Logger;->d(Ljava/lang/Throwable;)I

    goto :goto_0
.end method
