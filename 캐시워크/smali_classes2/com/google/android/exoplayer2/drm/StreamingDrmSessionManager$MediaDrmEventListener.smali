.class Lcom/google/android/exoplayer2/drm/StreamingDrmSessionManager$MediaDrmEventListener;
.super Ljava/lang/Object;
.source "StreamingDrmSessionManager.java"

# interfaces
.implements Lcom/google/android/exoplayer2/drm/ExoMediaDrm$OnEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/drm/StreamingDrmSessionManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MediaDrmEventListener"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/exoplayer2/drm/ExoMediaDrm$OnEventListener",
        "<TT;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/exoplayer2/drm/StreamingDrmSessionManager;


# direct methods
.method private constructor <init>(Lcom/google/android/exoplayer2/drm/StreamingDrmSessionManager;)V
    .locals 0

    .prologue
    .line 464
    .local p0, "this":Lcom/google/android/exoplayer2/drm/StreamingDrmSessionManager$MediaDrmEventListener;, "Lcom/google/android/exoplayer2/drm/StreamingDrmSessionManager<TT;>.MediaDrmEventListener;"
    iput-object p1, p0, Lcom/google/android/exoplayer2/drm/StreamingDrmSessionManager$MediaDrmEventListener;->this$0:Lcom/google/android/exoplayer2/drm/StreamingDrmSessionManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/exoplayer2/drm/StreamingDrmSessionManager;Lcom/google/android/exoplayer2/drm/StreamingDrmSessionManager$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/google/android/exoplayer2/drm/StreamingDrmSessionManager;
    .param p2, "x1"    # Lcom/google/android/exoplayer2/drm/StreamingDrmSessionManager$1;

    .prologue
    .line 464
    .local p0, "this":Lcom/google/android/exoplayer2/drm/StreamingDrmSessionManager$MediaDrmEventListener;, "Lcom/google/android/exoplayer2/drm/StreamingDrmSessionManager<TT;>.MediaDrmEventListener;"
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/drm/StreamingDrmSessionManager$MediaDrmEventListener;-><init>(Lcom/google/android/exoplayer2/drm/StreamingDrmSessionManager;)V

    return-void
.end method


# virtual methods
.method public onEvent(Lcom/google/android/exoplayer2/drm/ExoMediaDrm;[BII[B)V
    .locals 1
    .param p2, "sessionId"    # [B
    .param p3, "event"    # I
    .param p4, "extra"    # I
    .param p5, "data"    # [B
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/exoplayer2/drm/ExoMediaDrm",
            "<+TT;>;[BII[B)V"
        }
    .end annotation

    .prologue
    .line 469
    .local p0, "this":Lcom/google/android/exoplayer2/drm/StreamingDrmSessionManager$MediaDrmEventListener;, "Lcom/google/android/exoplayer2/drm/StreamingDrmSessionManager<TT;>.MediaDrmEventListener;"
    .local p1, "md":Lcom/google/android/exoplayer2/drm/ExoMediaDrm;, "Lcom/google/android/exoplayer2/drm/ExoMediaDrm<+TT;>;"
    iget-object v0, p0, Lcom/google/android/exoplayer2/drm/StreamingDrmSessionManager$MediaDrmEventListener;->this$0:Lcom/google/android/exoplayer2/drm/StreamingDrmSessionManager;

    iget-object v0, v0, Lcom/google/android/exoplayer2/drm/StreamingDrmSessionManager;->mediaDrmHandler:Lcom/google/android/exoplayer2/drm/StreamingDrmSessionManager$MediaDrmHandler;

    invoke-virtual {v0, p3}, Lcom/google/android/exoplayer2/drm/StreamingDrmSessionManager$MediaDrmHandler;->sendEmptyMessage(I)Z

    .line 470
    return-void
.end method
