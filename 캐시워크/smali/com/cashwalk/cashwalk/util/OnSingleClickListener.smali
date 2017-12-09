.class public abstract Lcom/cashwalk/cashwalk/util/OnSingleClickListener;
.super Ljava/lang/Object;
.source "OnSingleClickListener.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field private static final MIN_CLICK_INTERVAL:J = 0x258L


# instance fields
.field private mLastClickTime:J


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 6
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 16
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 17
    .local v0, "currentClickTime":J
    iget-wide v4, p0, Lcom/cashwalk/cashwalk/util/OnSingleClickListener;->mLastClickTime:J

    sub-long v2, v0, v4

    .line 18
    .local v2, "elapsedTime":J
    iput-wide v0, p0, Lcom/cashwalk/cashwalk/util/OnSingleClickListener;->mLastClickTime:J

    .line 21
    const-wide/16 v4, 0x258

    cmp-long v4, v2, v4

    if-gtz v4, :cond_0

    .line 26
    :goto_0
    return-void

    .line 25
    :cond_0
    invoke-virtual {p0, p1}, Lcom/cashwalk/cashwalk/util/OnSingleClickListener;->onSingleClick(Landroid/view/View;)V

    goto :goto_0
.end method

.method public abstract onSingleClick(Landroid/view/View;)V
.end method
