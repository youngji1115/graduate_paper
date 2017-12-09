.class public final Lcom/amazonaws/http/IdleConnectionReaper;
.super Ljava/lang/Thread;
.source "IdleConnectionReaper.java"


# static fields
.field private static final PERIOD_MILLISECONDS:I = 0xea60

.field private static final connectionManagers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lorg/apache/http/conn/ClientConnectionManager;",
            ">;"
        }
    .end annotation
.end field

.field private static instance:Lcom/amazonaws/http/IdleConnectionReaper;

.field static final log:Lorg/apache/commons/logging/Log;


# instance fields
.field private volatile shuttingDown:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 53
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/amazonaws/http/IdleConnectionReaper;->connectionManagers:Ljava/util/ArrayList;

    .line 64
    const-class v0, Lcom/amazonaws/http/IdleConnectionReaper;

    invoke-static {v0}, Lorg/apache/commons/logging/LogFactory;->getLog(Ljava/lang/Class;)Lorg/apache/commons/logging/Log;

    move-result-object v0

    sput-object v0, Lcom/amazonaws/http/IdleConnectionReaper;->log:Lorg/apache/commons/logging/Log;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 68
    const-string v0, "java-sdk-http-connection-reaper"

    invoke-direct {p0, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    .line 69
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/amazonaws/http/IdleConnectionReaper;->setDaemon(Z)V

    .line 70
    return-void
.end method

.method private markShuttingDown()V
    .locals 1

    .prologue
    .line 103
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/amazonaws/http/IdleConnectionReaper;->shuttingDown:Z

    .line 104
    return-void
.end method

.method public static declared-synchronized registerConnectionManager(Lorg/apache/http/conn/ClientConnectionManager;)Z
    .locals 2
    .param p0, "connectionManager"    # Lorg/apache/http/conn/ClientConnectionManager;

    .prologue
    .line 80
    const-class v1, Lcom/amazonaws/http/IdleConnectionReaper;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/amazonaws/http/IdleConnectionReaper;->instance:Lcom/amazonaws/http/IdleConnectionReaper;

    if-nez v0, :cond_0

    .line 81
    new-instance v0, Lcom/amazonaws/http/IdleConnectionReaper;

    invoke-direct {v0}, Lcom/amazonaws/http/IdleConnectionReaper;-><init>()V

    sput-object v0, Lcom/amazonaws/http/IdleConnectionReaper;->instance:Lcom/amazonaws/http/IdleConnectionReaper;

    .line 82
    sget-object v0, Lcom/amazonaws/http/IdleConnectionReaper;->instance:Lcom/amazonaws/http/IdleConnectionReaper;

    invoke-virtual {v0}, Lcom/amazonaws/http/IdleConnectionReaper;->start()V

    .line 84
    :cond_0
    sget-object v0, Lcom/amazonaws/http/IdleConnectionReaper;->connectionManagers:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit v1

    return v0

    .line 80
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized removeConnectionManager(Lorg/apache/http/conn/ClientConnectionManager;)Z
    .locals 3
    .param p0, "connectionManager"    # Lorg/apache/http/conn/ClientConnectionManager;

    .prologue
    .line 96
    const-class v2, Lcom/amazonaws/http/IdleConnectionReaper;

    monitor-enter v2

    :try_start_0
    sget-object v1, Lcom/amazonaws/http/IdleConnectionReaper;->connectionManagers:Ljava/util/ArrayList;

    invoke-virtual {v1, p0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v0

    .line 97
    .local v0, "b":Z
    sget-object v1, Lcom/amazonaws/http/IdleConnectionReaper;->connectionManagers:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 98
    invoke-static {}, Lcom/amazonaws/http/IdleConnectionReaper;->shutdown()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 99
    :cond_0
    monitor-exit v2

    return v0

    .line 96
    .end local v0    # "b":Z
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public static declared-synchronized shutdown()Z
    .locals 2

    .prologue
    .line 157
    const-class v1, Lcom/amazonaws/http/IdleConnectionReaper;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/amazonaws/http/IdleConnectionReaper;->instance:Lcom/amazonaws/http/IdleConnectionReaper;

    if-eqz v0, :cond_0

    .line 158
    sget-object v0, Lcom/amazonaws/http/IdleConnectionReaper;->instance:Lcom/amazonaws/http/IdleConnectionReaper;

    invoke-direct {v0}, Lcom/amazonaws/http/IdleConnectionReaper;->markShuttingDown()V

    .line 159
    sget-object v0, Lcom/amazonaws/http/IdleConnectionReaper;->instance:Lcom/amazonaws/http/IdleConnectionReaper;

    invoke-virtual {v0}, Lcom/amazonaws/http/IdleConnectionReaper;->interrupt()V

    .line 160
    sget-object v0, Lcom/amazonaws/http/IdleConnectionReaper;->connectionManagers:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 161
    const/4 v0, 0x0

    sput-object v0, Lcom/amazonaws/http/IdleConnectionReaper;->instance:Lcom/amazonaws/http/IdleConnectionReaper;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 162
    const/4 v0, 0x1

    .line 164
    :goto_0
    monitor-exit v1

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 157
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method static declared-synchronized size()I
    .locals 2

    .prologue
    .line 172
    const-class v1, Lcom/amazonaws/http/IdleConnectionReaper;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/amazonaws/http/IdleConnectionReaper;->connectionManagers:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit v1

    return v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public run()V
    .locals 9

    .prologue
    .line 110
    :cond_0
    :goto_0
    iget-boolean v5, p0, Lcom/amazonaws/http/IdleConnectionReaper;->shuttingDown:Z

    if-eqz v5, :cond_1

    .line 111
    sget-object v5, Lcom/amazonaws/http/IdleConnectionReaper;->log:Lorg/apache/commons/logging/Log;

    const-string v6, "Shutting down reaper thread."

    invoke-interface {v5, v6}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    .line 112
    return-void

    .line 115
    :cond_1
    const-wide/32 v6, 0xea60

    :try_start_0
    invoke-static {v6, v7}, Ljava/lang/Thread;->sleep(J)V

    .line 123
    const/4 v3, 0x0

    .line 124
    .local v3, "connectionManagers":Ljava/util/List;, "Ljava/util/List<Lorg/apache/http/conn/ClientConnectionManager;>;"
    const-class v6, Lcom/amazonaws/http/IdleConnectionReaper;

    monitor-enter v6
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    .line 125
    :try_start_1
    sget-object v5, Lcom/amazonaws/http/IdleConnectionReaper;->connectionManagers:Ljava/util/ArrayList;

    .line 126
    invoke-virtual {v5}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v5

    move-object v0, v5

    check-cast v0, Ljava/util/List;

    move-object v3, v0

    .line 127
    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 128
    :try_start_2
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/http/conn/ClientConnectionManager;
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    .line 134
    .local v2, "connectionManager":Lorg/apache/http/conn/ClientConnectionManager;
    const-wide/16 v6, 0x3c

    :try_start_3
    sget-object v8, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v2, v6, v7, v8}, Lorg/apache/http/conn/ClientConnectionManager;->closeIdleConnections(JLjava/util/concurrent/TimeUnit;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_1

    .line 135
    :catch_0
    move-exception v4

    .line 136
    .local v4, "t":Ljava/lang/Exception;
    :try_start_4
    sget-object v6, Lcom/amazonaws/http/IdleConnectionReaper;->log:Lorg/apache/commons/logging/Log;

    const-string v7, "Unable to close idle connections"

    invoke-interface {v6, v7, v4}, Lorg/apache/commons/logging/Log;->warn(Ljava/lang/Object;Ljava/lang/Throwable;)V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_1

    .line 139
    .end local v2    # "connectionManager":Lorg/apache/http/conn/ClientConnectionManager;
    .end local v3    # "connectionManagers":Ljava/util/List;, "Ljava/util/List<Lorg/apache/http/conn/ClientConnectionManager;>;"
    .end local v4    # "t":Ljava/lang/Exception;
    :catch_1
    move-exception v4

    .line 140
    .local v4, "t":Ljava/lang/Throwable;
    sget-object v5, Lcom/amazonaws/http/IdleConnectionReaper;->log:Lorg/apache/commons/logging/Log;

    const-string v6, "Reaper thread: "

    invoke-interface {v5, v6, v4}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 127
    .end local v4    # "t":Ljava/lang/Throwable;
    .restart local v3    # "connectionManagers":Ljava/util/List;, "Ljava/util/List<Lorg/apache/http/conn/ClientConnectionManager;>;"
    :catchall_0
    move-exception v5

    :try_start_5
    monitor-exit v6
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :try_start_6
    throw v5
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_1
.end method
