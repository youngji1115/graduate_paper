.class Lcom/cashwalk/cashwalk/activity/WebViewActivity$7$2;
.super Ljava/lang/Object;
.source "WebViewActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cashwalk/cashwalk/activity/WebViewActivity$7;->onFocusChange(Landroid/view/View;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/cashwalk/cashwalk/activity/WebViewActivity$7;


# direct methods
.method constructor <init>(Lcom/cashwalk/cashwalk/activity/WebViewActivity$7;)V
    .locals 0
    .param p1, "this$1"    # Lcom/cashwalk/cashwalk/activity/WebViewActivity$7;

    .prologue
    .line 158
    iput-object p1, p0, Lcom/cashwalk/cashwalk/activity/WebViewActivity$7$2;->this$1:Lcom/cashwalk/cashwalk/activity/WebViewActivity$7;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 161
    iget-object v0, p0, Lcom/cashwalk/cashwalk/activity/WebViewActivity$7$2;->this$1:Lcom/cashwalk/cashwalk/activity/WebViewActivity$7;

    iget-object v0, v0, Lcom/cashwalk/cashwalk/activity/WebViewActivity$7;->this$0:Lcom/cashwalk/cashwalk/activity/WebViewActivity;

    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/cashwalk/cashwalk/activity/WebViewActivity$7$2;->this$1:Lcom/cashwalk/cashwalk/activity/WebViewActivity$7;

    iget-object v2, v2, Lcom/cashwalk/cashwalk/activity/WebViewActivity$7;->this$0:Lcom/cashwalk/cashwalk/activity/WebViewActivity;

    const-class v3, Lcom/cashwalk/cashwalk/lockscreen/UrlShareActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string/jumbo v2, "url"

    iget-object v3, p0, Lcom/cashwalk/cashwalk/activity/WebViewActivity$7$2;->this$1:Lcom/cashwalk/cashwalk/activity/WebViewActivity$7;

    iget-object v3, v3, Lcom/cashwalk/cashwalk/activity/WebViewActivity$7;->this$0:Lcom/cashwalk/cashwalk/activity/WebViewActivity;

    invoke-static {v3}, Lcom/cashwalk/cashwalk/activity/WebViewActivity;->access$200(Lcom/cashwalk/cashwalk/activity/WebViewActivity;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/cashwalk/cashwalk/activity/WebViewActivity;->startActivity(Landroid/content/Intent;)V

    .line 162
    return-void
.end method
