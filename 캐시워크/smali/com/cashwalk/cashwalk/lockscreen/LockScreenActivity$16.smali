.class Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity$16;
.super Ljava/lang/Object;
.source "LockScreenActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity;->addApp(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity;

.field final synthetic val$intent:Landroid/content/Intent;


# direct methods
.method constructor <init>(Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity;Landroid/content/Intent;)V
    .locals 0
    .param p1, "this$0"    # Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity;

    .prologue
    .line 599
    iput-object p1, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity$16;->this$0:Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity;

    iput-object p2, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity$16;->val$intent:Landroid/content/Intent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 602
    iget-object v1, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity$16;->this$0:Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity;

    const-string v2, "keyguard"

    invoke-virtual {v1, v2}, Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/KeyguardManager;

    .line 603
    .local v0, "keyguardManager":Landroid/app/KeyguardManager;
    invoke-virtual {v0}, Landroid/app/KeyguardManager;->inKeyguardRestrictedInputMode()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 604
    iget-object v1, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity$16;->this$0:Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity;

    iget-object v2, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity$16;->this$0:Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity;

    const v3, 0x7f0901b0

    invoke-virtual {v2, v3}, Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 606
    :cond_0
    iget-object v1, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity$16;->val$intent:Landroid/content/Intent;

    if-eqz v1, :cond_1

    .line 607
    iget-object v1, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity$16;->val$intent:Landroid/content/Intent;

    const/high16 v2, 0x10200000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 608
    iget-object v1, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity$16;->this$0:Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity;

    iget-object v2, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity$16;->val$intent:Landroid/content/Intent;

    invoke-virtual {v1, v2}, Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity;->startActivity(Landroid/content/Intent;)V

    .line 609
    iget-object v1, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity$16;->this$0:Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity;

    invoke-virtual {v1}, Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity;->finish()V

    .line 611
    :cond_1
    return-void
.end method
