.class public Lcom/amazonaws/event/ProgressListenerCallbackExecutor;
.super Ljava/lang/Object;
.source "ProgressListenerCallbackExecutor.java"


# static fields
.field static executor:Ljava/util/concurrent/ExecutorService;


# instance fields
.field private final listener:Lcom/amazonaws/event/ProgressListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 33
    invoke-static {}, Lcom/amazonaws/event/ProgressListenerCallbackExecutor;->createNewExecutorService()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    sput-object v0, Lcom/amazonaws/event/ProgressListenerCallbackExecutor;->executor:Ljava/util/concurrent/ExecutorService;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/amazonaws/event/ProgressListenerCallbackExecutor;->listener:Lcom/amazonaws/event/ProgressListener;

    .line 60
    return-void
.end method

.method public constructor <init>(Lcom/amazonaws/event/ProgressListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/amazonaws/event/ProgressListener;

    .prologue
    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    iput-object p1, p0, Lcom/amazonaws/event/ProgressListenerCallbackExecutor;->listener:Lcom/amazonaws/event/ProgressListener;

    .line 56
    return-void
.end method

.method static synthetic access$000(Lcom/amazonaws/event/ProgressListenerCallbackExecutor;)Lcom/amazonaws/event/ProgressListener;
    .locals 1
    .param p0, "x0"    # Lcom/amazonaws/event/ProgressListenerCallbackExecutor;

    .prologue
    .line 27
    iget-object v0, p0, Lcom/amazonaws/event/ProgressListenerCallbackExecutor;->listener:Lcom/amazonaws/event/ProgressListener;

    return-object v0
.end method

.method static createNewExecutorService()Ljava/util/concurrent/ExecutorService;
    .locals 1

    .prologue
    .line 102
    new-instance v0, Lcom/amazonaws/event/ProgressListenerCallbackExecutor$3;

    invoke-direct {v0}, Lcom/amazonaws/event/ProgressListenerCallbackExecutor$3;-><init>()V

    invoke-static {v0}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor(Ljava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    return-object v0
.end method

.method protected static getExecutorService()Ljava/util/concurrent/ExecutorService;
    .locals 1

    .prologue
    .line 84
    sget-object v0, Lcom/amazonaws/event/ProgressListenerCallbackExecutor;->executor:Ljava/util/concurrent/ExecutorService;

    return-object v0
.end method

.method public static progressChanged(Lcom/amazonaws/event/ProgressListener;Lcom/amazonaws/event/ProgressEvent;)Ljava/util/concurrent/Future;
    .locals 2
    .param p0, "listener"    # Lcom/amazonaws/event/ProgressListener;
    .param p1, "progressEvent"    # Lcom/amazonaws/event/ProgressEvent;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazonaws/event/ProgressListener;",
            "Lcom/amazonaws/event/ProgressEvent;",
            ")",
            "Ljava/util/concurrent/Future",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 43
    if-nez p0, :cond_0

    .line 44
    const/4 v0, 0x0

    .line 45
    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/amazonaws/event/ProgressListenerCallbackExecutor;->executor:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/amazonaws/event/ProgressListenerCallbackExecutor$1;

    invoke-direct {v1, p0, p1}, Lcom/amazonaws/event/ProgressListenerCallbackExecutor$1;-><init>(Lcom/amazonaws/event/ProgressListener;Lcom/amazonaws/event/ProgressEvent;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v0

    goto :goto_0
.end method

.method public static wrapListener(Lcom/amazonaws/event/ProgressListener;)Lcom/amazonaws/event/ProgressListenerCallbackExecutor;
    .locals 1
    .param p0, "listener"    # Lcom/amazonaws/event/ProgressListener;

    .prologue
    .line 93
    if-nez p0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/amazonaws/event/ProgressListenerCallbackExecutor;

    invoke-direct {v0, p0}, Lcom/amazonaws/event/ProgressListenerCallbackExecutor;-><init>(Lcom/amazonaws/event/ProgressListener;)V

    goto :goto_0
.end method


# virtual methods
.method protected getListener()Lcom/amazonaws/event/ProgressListener;
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Lcom/amazonaws/event/ProgressListenerCallbackExecutor;->listener:Lcom/amazonaws/event/ProgressListener;

    return-object v0
.end method

.method public progressChanged(Lcom/amazonaws/event/ProgressEvent;)V
    .locals 2
    .param p1, "progressEvent"    # Lcom/amazonaws/event/ProgressEvent;

    .prologue
    .line 63
    iget-object v0, p0, Lcom/amazonaws/event/ProgressListenerCallbackExecutor;->listener:Lcom/amazonaws/event/ProgressListener;

    if-nez v0, :cond_0

    .line 71
    :goto_0
    return-void

    .line 65
    :cond_0
    sget-object v0, Lcom/amazonaws/event/ProgressListenerCallbackExecutor;->executor:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/amazonaws/event/ProgressListenerCallbackExecutor$2;

    invoke-direct {v1, p0, p1}, Lcom/amazonaws/event/ProgressListenerCallbackExecutor$2;-><init>(Lcom/amazonaws/event/ProgressListenerCallbackExecutor;Lcom/amazonaws/event/ProgressEvent;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    goto :goto_0
.end method
