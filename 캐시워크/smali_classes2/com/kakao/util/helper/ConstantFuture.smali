.class public final Lcom/kakao/util/helper/ConstantFuture;
.super Ljava/lang/Object;
.source "ConstantFuture.java"

# interfaces
.implements Ljava/util/concurrent/Future;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Future",
        "<TT;>;"
    }
.end annotation


# instance fields
.field private final v:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 12
    .local p0, "this":Lcom/kakao/util/helper/ConstantFuture;, "Lcom/kakao/util/helper/ConstantFuture<TT;>;"
    .local p1, "v":Ljava/lang/Object;, "TT;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    iput-object p1, p0, Lcom/kakao/util/helper/ConstantFuture;->v:Ljava/lang/Object;

    .line 14
    return-void
.end method


# virtual methods
.method public cancel(Z)Z
    .locals 1
    .param p1, "mayInterruptIfRunning"    # Z

    .prologue
    .line 18
    .local p0, "this":Lcom/kakao/util/helper/ConstantFuture;, "Lcom/kakao/util/helper/ConstantFuture<TT;>;"
    const/4 v0, 0x0

    return v0
.end method

.method public get()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 33
    .local p0, "this":Lcom/kakao/util/helper/ConstantFuture;, "Lcom/kakao/util/helper/ConstantFuture<TT;>;"
    iget-object v0, p0, Lcom/kakao/util/helper/ConstantFuture;->v:Ljava/lang/Object;

    return-object v0
.end method

.method public get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;
    .locals 1
    .param p1, "timeout"    # J
    .param p3, "unit"    # Ljava/util/concurrent/TimeUnit;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            ")TT;"
        }
    .end annotation

    .prologue
    .line 38
    .local p0, "this":Lcom/kakao/util/helper/ConstantFuture;, "Lcom/kakao/util/helper/ConstantFuture<TT;>;"
    iget-object v0, p0, Lcom/kakao/util/helper/ConstantFuture;->v:Ljava/lang/Object;

    return-object v0
.end method

.method public isCancelled()Z
    .locals 1

    .prologue
    .line 23
    .local p0, "this":Lcom/kakao/util/helper/ConstantFuture;, "Lcom/kakao/util/helper/ConstantFuture<TT;>;"
    const/4 v0, 0x0

    return v0
.end method

.method public isDone()Z
    .locals 1

    .prologue
    .line 28
    .local p0, "this":Lcom/kakao/util/helper/ConstantFuture;, "Lcom/kakao/util/helper/ConstantFuture<TT;>;"
    const/4 v0, 0x1

    return v0
.end method
