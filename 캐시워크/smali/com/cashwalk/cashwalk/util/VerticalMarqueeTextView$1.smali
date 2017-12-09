.class Lcom/cashwalk/cashwalk/util/VerticalMarqueeTextView$1;
.super Ljava/lang/Object;
.source "VerticalMarqueeTextView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cashwalk/cashwalk/util/VerticalMarqueeTextView;->startMarquee()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cashwalk/cashwalk/util/VerticalMarqueeTextView;


# direct methods
.method constructor <init>(Lcom/cashwalk/cashwalk/util/VerticalMarqueeTextView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/cashwalk/cashwalk/util/VerticalMarqueeTextView;

    .prologue
    .line 97
    iput-object p1, p0, Lcom/cashwalk/cashwalk/util/VerticalMarqueeTextView$1;->this$0:Lcom/cashwalk/cashwalk/util/VerticalMarqueeTextView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 100
    iget-object v0, p0, Lcom/cashwalk/cashwalk/util/VerticalMarqueeTextView$1;->this$0:Lcom/cashwalk/cashwalk/util/VerticalMarqueeTextView;

    invoke-static {v0}, Lcom/cashwalk/cashwalk/util/VerticalMarqueeTextView;->access$000(Lcom/cashwalk/cashwalk/util/VerticalMarqueeTextView;)V

    .line 101
    return-void
.end method
