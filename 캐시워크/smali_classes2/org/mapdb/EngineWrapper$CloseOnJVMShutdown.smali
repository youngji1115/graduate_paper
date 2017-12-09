.class public Lorg/mapdb/EngineWrapper$CloseOnJVMShutdown;
.super Lorg/mapdb/EngineWrapper;
.source "EngineWrapper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/mapdb/EngineWrapper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CloseOnJVMShutdown"
.end annotation


# instance fields
.field hook:Ljava/lang/Thread;

.field final hookRunnable:Ljava/lang/Runnable;

.field protected final shutdownHappened:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method public constructor <init>(Lorg/mapdb/Engine;)V
    .locals 3
    .param p1, "engine"    # Lorg/mapdb/Engine;

    .prologue
    .line 579
    invoke-direct {p0, p1}, Lorg/mapdb/EngineWrapper;-><init>(Lorg/mapdb/Engine;)V

    .line 562
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lorg/mapdb/EngineWrapper$CloseOnJVMShutdown;->shutdownHappened:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 564
    new-instance v0, Lorg/mapdb/EngineWrapper$CloseOnJVMShutdown$1;

    invoke-direct {v0, p0}, Lorg/mapdb/EngineWrapper$CloseOnJVMShutdown$1;-><init>(Lorg/mapdb/EngineWrapper$CloseOnJVMShutdown;)V

    iput-object v0, p0, Lorg/mapdb/EngineWrapper$CloseOnJVMShutdown;->hookRunnable:Ljava/lang/Runnable;

    .line 580
    new-instance v0, Ljava/lang/Thread;

    iget-object v1, p0, Lorg/mapdb/EngineWrapper$CloseOnJVMShutdown;->hookRunnable:Ljava/lang/Runnable;

    const-string v2, "MapDB shutdown hook"

    invoke-direct {v0, v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    iput-object v0, p0, Lorg/mapdb/EngineWrapper$CloseOnJVMShutdown;->hook:Ljava/lang/Thread;

    .line 581
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    iget-object v1, p0, Lorg/mapdb/EngineWrapper$CloseOnJVMShutdown;->hook:Ljava/lang/Thread;

    invoke-virtual {v0, v1}, Ljava/lang/Runtime;->addShutdownHook(Ljava/lang/Thread;)V

    .line 582
    return-void
.end method


# virtual methods
.method public close()V
    .locals 2

    .prologue
    .line 586
    invoke-super {p0}, Lorg/mapdb/EngineWrapper;->close()V

    .line 587
    iget-object v0, p0, Lorg/mapdb/EngineWrapper$CloseOnJVMShutdown;->shutdownHappened:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/mapdb/EngineWrapper$CloseOnJVMShutdown;->hook:Ljava/lang/Thread;

    if-eqz v0, :cond_0

    .line 588
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    iget-object v1, p0, Lorg/mapdb/EngineWrapper$CloseOnJVMShutdown;->hook:Ljava/lang/Thread;

    invoke-virtual {v0, v1}, Ljava/lang/Runtime;->removeShutdownHook(Ljava/lang/Thread;)Z

    .line 590
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/mapdb/EngineWrapper$CloseOnJVMShutdown;->hook:Ljava/lang/Thread;

    .line 591
    return-void
.end method
