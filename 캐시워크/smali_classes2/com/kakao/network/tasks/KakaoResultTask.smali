.class public abstract Lcom/kakao/network/tasks/KakaoResultTask;
.super Ljava/lang/Object;
.source "KakaoResultTask.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field private static final mainHandler:Landroid/os/Handler;


# instance fields
.field final callback:Lcom/kakao/network/callback/ResponseCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/kakao/network/callback/ResponseCallback",
            "<TT;>;"
        }
    .end annotation
.end field

.field private task:Ljava/util/concurrent/Callable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/Callable",
            "<TT;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 29
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/kakao/network/tasks/KakaoResultTask;->mainHandler:Landroid/os/Handler;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 32
    .local p0, "this":Lcom/kakao/network/tasks/KakaoResultTask;, "Lcom/kakao/network/tasks/KakaoResultTask<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    new-instance v0, Lcom/kakao/network/tasks/KakaoResultTask$1;

    invoke-direct {v0, p0}, Lcom/kakao/network/tasks/KakaoResultTask$1;-><init>(Lcom/kakao/network/tasks/KakaoResultTask;)V

    iput-object v0, p0, Lcom/kakao/network/tasks/KakaoResultTask;->task:Ljava/util/concurrent/Callable;

    .line 33
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/kakao/network/tasks/KakaoResultTask;->callback:Lcom/kakao/network/callback/ResponseCallback;

    .line 34
    return-void
.end method

.method public constructor <init>(Lcom/kakao/network/callback/ResponseCallback;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/kakao/network/callback/ResponseCallback",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 36
    .local p0, "this":Lcom/kakao/network/tasks/KakaoResultTask;, "Lcom/kakao/network/tasks/KakaoResultTask<TT;>;"
    .local p1, "callback":Lcom/kakao/network/callback/ResponseCallback;, "Lcom/kakao/network/callback/ResponseCallback<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    new-instance v0, Lcom/kakao/network/tasks/KakaoResultTask$1;

    invoke-direct {v0, p0}, Lcom/kakao/network/tasks/KakaoResultTask$1;-><init>(Lcom/kakao/network/tasks/KakaoResultTask;)V

    iput-object v0, p0, Lcom/kakao/network/tasks/KakaoResultTask;->task:Ljava/util/concurrent/Callable;

    .line 37
    iput-object p1, p0, Lcom/kakao/network/tasks/KakaoResultTask;->callback:Lcom/kakao/network/callback/ResponseCallback;

    .line 38
    return-void
.end method

.method static synthetic access$000()Landroid/os/Handler;
    .locals 1

    .prologue
    .line 28
    sget-object v0, Lcom/kakao/network/tasks/KakaoResultTask;->mainHandler:Landroid/os/Handler;

    return-object v0
.end method


# virtual methods
.method public abstract call()Ljava/lang/Object;
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
.end method

.method public final getCallable()Ljava/util/concurrent/Callable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/Callable",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 102
    .local p0, "this":Lcom/kakao/network/tasks/KakaoResultTask;, "Lcom/kakao/network/tasks/KakaoResultTask<TT;>;"
    iget-object v0, p0, Lcom/kakao/network/tasks/KakaoResultTask;->task:Ljava/util/concurrent/Callable;

    return-object v0
.end method

.method public onDidEnd()V
    .locals 0

    .prologue
    .line 109
    .local p0, "this":Lcom/kakao/network/tasks/KakaoResultTask;, "Lcom/kakao/network/tasks/KakaoResultTask<TT;>;"
    return-void
.end method

.method public onDidStart()V
    .locals 0

    .prologue
    .line 106
    .local p0, "this":Lcom/kakao/network/tasks/KakaoResultTask;, "Lcom/kakao/network/tasks/KakaoResultTask<TT;>;"
    return-void
.end method
