.class public Lcom/cashwalk/cashwalk/game/CashwalkGameSchemeActivity;
.super Lcom/cashwalk/cashwalk/BaseActivity;
.source "CashwalkGameSchemeActivity.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Lcom/cashwalk/cashwalk/BaseActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    const/4 v2, 0x0

    .line 14
    invoke-super {p0, p1}, Lcom/cashwalk/cashwalk/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 17
    invoke-virtual {p0}, Lcom/cashwalk/cashwalk/game/CashwalkGameSchemeActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 18
    invoke-virtual {p0}, Lcom/cashwalk/cashwalk/game/CashwalkGameSchemeActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    .line 19
    .local v0, "uri":Landroid/net/Uri;
    if-eqz v0, :cond_0

    .line 22
    const-string/jumbo v1, "\uc751\ub2f5"

    invoke-static {p0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 27
    .end local v0    # "uri":Landroid/net/Uri;
    :cond_0
    :goto_0
    return-void

    .line 25
    :cond_1
    const-string/jumbo v1, "\uc798\ubabb\ub41c \uc694\uccad\uc785\ub2c8\ub2e4."

    invoke-static {p0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method
