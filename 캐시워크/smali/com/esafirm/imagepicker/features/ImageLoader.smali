.class public Lcom/esafirm/imagepicker/features/ImageLoader;
.super Ljava/lang/Object;
.source "ImageLoader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/esafirm/imagepicker/features/ImageLoader$ImageLoadRunnable;
    }
.end annotation


# instance fields
.field private context:Landroid/content/Context;

.field private executorService:Ljava/util/concurrent/ExecutorService;

.field private final projection:[Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "_display_name"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "_data"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "bucket_display_name"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/esafirm/imagepicker/features/ImageLoader;->projection:[Ljava/lang/String;

    .line 25
    iput-object p1, p0, Lcom/esafirm/imagepicker/features/ImageLoader;->context:Landroid/content/Context;

    .line 26
    return-void
.end method

.method static synthetic access$000(Lcom/esafirm/imagepicker/features/ImageLoader;)[Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/esafirm/imagepicker/features/ImageLoader;

    .prologue
    .line 19
    iget-object v0, p0, Lcom/esafirm/imagepicker/features/ImageLoader;->projection:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/esafirm/imagepicker/features/ImageLoader;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/esafirm/imagepicker/features/ImageLoader;

    .prologue
    .line 19
    iget-object v0, p0, Lcom/esafirm/imagepicker/features/ImageLoader;->context:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$200(Ljava/lang/String;)Ljava/io/File;
    .locals 1
    .param p0, "x0"    # Ljava/lang/String;

    .prologue
    .line 19
    invoke-static {p0}, Lcom/esafirm/imagepicker/features/ImageLoader;->makeSafeFile(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method private getExecutorService()Ljava/util/concurrent/ExecutorService;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/esafirm/imagepicker/features/ImageLoader;->executorService:Ljava/util/concurrent/ExecutorService;

    if-nez v0, :cond_0

    .line 48
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/esafirm/imagepicker/features/ImageLoader;->executorService:Ljava/util/concurrent/ExecutorService;

    .line 50
    :cond_0
    iget-object v0, p0, Lcom/esafirm/imagepicker/features/ImageLoader;->executorService:Ljava/util/concurrent/ExecutorService;

    return-object v0
.end method

.method private static makeSafeFile(Ljava/lang/String;)Ljava/io/File;
    .locals 3
    .param p0, "path"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 116
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    move-object v1, v2

    .line 122
    :goto_0
    return-object v1

    .line 120
    :cond_1
    :try_start_0
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 121
    :catch_0
    move-exception v0

    .local v0, "ignored":Ljava/lang/Exception;
    move-object v1, v2

    .line 122
    goto :goto_0
.end method


# virtual methods
.method public abortLoadImages()V
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/esafirm/imagepicker/features/ImageLoader;->executorService:Ljava/util/concurrent/ExecutorService;

    if-eqz v0, :cond_0

    .line 41
    iget-object v0, p0, Lcom/esafirm/imagepicker/features/ImageLoader;->executorService:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    .line 42
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/esafirm/imagepicker/features/ImageLoader;->executorService:Ljava/util/concurrent/ExecutorService;

    .line 44
    :cond_0
    return-void
.end method

.method public loadDeviceImages(ZLcom/esafirm/imagepicker/features/common/ImageLoaderListener;)V
    .locals 2
    .param p1, "isFolderMode"    # Z
    .param p2, "listener"    # Lcom/esafirm/imagepicker/features/common/ImageLoaderListener;

    .prologue
    .line 36
    invoke-direct {p0}, Lcom/esafirm/imagepicker/features/ImageLoader;->getExecutorService()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    new-instance v1, Lcom/esafirm/imagepicker/features/ImageLoader$ImageLoadRunnable;

    invoke-direct {v1, p0, p1, p2}, Lcom/esafirm/imagepicker/features/ImageLoader$ImageLoadRunnable;-><init>(Lcom/esafirm/imagepicker/features/ImageLoader;ZLcom/esafirm/imagepicker/features/common/ImageLoaderListener;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 37
    return-void
.end method
