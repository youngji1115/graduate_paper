.class Lcom/cashwalk/cashwalk/MainActivity$23$1;
.super Lcom/cashwalk/cashwalk/util/network/ResponseHandler2;
.source "MainActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cashwalk/cashwalk/MainActivity$23;->onReturn(Landroid/content/Context;Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/cashwalk/cashwalk/MainActivity$23;

.field final synthetic val$newPoint:I


# direct methods
.method constructor <init>(Lcom/cashwalk/cashwalk/MainActivity$23;I)V
    .locals 0
    .param p1, "this$1"    # Lcom/cashwalk/cashwalk/MainActivity$23;

    .prologue
    .line 922
    iput-object p1, p0, Lcom/cashwalk/cashwalk/MainActivity$23$1;->this$1:Lcom/cashwalk/cashwalk/MainActivity$23;

    iput p2, p0, Lcom/cashwalk/cashwalk/MainActivity$23$1;->val$newPoint:I

    invoke-direct {p0}, Lcom/cashwalk/cashwalk/util/network/ResponseHandler2;-><init>()V

    return-void
.end method


# virtual methods
.method public handleError(Ljava/lang/String;)V
    .locals 4
    .param p1, "error"    # Ljava/lang/String;

    .prologue
    .line 1005
    iget-object v1, p0, Lcom/cashwalk/cashwalk/MainActivity$23$1;->this$1:Lcom/cashwalk/cashwalk/MainActivity$23;

    iget-object v1, v1, Lcom/cashwalk/cashwalk/MainActivity$23;->this$0:Lcom/cashwalk/cashwalk/MainActivity;

    invoke-static {v1}, Lcom/cashwalk/cashwalk/MainActivity;->access$100(Lcom/cashwalk/cashwalk/MainActivity;)Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "USER_ID"

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[MAIN]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/cashwalk/cashwalk/MainActivity$23$1$8;

    invoke-direct {v3, p0}, Lcom/cashwalk/cashwalk/MainActivity$23$1$8;-><init>(Lcom/cashwalk/cashwalk/MainActivity$23$1;)V

    invoke-static {v1, v2, v3}, Lcom/cashwalk/cashwalk/util/network/RestClient;->log(Ljava/lang/String;Ljava/lang/String;Lcom/cashwalk/cashwalk/util/network/ResponseHandler;)Lcom/android/volley/toolbox/JsonObjectRequest;

    move-result-object v0

    .line 1011
    .local v0, "request":Lcom/android/volley/toolbox/JsonObjectRequest;
    iget-object v1, p0, Lcom/cashwalk/cashwalk/MainActivity$23$1;->this$1:Lcom/cashwalk/cashwalk/MainActivity$23;

    iget-object v1, v1, Lcom/cashwalk/cashwalk/MainActivity$23;->this$0:Lcom/cashwalk/cashwalk/MainActivity;

    invoke-virtual {v1}, Lcom/cashwalk/cashwalk/MainActivity;->getApplication()Landroid/app/Application;

    move-result-object v1

    check-cast v1, Lcom/cashwalk/cashwalk/CashWalkApp;

    invoke-virtual {v1}, Lcom/cashwalk/cashwalk/CashWalkApp;->requestQueue()Lcom/android/volley/RequestQueue;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/volley/RequestQueue;->add(Lcom/android/volley/Request;)Lcom/android/volley/Request;

    .line 1012
    return-void
.end method

.method public handleResponse(Lorg/json/JSONObject;)V
    .locals 8
    .param p1, "jo"    # Lorg/json/JSONObject;

    .prologue
    .line 926
    :try_start_0
    const-string v4, "error"

    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 928
    iget-object v4, p0, Lcom/cashwalk/cashwalk/MainActivity$23$1;->this$1:Lcom/cashwalk/cashwalk/MainActivity$23;

    iget-object v4, v4, Lcom/cashwalk/cashwalk/MainActivity$23;->this$0:Lcom/cashwalk/cashwalk/MainActivity;

    invoke-static {v4}, Lcom/cashwalk/cashwalk/MainActivity;->access$1700(Lcom/cashwalk/cashwalk/MainActivity;)Landroid/widget/TextView;

    move-result-object v4

    iget v5, p0, Lcom/cashwalk/cashwalk/MainActivity$23$1;->val$newPoint:I

    invoke-static {v5}, Lcom/cashwalk/cashwalk/util/Utils;->numberFormat(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 929
    iget-object v4, p0, Lcom/cashwalk/cashwalk/MainActivity$23$1;->this$1:Lcom/cashwalk/cashwalk/MainActivity$23;

    iget-object v4, v4, Lcom/cashwalk/cashwalk/MainActivity$23;->this$0:Lcom/cashwalk/cashwalk/MainActivity;

    invoke-static {v4}, Lcom/cashwalk/cashwalk/MainActivity;->access$100(Lcom/cashwalk/cashwalk/MainActivity;)Landroid/content/SharedPreferences;

    move-result-object v4

    invoke-interface {v4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    const-string v5, "POINT"

    iget v6, p0, Lcom/cashwalk/cashwalk/MainActivity$23$1;->val$newPoint:I

    invoke-interface {v4, v5, v6}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    invoke-interface {v4}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 931
    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v4, p0, Lcom/cashwalk/cashwalk/MainActivity$23$1;->this$1:Lcom/cashwalk/cashwalk/MainActivity$23;

    iget-object v4, v4, Lcom/cashwalk/cashwalk/MainActivity$23;->this$0:Lcom/cashwalk/cashwalk/MainActivity;

    invoke-direct {v1, v4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 932
    .local v1, "builder":Landroid/app/AlertDialog$Builder;
    const v4, 0x7f090207

    invoke-virtual {v1, v4}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    iget-object v5, p0, Lcom/cashwalk/cashwalk/MainActivity$23$1;->this$1:Lcom/cashwalk/cashwalk/MainActivity$23;

    iget-object v5, v5, Lcom/cashwalk/cashwalk/MainActivity$23;->this$0:Lcom/cashwalk/cashwalk/MainActivity;

    const v6, 0x7f090208

    .line 933
    invoke-virtual {v5, v6}, Lcom/cashwalk/cashwalk/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    const-string v6, "%s"

    iget-object v7, p0, Lcom/cashwalk/cashwalk/MainActivity$23$1;->this$1:Lcom/cashwalk/cashwalk/MainActivity$23;

    iget v7, v7, Lcom/cashwalk/cashwalk/MainActivity$23;->val$pointVal:I

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    const v5, 0x7f090132

    new-instance v6, Lcom/cashwalk/cashwalk/MainActivity$23$1$1;

    invoke-direct {v6, p0}, Lcom/cashwalk/cashwalk/MainActivity$23$1$1;-><init>(Lcom/cashwalk/cashwalk/MainActivity$23$1;)V

    .line 934
    invoke-virtual {v4, v5, v6}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 938
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    .line 939
    .local v2, "dialog":Landroid/app/AlertDialog;
    invoke-virtual {v2}, Landroid/app/AlertDialog;->show()V

    .line 1001
    .end local v1    # "builder":Landroid/app/AlertDialog$Builder;
    .end local v2    # "dialog":Landroid/app/AlertDialog;
    :cond_0
    :goto_0
    return-void

    .line 941
    :cond_1
    const-string v4, "error"

    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    if-eqz v4, :cond_2

    const-string v4, "error"

    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    const-string v5, "code"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v4

    const/16 v5, 0x1f4

    if-ne v4, v5, :cond_2

    const-string v4, "error"

    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    const-string/jumbo v5, "type"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "BannedUserError"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 942
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v4, p0, Lcom/cashwalk/cashwalk/MainActivity$23$1;->this$1:Lcom/cashwalk/cashwalk/MainActivity$23;

    iget-object v4, v4, Lcom/cashwalk/cashwalk/MainActivity$23;->this$0:Lcom/cashwalk/cashwalk/MainActivity;

    invoke-direct {v0, v4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 943
    .local v0, "ab":Landroid/app/AlertDialog$Builder;
    iget-object v4, p0, Lcom/cashwalk/cashwalk/MainActivity$23$1;->this$1:Lcom/cashwalk/cashwalk/MainActivity$23;

    iget-object v4, v4, Lcom/cashwalk/cashwalk/MainActivity$23;->this$0:Lcom/cashwalk/cashwalk/MainActivity;

    const v5, 0x7f09013d

    invoke-virtual {v4, v5}, Lcom/cashwalk/cashwalk/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 944
    iget-object v4, p0, Lcom/cashwalk/cashwalk/MainActivity$23$1;->this$1:Lcom/cashwalk/cashwalk/MainActivity$23;

    iget-object v4, v4, Lcom/cashwalk/cashwalk/MainActivity$23;->this$0:Lcom/cashwalk/cashwalk/MainActivity;

    invoke-virtual {v4}, Lcom/cashwalk/cashwalk/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f090101

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Lcom/cashwalk/cashwalk/MainActivity$23$1$2;

    invoke-direct {v5, p0}, Lcom/cashwalk/cashwalk/MainActivity$23$1$2;-><init>(Lcom/cashwalk/cashwalk/MainActivity$23$1;)V

    invoke-virtual {v0, v4, v5}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 950
    iget-object v4, p0, Lcom/cashwalk/cashwalk/MainActivity$23$1;->this$1:Lcom/cashwalk/cashwalk/MainActivity$23;

    iget-object v4, v4, Lcom/cashwalk/cashwalk/MainActivity$23;->this$0:Lcom/cashwalk/cashwalk/MainActivity;

    const v5, 0x7f090136

    invoke-virtual {v4, v5}, Lcom/cashwalk/cashwalk/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Lcom/cashwalk/cashwalk/MainActivity$23$1$3;

    invoke-direct {v5, p0}, Lcom/cashwalk/cashwalk/MainActivity$23$1$3;-><init>(Lcom/cashwalk/cashwalk/MainActivity$23$1;)V

    invoke-virtual {v0, v4, v5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 957
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 998
    .end local v0    # "ab":Landroid/app/AlertDialog$Builder;
    :catch_0
    move-exception v3

    .line 999
    .local v3, "e":Ljava/lang/Exception;
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 958
    .end local v3    # "e":Ljava/lang/Exception;
    :cond_2
    :try_start_1
    const-string v4, "error"

    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    const-string/jumbo v5, "type"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_3

    const-string v4, "error"

    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    const-string v5, "code"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v4

    const/16 v5, 0x7c

    if-ne v4, v5, :cond_3

    const-string v4, "error"

    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    const-string/jumbo v5, "type"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "UpdateClientError"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 960
    new-instance v0, Landroid/support/v7/app/AlertDialog$Builder;

    iget-object v4, p0, Lcom/cashwalk/cashwalk/MainActivity$23$1;->this$1:Lcom/cashwalk/cashwalk/MainActivity$23;

    iget-object v4, v4, Lcom/cashwalk/cashwalk/MainActivity$23;->this$0:Lcom/cashwalk/cashwalk/MainActivity;

    invoke-direct {v0, v4}, Landroid/support/v7/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 961
    .local v0, "ab":Landroid/support/v7/app/AlertDialog$Builder;
    iget-object v4, p0, Lcom/cashwalk/cashwalk/MainActivity$23$1;->this$1:Lcom/cashwalk/cashwalk/MainActivity$23;

    iget-object v4, v4, Lcom/cashwalk/cashwalk/MainActivity$23;->this$0:Lcom/cashwalk/cashwalk/MainActivity;

    const v5, 0x7f0902e7

    invoke-virtual {v4, v5}, Lcom/cashwalk/cashwalk/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/support/v7/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 962
    iget-object v4, p0, Lcom/cashwalk/cashwalk/MainActivity$23$1;->this$1:Lcom/cashwalk/cashwalk/MainActivity$23;

    iget-object v4, v4, Lcom/cashwalk/cashwalk/MainActivity$23;->this$0:Lcom/cashwalk/cashwalk/MainActivity;

    invoke-virtual {v4}, Lcom/cashwalk/cashwalk/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f090101

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Lcom/cashwalk/cashwalk/MainActivity$23$1$4;

    invoke-direct {v5, p0}, Lcom/cashwalk/cashwalk/MainActivity$23$1$4;-><init>(Lcom/cashwalk/cashwalk/MainActivity$23$1;)V

    invoke-virtual {v0, v4, v5}, Landroid/support/v7/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 968
    iget-object v4, p0, Lcom/cashwalk/cashwalk/MainActivity$23$1;->this$1:Lcom/cashwalk/cashwalk/MainActivity$23;

    iget-object v4, v4, Lcom/cashwalk/cashwalk/MainActivity$23;->this$0:Lcom/cashwalk/cashwalk/MainActivity;

    const v5, 0x7f0902e5

    invoke-virtual {v4, v5}, Lcom/cashwalk/cashwalk/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Lcom/cashwalk/cashwalk/MainActivity$23$1$5;

    invoke-direct {v5, p0}, Lcom/cashwalk/cashwalk/MainActivity$23$1$5;-><init>(Lcom/cashwalk/cashwalk/MainActivity$23$1;)V

    invoke-virtual {v0, v4, v5}, Landroid/support/v7/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 977
    invoke-virtual {v0}, Landroid/support/v7/app/AlertDialog$Builder;->show()Landroid/support/v7/app/AlertDialog;

    goto/16 :goto_0

    .line 979
    .end local v0    # "ab":Landroid/support/v7/app/AlertDialog$Builder;
    :cond_3
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

    .line 980
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v4, p0, Lcom/cashwalk/cashwalk/MainActivity$23$1;->this$1:Lcom/cashwalk/cashwalk/MainActivity$23;

    iget-object v4, v4, Lcom/cashwalk/cashwalk/MainActivity$23;->this$0:Lcom/cashwalk/cashwalk/MainActivity;

    invoke-direct {v0, v4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 981
    .local v0, "ab":Landroid/app/AlertDialog$Builder;
    iget-object v4, p0, Lcom/cashwalk/cashwalk/MainActivity$23$1;->this$1:Lcom/cashwalk/cashwalk/MainActivity$23;

    iget-object v4, v4, Lcom/cashwalk/cashwalk/MainActivity$23;->this$0:Lcom/cashwalk/cashwalk/MainActivity;

    const v5, 0x7f09013d

    invoke-virtual {v4, v5}, Lcom/cashwalk/cashwalk/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 982
    iget-object v4, p0, Lcom/cashwalk/cashwalk/MainActivity$23$1;->this$1:Lcom/cashwalk/cashwalk/MainActivity$23;

    iget-object v4, v4, Lcom/cashwalk/cashwalk/MainActivity$23;->this$0:Lcom/cashwalk/cashwalk/MainActivity;

    invoke-virtual {v4}, Lcom/cashwalk/cashwalk/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f090101

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Lcom/cashwalk/cashwalk/MainActivity$23$1$6;

    invoke-direct {v5, p0}, Lcom/cashwalk/cashwalk/MainActivity$23$1$6;-><init>(Lcom/cashwalk/cashwalk/MainActivity$23$1;)V

    invoke-virtual {v0, v4, v5}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 988
    iget-object v4, p0, Lcom/cashwalk/cashwalk/MainActivity$23$1;->this$1:Lcom/cashwalk/cashwalk/MainActivity$23;

    iget-object v4, v4, Lcom/cashwalk/cashwalk/MainActivity$23;->this$0:Lcom/cashwalk/cashwalk/MainActivity;

    const v5, 0x7f090136

    invoke-virtual {v4, v5}, Lcom/cashwalk/cashwalk/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Lcom/cashwalk/cashwalk/MainActivity$23$1$7;

    invoke-direct {v5, p0}, Lcom/cashwalk/cashwalk/MainActivity$23$1$7;-><init>(Lcom/cashwalk/cashwalk/MainActivity$23$1;)V

    invoke-virtual {v0, v4, v5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 995
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0
.end method
