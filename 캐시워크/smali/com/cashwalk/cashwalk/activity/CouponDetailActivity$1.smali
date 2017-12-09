.class Lcom/cashwalk/cashwalk/activity/CouponDetailActivity$1;
.super Ljava/lang/Object;
.source "CouponDetailActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cashwalk/cashwalk/activity/CouponDetailActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cashwalk/cashwalk/activity/CouponDetailActivity;


# direct methods
.method constructor <init>(Lcom/cashwalk/cashwalk/activity/CouponDetailActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/cashwalk/cashwalk/activity/CouponDetailActivity;

    .prologue
    .line 85
    iput-object p1, p0, Lcom/cashwalk/cashwalk/activity/CouponDetailActivity$1;->this$0:Lcom/cashwalk/cashwalk/activity/CouponDetailActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/high16 v5, 0x10000000

    .line 89
    iget-object v2, p0, Lcom/cashwalk/cashwalk/activity/CouponDetailActivity$1;->this$0:Lcom/cashwalk/cashwalk/activity/CouponDetailActivity;

    const-string v3, "com.instagram.android"

    invoke-static {v2, v3}, Lcom/cashwalk/cashwalk/util/Utils;->isInstalledApp(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 90
    iget-object v2, p0, Lcom/cashwalk/cashwalk/activity/CouponDetailActivity$1;->this$0:Lcom/cashwalk/cashwalk/activity/CouponDetailActivity;

    invoke-virtual {v2}, Lcom/cashwalk/cashwalk/activity/CouponDetailActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const-string v3, "com.instagram.android"

    invoke-virtual {v2, v3}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    .line 91
    .local v1, "launchIntent":Landroid/content/Intent;
    invoke-virtual {v1, v5}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 92
    iget-object v2, p0, Lcom/cashwalk/cashwalk/activity/CouponDetailActivity$1;->this$0:Lcom/cashwalk/cashwalk/activity/CouponDetailActivity;

    invoke-virtual {v2, v1}, Lcom/cashwalk/cashwalk/activity/CouponDetailActivity;->startActivity(Landroid/content/Intent;)V

    .line 99
    .end local v1    # "launchIntent":Landroid/content/Intent;
    :goto_0
    return-void

    .line 94
    :cond_0
    iget-object v2, p0, Lcom/cashwalk/cashwalk/activity/CouponDetailActivity$1;->this$0:Lcom/cashwalk/cashwalk/activity/CouponDetailActivity;

    iget-object v3, p0, Lcom/cashwalk/cashwalk/activity/CouponDetailActivity$1;->this$0:Lcom/cashwalk/cashwalk/activity/CouponDetailActivity;

    const v4, 0x7f090149

    invoke-virtual {v3, v4}, Lcom/cashwalk/cashwalk/activity/CouponDetailActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 95
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    const-string v3, "https://play.google.com/store/apps/details?id=com.instagram.android"

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 96
    .local v0, "browserIntent":Landroid/content/Intent;
    invoke-virtual {v0, v5}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 97
    iget-object v2, p0, Lcom/cashwalk/cashwalk/activity/CouponDetailActivity$1;->this$0:Lcom/cashwalk/cashwalk/activity/CouponDetailActivity;

    invoke-virtual {v2, v0}, Lcom/cashwalk/cashwalk/activity/CouponDetailActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method
