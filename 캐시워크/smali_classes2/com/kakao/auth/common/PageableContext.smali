.class public Lcom/kakao/auth/common/PageableContext;
.super Ljava/lang/Object;
.source "PageableContext.java"


# instance fields
.field private afterUrl:Ljava/lang/String;

.field private beforeUrl:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public declared-synchronized getAfterUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 30
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/kakao/auth/common/PageableContext;->afterUrl:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getBeforeUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 26
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/kakao/auth/common/PageableContext;->beforeUrl:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized hasNext()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 46
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/kakao/auth/common/PageableContext;->beforeUrl:Ljava/lang/String;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/kakao/auth/common/PageableContext;->afterUrl:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_1

    .line 54
    :cond_0
    :goto_0
    monitor-exit p0

    return v0

    .line 50
    :cond_1
    :try_start_1
    iget-object v1, p0, Lcom/kakao/auth/common/PageableContext;->beforeUrl:Ljava/lang/String;

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/kakao/auth/common/PageableContext;->afterUrl:Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v1, :cond_0

    .line 54
    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    .line 46
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setAfterUrl(Ljava/lang/String;)V
    .locals 1
    .param p1, "afterUrl"    # Ljava/lang/String;

    .prologue
    .line 38
    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lcom/kakao/auth/common/PageableContext;->afterUrl:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 39
    monitor-exit p0

    return-void

    .line 38
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setBeforeUrl(Ljava/lang/String;)V
    .locals 1
    .param p1, "beforeUrl"    # Ljava/lang/String;

    .prologue
    .line 34
    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lcom/kakao/auth/common/PageableContext;->beforeUrl:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 35
    monitor-exit p0

    return-void

    .line 34
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
