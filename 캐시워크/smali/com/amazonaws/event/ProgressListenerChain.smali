.class public Lcom/amazonaws/event/ProgressListenerChain;
.super Ljava/lang/Object;
.source "ProgressListenerChain.java"

# interfaces
.implements Lcom/amazonaws/event/ProgressListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazonaws/event/ProgressListenerChain$ProgressEventFilter;
    }
.end annotation


# static fields
.field private static final log:Lorg/apache/commons/logging/Log;


# instance fields
.field private final listeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/amazonaws/event/ProgressListener;",
            ">;"
        }
    .end annotation
.end field

.field private final progressEventFilter:Lcom/amazonaws/event/ProgressListenerChain$ProgressEventFilter;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 40
    const-class v0, Lcom/amazonaws/event/ProgressListenerChain;

    invoke-static {v0}, Lorg/apache/commons/logging/LogFactory;->getLog(Ljava/lang/Class;)Lorg/apache/commons/logging/Log;

    move-result-object v0

    sput-object v0, Lcom/amazonaws/event/ProgressListenerChain;->log:Lorg/apache/commons/logging/Log;

    return-void
.end method

.method public varargs constructor <init>(Lcom/amazonaws/event/ProgressListenerChain$ProgressEventFilter;[Lcom/amazonaws/event/ProgressListener;)V
    .locals 3
    .param p1, "progressEventFilter"    # Lcom/amazonaws/event/ProgressListenerChain$ProgressEventFilter;
    .param p2, "listeners"    # [Lcom/amazonaws/event/ProgressListener;

    .prologue
    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    new-instance v1, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v1, p0, Lcom/amazonaws/event/ProgressListenerChain;->listeners:Ljava/util/List;

    .line 55
    if-nez p2, :cond_0

    .line 56
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Progress Listeners cannot be null."

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 59
    :cond_0
    array-length v2, p2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v2, :cond_1

    aget-object v0, p2, v1

    .line 60
    .local v0, "listener":Lcom/amazonaws/event/ProgressListener;
    invoke-virtual {p0, v0}, Lcom/amazonaws/event/ProgressListenerChain;->addProgressListener(Lcom/amazonaws/event/ProgressListener;)V

    .line 59
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 61
    .end local v0    # "listener":Lcom/amazonaws/event/ProgressListener;
    :cond_1
    iput-object p1, p0, Lcom/amazonaws/event/ProgressListenerChain;->progressEventFilter:Lcom/amazonaws/event/ProgressListenerChain$ProgressEventFilter;

    .line 62
    return-void
.end method

.method public varargs constructor <init>([Lcom/amazonaws/event/ProgressListener;)V
    .locals 1
    .param p1, "listeners"    # [Lcom/amazonaws/event/ProgressListener;

    .prologue
    .line 47
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Lcom/amazonaws/event/ProgressListenerChain;-><init>(Lcom/amazonaws/event/ProgressListenerChain$ProgressEventFilter;[Lcom/amazonaws/event/ProgressListener;)V

    .line 48
    return-void
.end method


# virtual methods
.method public declared-synchronized addProgressListener(Lcom/amazonaws/event/ProgressListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/amazonaws/event/ProgressListener;

    .prologue
    .line 65
    monitor-enter p0

    if-nez p1, :cond_0

    .line 68
    :goto_0
    monitor-exit p0

    return-void

    .line 67
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/amazonaws/event/ProgressListenerChain;->listeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 65
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected getListeners()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/amazonaws/event/ProgressListener;",
            ">;"
        }
    .end annotation

    .prologue
    .line 80
    iget-object v0, p0, Lcom/amazonaws/event/ProgressListenerChain;->listeners:Ljava/util/List;

    return-object v0
.end method

.method public progressChanged(Lcom/amazonaws/event/ProgressEvent;)V
    .locals 6
    .param p1, "progressEvent"    # Lcom/amazonaws/event/ProgressEvent;

    .prologue
    .line 85
    move-object v1, p1

    .line 86
    .local v1, "filteredEvent":Lcom/amazonaws/event/ProgressEvent;
    iget-object v3, p0, Lcom/amazonaws/event/ProgressListenerChain;->progressEventFilter:Lcom/amazonaws/event/ProgressListenerChain$ProgressEventFilter;

    if-eqz v3, :cond_1

    .line 87
    iget-object v3, p0, Lcom/amazonaws/event/ProgressListenerChain;->progressEventFilter:Lcom/amazonaws/event/ProgressListenerChain$ProgressEventFilter;

    invoke-interface {v3, p1}, Lcom/amazonaws/event/ProgressListenerChain$ProgressEventFilter;->filter(Lcom/amazonaws/event/ProgressEvent;)Lcom/amazonaws/event/ProgressEvent;

    move-result-object v1

    .line 88
    if-nez v1, :cond_1

    .line 99
    :cond_0
    return-void

    .line 92
    :cond_1
    iget-object v3, p0, Lcom/amazonaws/event/ProgressListenerChain;->listeners:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/amazonaws/event/ProgressListener;

    .line 94
    .local v2, "listener":Lcom/amazonaws/event/ProgressListener;
    :try_start_0
    invoke-interface {v2, v1}, Lcom/amazonaws/event/ProgressListener;->progressChanged(Lcom/amazonaws/event/ProgressEvent;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 95
    :catch_0
    move-exception v0

    .line 96
    .local v0, "e":Ljava/lang/RuntimeException;
    sget-object v4, Lcom/amazonaws/event/ProgressListenerChain;->log:Lorg/apache/commons/logging/Log;

    const-string v5, "Couldn\'t update progress listener"

    invoke-interface {v4, v5, v0}, Lorg/apache/commons/logging/Log;->warn(Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public declared-synchronized removeProgressListener(Lcom/amazonaws/event/ProgressListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/amazonaws/event/ProgressListener;

    .prologue
    .line 71
    monitor-enter p0

    if-nez p1, :cond_0

    .line 74
    :goto_0
    monitor-exit p0

    return-void

    .line 73
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/amazonaws/event/ProgressListenerChain;->listeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 71
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
