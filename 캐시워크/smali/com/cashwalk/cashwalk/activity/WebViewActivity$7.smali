.class Lcom/cashwalk/cashwalk/activity/WebViewActivity$7;
.super Ljava/lang/Object;
.source "WebViewActivity.java"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cashwalk/cashwalk/activity/WebViewActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cashwalk/cashwalk/activity/WebViewActivity;


# direct methods
.method constructor <init>(Lcom/cashwalk/cashwalk/activity/WebViewActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/cashwalk/cashwalk/activity/WebViewActivity;

    .prologue
    .line 138
    iput-object p1, p0, Lcom/cashwalk/cashwalk/activity/WebViewActivity$7;->this$0:Lcom/cashwalk/cashwalk/activity/WebViewActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFocusChange(Landroid/view/View;Z)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;
    .param p2, "hasFocus"    # Z

    .prologue
    const/4 v3, 0x0

    .line 141
    if-eqz p2, :cond_0

    .line 142
    iget-object v0, p0, Lcom/cashwalk/cashwalk/activity/WebViewActivity$7;->this$0:Lcom/cashwalk/cashwalk/activity/WebViewActivity;

    invoke-static {v0}, Lcom/cashwalk/cashwalk/activity/WebViewActivity;->access$000(Lcom/cashwalk/cashwalk/activity/WebViewActivity;)Landroid/widget/EditText;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setCursorVisible(Z)V

    .line 143
    iget-object v0, p0, Lcom/cashwalk/cashwalk/activity/WebViewActivity$7;->this$0:Lcom/cashwalk/cashwalk/activity/WebViewActivity;

    invoke-static {v0}, Lcom/cashwalk/cashwalk/activity/WebViewActivity;->access$000(Lcom/cashwalk/cashwalk/activity/WebViewActivity;)Landroid/widget/EditText;

    move-result-object v0

    iget-object v1, p0, Lcom/cashwalk/cashwalk/activity/WebViewActivity$7;->this$0:Lcom/cashwalk/cashwalk/activity/WebViewActivity;

    invoke-static {v1}, Lcom/cashwalk/cashwalk/activity/WebViewActivity;->access$200(Lcom/cashwalk/cashwalk/activity/WebViewActivity;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 144
    iget-object v0, p0, Lcom/cashwalk/cashwalk/activity/WebViewActivity$7;->this$0:Lcom/cashwalk/cashwalk/activity/WebViewActivity;

    invoke-static {v0}, Lcom/cashwalk/cashwalk/activity/WebViewActivity;->access$000(Lcom/cashwalk/cashwalk/activity/WebViewActivity;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->selectAll()V

    .line 145
    iget-object v0, p0, Lcom/cashwalk/cashwalk/activity/WebViewActivity$7;->this$0:Lcom/cashwalk/cashwalk/activity/WebViewActivity;

    invoke-static {v0}, Lcom/cashwalk/cashwalk/activity/WebViewActivity;->access$300(Lcom/cashwalk/cashwalk/activity/WebViewActivity;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/cashwalk/cashwalk/activity/WebViewActivity$7;->this$0:Lcom/cashwalk/cashwalk/activity/WebViewActivity;

    const v2, 0x7f090217

    invoke-virtual {v1, v2}, Lcom/cashwalk/cashwalk/activity/WebViewActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 146
    iget-object v0, p0, Lcom/cashwalk/cashwalk/activity/WebViewActivity$7;->this$0:Lcom/cashwalk/cashwalk/activity/WebViewActivity;

    invoke-static {v0}, Lcom/cashwalk/cashwalk/activity/WebViewActivity;->access$300(Lcom/cashwalk/cashwalk/activity/WebViewActivity;)Landroid/widget/TextView;

    move-result-object v0

    new-instance v1, Lcom/cashwalk/cashwalk/activity/WebViewActivity$7$1;

    invoke-direct {v1, p0}, Lcom/cashwalk/cashwalk/activity/WebViewActivity$7$1;-><init>(Lcom/cashwalk/cashwalk/activity/WebViewActivity$7;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 153
    iget-object v0, p0, Lcom/cashwalk/cashwalk/activity/WebViewActivity$7;->this$0:Lcom/cashwalk/cashwalk/activity/WebViewActivity;

    invoke-static {v0}, Lcom/cashwalk/cashwalk/activity/WebViewActivity;->access$400(Lcom/cashwalk/cashwalk/activity/WebViewActivity;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 166
    :goto_0
    return-void

    .line 155
    :cond_0
    iget-object v0, p0, Lcom/cashwalk/cashwalk/activity/WebViewActivity$7;->this$0:Lcom/cashwalk/cashwalk/activity/WebViewActivity;

    invoke-static {v0}, Lcom/cashwalk/cashwalk/activity/WebViewActivity;->access$400(Lcom/cashwalk/cashwalk/activity/WebViewActivity;)Landroid/widget/LinearLayout;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 156
    iget-object v0, p0, Lcom/cashwalk/cashwalk/activity/WebViewActivity$7;->this$0:Lcom/cashwalk/cashwalk/activity/WebViewActivity;

    invoke-static {v0}, Lcom/cashwalk/cashwalk/activity/WebViewActivity;->access$000(Lcom/cashwalk/cashwalk/activity/WebViewActivity;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/EditText;->setCursorVisible(Z)V

    .line 157
    iget-object v0, p0, Lcom/cashwalk/cashwalk/activity/WebViewActivity$7;->this$0:Lcom/cashwalk/cashwalk/activity/WebViewActivity;

    invoke-static {v0}, Lcom/cashwalk/cashwalk/activity/WebViewActivity;->access$300(Lcom/cashwalk/cashwalk/activity/WebViewActivity;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/cashwalk/cashwalk/activity/WebViewActivity$7;->this$0:Lcom/cashwalk/cashwalk/activity/WebViewActivity;

    const v2, 0x7f090271

    invoke-virtual {v1, v2}, Lcom/cashwalk/cashwalk/activity/WebViewActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 158
    iget-object v0, p0, Lcom/cashwalk/cashwalk/activity/WebViewActivity$7;->this$0:Lcom/cashwalk/cashwalk/activity/WebViewActivity;

    invoke-static {v0}, Lcom/cashwalk/cashwalk/activity/WebViewActivity;->access$300(Lcom/cashwalk/cashwalk/activity/WebViewActivity;)Landroid/widget/TextView;

    move-result-object v0

    new-instance v1, Lcom/cashwalk/cashwalk/activity/WebViewActivity$7$2;

    invoke-direct {v1, p0}, Lcom/cashwalk/cashwalk/activity/WebViewActivity$7$2;-><init>(Lcom/cashwalk/cashwalk/activity/WebViewActivity$7;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 164
    iget-object v0, p0, Lcom/cashwalk/cashwalk/activity/WebViewActivity$7;->this$0:Lcom/cashwalk/cashwalk/activity/WebViewActivity;

    invoke-static {v0}, Lcom/cashwalk/cashwalk/activity/WebViewActivity;->access$500(Lcom/cashwalk/cashwalk/activity/WebViewActivity;)V

    goto :goto_0
.end method
