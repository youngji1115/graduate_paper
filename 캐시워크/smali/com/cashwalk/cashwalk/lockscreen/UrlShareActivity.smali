.class public Lcom/cashwalk/cashwalk/lockscreen/UrlShareActivity;
.super Landroid/support/v7/app/AppCompatActivity;
.source "UrlShareActivity.java"


# instance fields
.field private keyguardManager:Landroid/app/KeyguardManager;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Landroid/support/v7/app/AppCompatActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 18
    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 19
    const v0, 0x7f040053

    invoke-virtual {p0, v0}, Lcom/cashwalk/cashwalk/lockscreen/UrlShareActivity;->setContentView(I)V

    .line 21
    const-string v0, "keyguard"

    invoke-virtual {p0, v0}, Lcom/cashwalk/cashwalk/lockscreen/UrlShareActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/KeyguardManager;

    iput-object v0, p0, Lcom/cashwalk/cashwalk/lockscreen/UrlShareActivity;->keyguardManager:Landroid/app/KeyguardManager;

    .line 22
    return-void
.end method

.method public onResume()V
    .locals 5

    .prologue
    .line 26
    invoke-super {p0}, Landroid/support/v7/app/AppCompatActivity;->onResume()V

    .line 28
    const-string v2, "keyguard"

    invoke-virtual {p0, v2}, Lcom/cashwalk/cashwalk/lockscreen/UrlShareActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/KeyguardManager;

    .line 30
    .local v1, "keyguardManager":Landroid/app/KeyguardManager;
    invoke-virtual {v1}, Landroid/app/KeyguardManager;->inKeyguardRestrictedInputMode()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 31
    const v2, 0x7f0901b0

    invoke-virtual {p0, v2}, Lcom/cashwalk/cashwalk/lockscreen/UrlShareActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-static {p0, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 34
    :cond_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 35
    .local v0, "i":Landroid/content/Intent;
    const-string v2, "android.intent.action.SEND"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 36
    const-string v2, "android.intent.extra.TEXT"

    invoke-virtual {p0}, Lcom/cashwalk/cashwalk/lockscreen/UrlShareActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string/jumbo v4, "url"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 37
    const-string/jumbo v2, "text/plain"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 38
    const/high16 v2, 0x10000000

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 39
    const v2, 0x7f090278

    invoke-virtual {p0, v2}, Lcom/cashwalk/cashwalk/lockscreen/UrlShareActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/cashwalk/cashwalk/lockscreen/UrlShareActivity;->startActivity(Landroid/content/Intent;)V

    .line 41
    invoke-virtual {p0}, Lcom/cashwalk/cashwalk/lockscreen/UrlShareActivity;->finish()V

    .line 42
    return-void
.end method
