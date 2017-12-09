.class Lcom/handmark/pulltorefresh/library/PullToRefreshBase$8;
.super Ljava/lang/Object;
.source "PullToRefreshBase.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->initTopViewGroup()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/handmark/pulltorefresh/library/PullToRefreshBase;


# direct methods
.method constructor <init>(Lcom/handmark/pulltorefresh/library/PullToRefreshBase;)V
    .locals 0

    .prologue
    .line 1673
    .local p0, "this":Lcom/handmark/pulltorefresh/library/PullToRefreshBase$8;, "Lcom/handmark/pulltorefresh/library/PullToRefreshBase.8;"
    iput-object p1, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$8;->this$0:Lcom/handmark/pulltorefresh/library/PullToRefreshBase;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 1677
    .local p0, "this":Lcom/handmark/pulltorefresh/library/PullToRefreshBase$8;, "Lcom/handmark/pulltorefresh/library/PullToRefreshBase.8;"
    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$8;->this$0:Lcom/handmark/pulltorefresh/library/PullToRefreshBase;

    invoke-static {v0}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->access$500(Lcom/handmark/pulltorefresh/library/PullToRefreshBase;)V

    .line 1678
    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$8;->this$0:Lcom/handmark/pulltorefresh/library/PullToRefreshBase;

    invoke-static {v0}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->access$700(Lcom/handmark/pulltorefresh/library/PullToRefreshBase;)Lcom/handmark/pulltorefresh/library/GoogleStyleProgressLayout;

    move-result-object v0

    iget-object v1, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$8;->this$0:Lcom/handmark/pulltorefresh/library/PullToRefreshBase;

    invoke-static {v1}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->access$600(Lcom/handmark/pulltorefresh/library/PullToRefreshBase;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/handmark/pulltorefresh/library/GoogleStyleProgressLayout;->setTopMargin(I)V

    .line 1680
    return-void
.end method
