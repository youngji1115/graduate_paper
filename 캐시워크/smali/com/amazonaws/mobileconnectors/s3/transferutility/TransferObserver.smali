.class public Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferObserver;
.super Ljava/lang/Object;
.source "TransferObserver.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferObserver$TransferStatusListener;
    }
.end annotation


# instance fields
.field private bucket:Ljava/lang/String;

.field private bytesTotal:J

.field private bytesTransferred:J

.field private final dbUtil:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferDBUtil;

.field private filePath:Ljava/lang/String;

.field private final id:I

.field private key:Ljava/lang/String;

.field private statusListener:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferObserver$TransferStatusListener;

.field private transferListener:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferListener;

.field private transferState:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferState;


# direct methods
.method constructor <init>(ILcom/amazonaws/mobileconnectors/s3/transferutility/TransferDBUtil;Landroid/database/Cursor;)V
    .locals 0
    .param p1, "id"    # I
    .param p2, "dbUtil"    # Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferDBUtil;
    .param p3, "c"    # Landroid/database/Cursor;

    .prologue
    .line 92
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 93
    iput p1, p0, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferObserver;->id:I

    .line 94
    iput-object p2, p0, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferObserver;->dbUtil:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferDBUtil;

    .line 95
    invoke-direct {p0, p3}, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferObserver;->updateFromDB(Landroid/database/Cursor;)V

    .line 96
    return-void
.end method

.method constructor <init>(ILcom/amazonaws/mobileconnectors/s3/transferutility/TransferDBUtil;Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)V
    .locals 2
    .param p1, "id"    # I
    .param p2, "dbUtil"    # Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferDBUtil;
    .param p3, "bucket"    # Ljava/lang/String;
    .param p4, "key"    # Ljava/lang/String;
    .param p5, "file"    # Ljava/io/File;

    .prologue
    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 75
    iput p1, p0, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferObserver;->id:I

    .line 76
    iput-object p2, p0, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferObserver;->dbUtil:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferDBUtil;

    .line 77
    iput-object p3, p0, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferObserver;->bucket:Ljava/lang/String;

    .line 78
    iput-object p4, p0, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferObserver;->key:Ljava/lang/String;

    .line 79
    invoke-virtual {p5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferObserver;->filePath:Ljava/lang/String;

    .line 80
    invoke-virtual {p5}, Ljava/io/File;->length()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferObserver;->bytesTotal:J

    .line 81
    sget-object v0, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferState;->WAITING:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferState;

    iput-object v0, p0, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferObserver;->transferState:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferState;

    .line 82
    return-void
.end method

.method static synthetic access$102(Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferObserver;Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferState;)Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferState;
    .locals 0
    .param p0, "x0"    # Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferObserver;
    .param p1, "x1"    # Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferState;

    .prologue
    .line 49
    iput-object p1, p0, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferObserver;->transferState:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferState;

    return-object p1
.end method

.method static synthetic access$202(Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferObserver;J)J
    .locals 1
    .param p0, "x0"    # Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferObserver;
    .param p1, "x1"    # J

    .prologue
    .line 49
    iput-wide p1, p0, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferObserver;->bytesTransferred:J

    return-wide p1
.end method

.method static synthetic access$302(Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferObserver;J)J
    .locals 1
    .param p0, "x0"    # Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferObserver;
    .param p1, "x1"    # J

    .prologue
    .line 49
    iput-wide p1, p0, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferObserver;->bytesTotal:J

    return-wide p1
.end method

.method private updateFromDB(Landroid/database/Cursor;)V
    .locals 2
    .param p1, "c"    # Landroid/database/Cursor;

    .prologue
    .line 119
    const-string v0, "bucket_name"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferObserver;->bucket:Ljava/lang/String;

    .line 120
    const-string v0, "key"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferObserver;->key:Ljava/lang/String;

    .line 121
    const-string v0, "bytes_total"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferObserver;->bytesTotal:J

    .line 122
    const-string v0, "bytes_current"

    .line 123
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    .line 122
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferObserver;->bytesTransferred:J

    .line 124
    const-string/jumbo v0, "state"

    .line 125
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    .line 124
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferState;->getState(Ljava/lang/String;)Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferState;

    move-result-object v0

    iput-object v0, p0, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferObserver;->transferState:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferState;

    .line 126
    const-string v0, "file"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferObserver;->filePath:Ljava/lang/String;

    .line 127
    return-void
.end method


# virtual methods
.method public cleanTransferListener()V
    .locals 2

    .prologue
    .line 219
    monitor-enter p0

    .line 220
    :try_start_0
    iget-object v0, p0, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferObserver;->transferListener:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferListener;

    if-eqz v0, :cond_0

    .line 221
    iget v0, p0, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferObserver;->id:I

    iget-object v1, p0, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferObserver;->transferListener:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferListener;

    invoke-static {v0, v1}, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferStatusUpdater;->unregisterListener(ILcom/amazonaws/mobileconnectors/s3/transferutility/TransferListener;)V

    .line 222
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferObserver;->transferListener:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferListener;

    .line 224
    :cond_0
    iget-object v0, p0, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferObserver;->statusListener:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferObserver$TransferStatusListener;

    if-eqz v0, :cond_1

    .line 225
    iget v0, p0, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferObserver;->id:I

    iget-object v1, p0, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferObserver;->statusListener:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferObserver$TransferStatusListener;

    invoke-static {v0, v1}, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferStatusUpdater;->unregisterListener(ILcom/amazonaws/mobileconnectors/s3/transferutility/TransferListener;)V

    .line 226
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferObserver;->statusListener:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferObserver$TransferStatusListener;

    .line 228
    :cond_1
    monitor-exit p0

    .line 229
    return-void

    .line 228
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getAbsoluteFilePath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 194
    iget-object v0, p0, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferObserver;->filePath:Ljava/lang/String;

    return-object v0
.end method

.method public getBucket()Ljava/lang/String;
    .locals 1

    .prologue
    .line 167
    iget-object v0, p0, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferObserver;->bucket:Ljava/lang/String;

    return-object v0
.end method

.method public getBytesTotal()J
    .locals 2

    .prologue
    .line 185
    iget-wide v0, p0, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferObserver;->bytesTotal:J

    return-wide v0
.end method

.method public getBytesTransferred()J
    .locals 2

    .prologue
    .line 203
    iget-wide v0, p0, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferObserver;->bytesTransferred:J

    return-wide v0
.end method

.method public getId()I
    .locals 1

    .prologue
    .line 158
    iget v0, p0, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferObserver;->id:I

    return v0
.end method

.method public getKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 176
    iget-object v0, p0, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferObserver;->key:Ljava/lang/String;

    return-object v0
.end method

.method public getState()Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferState;
    .locals 1

    .prologue
    .line 212
    iget-object v0, p0, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferObserver;->transferState:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferState;

    return-object v0
.end method

.method public refresh()V
    .locals 3

    .prologue
    .line 103
    iget-object v1, p0, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferObserver;->dbUtil:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferDBUtil;

    iget v2, p0, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferObserver;->id:I

    invoke-virtual {v1, v2}, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferDBUtil;->queryTransferById(I)Landroid/database/Cursor;

    move-result-object v0

    .line 105
    .local v0, "c":Landroid/database/Cursor;
    :try_start_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 106
    invoke-direct {p0, v0}, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferObserver;->updateFromDB(Landroid/database/Cursor;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 109
    :cond_0
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 111
    return-void

    .line 109
    :catchall_0
    move-exception v1

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    throw v1
.end method

.method public setTransferListener(Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferListener;)V
    .locals 2
    .param p1, "listener"    # Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferListener;

    .prologue
    .line 139
    monitor-enter p0

    .line 141
    :try_start_0
    invoke-virtual {p0}, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferObserver;->cleanTransferListener()V

    .line 145
    new-instance v0, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferObserver$TransferStatusListener;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferObserver$TransferStatusListener;-><init>(Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferObserver;Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferObserver$1;)V

    iput-object v0, p0, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferObserver;->statusListener:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferObserver$TransferStatusListener;

    .line 146
    iget v0, p0, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferObserver;->id:I

    iget-object v1, p0, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferObserver;->statusListener:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferObserver$TransferStatusListener;

    invoke-static {v0, v1}, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferStatusUpdater;->registerListener(ILcom/amazonaws/mobileconnectors/s3/transferutility/TransferListener;)V

    .line 147
    iput-object p1, p0, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferObserver;->transferListener:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferListener;

    .line 148
    iget v0, p0, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferObserver;->id:I

    iget-object v1, p0, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferObserver;->transferListener:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferListener;

    invoke-static {v0, v1}, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferStatusUpdater;->registerListener(ILcom/amazonaws/mobileconnectors/s3/transferutility/TransferListener;)V

    .line 149
    monitor-exit p0

    .line 150
    return-void

    .line 149
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
