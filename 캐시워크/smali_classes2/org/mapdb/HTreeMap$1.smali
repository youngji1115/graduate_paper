.class Lorg/mapdb/HTreeMap$1;
.super Ljava/lang/Object;
.source "HTreeMap.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/mapdb/HTreeMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/mapdb/HTreeMap;


# direct methods
.method constructor <init>(Lorg/mapdb/HTreeMap;)V
    .locals 0

    .prologue
    .line 84
    .local p0, "this":Lorg/mapdb/HTreeMap$1;, "Lorg/mapdb/HTreeMap.1;"
    iput-object p1, p0, Lorg/mapdb/HTreeMap$1;->this$0:Lorg/mapdb/HTreeMap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 86
    .local p0, "this":Lorg/mapdb/HTreeMap$1;, "Lorg/mapdb/HTreeMap.1;"
    iget-object v1, p0, Lorg/mapdb/HTreeMap$1;->this$0:Lorg/mapdb/HTreeMap;

    iget-object v1, v1, Lorg/mapdb/HTreeMap;->closeLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v1}, Ljava/util/concurrent/CountDownLatch;->getCount()J

    move-result-wide v2

    const-wide/16 v4, 0x1

    cmp-long v1, v2, v4

    if-lez v1, :cond_0

    .line 87
    iget-object v1, p0, Lorg/mapdb/HTreeMap$1;->this$0:Lorg/mapdb/HTreeMap;

    iget-object v1, v1, Lorg/mapdb/HTreeMap;->closeLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v1}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 91
    :cond_0
    :try_start_0
    iget-object v1, p0, Lorg/mapdb/HTreeMap$1;->this$0:Lorg/mapdb/HTreeMap;

    iget-object v1, v1, Lorg/mapdb/HTreeMap;->closeLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v1}, Ljava/util/concurrent/CountDownLatch;->await()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 97
    iget-object v1, p0, Lorg/mapdb/HTreeMap$1;->this$0:Lorg/mapdb/HTreeMap;

    iget-object v1, v1, Lorg/mapdb/HTreeMap;->engine:Lorg/mapdb/Engine;

    iget-object v2, p0, Lorg/mapdb/HTreeMap$1;->this$0:Lorg/mapdb/HTreeMap;

    iget-object v2, v2, Lorg/mapdb/HTreeMap;->closeListener:Ljava/lang/Runnable;

    invoke-interface {v1, v2}, Lorg/mapdb/Engine;->closeListenerUnregister(Ljava/lang/Runnable;)V

    .line 98
    return-void

    .line 92
    :catch_0
    move-exception v0

    .line 93
    .local v0, "e":Ljava/lang/InterruptedException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method
