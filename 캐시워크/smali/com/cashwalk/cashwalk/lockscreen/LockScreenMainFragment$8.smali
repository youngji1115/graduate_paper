.class Lcom/cashwalk/cashwalk/lockscreen/LockScreenMainFragment$8;
.super Ljava/lang/Object;
.source "LockScreenMainFragment.java"

# interfaces
.implements Landroid/support/v7/widget/PopupMenu$OnMenuItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cashwalk/cashwalk/lockscreen/LockScreenMainFragment;->initView(Landroid/view/View;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cashwalk/cashwalk/lockscreen/LockScreenMainFragment;


# direct methods
.method constructor <init>(Lcom/cashwalk/cashwalk/lockscreen/LockScreenMainFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/cashwalk/cashwalk/lockscreen/LockScreenMainFragment;

    .prologue
    .line 429
    iput-object p1, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenMainFragment$8;->this$0:Lcom/cashwalk/cashwalk/lockscreen/LockScreenMainFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 10
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    const/4 v9, 0x0

    .line 432
    iget-object v5, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenMainFragment$8;->this$0:Lcom/cashwalk/cashwalk/lockscreen/LockScreenMainFragment;

    invoke-interface {p1}, Landroid/view/MenuItem;->getOrder()I

    move-result v6

    invoke-static {v5, v6}, Lcom/cashwalk/cashwalk/lockscreen/LockScreenMainFragment;->access$1402(Lcom/cashwalk/cashwalk/lockscreen/LockScreenMainFragment;I)I

    .line 434
    iget-object v5, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenMainFragment$8;->this$0:Lcom/cashwalk/cashwalk/lockscreen/LockScreenMainFragment;

    invoke-static {v5}, Lcom/cashwalk/cashwalk/lockscreen/LockScreenMainFragment;->access$1400(Lcom/cashwalk/cashwalk/lockscreen/LockScreenMainFragment;)I

    move-result v5

    sparse-switch v5, :sswitch_data_0

    .line 508
    :goto_0
    return v9

    .line 437
    :sswitch_0
    new-instance v4, Lcom/cashwalk/cashwalk/dialog/CommonShareDialog;

    iget-object v5, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenMainFragment$8;->this$0:Lcom/cashwalk/cashwalk/lockscreen/LockScreenMainFragment;

    invoke-virtual {v5}, Lcom/cashwalk/cashwalk/lockscreen/LockScreenMainFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v5

    sget-object v6, Lcom/cashwalk/cashwalk/dialog/CommonShareDialog;->REF_LOCKSCREEN:Ljava/lang/String;

    iget-object v7, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenMainFragment$8;->this$0:Lcom/cashwalk/cashwalk/lockscreen/LockScreenMainFragment;

    invoke-static {v7}, Lcom/cashwalk/cashwalk/lockscreen/LockScreenMainFragment;->access$1500(Lcom/cashwalk/cashwalk/lockscreen/LockScreenMainFragment;)Landroid/widget/RelativeLayout;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/RelativeLayout;->getRootView()Landroid/view/View;

    move-result-object v7

    invoke-direct {v4, v5, v6, v7}, Lcom/cashwalk/cashwalk/dialog/CommonShareDialog;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/view/View;)V

    .line 438
    .local v4, "mShareDialog":Lcom/cashwalk/cashwalk/dialog/CommonShareDialog;
    invoke-virtual {v4}, Lcom/cashwalk/cashwalk/dialog/CommonShareDialog;->show()V

    goto :goto_0

    .line 443
    .end local v4    # "mShareDialog":Lcom/cashwalk/cashwalk/dialog/CommonShareDialog;
    :sswitch_1
    iget-object v5, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenMainFragment$8;->this$0:Lcom/cashwalk/cashwalk/lockscreen/LockScreenMainFragment;

    invoke-virtual {v5}, Lcom/cashwalk/cashwalk/lockscreen/LockScreenMainFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v5

    const-string v6, "keyguard"

    invoke-virtual {v5, v6}, Landroid/support/v4/app/FragmentActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/KeyguardManager;

    .line 444
    .local v2, "keyguardManager":Landroid/app/KeyguardManager;
    invoke-virtual {v2}, Landroid/app/KeyguardManager;->inKeyguardRestrictedInputMode()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 445
    iget-object v5, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenMainFragment$8;->this$0:Lcom/cashwalk/cashwalk/lockscreen/LockScreenMainFragment;

    invoke-virtual {v5}, Lcom/cashwalk/cashwalk/lockscreen/LockScreenMainFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v5

    iget-object v6, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenMainFragment$8;->this$0:Lcom/cashwalk/cashwalk/lockscreen/LockScreenMainFragment;

    const v7, 0x7f0901b0

    invoke-virtual {v6, v7}, Lcom/cashwalk/cashwalk/lockscreen/LockScreenMainFragment;->getString(I)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x1

    invoke-static {v5, v6, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    .line 447
    :cond_0
    iget-object v5, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenMainFragment$8;->this$0:Lcom/cashwalk/cashwalk/lockscreen/LockScreenMainFragment;

    invoke-static {v5}, Lcom/cashwalk/cashwalk/lockscreen/LockScreenMainFragment;->access$1300(Lcom/cashwalk/cashwalk/lockscreen/LockScreenMainFragment;)V

    goto :goto_0

    .line 450
    .end local v2    # "keyguardManager":Landroid/app/KeyguardManager;
    :sswitch_2
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0x13

    if-gt v5, v6, :cond_1

    .line 451
    iget-object v5, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenMainFragment$8;->this$0:Lcom/cashwalk/cashwalk/lockscreen/LockScreenMainFragment;

    new-instance v6, Landroid/content/Intent;

    iget-object v7, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenMainFragment$8;->this$0:Lcom/cashwalk/cashwalk/lockscreen/LockScreenMainFragment;

    invoke-virtual {v7}, Lcom/cashwalk/cashwalk/lockscreen/LockScreenMainFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v7

    const-class v8, Lcom/cashwalk/cashwalk/lockscreen/WallpaperActivity19;

    invoke-direct {v6, v7, v8}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v5, v6}, Lcom/cashwalk/cashwalk/lockscreen/LockScreenMainFragment;->startActivity(Landroid/content/Intent;)V

    .line 455
    :goto_1
    iget-object v5, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenMainFragment$8;->this$0:Lcom/cashwalk/cashwalk/lockscreen/LockScreenMainFragment;

    invoke-virtual {v5}, Lcom/cashwalk/cashwalk/lockscreen/LockScreenMainFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v5

    const/high16 v6, 0x10a0000

    const v7, 0x10a0001

    invoke-virtual {v5, v6, v7}, Landroid/support/v4/app/FragmentActivity;->overridePendingTransition(II)V

    goto :goto_0

    .line 453
    :cond_1
    iget-object v5, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenMainFragment$8;->this$0:Lcom/cashwalk/cashwalk/lockscreen/LockScreenMainFragment;

    new-instance v6, Landroid/content/Intent;

    iget-object v7, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenMainFragment$8;->this$0:Lcom/cashwalk/cashwalk/lockscreen/LockScreenMainFragment;

    invoke-virtual {v7}, Lcom/cashwalk/cashwalk/lockscreen/LockScreenMainFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v7

    const-class v8, Lcom/cashwalk/cashwalk/lockscreen/WallpaperActivity;

    invoke-direct {v6, v7, v8}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v5, v6}, Lcom/cashwalk/cashwalk/lockscreen/LockScreenMainFragment;->startActivity(Landroid/content/Intent;)V

    goto :goto_1

    .line 458
    :sswitch_3
    iget-object v5, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenMainFragment$8;->this$0:Lcom/cashwalk/cashwalk/lockscreen/LockScreenMainFragment;

    invoke-virtual {v5}, Lcom/cashwalk/cashwalk/lockscreen/LockScreenMainFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v5

    const-string v6, "keyguard"

    invoke-virtual {v5, v6}, Landroid/support/v4/app/FragmentActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/KeyguardManager;

    .line 459
    .local v3, "keyguardManagerF":Landroid/app/KeyguardManager;
    invoke-virtual {v3}, Landroid/app/KeyguardManager;->inKeyguardRestrictedInputMode()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 461
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v5, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenMainFragment$8;->this$0:Lcom/cashwalk/cashwalk/lockscreen/LockScreenMainFragment;

    invoke-virtual {v5}, Lcom/cashwalk/cashwalk/lockscreen/LockScreenMainFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v5

    invoke-direct {v0, v5}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 462
    .local v0, "ab":Landroid/app/AlertDialog$Builder;
    iget-object v5, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenMainFragment$8;->this$0:Lcom/cashwalk/cashwalk/lockscreen/LockScreenMainFragment;

    const v6, 0x7f09012d

    invoke-virtual {v5, v6}, Lcom/cashwalk/cashwalk/lockscreen/LockScreenMainFragment;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 463
    iget-object v5, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenMainFragment$8;->this$0:Lcom/cashwalk/cashwalk/lockscreen/LockScreenMainFragment;

    invoke-virtual {v5}, Lcom/cashwalk/cashwalk/lockscreen/LockScreenMainFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f090132

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    new-instance v6, Lcom/cashwalk/cashwalk/lockscreen/LockScreenMainFragment$8$1;

    invoke-direct {v6, p0}, Lcom/cashwalk/cashwalk/lockscreen/LockScreenMainFragment$8$1;-><init>(Lcom/cashwalk/cashwalk/lockscreen/LockScreenMainFragment$8;)V

    invoke-virtual {v0, v5, v6}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 469
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto/16 :goto_0

    .line 472
    .end local v0    # "ab":Landroid/app/AlertDialog$Builder;
    :cond_2
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v5, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenMainFragment$8;->this$0:Lcom/cashwalk/cashwalk/lockscreen/LockScreenMainFragment;

    invoke-virtual {v5}, Lcom/cashwalk/cashwalk/lockscreen/LockScreenMainFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v5

    invoke-direct {v0, v5}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 473
    .restart local v0    # "ab":Landroid/app/AlertDialog$Builder;
    iget-object v5, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenMainFragment$8;->this$0:Lcom/cashwalk/cashwalk/lockscreen/LockScreenMainFragment;

    const v6, 0x7f09012c

    invoke-virtual {v5, v6}, Lcom/cashwalk/cashwalk/lockscreen/LockScreenMainFragment;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 474
    iget-object v5, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenMainFragment$8;->this$0:Lcom/cashwalk/cashwalk/lockscreen/LockScreenMainFragment;

    invoke-virtual {v5}, Lcom/cashwalk/cashwalk/lockscreen/LockScreenMainFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f090222

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    new-instance v6, Lcom/cashwalk/cashwalk/lockscreen/LockScreenMainFragment$8$2;

    invoke-direct {v6, p0}, Lcom/cashwalk/cashwalk/lockscreen/LockScreenMainFragment$8$2;-><init>(Lcom/cashwalk/cashwalk/lockscreen/LockScreenMainFragment$8;)V

    invoke-virtual {v0, v5, v6}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 481
    iget-object v5, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenMainFragment$8;->this$0:Lcom/cashwalk/cashwalk/lockscreen/LockScreenMainFragment;

    const v6, 0x7f090136

    invoke-virtual {v5, v6}, Lcom/cashwalk/cashwalk/lockscreen/LockScreenMainFragment;->getString(I)Ljava/lang/String;

    move-result-object v5

    new-instance v6, Lcom/cashwalk/cashwalk/lockscreen/LockScreenMainFragment$8$3;

    invoke-direct {v6, p0}, Lcom/cashwalk/cashwalk/lockscreen/LockScreenMainFragment$8$3;-><init>(Lcom/cashwalk/cashwalk/lockscreen/LockScreenMainFragment$8;)V

    invoke-virtual {v0, v5, v6}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 488
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto/16 :goto_0

    .line 493
    .end local v0    # "ab":Landroid/app/AlertDialog$Builder;
    .end local v3    # "keyguardManagerF":Landroid/app/KeyguardManager;
    :sswitch_4
    sget-boolean v5, Lcom/cashwalk/cashwalk/lockscreen/LockScreenMainFragment;->isTutorialFinished:Z

    if-eqz v5, :cond_3

    .line 494
    iget-object v5, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenMainFragment$8;->this$0:Lcom/cashwalk/cashwalk/lockscreen/LockScreenMainFragment;

    invoke-static {v5}, Lcom/cashwalk/cashwalk/lockscreen/LockScreenMainFragment;->access$000(Lcom/cashwalk/cashwalk/lockscreen/LockScreenMainFragment;)Landroid/content/SharedPreferences;

    move-result-object v5

    invoke-interface {v5}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 495
    .local v1, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v5, "LOCKSCREEN_TUTORIAL_STAGE_WALK_START_STEPS"

    invoke-interface {v1, v5}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 496
    const-string v5, "LOCKSCREEN_TUTORIAL_STAGE"

    invoke-interface {v1, v5}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 497
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 501
    .end local v1    # "editor":Landroid/content/SharedPreferences$Editor;
    :goto_2
    iget-object v5, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenMainFragment$8;->this$0:Lcom/cashwalk/cashwalk/lockscreen/LockScreenMainFragment;

    invoke-virtual {v5, v9}, Lcom/cashwalk/cashwalk/lockscreen/LockScreenMainFragment;->updateMessage(Z)V

    goto/16 :goto_0

    .line 499
    :cond_3
    iget-object v5, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenMainFragment$8;->this$0:Lcom/cashwalk/cashwalk/lockscreen/LockScreenMainFragment;

    invoke-static {v5}, Lcom/cashwalk/cashwalk/lockscreen/LockScreenMainFragment;->access$000(Lcom/cashwalk/cashwalk/lockscreen/LockScreenMainFragment;)Landroid/content/SharedPreferences;

    move-result-object v5

    invoke-interface {v5}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v5

    const-string v6, "LOCKSCREEN_TUTORIAL_STAGE"

    const-string v7, "LOCKSCREEN_TUTORIAL_STAGE_FINISHED"

    invoke-interface {v5, v6, v7}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v5

    invoke-interface {v5}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_2

    .line 504
    :sswitch_5
    iget-object v5, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenMainFragment$8;->this$0:Lcom/cashwalk/cashwalk/lockscreen/LockScreenMainFragment;

    new-instance v6, Landroid/content/Intent;

    iget-object v7, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenMainFragment$8;->this$0:Lcom/cashwalk/cashwalk/lockscreen/LockScreenMainFragment;

    invoke-virtual {v7}, Lcom/cashwalk/cashwalk/lockscreen/LockScreenMainFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v7

    const-class v8, Lcom/cashwalk/cashwalk/activity/SettingsActivity;

    invoke-direct {v6, v7, v8}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v5, v6}, Lcom/cashwalk/cashwalk/lockscreen/LockScreenMainFragment;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 434
    nop

    :sswitch_data_0
    .sparse-switch
        0x63 -> :sswitch_0
        0x64 -> :sswitch_1
        0xc8 -> :sswitch_2
        0x12c -> :sswitch_3
        0x190 -> :sswitch_4
        0x1f4 -> :sswitch_5
    .end sparse-switch
.end method
