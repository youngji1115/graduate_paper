.class Lcom/cashwalk/cashwalk/util/ScrollTextView$3;
.super Ljava/lang/Object;
.source "ScrollTextView.java"

# interfaces
.implements Landroid/widget/ViewSwitcher$ViewFactory;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cashwalk/cashwalk/util/ScrollTextView;->setFactory(Landroid/widget/ViewSwitcher$ViewFactory;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cashwalk/cashwalk/util/ScrollTextView;


# direct methods
.method constructor <init>(Lcom/cashwalk/cashwalk/util/ScrollTextView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/cashwalk/cashwalk/util/ScrollTextView;

    .prologue
    .line 98
    iput-object p1, p0, Lcom/cashwalk/cashwalk/util/ScrollTextView$3;->this$0:Lcom/cashwalk/cashwalk/util/ScrollTextView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public makeView()Landroid/view/View;
    .locals 3

    .prologue
    const/4 v2, -0x1

    .line 101
    new-instance v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/cashwalk/cashwalk/util/ScrollTextView$3;->this$0:Lcom/cashwalk/cashwalk/util/ScrollTextView;

    invoke-virtual {v1}, Lcom/cashwalk/cashwalk/util/ScrollTextView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 102
    .local v0, "textView":Landroid/widget/TextView;
    iget-object v1, p0, Lcom/cashwalk/cashwalk/util/ScrollTextView$3;->this$0:Lcom/cashwalk/cashwalk/util/ScrollTextView;

    invoke-static {v1}, Lcom/cashwalk/cashwalk/util/ScrollTextView;->access$300(Lcom/cashwalk/cashwalk/util/ScrollTextView;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 103
    iget-object v1, p0, Lcom/cashwalk/cashwalk/util/ScrollTextView$3;->this$0:Lcom/cashwalk/cashwalk/util/ScrollTextView;

    invoke-static {v1}, Lcom/cashwalk/cashwalk/util/ScrollTextView;->access$400(Lcom/cashwalk/cashwalk/util/ScrollTextView;)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextSize(F)V

    .line 104
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v1, v2, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 105
    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    .line 106
    return-object v0
.end method
