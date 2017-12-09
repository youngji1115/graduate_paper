.class public interface abstract Lcom/cashwalk/cashwalk/util/URLShortener$LoadingCallback;
.super Ljava/lang/Object;
.source "URLShortener.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cashwalk/cashwalk/util/URLShortener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "LoadingCallback"
.end annotation


# virtual methods
.method public abstract finishedLoading(Ljava/lang/String;)V
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
.end method

.method public abstract startedLoading()V
.end method
