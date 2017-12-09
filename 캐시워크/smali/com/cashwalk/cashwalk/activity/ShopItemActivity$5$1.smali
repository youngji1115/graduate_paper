.class Lcom/cashwalk/cashwalk/activity/ShopItemActivity$5$1;
.super Lcom/cashwalk/cashwalk/util/network/ResponseHandler;
.source "ShopItemActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cashwalk/cashwalk/activity/ShopItemActivity$5;->handleMessage(Landroid/os/Message;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/cashwalk/cashwalk/activity/ShopItemActivity$5;


# direct methods
.method constructor <init>(Lcom/cashwalk/cashwalk/activity/ShopItemActivity$5;)V
    .locals 0
    .param p1, "this$1"    # Lcom/cashwalk/cashwalk/activity/ShopItemActivity$5;

    .prologue
    .line 198
    iput-object p1, p0, Lcom/cashwalk/cashwalk/activity/ShopItemActivity$5$1;->this$1:Lcom/cashwalk/cashwalk/activity/ShopItemActivity$5;

    invoke-direct {p0}, Lcom/cashwalk/cashwalk/util/network/ResponseHandler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleResponse(Lorg/json/JSONObject;)V
    .locals 10
    .param p1, "jo"    # Lorg/json/JSONObject;

    .prologue
    const v9, 0x7f090143

    const/4 v8, 0x1

    .line 202
    :try_start_0
    const-string v3, "error"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result v3

    if-nez v3, :cond_0

    .line 204
    :try_start_1
    iget-object v3, p0, Lcom/cashwalk/cashwalk/activity/ShopItemActivity$5$1;->this$1:Lcom/cashwalk/cashwalk/activity/ShopItemActivity$5;

    iget-object v3, v3, Lcom/cashwalk/cashwalk/activity/ShopItemActivity$5;->this$0:Lcom/cashwalk/cashwalk/activity/ShopItemActivity;

    invoke-static {v3}, Lcom/google/firebase/analytics/FirebaseAnalytics;->getInstance(Landroid/content/Context;)Lcom/google/firebase/analytics/FirebaseAnalytics;

    move-result-object v3

    const-string v4, "shop_purchase"

    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {v3, v4, v5}, Lcom/google/firebase/analytics/FirebaseAnalytics;->logEvent(Ljava/lang/String;Landroid/os/Bundle;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 208
    :goto_0
    :try_start_2
    iget-object v3, p0, Lcom/cashwalk/cashwalk/activity/ShopItemActivity$5$1;->this$1:Lcom/cashwalk/cashwalk/activity/ShopItemActivity$5;

    iget-object v3, v3, Lcom/cashwalk/cashwalk/activity/ShopItemActivity$5;->this$0:Lcom/cashwalk/cashwalk/activity/ShopItemActivity;

    invoke-static {v3}, Lcom/cashwalk/cashwalk/activity/ShopItemActivity;->access$1200(Lcom/cashwalk/cashwalk/activity/ShopItemActivity;)Landroid/content/SharedPreferences;

    move-result-object v3

    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    const-string v4, "POINT"

    iget-object v5, p0, Lcom/cashwalk/cashwalk/activity/ShopItemActivity$5$1;->this$1:Lcom/cashwalk/cashwalk/activity/ShopItemActivity$5;

    iget-object v5, v5, Lcom/cashwalk/cashwalk/activity/ShopItemActivity$5;->this$0:Lcom/cashwalk/cashwalk/activity/ShopItemActivity;

    invoke-static {v5}, Lcom/cashwalk/cashwalk/activity/ShopItemActivity;->access$1200(Lcom/cashwalk/cashwalk/activity/ShopItemActivity;)Landroid/content/SharedPreferences;

    move-result-object v5

    const-string v6, "POINT"

    const/4 v7, 0x0

    invoke-interface {v5, v6, v7}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v5

    iget-object v6, p0, Lcom/cashwalk/cashwalk/activity/ShopItemActivity$5$1;->this$1:Lcom/cashwalk/cashwalk/activity/ShopItemActivity$5;

    iget-object v6, v6, Lcom/cashwalk/cashwalk/activity/ShopItemActivity$5;->this$0:Lcom/cashwalk/cashwalk/activity/ShopItemActivity;

    invoke-static {v6}, Lcom/cashwalk/cashwalk/activity/ShopItemActivity;->access$000(Lcom/cashwalk/cashwalk/activity/ShopItemActivity;)Lcom/cashwalk/cashwalk/util/network/model/ShopItem;

    move-result-object v6

    iget v6, v6, Lcom/cashwalk/cashwalk/util/network/model/ShopItem;->price:I

    int-to-float v6, v6

    iget-object v7, p0, Lcom/cashwalk/cashwalk/activity/ShopItemActivity$5$1;->this$1:Lcom/cashwalk/cashwalk/activity/ShopItemActivity$5;

    iget-object v7, v7, Lcom/cashwalk/cashwalk/activity/ShopItemActivity$5;->this$0:Lcom/cashwalk/cashwalk/activity/ShopItemActivity;

    invoke-static {v7}, Lcom/cashwalk/cashwalk/activity/ShopItemActivity;->access$400(Lcom/cashwalk/cashwalk/activity/ShopItemActivity;)F

    move-result v7

    mul-float/2addr v6, v7

    float-to-int v6, v6

    sub-int/2addr v5, v6

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 209
    new-instance v2, Lcom/cashwalk/cashwalk/dialog/PurchaseDoneDialog;

    iget-object v3, p0, Lcom/cashwalk/cashwalk/activity/ShopItemActivity$5$1;->this$1:Lcom/cashwalk/cashwalk/activity/ShopItemActivity$5;

    iget-object v3, v3, Lcom/cashwalk/cashwalk/activity/ShopItemActivity$5;->this$0:Lcom/cashwalk/cashwalk/activity/ShopItemActivity;

    iget-object v4, p0, Lcom/cashwalk/cashwalk/activity/ShopItemActivity$5$1;->this$1:Lcom/cashwalk/cashwalk/activity/ShopItemActivity$5;

    iget-object v4, v4, Lcom/cashwalk/cashwalk/activity/ShopItemActivity$5;->this$0:Lcom/cashwalk/cashwalk/activity/ShopItemActivity;

    invoke-static {v4}, Lcom/cashwalk/cashwalk/activity/ShopItemActivity;->access$000(Lcom/cashwalk/cashwalk/activity/ShopItemActivity;)Lcom/cashwalk/cashwalk/util/network/model/ShopItem;

    move-result-object v4

    new-instance v5, Lcom/cashwalk/cashwalk/activity/ShopItemActivity$5$1$1;

    invoke-direct {v5, p0}, Lcom/cashwalk/cashwalk/activity/ShopItemActivity$5$1$1;-><init>(Lcom/cashwalk/cashwalk/activity/ShopItemActivity$5$1;)V

    invoke-direct {v2, v3, v4, v5}, Lcom/cashwalk/cashwalk/dialog/PurchaseDoneDialog;-><init>(Landroid/content/Context;Lcom/cashwalk/cashwalk/util/network/model/ShopItem;Landroid/os/Handler;)V

    .line 215
    .local v2, "pdd":Lcom/cashwalk/cashwalk/dialog/PurchaseDoneDialog;
    invoke-virtual {v2}, Lcom/cashwalk/cashwalk/dialog/PurchaseDoneDialog;->show()V

    .line 306
    .end local v2    # "pdd":Lcom/cashwalk/cashwalk/dialog/PurchaseDoneDialog;
    :goto_1
    iget-object v3, p0, Lcom/cashwalk/cashwalk/activity/ShopItemActivity$5$1;->this$1:Lcom/cashwalk/cashwalk/activity/ShopItemActivity$5;

    iget-object v3, v3, Lcom/cashwalk/cashwalk/activity/ShopItemActivity$5;->this$0:Lcom/cashwalk/cashwalk/activity/ShopItemActivity;

    invoke-static {v3}, Lcom/cashwalk/cashwalk/activity/ShopItemActivity;->access$800(Lcom/cashwalk/cashwalk/activity/ShopItemActivity;)Landroid/widget/ProgressBar;

    move-result-object v3

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 312
    :goto_2
    return-void

    .line 205
    :catch_0
    move-exception v0

    .line 206
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 307
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v0

    .line 308
    .restart local v0    # "e":Ljava/lang/Exception;
    iget-object v3, p0, Lcom/cashwalk/cashwalk/activity/ShopItemActivity$5$1;->this$1:Lcom/cashwalk/cashwalk/activity/ShopItemActivity$5;

    iget-object v3, v3, Lcom/cashwalk/cashwalk/activity/ShopItemActivity$5;->this$0:Lcom/cashwalk/cashwalk/activity/ShopItemActivity;

    iget-object v4, p0, Lcom/cashwalk/cashwalk/activity/ShopItemActivity$5$1;->this$1:Lcom/cashwalk/cashwalk/activity/ShopItemActivity$5;

    iget-object v4, v4, Lcom/cashwalk/cashwalk/activity/ShopItemActivity$5;->this$0:Lcom/cashwalk/cashwalk/activity/ShopItemActivity;

    invoke-virtual {v4, v9}, Lcom/cashwalk/cashwalk/activity/ShopItemActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    .line 309
    iget-object v3, p0, Lcom/cashwalk/cashwalk/activity/ShopItemActivity$5$1;->this$1:Lcom/cashwalk/cashwalk/activity/ShopItemActivity$5;

    iget-object v3, v3, Lcom/cashwalk/cashwalk/activity/ShopItemActivity$5;->this$0:Lcom/cashwalk/cashwalk/activity/ShopItemActivity;

    invoke-static {v3}, Lcom/google/firebase/analytics/FirebaseAnalytics;->getInstance(Landroid/content/Context;)Lcom/google/firebase/analytics/FirebaseAnalytics;

    move-result-object v3

    const-string v4, "shop_error"

    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {v3, v4, v5}, Lcom/google/firebase/analytics/FirebaseAnalytics;->logEvent(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 310
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2

    .line 218
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    :try_start_3
    iget-object v3, p0, Lcom/cashwalk/cashwalk/activity/ShopItemActivity$5$1;->this$1:Lcom/cashwalk/cashwalk/activity/ShopItemActivity$5;

    iget-object v3, v3, Lcom/cashwalk/cashwalk/activity/ShopItemActivity$5;->this$0:Lcom/cashwalk/cashwalk/activity/ShopItemActivity;

    invoke-static {v3}, Lcom/google/firebase/analytics/FirebaseAnalytics;->getInstance(Landroid/content/Context;)Lcom/google/firebase/analytics/FirebaseAnalytics;

    move-result-object v3

    const-string v4, "shop_error"

    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {v3, v4, v5}, Lcom/google/firebase/analytics/FirebaseAnalytics;->logEvent(Ljava/lang/String;Landroid/os/Bundle;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    .line 222
    :goto_3
    :try_start_4
    const-string v3, "error"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    if-eqz v3, :cond_1

    const-string v3, "error"

    .line 223
    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    const-string v4, "code"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v3

    const/16 v4, 0x1f4

    if-ne v3, v4, :cond_1

    const-string v3, "error"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    const-string/jumbo v4, "type"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "BannedUserError"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 224
    iget-object v3, p0, Lcom/cashwalk/cashwalk/activity/ShopItemActivity$5$1;->this$1:Lcom/cashwalk/cashwalk/activity/ShopItemActivity$5;

    iget-object v3, v3, Lcom/cashwalk/cashwalk/activity/ShopItemActivity$5;->val$ab:Landroid/app/AlertDialog$Builder;

    iget-object v4, p0, Lcom/cashwalk/cashwalk/activity/ShopItemActivity$5$1;->this$1:Lcom/cashwalk/cashwalk/activity/ShopItemActivity$5;

    iget-object v4, v4, Lcom/cashwalk/cashwalk/activity/ShopItemActivity$5;->this$0:Lcom/cashwalk/cashwalk/activity/ShopItemActivity;

    const v5, 0x7f09013d

    invoke-virtual {v4, v5}, Lcom/cashwalk/cashwalk/activity/ShopItemActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 225
    iget-object v3, p0, Lcom/cashwalk/cashwalk/activity/ShopItemActivity$5$1;->this$1:Lcom/cashwalk/cashwalk/activity/ShopItemActivity$5;

    iget-object v3, v3, Lcom/cashwalk/cashwalk/activity/ShopItemActivity$5;->val$ab:Landroid/app/AlertDialog$Builder;

    iget-object v4, p0, Lcom/cashwalk/cashwalk/activity/ShopItemActivity$5$1;->this$1:Lcom/cashwalk/cashwalk/activity/ShopItemActivity$5;

    iget-object v4, v4, Lcom/cashwalk/cashwalk/activity/ShopItemActivity$5;->this$0:Lcom/cashwalk/cashwalk/activity/ShopItemActivity;

    invoke-virtual {v4}, Lcom/cashwalk/cashwalk/activity/ShopItemActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f090101

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Lcom/cashwalk/cashwalk/activity/ShopItemActivity$5$1$2;

    invoke-direct {v5, p0}, Lcom/cashwalk/cashwalk/activity/ShopItemActivity$5$1$2;-><init>(Lcom/cashwalk/cashwalk/activity/ShopItemActivity$5$1;)V

    invoke-virtual {v3, v4, v5}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 231
    iget-object v3, p0, Lcom/cashwalk/cashwalk/activity/ShopItemActivity$5$1;->this$1:Lcom/cashwalk/cashwalk/activity/ShopItemActivity$5;

    iget-object v3, v3, Lcom/cashwalk/cashwalk/activity/ShopItemActivity$5;->val$ab:Landroid/app/AlertDialog$Builder;

    iget-object v4, p0, Lcom/cashwalk/cashwalk/activity/ShopItemActivity$5$1;->this$1:Lcom/cashwalk/cashwalk/activity/ShopItemActivity$5;

    iget-object v4, v4, Lcom/cashwalk/cashwalk/activity/ShopItemActivity$5;->this$0:Lcom/cashwalk/cashwalk/activity/ShopItemActivity;

    const v5, 0x7f090136

    invoke-virtual {v4, v5}, Lcom/cashwalk/cashwalk/activity/ShopItemActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Lcom/cashwalk/cashwalk/activity/ShopItemActivity$5$1$3;

    invoke-direct {v5, p0}, Lcom/cashwalk/cashwalk/activity/ShopItemActivity$5$1$3;-><init>(Lcom/cashwalk/cashwalk/activity/ShopItemActivity$5$1;)V

    invoke-virtual {v3, v4, v5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 238
    iget-object v3, p0, Lcom/cashwalk/cashwalk/activity/ShopItemActivity$5$1;->this$1:Lcom/cashwalk/cashwalk/activity/ShopItemActivity$5;

    iget-object v3, v3, Lcom/cashwalk/cashwalk/activity/ShopItemActivity$5;->val$ab:Landroid/app/AlertDialog$Builder;

    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto/16 :goto_1

    .line 219
    :catch_2
    move-exception v0

    .line 220
    .restart local v0    # "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_3

    .line 240
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_1
    const-string v3, "error"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    const-string v4, "code"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v3

    const/16 v4, 0x1f5

    if-ne v3, v4, :cond_2

    const-string v3, "error"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    const-string/jumbo v4, "type"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "BlockedIPError"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 241
    iget-object v3, p0, Lcom/cashwalk/cashwalk/activity/ShopItemActivity$5$1;->this$1:Lcom/cashwalk/cashwalk/activity/ShopItemActivity$5;

    iget-object v3, v3, Lcom/cashwalk/cashwalk/activity/ShopItemActivity$5;->val$ab:Landroid/app/AlertDialog$Builder;

    iget-object v4, p0, Lcom/cashwalk/cashwalk/activity/ShopItemActivity$5$1;->this$1:Lcom/cashwalk/cashwalk/activity/ShopItemActivity$5;

    iget-object v4, v4, Lcom/cashwalk/cashwalk/activity/ShopItemActivity$5;->this$0:Lcom/cashwalk/cashwalk/activity/ShopItemActivity;

    const v5, 0x7f09013d

    invoke-virtual {v4, v5}, Lcom/cashwalk/cashwalk/activity/ShopItemActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 242
    iget-object v3, p0, Lcom/cashwalk/cashwalk/activity/ShopItemActivity$5$1;->this$1:Lcom/cashwalk/cashwalk/activity/ShopItemActivity$5;

    iget-object v3, v3, Lcom/cashwalk/cashwalk/activity/ShopItemActivity$5;->val$ab:Landroid/app/AlertDialog$Builder;

    iget-object v4, p0, Lcom/cashwalk/cashwalk/activity/ShopItemActivity$5$1;->this$1:Lcom/cashwalk/cashwalk/activity/ShopItemActivity$5;

    iget-object v4, v4, Lcom/cashwalk/cashwalk/activity/ShopItemActivity$5;->this$0:Lcom/cashwalk/cashwalk/activity/ShopItemActivity;

    invoke-virtual {v4}, Lcom/cashwalk/cashwalk/activity/ShopItemActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f090101

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Lcom/cashwalk/cashwalk/activity/ShopItemActivity$5$1$4;

    invoke-direct {v5, p0}, Lcom/cashwalk/cashwalk/activity/ShopItemActivity$5$1$4;-><init>(Lcom/cashwalk/cashwalk/activity/ShopItemActivity$5$1;)V

    invoke-virtual {v3, v4, v5}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 248
    iget-object v3, p0, Lcom/cashwalk/cashwalk/activity/ShopItemActivity$5$1;->this$1:Lcom/cashwalk/cashwalk/activity/ShopItemActivity$5;

    iget-object v3, v3, Lcom/cashwalk/cashwalk/activity/ShopItemActivity$5;->val$ab:Landroid/app/AlertDialog$Builder;

    iget-object v4, p0, Lcom/cashwalk/cashwalk/activity/ShopItemActivity$5$1;->this$1:Lcom/cashwalk/cashwalk/activity/ShopItemActivity$5;

    iget-object v4, v4, Lcom/cashwalk/cashwalk/activity/ShopItemActivity$5;->this$0:Lcom/cashwalk/cashwalk/activity/ShopItemActivity;

    const v5, 0x7f090136

    invoke-virtual {v4, v5}, Lcom/cashwalk/cashwalk/activity/ShopItemActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Lcom/cashwalk/cashwalk/activity/ShopItemActivity$5$1$5;

    invoke-direct {v5, p0}, Lcom/cashwalk/cashwalk/activity/ShopItemActivity$5$1$5;-><init>(Lcom/cashwalk/cashwalk/activity/ShopItemActivity$5$1;)V

    invoke-virtual {v3, v4, v5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 255
    iget-object v3, p0, Lcom/cashwalk/cashwalk/activity/ShopItemActivity$5$1;->this$1:Lcom/cashwalk/cashwalk/activity/ShopItemActivity$5;

    iget-object v3, v3, Lcom/cashwalk/cashwalk/activity/ShopItemActivity$5;->val$ab:Landroid/app/AlertDialog$Builder;

    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto/16 :goto_1

    .line 256
    :cond_2
    const-string v3, "error"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    if-eqz v3, :cond_3

    const-string v3, "error"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    const-string v4, "code"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v3

    const/16 v4, 0x142

    if-ne v3, v4, :cond_3

    const-string v3, "error"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    const-string/jumbo v4, "type"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "AuthenticationError"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 259
    iget-object v3, p0, Lcom/cashwalk/cashwalk/activity/ShopItemActivity$5$1;->this$1:Lcom/cashwalk/cashwalk/activity/ShopItemActivity$5;

    iget-object v3, v3, Lcom/cashwalk/cashwalk/activity/ShopItemActivity$5;->val$ab:Landroid/app/AlertDialog$Builder;

    iget-object v4, p0, Lcom/cashwalk/cashwalk/activity/ShopItemActivity$5$1;->this$1:Lcom/cashwalk/cashwalk/activity/ShopItemActivity$5;

    iget-object v4, v4, Lcom/cashwalk/cashwalk/activity/ShopItemActivity$5;->this$0:Lcom/cashwalk/cashwalk/activity/ShopItemActivity;

    const v5, 0x7f090279

    invoke-virtual {v4, v5}, Lcom/cashwalk/cashwalk/activity/ShopItemActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 260
    iget-object v3, p0, Lcom/cashwalk/cashwalk/activity/ShopItemActivity$5$1;->this$1:Lcom/cashwalk/cashwalk/activity/ShopItemActivity$5;

    iget-object v3, v3, Lcom/cashwalk/cashwalk/activity/ShopItemActivity$5;->val$ab:Landroid/app/AlertDialog$Builder;

    iget-object v4, p0, Lcom/cashwalk/cashwalk/activity/ShopItemActivity$5$1;->this$1:Lcom/cashwalk/cashwalk/activity/ShopItemActivity$5;

    iget-object v4, v4, Lcom/cashwalk/cashwalk/activity/ShopItemActivity$5;->this$0:Lcom/cashwalk/cashwalk/activity/ShopItemActivity;

    invoke-virtual {v4}, Lcom/cashwalk/cashwalk/activity/ShopItemActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f090101

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Lcom/cashwalk/cashwalk/activity/ShopItemActivity$5$1$6;

    invoke-direct {v5, p0}, Lcom/cashwalk/cashwalk/activity/ShopItemActivity$5$1$6;-><init>(Lcom/cashwalk/cashwalk/activity/ShopItemActivity$5$1;)V

    invoke-virtual {v3, v4, v5}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 266
    iget-object v3, p0, Lcom/cashwalk/cashwalk/activity/ShopItemActivity$5$1;->this$1:Lcom/cashwalk/cashwalk/activity/ShopItemActivity$5;

    iget-object v3, v3, Lcom/cashwalk/cashwalk/activity/ShopItemActivity$5;->val$ab:Landroid/app/AlertDialog$Builder;

    iget-object v4, p0, Lcom/cashwalk/cashwalk/activity/ShopItemActivity$5$1;->this$1:Lcom/cashwalk/cashwalk/activity/ShopItemActivity$5;

    iget-object v4, v4, Lcom/cashwalk/cashwalk/activity/ShopItemActivity$5;->this$0:Lcom/cashwalk/cashwalk/activity/ShopItemActivity;

    const v5, 0x7f090132

    invoke-virtual {v4, v5}, Lcom/cashwalk/cashwalk/activity/ShopItemActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Lcom/cashwalk/cashwalk/activity/ShopItemActivity$5$1$7;

    invoke-direct {v5, p0}, Lcom/cashwalk/cashwalk/activity/ShopItemActivity$5$1$7;-><init>(Lcom/cashwalk/cashwalk/activity/ShopItemActivity$5$1;)V

    invoke-virtual {v3, v4, v5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 277
    iget-object v3, p0, Lcom/cashwalk/cashwalk/activity/ShopItemActivity$5$1;->this$1:Lcom/cashwalk/cashwalk/activity/ShopItemActivity$5;

    iget-object v3, v3, Lcom/cashwalk/cashwalk/activity/ShopItemActivity$5;->val$ab:Landroid/app/AlertDialog$Builder;

    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto/16 :goto_1

    .line 279
    :cond_3
    const-string v3, "error"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    const-string/jumbo v4, "type"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_4

    const-string v3, "error"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    const-string v4, "code"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v3

    const/16 v4, 0x7c

    if-ne v3, v4, :cond_4

    const-string v3, "error"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    const-string/jumbo v4, "type"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "UpdateClientError"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 280
    iget-object v3, p0, Lcom/cashwalk/cashwalk/activity/ShopItemActivity$5$1;->this$1:Lcom/cashwalk/cashwalk/activity/ShopItemActivity$5;

    iget-object v3, v3, Lcom/cashwalk/cashwalk/activity/ShopItemActivity$5;->val$ab:Landroid/app/AlertDialog$Builder;

    iget-object v4, p0, Lcom/cashwalk/cashwalk/activity/ShopItemActivity$5$1;->this$1:Lcom/cashwalk/cashwalk/activity/ShopItemActivity$5;

    iget-object v4, v4, Lcom/cashwalk/cashwalk/activity/ShopItemActivity$5;->this$0:Lcom/cashwalk/cashwalk/activity/ShopItemActivity;

    const v5, 0x7f0902e6

    invoke-virtual {v4, v5}, Lcom/cashwalk/cashwalk/activity/ShopItemActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 281
    iget-object v3, p0, Lcom/cashwalk/cashwalk/activity/ShopItemActivity$5$1;->this$1:Lcom/cashwalk/cashwalk/activity/ShopItemActivity$5;

    iget-object v3, v3, Lcom/cashwalk/cashwalk/activity/ShopItemActivity$5;->val$ab:Landroid/app/AlertDialog$Builder;

    iget-object v4, p0, Lcom/cashwalk/cashwalk/activity/ShopItemActivity$5$1;->this$1:Lcom/cashwalk/cashwalk/activity/ShopItemActivity$5;

    iget-object v4, v4, Lcom/cashwalk/cashwalk/activity/ShopItemActivity$5;->this$0:Lcom/cashwalk/cashwalk/activity/ShopItemActivity;

    invoke-virtual {v4}, Lcom/cashwalk/cashwalk/activity/ShopItemActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f090101

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Lcom/cashwalk/cashwalk/activity/ShopItemActivity$5$1$8;

    invoke-direct {v5, p0}, Lcom/cashwalk/cashwalk/activity/ShopItemActivity$5$1$8;-><init>(Lcom/cashwalk/cashwalk/activity/ShopItemActivity$5$1;)V

    invoke-virtual {v3, v4, v5}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 287
    iget-object v3, p0, Lcom/cashwalk/cashwalk/activity/ShopItemActivity$5$1;->this$1:Lcom/cashwalk/cashwalk/activity/ShopItemActivity$5;

    iget-object v3, v3, Lcom/cashwalk/cashwalk/activity/ShopItemActivity$5;->val$ab:Landroid/app/AlertDialog$Builder;

    iget-object v4, p0, Lcom/cashwalk/cashwalk/activity/ShopItemActivity$5$1;->this$1:Lcom/cashwalk/cashwalk/activity/ShopItemActivity$5;

    iget-object v4, v4, Lcom/cashwalk/cashwalk/activity/ShopItemActivity$5;->this$0:Lcom/cashwalk/cashwalk/activity/ShopItemActivity;

    const v5, 0x7f0902e5

    invoke-virtual {v4, v5}, Lcom/cashwalk/cashwalk/activity/ShopItemActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Lcom/cashwalk/cashwalk/activity/ShopItemActivity$5$1$9;

    invoke-direct {v5, p0}, Lcom/cashwalk/cashwalk/activity/ShopItemActivity$5$1$9;-><init>(Lcom/cashwalk/cashwalk/activity/ShopItemActivity$5$1;)V

    invoke-virtual {v3, v4, v5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 296
    iget-object v3, p0, Lcom/cashwalk/cashwalk/activity/ShopItemActivity$5$1;->this$1:Lcom/cashwalk/cashwalk/activity/ShopItemActivity$5;

    iget-object v3, v3, Lcom/cashwalk/cashwalk/activity/ShopItemActivity$5;->val$ab:Landroid/app/AlertDialog$Builder;

    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto/16 :goto_1

    .line 298
    :cond_4
    const-string v3, "error"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    const-string/jumbo v4, "type"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_5

    const-string v3, "error"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    const-string v4, "code"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v3

    const/16 v4, 0x191

    if-ne v3, v4, :cond_5

    const-string v3, "error"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    const-string/jumbo v4, "type"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "NoPointError"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 299
    new-instance v1, Lcom/cashwalk/cashwalk/dialog/PurchaseShortDialog;

    iget-object v3, p0, Lcom/cashwalk/cashwalk/activity/ShopItemActivity$5$1;->this$1:Lcom/cashwalk/cashwalk/activity/ShopItemActivity$5;

    iget-object v3, v3, Lcom/cashwalk/cashwalk/activity/ShopItemActivity$5;->this$0:Lcom/cashwalk/cashwalk/activity/ShopItemActivity;

    const-string v4, "shop"

    invoke-direct {v1, v3, v4}, Lcom/cashwalk/cashwalk/dialog/PurchaseShortDialog;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 300
    .local v1, "pd":Lcom/cashwalk/cashwalk/dialog/PurchaseShortDialog;
    invoke-virtual {v1}, Lcom/cashwalk/cashwalk/dialog/PurchaseShortDialog;->show()V

    goto/16 :goto_1

    .line 302
    .end local v1    # "pd":Lcom/cashwalk/cashwalk/dialog/PurchaseShortDialog;
    :cond_5
    iget-object v3, p0, Lcom/cashwalk/cashwalk/activity/ShopItemActivity$5$1;->this$1:Lcom/cashwalk/cashwalk/activity/ShopItemActivity$5;

    iget-object v3, v3, Lcom/cashwalk/cashwalk/activity/ShopItemActivity$5;->this$0:Lcom/cashwalk/cashwalk/activity/ShopItemActivity;

    iget-object v4, p0, Lcom/cashwalk/cashwalk/activity/ShopItemActivity$5$1;->this$1:Lcom/cashwalk/cashwalk/activity/ShopItemActivity$5;

    iget-object v4, v4, Lcom/cashwalk/cashwalk/activity/ShopItemActivity$5;->this$0:Lcom/cashwalk/cashwalk/activity/ShopItemActivity;

    const v5, 0x7f090143

    invoke-virtual {v4, v5}, Lcom/cashwalk/cashwalk/activity/ShopItemActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    invoke-static {v3, v4, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    goto/16 :goto_1
.end method
