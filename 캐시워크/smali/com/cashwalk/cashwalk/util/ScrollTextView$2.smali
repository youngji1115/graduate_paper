.class Lcom/cashwalk/cashwalk/util/ScrollTextView$2;
.super Ljava/util/TimerTask;
.source "ScrollTextView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cashwalk/cashwalk/util/ScrollTextView;->start()V
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
    .line 63
    iput-object p1, p0, Lcom/cashwalk/cashwalk/util/ScrollTextView$2;->this$0:Lcom/cashwalk/cashwalk/util/ScrollTextView;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 66
    iget-object v2, p0, Lcom/cashwalk/cashwalk/util/ScrollTextView$2;->this$0:Lcom/cashwalk/cashwalk/util/ScrollTextView;

    invoke-virtual {v2}, Lcom/cashwalk/cashwalk/util/ScrollTextView;->getCurrentView()Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 67
    .local v1, "textView":Landroid/widget/TextView;
    if-nez v1, :cond_0

    .line 73
    :goto_0
    iget-object v2, p0, Lcom/cashwalk/cashwalk/util/ScrollTextView$2;->this$0:Lcom/cashwalk/cashwalk/util/ScrollTextView;

    invoke-static {v2}, Lcom/cashwalk/cashwalk/util/ScrollTextView;->access$008(Lcom/cashwalk/cashwalk/util/ScrollTextView;)I

    .line 74
    return-void

    .line 69
    :cond_0
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 70
    .local v0, "message":Landroid/os/Message;
    iget-object v2, p0, Lcom/cashwalk/cashwalk/util/ScrollTextView$2;->this$0:Lcom/cashwalk/cashwalk/util/ScrollTextView;

    invoke-static {v2}, Lcom/cashwalk/cashwalk/util/ScrollTextView;->access$100(Lcom/cashwalk/cashwalk/util/ScrollTextView;)Ljava/util/List;

    move-result-object v2

    iget-object v3, p0, Lcom/cashwalk/cashwalk/util/ScrollTextView$2;->this$0:Lcom/cashwalk/cashwalk/util/ScrollTextView;

    invoke-static {v3}, Lcom/cashwalk/cashwalk/util/ScrollTextView;->access$000(Lcom/cashwalk/cashwalk/util/ScrollTextView;)I

    move-result v3

    iget-object v4, p0, Lcom/cashwalk/cashwalk/util/ScrollTextView$2;->this$0:Lcom/cashwalk/cashwalk/util/ScrollTextView;

    invoke-static {v4}, Lcom/cashwalk/cashwalk/util/ScrollTextView;->access$100(Lcom/cashwalk/cashwalk/util/ScrollTextView;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    rem-int/2addr v3, v4

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 71
    iget-object v2, p0, Lcom/cashwalk/cashwalk/util/ScrollTextView$2;->this$0:Lcom/cashwalk/cashwalk/util/ScrollTextView;

    invoke-static {v2}, Lcom/cashwalk/cashwalk/util/ScrollTextView;->access$200(Lcom/cashwalk/cashwalk/util/ScrollTextView;)Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method
