.class Lcom/cashwalk/cashwalk/activity/WebViewActivity$5;
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
    .line 121
    iput-object p1, p0, Lcom/cashwalk/cashwalk/activity/WebViewActivity$5;->this$0:Lcom/cashwalk/cashwalk/activity/WebViewActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 124
    iget-object v0, p0, Lcom/cashwalk/cashwalk/activity/WebViewActivity$5;->this$0:Lcom/cashwalk/cashwalk/activity/WebViewActivity;

    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/cashwalk/cashwalk/activity/WebViewActivity$5;->this$0:Lcom/cashwalk/cashwalk/activity/WebViewActivity;

    const-class v3, Lcom/cashwalk/cashwalk/lockscreen/UrlShareActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string/jumbo v2, "url"

    iget-object v3, p0, Lcom/cashwalk/cashwalk/activity/WebViewActivity$5;->this$0:Lcom/cashwalk/cashwalk/activity/WebViewActivity;

    invoke-static {v3}, Lcom/cashwalk/cashwalk/activity/WebViewActivity;->access$200(Lcom/cashwalk/cashwalk/activity/WebViewActivity;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/cashwalk/cashwalk/activity/WebViewActivity;->startActivity(Landroid/content/Intent;)V

    .line 125
    return-void
.end method
