.class Lcom/cashwalk/cashwalk/activity/WebViewActivity$3;
.super Ljava/lang/Object;
.source "WebViewActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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
    .line 99
    iput-object p1, p0, Lcom/cashwalk/cashwalk/activity/WebViewActivity$3;->this$0:Lcom/cashwalk/cashwalk/activity/WebViewActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 102
    iget-object v0, p0, Lcom/cashwalk/cashwalk/activity/WebViewActivity$3;->this$0:Lcom/cashwalk/cashwalk/activity/WebViewActivity;

    invoke-static {v0}, Lcom/cashwalk/cashwalk/activity/WebViewActivity;->access$000(Lcom/cashwalk/cashwalk/activity/WebViewActivity;)Landroid/widget/EditText;

    move-result-object v0

    const-string v1, "http://www.google.co.kr"

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 103
    iget-object v0, p0, Lcom/cashwalk/cashwalk/activity/WebViewActivity$3;->this$0:Lcom/cashwalk/cashwalk/activity/WebViewActivity;

    invoke-static {v0}, Lcom/cashwalk/cashwalk/activity/WebViewActivity;->access$100(Lcom/cashwalk/cashwalk/activity/WebViewActivity;)V

    .line 104
    return-void
.end method
