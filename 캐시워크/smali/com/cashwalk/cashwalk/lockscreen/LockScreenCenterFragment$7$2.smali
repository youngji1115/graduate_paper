.class Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment$7$2;
.super Lcom/cashwalk/cashwalk/util/network/ResponseHandler2;
.source "LockScreenCenterFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment$7;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment$7;


# direct methods
.method constructor <init>(Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment$7;)V
    .locals 0
    .param p1, "this$1"    # Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment$7;

    .prologue
    .line 366
    iput-object p1, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment$7$2;->this$1:Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment$7;

    invoke-direct {p0}, Lcom/cashwalk/cashwalk/util/network/ResponseHandler2;-><init>()V

    return-void
.end method


# virtual methods
.method public handleError(Ljava/lang/String;)V
    .locals 2
    .param p1, "error"    # Ljava/lang/String;

    .prologue
    .line 576
    iget-object v0, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment$7$2;->this$1:Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment$7;

    iget-object v0, v0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment$7;->this$0:Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment;->showCoinBox(Z)V

    .line 577
    iget-object v0, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment$7$2;->this$1:Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment$7;

    iget-object v0, v0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment$7;->this$0:Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment;

    invoke-static {v0}, Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment;->access$300(Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment;)Landroid/widget/LinearLayout;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 578
    iget-object v0, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment$7$2;->this$1:Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment$7;

    iget-object v0, v0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment$7;->this$0:Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment;

    invoke-static {v0}, Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment;->access$100(Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment;)Landroid/widget/ImageView;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setClickable(Z)V

    .line 579
    return-void
.end method

.method public handleResponse(Lorg/json/JSONObject;)V
    .locals 10
    .param p1, "jo"    # Lorg/json/JSONObject;

    .prologue
    const/16 v9, 0x8

    const/4 v8, 0x0

    .line 372
    iget-object v4, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment$7$2;->this$1:Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment$7;

    iget-object v4, v4, Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment$7;->this$0:Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment;

    invoke-virtual {v4}, Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment$7$2;->this$1:Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment$7;

    iget-object v4, v4, Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment$7;->this$0:Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment;

    invoke-virtual {v4}, Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment;->getContext()Landroid/content/Context;

    move-result-object v4

    if-nez v4, :cond_1

    .line 572
    :cond_0
    :goto_0
    return-void

    .line 377
    :cond_1
    :try_start_0
    const-string v4, "error"

    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 378
    const-string v4, "error"

    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    if-eqz v4, :cond_2

    const-string v4, "error"

    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    const-string/jumbo v5, "type"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "LimitPointError"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 379
    iget-object v4, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment$7$2;->this$1:Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment$7;

    iget-object v4, v4, Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment$7;->this$0:Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment;

    invoke-virtual {v4}, Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment;->getContext()Landroid/content/Context;

    move-result-object v4

    iget-object v5, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment$7$2;->this$1:Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment$7;

    iget-object v5, v5, Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment$7;->this$0:Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment;

    const v6, 0x7f090102

    invoke-virtual {v5, v6}, Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment;->getString(I)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    invoke-static {v4, v5, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    .line 380
    iget-object v4, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment$7$2;->this$1:Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment$7;

    iget-object v4, v4, Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment$7;->this$0:Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment;->showCoinBox(Z)V

    .line 381
    iget-object v4, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment$7$2;->this$1:Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment$7;

    iget-object v4, v4, Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment$7;->this$0:Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment;

    invoke-static {v4}, Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment;->access$300(Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment;)Landroid/widget/LinearLayout;

    move-result-object v4

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 382
    iget-object v4, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment$7$2;->this$1:Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment$7;

    iget-object v4, v4, Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment$7;->this$0:Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment;

    const/16 v5, 0x2710

    invoke-static {v4, v5}, Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment;->access$1002(Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment;I)I

    .line 383
    iget-object v4, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment$7$2;->this$1:Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment$7;

    iget-object v4, v4, Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment$7;->this$0:Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment;

    invoke-static {v4}, Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment;->access$900(Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment;)Landroid/content/SharedPreferences;

    move-result-object v4

    invoke-interface {v4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    const-string v5, "LOCKSCREEN_HARVESTED_STEPS"

    iget-object v6, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment$7$2;->this$1:Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment$7;

    iget-object v6, v6, Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment$7;->this$0:Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment;

    invoke-static {v6}, Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment;->access$1000(Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment;)I

    move-result v6

    invoke-interface {v4, v5, v6}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    invoke-interface {v4}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 385
    iget-object v4, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment$7$2;->this$1:Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment$7;

    iget-object v4, v4, Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment$7;->this$0:Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment;

    invoke-static {v4}, Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment;->access$1100(Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment;)Landroid/widget/TextView;

    move-result-object v4

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 386
    iget-object v4, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment$7$2;->this$1:Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment$7;

    iget-object v4, v4, Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment$7;->this$0:Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment;

    const/4 v5, 0x0

    invoke-static {v4, v5}, Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment;->access$1202(Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment;I)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 563
    :catch_0
    move-exception v1

    .line 564
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 565
    invoke-static {v1}, Lcom/crashlytics/android/Crashlytics;->logException(Ljava/lang/Throwable;)V

    .line 566
    iget-object v4, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment$7$2;->this$1:Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment$7;

    iget-object v4, v4, Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment$7;->this$0:Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment;

    invoke-virtual {v4, v8}, Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment;->showCoinBox(Z)V

    .line 567
    iget-object v4, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment$7$2;->this$1:Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment$7;

    iget-object v4, v4, Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment$7;->this$0:Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment;

    invoke-static {v4}, Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment;->access$300(Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment;)Landroid/widget/LinearLayout;

    move-result-object v4

    invoke-virtual {v4, v9}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 568
    iget-object v4, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment$7$2;->this$1:Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment$7;

    iget-object v4, v4, Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment$7;->this$0:Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment;

    invoke-static {v4}, Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment;->access$1300(Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment;)Landroid/widget/TextView;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/TextView;->getVisibility()I

    move-result v4

    if-nez v4, :cond_0

    .line 569
    iget-object v4, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment$7$2;->this$1:Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment$7;

    iget-object v4, v4, Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment$7;->this$0:Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment;

    invoke-static {v4}, Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment;->access$1300(Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment;)Landroid/widget/TextView;

    move-result-object v4

    invoke-virtual {v4, v9}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_0

    .line 387
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_2
    :try_start_1
    const-string v4, "error"

    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    if-eqz v4, :cond_3

    const-string v4, "error"

    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    const-string v5, "code"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v4

    const/16 v5, 0x1f4

    if-ne v4, v5, :cond_3

    const-string v4, "error"

    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    const-string/jumbo v5, "type"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "BannedUserError"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 388
    new-instance v0, Landroid/support/v7/app/AlertDialog$Builder;

    iget-object v4, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment$7$2;->this$1:Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment$7;

    iget-object v4, v4, Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment$7;->this$0:Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment;

    invoke-virtual {v4}, Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    invoke-direct {v0, v4}, Landroid/support/v7/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 389
    .local v0, "ab":Landroid/support/v7/app/AlertDialog$Builder;
    iget-object v4, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment$7$2;->this$1:Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment$7;

    iget-object v4, v4, Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment$7;->this$0:Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment;

    const v5, 0x7f09013d

    invoke-virtual {v4, v5}, Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/support/v7/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 390
    iget-object v4, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment$7$2;->this$1:Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment$7;

    iget-object v4, v4, Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment$7;->this$0:Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment;

    invoke-virtual {v4}, Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f090101

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment$7$2$1;

    invoke-direct {v5, p0}, Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment$7$2$1;-><init>(Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment$7$2;)V

    invoke-virtual {v0, v4, v5}, Landroid/support/v7/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 396
    iget-object v4, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment$7$2;->this$1:Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment$7;

    iget-object v4, v4, Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment$7;->this$0:Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment;

    const v5, 0x7f090136

    invoke-virtual {v4, v5}, Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment$7$2$2;

    invoke-direct {v5, p0}, Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment$7$2$2;-><init>(Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment$7$2;)V

    invoke-virtual {v0, v4, v5}, Landroid/support/v7/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 403
    invoke-virtual {v0}, Landroid/support/v7/app/AlertDialog$Builder;->show()Landroid/support/v7/app/AlertDialog;

    goto/16 :goto_0

    .line 404
    .end local v0    # "ab":Landroid/support/v7/app/AlertDialog$Builder;
    :cond_3
    const-string v4, "error"

    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    const-string/jumbo v5, "type"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_4

    const-string v4, "error"

    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    const-string v5, "code"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v4

    const/16 v5, 0x7c

    if-ne v4, v5, :cond_4

    const-string v4, "error"

    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    const-string/jumbo v5, "type"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "UpdateClientError"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 406
    new-instance v0, Landroid/support/v7/app/AlertDialog$Builder;

    iget-object v4, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment$7$2;->this$1:Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment$7;

    iget-object v4, v4, Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment$7;->this$0:Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment;

    invoke-virtual {v4}, Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    invoke-direct {v0, v4}, Landroid/support/v7/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 407
    .restart local v0    # "ab":Landroid/support/v7/app/AlertDialog$Builder;
    iget-object v4, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment$7$2;->this$1:Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment$7;

    iget-object v4, v4, Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment$7;->this$0:Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment;

    const v5, 0x7f0902e6

    invoke-virtual {v4, v5}, Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/support/v7/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 408
    iget-object v4, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment$7$2;->this$1:Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment$7;

    iget-object v4, v4, Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment$7;->this$0:Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment;

    invoke-virtual {v4}, Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f090101

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment$7$2$3;

    invoke-direct {v5, p0}, Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment$7$2$3;-><init>(Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment$7$2;)V

    invoke-virtual {v0, v4, v5}, Landroid/support/v7/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 414
    iget-object v4, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment$7$2;->this$1:Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment$7;

    iget-object v4, v4, Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment$7;->this$0:Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment;

    const v5, 0x7f0902e5

    invoke-virtual {v4, v5}, Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment$7$2$4;

    invoke-direct {v5, p0}, Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment$7$2$4;-><init>(Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment$7$2;)V

    invoke-virtual {v0, v4, v5}, Landroid/support/v7/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 423
    invoke-virtual {v0}, Landroid/support/v7/app/AlertDialog$Builder;->show()Landroid/support/v7/app/AlertDialog;

    goto/16 :goto_0

    .line 425
    .end local v0    # "ab":Landroid/support/v7/app/AlertDialog$Builder;
    :cond_4
    const-string v4, "error"

    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    const-string v5, "code"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v4

    const/16 v5, 0x1f5

    if-ne v4, v5, :cond_0

    const-string v4, "error"

    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    const-string/jumbo v5, "type"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "BlockedIPError"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 426
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v4, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment$7$2;->this$1:Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment$7;

    iget-object v4, v4, Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment$7;->this$0:Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment;

    invoke-virtual {v4}, Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    invoke-direct {v0, v4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 427
    .local v0, "ab":Landroid/app/AlertDialog$Builder;
    iget-object v4, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment$7$2;->this$1:Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment$7;

    iget-object v4, v4, Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment$7;->this$0:Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment;

    const v5, 0x7f09013d

    invoke-virtual {v4, v5}, Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 428
    iget-object v4, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment$7$2;->this$1:Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment$7;

    iget-object v4, v4, Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment$7;->this$0:Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment;

    invoke-virtual {v4}, Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f090101

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment$7$2$5;

    invoke-direct {v5, p0}, Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment$7$2$5;-><init>(Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment$7$2;)V

    invoke-virtual {v0, v4, v5}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 434
    iget-object v4, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment$7$2;->this$1:Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment$7;

    iget-object v4, v4, Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment$7;->this$0:Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment;

    const v5, 0x7f090136

    invoke-virtual {v4, v5}, Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment$7$2$6;

    invoke-direct {v5, p0}, Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment$7$2$6;-><init>(Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment$7$2;)V

    invoke-virtual {v0, v4, v5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 441
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto/16 :goto_0

    .line 444
    .end local v0    # "ab":Landroid/app/AlertDialog$Builder;
    :cond_5
    iget-object v4, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment$7$2;->this$1:Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment$7;

    iget-object v4, v4, Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment$7;->this$0:Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment;

    invoke-static {v4}, Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment;->access$900(Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment;)Landroid/content/SharedPreferences;

    move-result-object v4

    invoke-interface {v4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    const-string v5, "POINT"

    const-string/jumbo v6, "user"

    invoke-virtual {p1, v6}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v6

    const-string v7, "point"

    invoke-virtual {v6, v7}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v6

    invoke-interface {v4, v5, v6}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    invoke-interface {v4}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 446
    iget-object v4, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment$7$2;->this$1:Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment$7;

    iget-object v4, v4, Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment$7;->this$0:Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment;

    invoke-static {v4}, Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment;->access$1200(Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment;)I

    move-result v4

    if-lez v4, :cond_a

    .line 448
    iget-object v4, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment$7$2;->this$1:Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment$7;

    iget-object v4, v4, Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment$7;->this$0:Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment;

    invoke-static {v4}, Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment;->access$100(Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment;)Landroid/widget/ImageView;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/ImageView;->getVisibility()I

    move-result v4

    if-nez v4, :cond_9

    .line 449
    iget-object v4, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment$7$2;->this$1:Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment$7;

    iget-object v4, v4, Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment$7;->this$0:Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment;

    iget-object v5, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment$7$2;->this$1:Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment$7;

    iget-object v5, v5, Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment$7;->this$0:Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment;

    invoke-static {v5}, Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment;->access$1200(Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment;)I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    invoke-static {v4, v5}, Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment;->access$1202(Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment;I)I

    .line 450
    iget-object v4, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment$7$2;->this$1:Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment$7;

    iget-object v4, v4, Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment$7;->this$0:Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment;

    invoke-static {v4}, Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment;->access$1100(Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment;)Landroid/widget/TextView;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 452
    iget-object v4, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment$7$2;->this$1:Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment$7;

    iget-object v4, v4, Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment$7;->this$0:Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment;

    invoke-static {v4}, Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment;->access$1200(Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment;)I

    move-result v4

    const/16 v5, 0x2710

    if-gt v4, v5, :cond_8

    .line 453
    iget-object v4, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment$7$2;->this$1:Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment$7;

    iget-object v4, v4, Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment$7;->this$0:Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment;

    invoke-static {v4}, Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment;->access$1100(Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment;)Landroid/widget/TextView;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment$7$2;->this$1:Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment$7;

    iget-object v6, v6, Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment$7;->this$0:Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment;

    invoke-static {v6}, Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment;->access$1200(Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment;)I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 467
    :goto_1
    iget-object v4, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment$7$2;->this$1:Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment$7;

    iget-object v4, v4, Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment$7;->this$0:Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment;

    invoke-static {v4}, Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment;->access$1300(Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment;)Landroid/widget/TextView;

    move-result-object v4

    iget-object v5, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment$7$2;->this$1:Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment$7;

    iget-object v5, v5, Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment$7;->val$cashAnim:Landroid/view/animation/Animation;

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 468
    iget-object v4, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment$7$2;->this$1:Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment$7;

    iget-object v4, v4, Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment$7;->this$0:Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment;

    invoke-static {v4}, Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment;->access$1300(Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment;)Landroid/widget/TextView;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 469
    const-string v4, "result"

    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    const-string v5, "point"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    .line 470
    .local v2, "point":I
    iget-object v4, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment$7$2;->this$1:Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment$7;

    iget-object v4, v4, Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment$7;->this$0:Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment;

    invoke-static {v4}, Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment;->access$1300(Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment;)Landroid/widget/TextView;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "+ "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment$7$2;->this$1:Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment$7;

    iget-object v6, v6, Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment$7;->this$0:Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment;

    const v7, 0x7f090233

    invoke-virtual {v6, v7}, Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 472
    iget-object v4, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment$7$2;->this$1:Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment$7;

    iget-object v4, v4, Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment$7;->this$0:Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment;

    invoke-static {v4}, Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment;->access$100(Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment;)Landroid/widget/ImageView;

    move-result-object v4

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setClickable(Z)V

    .line 474
    iget-object v4, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment$7$2;->this$1:Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment$7;

    iget-object v4, v4, Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment$7;->this$0:Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment;

    iget-object v5, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment$7$2;->this$1:Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment$7;

    iget-object v5, v5, Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment$7;->this$0:Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment;

    invoke-static {v5}, Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment;->access$1000(Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment;)I

    move-result v5

    invoke-static {}, Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment;->access$1400()I

    move-result v6

    add-int/2addr v5, v6

    invoke-static {v4, v5}, Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment;->access$1002(Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment;I)I

    .line 475
    iget-object v4, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment$7$2;->this$1:Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment$7;

    iget-object v4, v4, Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment$7;->this$0:Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment;

    invoke-static {v4}, Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment;->access$900(Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment;)Landroid/content/SharedPreferences;

    move-result-object v4

    invoke-interface {v4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    const-string v5, "LOCKSCREEN_HARVESTED_STEPS"

    iget-object v6, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment$7$2;->this$1:Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment$7;

    iget-object v6, v6, Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment$7;->this$0:Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment;

    invoke-static {v6}, Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment;->access$1000(Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment;)I

    move-result v6

    invoke-interface {v4, v5, v6}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    invoke-interface {v4}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 477
    iget-object v4, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment$7$2;->this$1:Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment$7;

    iget-object v4, v4, Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment$7;->this$0:Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment;

    invoke-static {v4}, Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment;->access$1000(Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment;)I

    move-result v4

    invoke-static {}, Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment;->access$1400()I

    move-result v5

    div-int/2addr v4, v5

    iget-object v5, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment$7$2;->this$1:Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment$7;

    iget-object v5, v5, Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment$7;->this$0:Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment;

    invoke-static {v5}, Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment;->access$1500(Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment;)I

    move-result v5

    invoke-static {}, Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment;->access$1400()I

    move-result v6

    div-int/2addr v5, v6

    if-lt v4, v5, :cond_b

    .line 478
    iget-object v4, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment$7$2;->this$1:Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment$7;

    iget-object v4, v4, Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment$7;->this$0:Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment;

    invoke-static {v4}, Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment;->access$400(Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment;)Landroid/os/Handler;

    move-result-object v4

    if-eqz v4, :cond_6

    .line 479
    iget-object v4, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment$7$2;->this$1:Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment$7;

    iget-object v4, v4, Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment$7;->this$0:Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment;

    invoke-static {v4}, Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment;->access$400(Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment;)Landroid/os/Handler;

    move-result-object v4

    iget-object v5, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment$7$2;->this$1:Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment$7;

    iget-object v5, v5, Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment$7;->this$0:Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment;

    invoke-static {v5}, Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment;->access$500(Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment;)Ljava/lang/Runnable;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 482
    :cond_6
    iget-object v4, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment$7$2;->this$1:Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment$7;

    iget-object v4, v4, Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment$7;->this$0:Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment;->showCoinBox(Z)V

    .line 483
    iget-object v4, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment$7$2;->this$1:Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment$7;

    iget-object v4, v4, Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment$7;->this$0:Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment;

    invoke-static {v4}, Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment;->access$300(Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment;)Landroid/widget/LinearLayout;

    move-result-object v4

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 537
    :goto_2
    :try_start_2
    iget-object v4, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment$7$2;->this$1:Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment$7;

    iget-object v4, v4, Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment$7;->this$0:Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment;

    invoke-static {v4}, Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment;->access$2200(Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment;)Ljava/lang/Runnable;

    move-result-object v4

    if-eqz v4, :cond_7

    .line 538
    iget-object v4, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment$7$2;->this$1:Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment$7;

    iget-object v4, v4, Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment$7;->this$0:Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment;

    invoke-static {v4}, Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment;->access$2300(Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment;)Landroid/os/Handler;

    move-result-object v4

    iget-object v5, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment$7$2;->this$1:Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment$7;

    iget-object v5, v5, Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment$7;->this$0:Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment;

    invoke-static {v5}, Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment;->access$2200(Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment;)Ljava/lang/Runnable;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 540
    :cond_7
    iget-object v4, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment$7$2;->this$1:Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment$7;

    iget-object v4, v4, Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment$7;->this$0:Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment;

    new-instance v5, Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment$7$2$7;

    invoke-direct {v5, p0}, Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment$7$2$7;-><init>(Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment$7$2;)V

    invoke-static {v4, v5}, Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment;->access$2202(Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment;Ljava/lang/Runnable;)Ljava/lang/Runnable;

    .line 555
    iget-object v4, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment$7$2;->this$1:Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment$7;

    iget-object v4, v4, Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment$7;->this$0:Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment;

    invoke-static {v4}, Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment;->access$2300(Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment;)Landroid/os/Handler;

    move-result-object v4

    iget-object v5, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment$7$2;->this$1:Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment$7;

    iget-object v5, v5, Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment$7;->this$0:Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment;

    invoke-static {v5}, Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment;->access$2200(Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment;)Ljava/lang/Runnable;

    move-result-object v5

    const-wide/16 v6, 0x3e8

    invoke-virtual {v4, v5, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_0

    .line 556
    :catch_1
    move-exception v1

    .line 557
    .restart local v1    # "e":Ljava/lang/Exception;
    :try_start_3
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 558
    iget-object v4, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment$7$2;->this$1:Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment$7;

    iget-object v4, v4, Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment$7;->this$0:Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment;

    invoke-static {v4}, Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment;->access$1300(Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment;)Landroid/widget/TextView;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/TextView;->getVisibility()I

    move-result v4

    if-nez v4, :cond_0

    .line 559
    iget-object v4, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment$7$2;->this$1:Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment$7;

    iget-object v4, v4, Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment$7;->this$0:Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment;

    invoke-static {v4}, Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment;->access$1300(Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment;)Landroid/widget/TextView;

    move-result-object v4

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_0

    .line 455
    .end local v1    # "e":Ljava/lang/Exception;
    .end local v2    # "point":I
    :cond_8
    iget-object v4, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment$7$2;->this$1:Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment$7;

    iget-object v4, v4, Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment$7;->this$0:Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment;

    invoke-static {v4}, Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment;->access$1100(Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment;)Landroid/widget/TextView;

    move-result-object v4

    const-string v5, "10000"

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 459
    :cond_9
    iget-object v4, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment$7$2;->this$1:Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment$7;

    iget-object v4, v4, Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment$7;->this$0:Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment;

    invoke-static {v4}, Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment;->access$1100(Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment;)Landroid/widget/TextView;

    move-result-object v4

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_1

    .line 463
    :cond_a
    iget-object v4, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment$7$2;->this$1:Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment$7;

    iget-object v4, v4, Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment$7;->this$0:Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment;

    invoke-static {v4}, Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment;->access$1100(Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment;)Landroid/widget/TextView;

    move-result-object v4

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_1

    .line 484
    .restart local v2    # "point":I
    :cond_b
    iget-object v4, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment$7$2;->this$1:Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment$7;

    iget-object v4, v4, Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment$7;->this$0:Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment;

    invoke-static {v4}, Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment;->access$1000(Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment;)I

    move-result v4

    invoke-static {}, Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment;->access$1400()I

    move-result v5

    invoke-static {}, Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment;->access$1600()I

    move-result v6

    mul-int/2addr v5, v6

    rem-int/2addr v4, v5

    if-nez v4, :cond_d

    iget-object v4, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment$7$2;->this$1:Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment$7;

    iget-object v4, v4, Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment$7;->this$0:Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment;

    invoke-static {v4}, Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment;->access$1700(Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment;)Lorg/joda/time/DateTime;

    move-result-object v4

    new-instance v5, Lorg/joda/time/DateTime;

    invoke-direct {v5}, Lorg/joda/time/DateTime;-><init>()V

    const/4 v6, 0x3

    invoke-virtual {v5, v6}, Lorg/joda/time/DateTime;->minusDays(I)Lorg/joda/time/DateTime;

    move-result-object v5

    invoke-virtual {v4, v5}, Lorg/joda/time/DateTime;->isBefore(Lorg/joda/time/ReadableInstant;)Z

    move-result v4

    if-eqz v4, :cond_d

    .line 485
    iget-object v4, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment$7$2;->this$1:Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment$7;

    iget-object v4, v4, Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment$7;->this$0:Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment;

    invoke-static {v4}, Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment;->access$400(Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment;)Landroid/os/Handler;

    move-result-object v4

    if-eqz v4, :cond_c

    .line 486
    iget-object v4, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment$7$2;->this$1:Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment$7;

    iget-object v4, v4, Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment$7;->this$0:Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment;

    invoke-static {v4}, Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment;->access$400(Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment;)Landroid/os/Handler;

    move-result-object v4

    iget-object v5, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment$7$2;->this$1:Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment$7;

    iget-object v5, v5, Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment$7;->this$0:Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment;

    invoke-static {v5}, Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment;->access$500(Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment;)Ljava/lang/Runnable;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 512
    :cond_c
    iget-object v4, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment$7$2;->this$1:Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment$7;

    iget-object v4, v4, Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment$7;->this$0:Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment;

    invoke-static {v4}, Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment;->access$300(Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment;)Landroid/widget/LinearLayout;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 514
    iget-object v4, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment$7$2;->this$1:Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment$7;

    iget-object v4, v4, Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment$7;->this$0:Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment;

    invoke-static {v4}, Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment;->access$1900(Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment;)Lcom/google/android/gms/ads/AdView;

    move-result-object v4

    iget-object v5, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment$7$2;->this$1:Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment$7;

    iget-object v5, v5, Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment$7;->this$0:Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment;

    invoke-static {v5}, Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment;->access$1800(Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment;)Lcom/google/android/gms/ads/AdRequest;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/google/android/gms/ads/AdView;->loadAd(Lcom/google/android/gms/ads/AdRequest;)V

    .line 515
    iget-object v4, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment$7$2;->this$1:Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment$7;

    iget-object v4, v4, Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment$7;->this$0:Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment;

    invoke-static {v4}, Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment;->access$300(Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment;)Landroid/widget/LinearLayout;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 517
    iget-object v4, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment$7$2;->this$1:Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment$7;

    iget-object v4, v4, Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment$7;->this$0:Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment;

    invoke-static {v4}, Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment;->access$100(Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment;)Landroid/widget/ImageView;

    move-result-object v4

    const v5, 0x7f0201a7

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 518
    iget-object v4, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment$7$2;->this$1:Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment$7;

    iget-object v4, v4, Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment$7;->this$0:Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment;

    invoke-static {v4}, Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment;->access$100(Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment;)Landroid/widget/ImageView;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setClickable(Z)V

    goto/16 :goto_2

    .line 519
    :cond_d
    iget-object v4, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment$7$2;->this$1:Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment$7;

    iget-object v4, v4, Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment$7;->this$0:Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment;

    invoke-static {v4}, Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment;->access$900(Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment;)Landroid/content/SharedPreferences;

    move-result-object v4

    const-string v5, "LOCKSCREEN_SHOW_AD_COUNT"

    const/4 v6, 0x1

    invoke-interface {v4, v5, v6}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v4

    invoke-static {}, Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment;->access$2000()I

    move-result v5

    if-lt v4, v5, :cond_e

    invoke-static {}, Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment;->access$2000()I

    move-result v4

    if-eqz v4, :cond_e

    .line 521
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "#### \ubb34\ub8cc\ubf51\uae30 \uae30\ud68c \ud638\ucd9c O "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment;->access$2000()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/cashwalk/cashwalk/util/Utils;->LOG(Ljava/lang/String;)V

    .line 522
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "#### \ubb34\ub8cc\ubf51\uae30 \uae30\ud68c \ud638\ucd9c O \ud604\uc7ac \ud69f\uc218 "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment$7$2;->this$1:Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment$7;

    iget-object v5, v5, Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment$7;->this$0:Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment;

    invoke-static {v5}, Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment;->access$900(Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment;)Landroid/content/SharedPreferences;

    move-result-object v5

    const-string v6, "LOCKSCREEN_SHOW_AD_COUNT"

    const/4 v7, 0x1

    invoke-interface {v5, v6, v7}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/cashwalk/cashwalk/util/Utils;->LOG(Ljava/lang/String;)V

    .line 523
    iget-object v4, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment$7$2;->this$1:Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment$7;

    iget-object v4, v4, Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment$7;->this$0:Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment;

    invoke-static {v4}, Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment;->access$900(Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment;)Landroid/content/SharedPreferences;

    move-result-object v4

    invoke-interface {v4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    const-string v5, "LOCKSCREEN_SHOW_AD_COUNT"

    const/4 v6, 0x1

    invoke-interface {v4, v5, v6}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    invoke-interface {v4}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 524
    iget-object v4, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment$7$2;->this$1:Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment$7;

    iget-object v4, v4, Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment$7;->this$0:Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment;

    invoke-static {v4}, Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment;->access$2100(Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment;)V

    goto/16 :goto_2

    .line 526
    :cond_e
    invoke-static {}, Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment;->access$2000()I

    move-result v4

    if-eqz v4, :cond_f

    .line 527
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "#### \ubb34\ub8cc\ubf51\uae30 \uae30\ud68c \ud638\ucd9c X "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment;->access$2000()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/cashwalk/cashwalk/util/Utils;->LOG(Ljava/lang/String;)V

    .line 528
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "#### \ubb34\ub8cc\ubf51\uae30 \uae30\ud68c \ud638\ucd9c X \ud604\uc7ac \ud69f\uc218 "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment$7$2;->this$1:Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment$7;

    iget-object v5, v5, Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment$7;->this$0:Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment;

    invoke-static {v5}, Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment;->access$900(Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment;)Landroid/content/SharedPreferences;

    move-result-object v5

    const-string v6, "LOCKSCREEN_SHOW_AD_COUNT"

    const/4 v7, 0x1

    invoke-interface {v5, v6, v7}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/cashwalk/cashwalk/util/Utils;->LOG(Ljava/lang/String;)V

    .line 529
    iget-object v4, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment$7$2;->this$1:Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment$7;

    iget-object v4, v4, Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment$7;->this$0:Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment;

    invoke-static {v4}, Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment;->access$900(Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment;)Landroid/content/SharedPreferences;

    move-result-object v4

    const-string v5, "LOCKSCREEN_SHOW_AD_COUNT"

    const/4 v6, 0x1

    invoke-interface {v4, v5, v6}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v3

    .line 530
    .local v3, "showAdCount":I
    iget-object v4, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment$7$2;->this$1:Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment$7;

    iget-object v4, v4, Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment$7;->this$0:Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment;

    invoke-static {v4}, Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment;->access$900(Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment;)Landroid/content/SharedPreferences;

    move-result-object v4

    invoke-interface {v4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    const-string v5, "LOCKSCREEN_SHOW_AD_COUNT"

    add-int/lit8 v6, v3, 0x1

    invoke-interface {v4, v5, v6}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    invoke-interface {v4}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto/16 :goto_2

    .line 532
    .end local v3    # "showAdCount":I
    :cond_f
    const-string v4, "#### \ubb34\ub8cc\ubf51\uae30 \uc0ac\uc6a9 \uc548\ud568"

    invoke-static {v4}, Lcom/cashwalk/cashwalk/util/Utils;->LOG(Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto/16 :goto_2
.end method
