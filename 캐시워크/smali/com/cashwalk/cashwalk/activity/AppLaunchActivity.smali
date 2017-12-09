.class public Lcom/cashwalk/cashwalk/activity/AppLaunchActivity;
.super Landroid/support/v7/app/AppCompatActivity;
.source "AppLaunchActivity.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Landroid/support/v7/app/AppCompatActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 17
    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 18
    const v0, 0x7f040039

    invoke-virtual {p0, v0}, Lcom/cashwalk/cashwalk/activity/AppLaunchActivity;->setContentView(I)V

    .line 19
    return-void
.end method

.method public onResume()V
    .locals 6

    .prologue
    .line 23
    invoke-super {p0}, Landroid/support/v7/app/AppCompatActivity;->onResume()V

    .line 25
    const-string v3, "keyguard"

    invoke-virtual {p0, v3}, Lcom/cashwalk/cashwalk/activity/AppLaunchActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/KeyguardManager;

    .line 26
    .local v1, "keyguardManager":Landroid/app/KeyguardManager;
    invoke-virtual {v1}, Landroid/app/KeyguardManager;->inKeyguardRestrictedInputMode()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 27
    const v3, 0x7f0901b0

    invoke-virtual {p0, v3}, Lcom/cashwalk/cashwalk/activity/AppLaunchActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    invoke-static {p0, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    .line 31
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Lcom/cashwalk/cashwalk/activity/AppLaunchActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string/jumbo v4, "type"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 33
    .local v2, "type":Ljava/lang/String;
    const-string v3, "call"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 34
    new-instance v3, Landroid/content/Intent;

    const-string v4, "android.intent.action.DIAL"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v3}, Lcom/cashwalk/cashwalk/activity/AppLaunchActivity;->startActivity(Landroid/content/Intent;)V

    .line 35
    invoke-virtual {p0}, Lcom/cashwalk/cashwalk/activity/AppLaunchActivity;->finish()V

    .line 44
    .end local v2    # "type":Ljava/lang/String;
    :cond_1
    :goto_0
    return-void

    .line 36
    .restart local v2    # "type":Ljava/lang/String;
    :cond_2
    const-string v3, "gallery"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 37
    new-instance v3, Landroid/content/Intent;

    const-string v4, "android.intent.action.VIEW"

    sget-object v5, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-direct {v3, v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {p0, v3}, Lcom/cashwalk/cashwalk/activity/AppLaunchActivity;->startActivity(Landroid/content/Intent;)V

    .line 38
    invoke-virtual {p0}, Lcom/cashwalk/cashwalk/activity/AppLaunchActivity;->finish()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 40
    .end local v2    # "type":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 41
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 42
    invoke-virtual {p0}, Lcom/cashwalk/cashwalk/activity/AppLaunchActivity;->finish()V

    goto :goto_0
.end method
