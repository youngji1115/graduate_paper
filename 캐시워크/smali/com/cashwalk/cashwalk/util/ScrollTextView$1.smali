.class Lcom/cashwalk/cashwalk/util/ScrollTextView$1;
.super Landroid/os/Handler;
.source "ScrollTextView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cashwalk/cashwalk/util/ScrollTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
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
    .line 35
    iput-object p1, p0, Lcom/cashwalk/cashwalk/util/ScrollTextView$1;->this$0:Lcom/cashwalk/cashwalk/util/ScrollTextView;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 38
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 39
    iget-object v0, p0, Lcom/cashwalk/cashwalk/util/ScrollTextView$1;->this$0:Lcom/cashwalk/cashwalk/util/ScrollTextView;

    invoke-virtual {v0}, Lcom/cashwalk/cashwalk/util/ScrollTextView;->showNext()V

    .line 40
    iget-object v0, p0, Lcom/cashwalk/cashwalk/util/ScrollTextView$1;->this$0:Lcom/cashwalk/cashwalk/util/ScrollTextView;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/cashwalk/cashwalk/util/ScrollTextView;->setCurrentText(Ljava/lang/CharSequence;)V

    .line 43
    return-void
.end method
