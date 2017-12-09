.class Lcom/cashwalk/cashwalk/activity/MyPageActivity$8;
.super Ljava/lang/Object;
.source "MyPageActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cashwalk/cashwalk/activity/MyPageActivity;->setWeight()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cashwalk/cashwalk/activity/MyPageActivity;

.field final synthetic val$et:Landroid/widget/EditText;


# direct methods
.method constructor <init>(Lcom/cashwalk/cashwalk/activity/MyPageActivity;Landroid/widget/EditText;)V
    .locals 0
    .param p1, "this$0"    # Lcom/cashwalk/cashwalk/activity/MyPageActivity;

    .prologue
    .line 357
    iput-object p1, p0, Lcom/cashwalk/cashwalk/activity/MyPageActivity$8;->this$0:Lcom/cashwalk/cashwalk/activity/MyPageActivity;

    iput-object p2, p0, Lcom/cashwalk/cashwalk/activity/MyPageActivity$8;->val$et:Landroid/widget/EditText;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 10
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    const/4 v9, 0x0

    .line 361
    :try_start_0
    iget-object v5, p0, Lcom/cashwalk/cashwalk/activity/MyPageActivity$8;->val$et:Landroid/widget/EditText;

    invoke-virtual {v5}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 364
    .local v1, "newValue":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v5

    const/4 v6, 0x5

    if-le v5, v6, :cond_0

    .line 365
    iget-object v5, p0, Lcom/cashwalk/cashwalk/activity/MyPageActivity$8;->this$0:Lcom/cashwalk/cashwalk/activity/MyPageActivity;

    const-string/jumbo v6, "\uc720\uc694\ud55c \uac12\uc744 \uc785\ub825\ud574\uc8fc\uc138\uc694."

    const/4 v7, 0x0

    invoke-static {v5, v6, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    .line 394
    .end local v1    # "newValue":Ljava/lang/String;
    :goto_0
    return-void

    .line 369
    .restart local v1    # "newValue":Ljava/lang/String;
    :cond_0
    const-string v5, ""

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    if-eqz v5, :cond_1

    .line 370
    iget-object v5, p0, Lcom/cashwalk/cashwalk/activity/MyPageActivity$8;->this$0:Lcom/cashwalk/cashwalk/activity/MyPageActivity;

    invoke-static {v5}, Lcom/cashwalk/cashwalk/activity/MyPageActivity;->access$000(Lcom/cashwalk/cashwalk/activity/MyPageActivity;)Landroid/content/SharedPreferences;

    move-result-object v5

    invoke-interface {v5}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v5

    const-string v6, "WEIGHT"

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-interface {v5, v6, v7}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v5

    invoke-interface {v5}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 371
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/cashwalk/cashwalk/activity/MyPageActivity$8;->this$0:Lcom/cashwalk/cashwalk/activity/MyPageActivity;

    invoke-static {v6}, Lcom/cashwalk/cashwalk/activity/MyPageActivity;->access$000(Lcom/cashwalk/cashwalk/activity/MyPageActivity;)Landroid/content/SharedPreferences;

    move-result-object v6

    const-string v7, "WEIGHT"

    const/4 v8, 0x0

    invoke-interface {v6, v7, v8}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "Kg"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 372
    .local v3, "setText":Ljava/lang/String;
    iget-object v5, p0, Lcom/cashwalk/cashwalk/activity/MyPageActivity$8;->this$0:Lcom/cashwalk/cashwalk/activity/MyPageActivity;

    invoke-static {v5}, Lcom/cashwalk/cashwalk/activity/MyPageActivity;->access$500(Lcom/cashwalk/cashwalk/activity/MyPageActivity;)Landroid/widget/TextView;

    move-result-object v5

    invoke-virtual {v5, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 374
    new-instance v4, Lcom/cashwalk/cashwalk/util/network/model/User;

    invoke-direct {v4}, Lcom/cashwalk/cashwalk/util/network/model/User;-><init>()V

    .line 375
    .local v4, "user":Lcom/cashwalk/cashwalk/util/network/model/User;
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    iput v5, v4, Lcom/cashwalk/cashwalk/util/network/model/User;->weight:I

    .line 377
    new-instance v5, Lcom/cashwalk/cashwalk/activity/MyPageActivity$8$1;

    invoke-direct {v5, p0}, Lcom/cashwalk/cashwalk/activity/MyPageActivity$8$1;-><init>(Lcom/cashwalk/cashwalk/activity/MyPageActivity$8;)V

    invoke-static {v4, v5}, Lcom/cashwalk/cashwalk/util/network/RestClient;->setUser(Lcom/cashwalk/cashwalk/util/network/model/User;Lcom/cashwalk/cashwalk/util/network/ResponseHandler;)Lcom/android/volley/toolbox/JsonObjectRequest;

    move-result-object v2

    .line 383
    .local v2, "request":Lcom/android/volley/toolbox/JsonObjectRequest;
    iget-object v5, p0, Lcom/cashwalk/cashwalk/activity/MyPageActivity$8;->this$0:Lcom/cashwalk/cashwalk/activity/MyPageActivity;

    invoke-virtual {v5}, Lcom/cashwalk/cashwalk/activity/MyPageActivity;->getApplication()Landroid/app/Application;

    move-result-object v5

    check-cast v5, Lcom/cashwalk/cashwalk/CashWalkApp;

    invoke-virtual {v5}, Lcom/cashwalk/cashwalk/CashWalkApp;->requestQueue()Lcom/android/volley/RequestQueue;

    move-result-object v5

    invoke-virtual {v5, v2}, Lcom/android/volley/RequestQueue;->add(Lcom/android/volley/Request;)Lcom/android/volley/Request;

    .line 388
    .end local v2    # "request":Lcom/android/volley/toolbox/JsonObjectRequest;
    .end local v3    # "setText":Ljava/lang/String;
    .end local v4    # "user":Lcom/cashwalk/cashwalk/util/network/model/User;
    :goto_1
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 389
    .end local v1    # "newValue":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 390
    .local v0, "e":Ljava/lang/Exception;
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 391
    iget-object v5, p0, Lcom/cashwalk/cashwalk/activity/MyPageActivity$8;->this$0:Lcom/cashwalk/cashwalk/activity/MyPageActivity;

    const-string/jumbo v6, "\uc720\uc694\ud55c \uac12\uc744 \uc785\ub825\ud574\uc8fc\uc138\uc694."

    invoke-static {v5, v6, v9}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    .line 392
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0

    .line 385
    .end local v0    # "e":Ljava/lang/Exception;
    .restart local v1    # "newValue":Ljava/lang/String;
    :cond_1
    :try_start_1
    iget-object v5, p0, Lcom/cashwalk/cashwalk/activity/MyPageActivity$8;->this$0:Lcom/cashwalk/cashwalk/activity/MyPageActivity;

    iget-object v6, p0, Lcom/cashwalk/cashwalk/activity/MyPageActivity$8;->this$0:Lcom/cashwalk/cashwalk/activity/MyPageActivity;

    invoke-virtual {v6}, Lcom/cashwalk/cashwalk/activity/MyPageActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f090293

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    invoke-static {v5, v6, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/Toast;->show()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method
