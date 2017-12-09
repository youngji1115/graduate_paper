.class Lorg/mapdb/EngineWrapper$CloseOnJVMShutdown$1;
.super Ljava/lang/Object;
.source "EngineWrapper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/mapdb/EngineWrapper$CloseOnJVMShutdown;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/mapdb/EngineWrapper$CloseOnJVMShutdown;


# direct methods
.method constructor <init>(Lorg/mapdb/EngineWrapper$CloseOnJVMShutdown;)V
    .locals 0

    .prologue
    .line 564
    iput-object p1, p0, Lorg/mapdb/EngineWrapper$CloseOnJVMShutdown$1;->this$0:Lorg/mapdb/EngineWrapper$CloseOnJVMShutdown;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 567
    iget-object v0, p0, Lorg/mapdb/EngineWrapper$CloseOnJVMShutdown$1;->this$0:Lorg/mapdb/EngineWrapper$CloseOnJVMShutdown;

    iget-object v0, v0, Lorg/mapdb/EngineWrapper$CloseOnJVMShutdown;->shutdownHappened:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 568
    iget-object v0, p0, Lorg/mapdb/EngineWrapper$CloseOnJVMShutdown$1;->this$0:Lorg/mapdb/EngineWrapper$CloseOnJVMShutdown;

    const/4 v1, 0x0

    iput-object v1, v0, Lorg/mapdb/EngineWrapper$CloseOnJVMShutdown;->hook:Ljava/lang/Thread;

    .line 569
    iget-object v0, p0, Lorg/mapdb/EngineWrapper$CloseOnJVMShutdown$1;->this$0:Lorg/mapdb/EngineWrapper$CloseOnJVMShutdown;

    invoke-virtual {v0}, Lorg/mapdb/EngineWrapper$CloseOnJVMShutdown;->isClosed()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 572
    :goto_0
    return-void

    .line 571
    :cond_0
    iget-object v0, p0, Lorg/mapdb/EngineWrapper$CloseOnJVMShutdown$1;->this$0:Lorg/mapdb/EngineWrapper$CloseOnJVMShutdown;

    invoke-virtual {v0}, Lorg/mapdb/EngineWrapper$CloseOnJVMShutdown;->close()V

    goto :goto_0
.end method
