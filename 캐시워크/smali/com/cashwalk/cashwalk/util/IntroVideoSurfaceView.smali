.class public Lcom/cashwalk/cashwalk/util/IntroVideoSurfaceView;
.super Landroid/view/SurfaceView;
.source "IntroVideoSurfaceView.java"

# interfaces
.implements Landroid/view/SurfaceHolder$Callback;


# instance fields
.field private mp:Landroid/media/MediaPlayer;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 35
    invoke-direct {p0, p1}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;)V

    .line 36
    invoke-direct {p0}, Lcom/cashwalk/cashwalk/util/IntroVideoSurfaceView;->init()V

    .line 37
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 31
    invoke-direct {p0, p1, p2}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 32
    invoke-direct {p0}, Lcom/cashwalk/cashwalk/util/IntroVideoSurfaceView;->init()V

    .line 33
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 27
    invoke-direct {p0, p1, p2, p3}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 28
    invoke-direct {p0}, Lcom/cashwalk/cashwalk/util/IntroVideoSurfaceView;->init()V

    .line 29
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I
    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    .prologue
    .line 22
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 23
    invoke-direct {p0}, Lcom/cashwalk/cashwalk/util/IntroVideoSurfaceView;->init()V

    .line 24
    return-void
.end method

.method private init()V
    .locals 1

    .prologue
    .line 40
    invoke-virtual {p0}, Lcom/cashwalk/cashwalk/util/IntroVideoSurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    invoke-interface {v0, p0}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    .line 41
    return-void
.end method


# virtual methods
.method public surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .locals 0
    .param p1, "holder"    # Landroid/view/SurfaceHolder;
    .param p2, "format"    # I
    .param p3, "width"    # I
    .param p4, "height"    # I

    .prologue
    .line 68
    return-void
.end method

.method public surfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 12
    .param p1, "holder"    # Landroid/view/SurfaceHolder;

    .prologue
    .line 45
    new-instance v0, Landroid/media/MediaPlayer;

    invoke-direct {v0}, Landroid/media/MediaPlayer;-><init>()V

    iput-object v0, p0, Lcom/cashwalk/cashwalk/util/IntroVideoSurfaceView;->mp:Landroid/media/MediaPlayer;

    .line 46
    invoke-virtual {p0}, Lcom/cashwalk/cashwalk/util/IntroVideoSurfaceView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f080002

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->openRawResourceFd(I)Landroid/content/res/AssetFileDescriptor;

    move-result-object v6

    .line 48
    .local v6, "afd":Landroid/content/res/AssetFileDescriptor;
    :try_start_0
    iget-object v0, p0, Lcom/cashwalk/cashwalk/util/IntroVideoSurfaceView;->mp:Landroid/media/MediaPlayer;

    invoke-virtual {v6}, Landroid/content/res/AssetFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v1

    invoke-virtual {v6}, Landroid/content/res/AssetFileDescriptor;->getStartOffset()J

    move-result-wide v2

    invoke-virtual {v6}, Landroid/content/res/AssetFileDescriptor;->getDeclaredLength()J

    move-result-wide v4

    invoke-virtual/range {v0 .. v5}, Landroid/media/MediaPlayer;->setDataSource(Ljava/io/FileDescriptor;JJ)V

    .line 49
    iget-object v0, p0, Lcom/cashwalk/cashwalk/util/IntroVideoSurfaceView;->mp:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->prepare()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 53
    :goto_0
    iget-object v0, p0, Lcom/cashwalk/cashwalk/util/IntroVideoSurfaceView;->mp:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getVideoWidth()I

    move-result v11

    .line 54
    .local v11, "videoWidth":I
    iget-object v0, p0, Lcom/cashwalk/cashwalk/util/IntroVideoSurfaceView;->mp:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getVideoHeight()I

    move-result v10

    .line 55
    .local v10, "videoHeight":I
    invoke-virtual {p0}, Lcom/cashwalk/cashwalk/util/IntroVideoSurfaceView;->getHeight()I

    move-result v9

    .line 56
    .local v9, "screenHeight":I
    invoke-virtual {p0}, Lcom/cashwalk/cashwalk/util/IntroVideoSurfaceView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v8

    .line 57
    .local v8, "lp":Landroid/view/ViewGroup$LayoutParams;
    iput v9, v8, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 58
    int-to-float v0, v11

    int-to-float v1, v10

    div-float/2addr v0, v1

    int-to-float v1, v9

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, v8, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 60
    invoke-virtual {p0, v8}, Lcom/cashwalk/cashwalk/util/IntroVideoSurfaceView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 61
    iget-object v0, p0, Lcom/cashwalk/cashwalk/util/IntroVideoSurfaceView;->mp:Landroid/media/MediaPlayer;

    invoke-virtual {p0}, Lcom/cashwalk/cashwalk/util/IntroVideoSurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setDisplay(Landroid/view/SurfaceHolder;)V

    .line 62
    iget-object v0, p0, Lcom/cashwalk/cashwalk/util/IntroVideoSurfaceView;->mp:Landroid/media/MediaPlayer;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setLooping(Z)V

    .line 63
    iget-object v0, p0, Lcom/cashwalk/cashwalk/util/IntroVideoSurfaceView;->mp:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V

    .line 64
    return-void

    .line 50
    .end local v8    # "lp":Landroid/view/ViewGroup$LayoutParams;
    .end local v9    # "screenHeight":I
    .end local v10    # "videoHeight":I
    .end local v11    # "videoWidth":I
    :catch_0
    move-exception v7

    .line 51
    .local v7, "e":Ljava/io/IOException;
    invoke-virtual {v7}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method

.method public surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 1
    .param p1, "holder"    # Landroid/view/SurfaceHolder;

    .prologue
    .line 72
    iget-object v0, p0, Lcom/cashwalk/cashwalk/util/IntroVideoSurfaceView;->mp:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->stop()V

    .line 73
    return-void
.end method
