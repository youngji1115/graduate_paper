.class Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment$14;
.super Ljava/lang/Object;
.source "LockScreenCenterFragment.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnCompletionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment;->playCoinSound()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment;

.field final synthetic val$volume:I


# direct methods
.method constructor <init>(Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment;I)V
    .locals 0
    .param p1, "this$0"    # Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment;

    .prologue
    .line 1192
    iput-object p1, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment$14;->this$0:Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment;

    iput p2, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment$14;->val$volume:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompletion(Landroid/media/MediaPlayer;)V
    .locals 9
    .param p1, "mp"    # Landroid/media/MediaPlayer;

    .prologue
    .line 1196
    invoke-virtual {p1}, Landroid/media/MediaPlayer;->release()V

    .line 1198
    const/high16 v8, 0x3f800000    # 1.0f

    .line 1199
    .local v8, "setVolume":F
    :try_start_0
    iget v1, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment$14;->val$volume:I

    const/16 v2, 0xa

    if-lt v1, v2, :cond_0

    .line 1200
    const v8, 0x3dcccccd    # 0.1f

    .line 1202
    :cond_0
    iget v1, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment$14;->val$volume:I

    const/4 v2, 0x7

    if-lt v1, v2, :cond_1

    .line 1203
    const/high16 v8, 0x3f000000    # 0.5f

    .line 1205
    :cond_1
    iget-object v1, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment$14;->this$0:Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment;

    invoke-static {v1}, Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment;->access$2800(Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment;)Landroid/content/res/AssetManager;

    move-result-object v1

    const-string v2, "coin2.mp3"

    invoke-virtual {v1, v2}, Landroid/content/res/AssetManager;->openFd(Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;

    move-result-object v6

    .line 1206
    .local v6, "afd":Landroid/content/res/AssetFileDescriptor;
    new-instance v0, Landroid/media/MediaPlayer;

    invoke-direct {v0}, Landroid/media/MediaPlayer;-><init>()V

    .line 1207
    .local v0, "player":Landroid/media/MediaPlayer;
    invoke-virtual {v0, v8, v8}, Landroid/media/MediaPlayer;->setVolume(FF)V

    .line 1208
    invoke-virtual {v6}, Landroid/content/res/AssetFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v1

    invoke-virtual {v6}, Landroid/content/res/AssetFileDescriptor;->getStartOffset()J

    move-result-wide v2

    invoke-virtual {v6}, Landroid/content/res/AssetFileDescriptor;->getLength()J

    move-result-wide v4

    invoke-virtual/range {v0 .. v5}, Landroid/media/MediaPlayer;->setDataSource(Ljava/io/FileDescriptor;JJ)V

    .line 1209
    invoke-virtual {v0}, Landroid/media/MediaPlayer;->prepare()V

    .line 1210
    invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V

    .line 1211
    new-instance v1, Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment$14$1;

    invoke-direct {v1, p0}, Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment$14$1;-><init>(Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment$14;)V

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 1219
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setLooping(Z)V

    .line 1221
    sget-boolean v1, Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment;->bVibration:Z

    if-eqz v1, :cond_2

    .line 1222
    iget-object v1, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment$14;->this$0:Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment;

    invoke-static {v1}, Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment;->access$700(Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment;)Landroid/os/Vibrator;

    move-result-object v1

    const-wide/16 v2, 0x28

    invoke-virtual {v1, v2, v3}, Landroid/os/Vibrator;->vibrate(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1229
    .end local v0    # "player":Landroid/media/MediaPlayer;
    .end local v6    # "afd":Landroid/content/res/AssetFileDescriptor;
    :cond_2
    :goto_0
    return-void

    .line 1224
    :catch_0
    move-exception v7

    .line 1225
    .local v7, "e":Ljava/lang/Exception;
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
