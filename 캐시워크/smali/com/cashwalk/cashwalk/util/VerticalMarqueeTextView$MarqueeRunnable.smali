.class final Lcom/cashwalk/cashwalk/util/VerticalMarqueeTextView$MarqueeRunnable;
.super Ljava/lang/Object;
.source "VerticalMarqueeTextView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cashwalk/cashwalk/util/VerticalMarqueeTextView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "MarqueeRunnable"
.end annotation


# instance fields
.field private final parent:Landroid/view/ViewGroup;

.field private final textView:Landroid/widget/TextView;

.field final synthetic this$0:Lcom/cashwalk/cashwalk/util/VerticalMarqueeTextView;


# direct methods
.method public constructor <init>(Lcom/cashwalk/cashwalk/util/VerticalMarqueeTextView;Landroid/widget/TextView;)V
    .locals 1
    .param p2, "textView"    # Landroid/widget/TextView;

    .prologue
    .line 247
    iput-object p1, p0, Lcom/cashwalk/cashwalk/util/VerticalMarqueeTextView$MarqueeRunnable;->this$0:Lcom/cashwalk/cashwalk/util/VerticalMarqueeTextView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 248
    invoke-virtual {p2}, Landroid/widget/TextView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/cashwalk/cashwalk/util/VerticalMarqueeTextView$MarqueeRunnable;->parent:Landroid/view/ViewGroup;

    .line 249
    iput-object p2, p0, Lcom/cashwalk/cashwalk/util/VerticalMarqueeTextView$MarqueeRunnable;->textView:Landroid/widget/TextView;

    .line 250
    return-void
.end method

.method private heightOf(Landroid/widget/TextView;)I
    .locals 2
    .param p1, "textView"    # Landroid/widget/TextView;

    .prologue
    .line 275
    invoke-virtual {p1}, Landroid/widget/TextView;->getLineCount()I

    move-result v0

    if-lez v0, :cond_0

    invoke-virtual {p1}, Landroid/widget/TextView;->getLineHeight()I

    move-result v0

    invoke-virtual {p1}, Landroid/widget/TextView;->getLineCount()I

    move-result v1

    mul-int/2addr v0, v1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 254
    iget-object v2, p0, Lcom/cashwalk/cashwalk/util/VerticalMarqueeTextView$MarqueeRunnable;->textView:Landroid/widget/TextView;

    invoke-direct {p0, v2}, Lcom/cashwalk/cashwalk/util/VerticalMarqueeTextView$MarqueeRunnable;->heightOf(Landroid/widget/TextView;)I

    move-result v0

    .line 255
    .local v0, "height":I
    iget-object v2, p0, Lcom/cashwalk/cashwalk/util/VerticalMarqueeTextView$MarqueeRunnable;->parent:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getHeight()I

    move-result v1

    .line 257
    .local v1, "parentHeight":I
    if-lez v0, :cond_0

    if-lez v1, :cond_0

    if-le v0, v1, :cond_0

    .line 258
    iget-object v2, p0, Lcom/cashwalk/cashwalk/util/VerticalMarqueeTextView$MarqueeRunnable;->textView:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getScrollY()I

    move-result v2

    if-lt v2, v0, :cond_1

    .line 259
    iget-object v2, p0, Lcom/cashwalk/cashwalk/util/VerticalMarqueeTextView$MarqueeRunnable;->textView:Landroid/widget/TextView;

    neg-int v3, v1

    invoke-virtual {v2, v4, v3}, Landroid/widget/TextView;->scrollTo(II)V

    .line 264
    :goto_0
    iget-object v2, p0, Lcom/cashwalk/cashwalk/util/VerticalMarqueeTextView$MarqueeRunnable;->textView:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->invalidate()V

    .line 266
    :cond_0
    return-void

    .line 261
    :cond_1
    iget-object v2, p0, Lcom/cashwalk/cashwalk/util/VerticalMarqueeTextView$MarqueeRunnable;->textView:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/cashwalk/cashwalk/util/VerticalMarqueeTextView$MarqueeRunnable;->this$0:Lcom/cashwalk/cashwalk/util/VerticalMarqueeTextView;

    invoke-static {v3}, Lcom/cashwalk/cashwalk/util/VerticalMarqueeTextView;->access$100(Lcom/cashwalk/cashwalk/util/VerticalMarqueeTextView;)I

    move-result v3

    invoke-virtual {v2, v4, v3}, Landroid/widget/TextView;->scrollBy(II)V

    goto :goto_0
.end method
