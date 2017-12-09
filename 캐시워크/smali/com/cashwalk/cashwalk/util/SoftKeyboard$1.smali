.class Lcom/cashwalk/cashwalk/util/SoftKeyboard$1;
.super Landroid/os/Handler;
.source "SoftKeyboard.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cashwalk/cashwalk/util/SoftKeyboard;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cashwalk/cashwalk/util/SoftKeyboard;


# direct methods
.method constructor <init>(Lcom/cashwalk/cashwalk/util/SoftKeyboard;)V
    .locals 0
    .param p1, "this$0"    # Lcom/cashwalk/cashwalk/util/SoftKeyboard;

    .prologue
    .line 139
    iput-object p1, p0, Lcom/cashwalk/cashwalk/util/SoftKeyboard$1;->this$0:Lcom/cashwalk/cashwalk/util/SoftKeyboard;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .param p1, "m"    # Landroid/os/Message;

    .prologue
    .line 143
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 153
    :cond_0
    :goto_0
    return-void

    .line 146
    :pswitch_0
    iget-object v0, p0, Lcom/cashwalk/cashwalk/util/SoftKeyboard$1;->this$0:Lcom/cashwalk/cashwalk/util/SoftKeyboard;

    invoke-static {v0}, Lcom/cashwalk/cashwalk/util/SoftKeyboard;->access$000(Lcom/cashwalk/cashwalk/util/SoftKeyboard;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 148
    iget-object v0, p0, Lcom/cashwalk/cashwalk/util/SoftKeyboard$1;->this$0:Lcom/cashwalk/cashwalk/util/SoftKeyboard;

    invoke-static {v0}, Lcom/cashwalk/cashwalk/util/SoftKeyboard;->access$000(Lcom/cashwalk/cashwalk/util/SoftKeyboard;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->clearFocus()V

    .line 149
    iget-object v0, p0, Lcom/cashwalk/cashwalk/util/SoftKeyboard$1;->this$0:Lcom/cashwalk/cashwalk/util/SoftKeyboard;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/cashwalk/cashwalk/util/SoftKeyboard;->access$002(Lcom/cashwalk/cashwalk/util/SoftKeyboard;Landroid/view/View;)Landroid/view/View;

    goto :goto_0

    .line 143
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
