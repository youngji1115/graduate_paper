.class Lorg/mapdb/Caches$WeakSoftRef$1;
.super Ljava/lang/Thread;
.source "Caches.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/mapdb/Caches$WeakSoftRef;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/mapdb/Caches$WeakSoftRef;


# direct methods
.method constructor <init>(Lorg/mapdb/Caches$WeakSoftRef;Ljava/lang/String;)V
    .locals 0
    .param p2, "x0"    # Ljava/lang/String;

    .prologue
    .line 403
    iput-object p1, p0, Lorg/mapdb/Caches$WeakSoftRef$1;->this$0:Lorg/mapdb/Caches$WeakSoftRef;

    invoke-direct {p0, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 406
    iget-object v0, p0, Lorg/mapdb/Caches$WeakSoftRef$1;->this$0:Lorg/mapdb/Caches$WeakSoftRef;

    invoke-virtual {v0}, Lorg/mapdb/Caches$WeakSoftRef;->runRefQueue()V

    .line 407
    return-void
.end method
