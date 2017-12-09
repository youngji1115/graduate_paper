.class Lcom/cashwalk/cashwalk/activity/QuitActivity$2;
.super Ljava/lang/Object;
.source "QuitActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cashwalk/cashwalk/activity/QuitActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cashwalk/cashwalk/activity/QuitActivity;


# direct methods
.method constructor <init>(Lcom/cashwalk/cashwalk/activity/QuitActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/cashwalk/cashwalk/activity/QuitActivity;

    .prologue
    .line 65
    iput-object p1, p0, Lcom/cashwalk/cashwalk/activity/QuitActivity$2;->this$0:Lcom/cashwalk/cashwalk/activity/QuitActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v4, 0x0

    .line 68
    iget-object v1, p0, Lcom/cashwalk/cashwalk/activity/QuitActivity$2;->this$0:Lcom/cashwalk/cashwalk/activity/QuitActivity;

    invoke-static {v1}, Lcom/cashwalk/cashwalk/activity/QuitActivity;->access$100(Lcom/cashwalk/cashwalk/activity/QuitActivity;)Landroid/widget/CheckBox;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 69
    iget-object v1, p0, Lcom/cashwalk/cashwalk/activity/QuitActivity$2;->this$0:Lcom/cashwalk/cashwalk/activity/QuitActivity;

    invoke-static {v1}, Lcom/cashwalk/cashwalk/activity/QuitActivity;->access$200(Lcom/cashwalk/cashwalk/activity/QuitActivity;)Landroid/widget/ProgressBar;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 71
    iget-object v1, p0, Lcom/cashwalk/cashwalk/activity/QuitActivity$2;->this$0:Lcom/cashwalk/cashwalk/activity/QuitActivity;

    invoke-static {v1}, Lcom/cashwalk/cashwalk/activity/QuitActivity;->access$300(Lcom/cashwalk/cashwalk/activity/QuitActivity;)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 73
    new-instance v1, Lcom/cashwalk/cashwalk/activity/QuitActivity$2$1;

    invoke-direct {v1, p0}, Lcom/cashwalk/cashwalk/activity/QuitActivity$2$1;-><init>(Lcom/cashwalk/cashwalk/activity/QuitActivity$2;)V

    invoke-static {v1}, Lcom/cashwalk/cashwalk/util/network/RestClient;->deleteUser(Lcom/cashwalk/cashwalk/util/network/ResponseHandler;)Lcom/android/volley/toolbox/JsonObjectRequest;

    move-result-object v0

    .line 80
    .local v0, "request":Lcom/android/volley/toolbox/JsonObjectRequest;
    iget-object v1, p0, Lcom/cashwalk/cashwalk/activity/QuitActivity$2;->this$0:Lcom/cashwalk/cashwalk/activity/QuitActivity;

    invoke-virtual {v1}, Lcom/cashwalk/cashwalk/activity/QuitActivity;->getApplication()Landroid/app/Application;

    move-result-object v1

    check-cast v1, Lcom/cashwalk/cashwalk/CashWalkApp;

    invoke-virtual {v1}, Lcom/cashwalk/cashwalk/CashWalkApp;->requestQueue()Lcom/android/volley/RequestQueue;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/volley/RequestQueue;->add(Lcom/android/volley/Request;)Lcom/android/volley/Request;

    .line 84
    .end local v0    # "request":Lcom/android/volley/toolbox/JsonObjectRequest;
    :goto_0
    return-void

    .line 82
    :cond_0
    iget-object v1, p0, Lcom/cashwalk/cashwalk/activity/QuitActivity$2;->this$0:Lcom/cashwalk/cashwalk/activity/QuitActivity;

    iget-object v2, p0, Lcom/cashwalk/cashwalk/activity/QuitActivity$2;->this$0:Lcom/cashwalk/cashwalk/activity/QuitActivity;

    const v3, 0x7f090266

    invoke-virtual {v2, v3}, Lcom/cashwalk/cashwalk/activity/QuitActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method
