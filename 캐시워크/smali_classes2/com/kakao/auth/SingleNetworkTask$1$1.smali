.class Lcom/kakao/auth/SingleNetworkTask$1$1;
.super Ljava/lang/Object;
.source "SingleNetworkTask.java"

# interfaces
.implements Lcom/kakao/auth/authorization/Authorizer$OnAuthorizationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kakao/auth/SingleNetworkTask$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kakao/auth/SingleNetworkTask$1;


# direct methods
.method constructor <init>(Lcom/kakao/auth/SingleNetworkTask$1;)V
    .locals 0
    .param p1, "this$0"    # Lcom/kakao/auth/SingleNetworkTask$1;

    .prologue
    .line 134
    iput-object p1, p0, Lcom/kakao/auth/SingleNetworkTask$1$1;->this$0:Lcom/kakao/auth/SingleNetworkTask$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAuthorizationCompletion(Lcom/kakao/auth/authorization/AuthorizationResult;)V
    .locals 1
    .param p1, "result"    # Lcom/kakao/auth/authorization/AuthorizationResult;

    .prologue
    .line 137
    iget-object v0, p0, Lcom/kakao/auth/SingleNetworkTask$1$1;->this$0:Lcom/kakao/auth/SingleNetworkTask$1;

    iget-object v0, v0, Lcom/kakao/auth/SingleNetworkTask$1;->val$authorizationResult:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 138
    iget-object v0, p0, Lcom/kakao/auth/SingleNetworkTask$1$1;->this$0:Lcom/kakao/auth/SingleNetworkTask$1;

    iget-object v0, v0, Lcom/kakao/auth/SingleNetworkTask$1;->val$lock:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 139
    return-void
.end method
