.class final Lcom/kakao/auth/SingleNetworkTask$1;
.super Ljava/lang/Object;
.source "SingleNetworkTask.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kakao/auth/SingleNetworkTask;->requestScopesUpdate(Landroid/app/Activity;Ljava/lang/String;)Lcom/kakao/auth/authorization/AuthorizationResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$authorizationResult:Ljava/util/concurrent/atomic/AtomicReference;

.field final synthetic val$getter:Lcom/kakao/auth/authorization/authcode/GetterAuthCode;

.field final synthetic val$lock:Ljava/util/concurrent/CountDownLatch;


# direct methods
.method constructor <init>(Lcom/kakao/auth/authorization/authcode/GetterAuthCode;Ljava/util/concurrent/atomic/AtomicReference;Ljava/util/concurrent/CountDownLatch;)V
    .locals 0

    .prologue
    .line 129
    iput-object p1, p0, Lcom/kakao/auth/SingleNetworkTask$1;->val$getter:Lcom/kakao/auth/authorization/authcode/GetterAuthCode;

    iput-object p2, p0, Lcom/kakao/auth/SingleNetworkTask$1;->val$authorizationResult:Ljava/util/concurrent/atomic/AtomicReference;

    iput-object p3, p0, Lcom/kakao/auth/SingleNetworkTask$1;->val$lock:Ljava/util/concurrent/CountDownLatch;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 134
    :try_start_0
    iget-object v1, p0, Lcom/kakao/auth/SingleNetworkTask$1;->val$getter:Lcom/kakao/auth/authorization/authcode/GetterAuthCode;

    new-instance v2, Lcom/kakao/auth/SingleNetworkTask$1$1;

    invoke-direct {v2, p0}, Lcom/kakao/auth/SingleNetworkTask$1$1;-><init>(Lcom/kakao/auth/SingleNetworkTask$1;)V

    invoke-virtual {v1, v2}, Lcom/kakao/auth/authorization/authcode/GetterAuthCode;->setOnAuthorizationListener(Lcom/kakao/auth/authorization/Authorizer$OnAuthorizationListener;)V

    .line 141
    iget-object v1, p0, Lcom/kakao/auth/SingleNetworkTask$1;->val$getter:Lcom/kakao/auth/authorization/authcode/GetterAuthCode;

    invoke-virtual {v1}, Lcom/kakao/auth/authorization/authcode/GetterAuthCode;->start()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 146
    :goto_0
    return-void

    .line 142
    :catch_0
    move-exception v0

    .line 143
    .local v0, "e":Ljava/lang/Exception;
    iget-object v1, p0, Lcom/kakao/auth/SingleNetworkTask$1;->val$authorizationResult:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-static {v0}, Lcom/kakao/auth/authorization/AuthorizationResult;->createAuthCodeOAuthErrorResult(Ljava/lang/Exception;)Lcom/kakao/auth/authorization/AuthorizationResult;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 144
    iget-object v1, p0, Lcom/kakao/auth/SingleNetworkTask$1;->val$lock:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v1}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    goto :goto_0
.end method
