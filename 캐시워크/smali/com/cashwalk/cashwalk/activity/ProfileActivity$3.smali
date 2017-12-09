.class Lcom/cashwalk/cashwalk/activity/ProfileActivity$3;
.super Ljava/lang/Object;
.source "ProfileActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cashwalk/cashwalk/activity/ProfileActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cashwalk/cashwalk/activity/ProfileActivity;


# direct methods
.method constructor <init>(Lcom/cashwalk/cashwalk/activity/ProfileActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/cashwalk/cashwalk/activity/ProfileActivity;

    .prologue
    .line 119
    iput-object p1, p0, Lcom/cashwalk/cashwalk/activity/ProfileActivity$3;->this$0:Lcom/cashwalk/cashwalk/activity/ProfileActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const/4 v5, 0x1

    .line 122
    iget-object v2, p0, Lcom/cashwalk/cashwalk/activity/ProfileActivity$3;->this$0:Lcom/cashwalk/cashwalk/activity/ProfileActivity;

    invoke-static {v2}, Lcom/cashwalk/cashwalk/activity/ProfileActivity;->access$200(Lcom/cashwalk/cashwalk/activity/ProfileActivity;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 123
    iget-object v2, p0, Lcom/cashwalk/cashwalk/activity/ProfileActivity$3;->this$0:Lcom/cashwalk/cashwalk/activity/ProfileActivity;

    iget-object v3, p0, Lcom/cashwalk/cashwalk/activity/ProfileActivity$3;->this$0:Lcom/cashwalk/cashwalk/activity/ProfileActivity;

    const v4, 0x7f09028b

    invoke-virtual {v3, v4}, Lcom/cashwalk/cashwalk/activity/ProfileActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 165
    :goto_0
    return-void

    .line 127
    :cond_0
    iget-object v2, p0, Lcom/cashwalk/cashwalk/activity/ProfileActivity$3;->this$0:Lcom/cashwalk/cashwalk/activity/ProfileActivity;

    invoke-static {v2}, Lcom/cashwalk/cashwalk/activity/ProfileActivity;->access$100(Lcom/cashwalk/cashwalk/activity/ProfileActivity;)Landroid/content/SharedPreferences;

    move-result-object v2

    const-string v3, "PROFILE_URL"

    const/4 v4, 0x0

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 128
    .local v0, "path":Ljava/lang/String;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 129
    :cond_1
    iget-object v2, p0, Lcom/cashwalk/cashwalk/activity/ProfileActivity$3;->this$0:Lcom/cashwalk/cashwalk/activity/ProfileActivity;

    iget-object v3, p0, Lcom/cashwalk/cashwalk/activity/ProfileActivity$3;->this$0:Lcom/cashwalk/cashwalk/activity/ProfileActivity;

    const v4, 0x7f09028c

    invoke-virtual {v3, v4}, Lcom/cashwalk/cashwalk/activity/ProfileActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 132
    :cond_2
    iget-object v2, p0, Lcom/cashwalk/cashwalk/activity/ProfileActivity$3;->this$0:Lcom/cashwalk/cashwalk/activity/ProfileActivity;

    invoke-static {v2}, Lcom/cashwalk/cashwalk/activity/ProfileActivity;->access$300(Lcom/cashwalk/cashwalk/activity/ProfileActivity;)Lcom/cashwalk/cashwalk/util/network/model/User;

    move-result-object v2

    iput-object v0, v2, Lcom/cashwalk/cashwalk/util/network/model/User;->profileUrl:Ljava/lang/String;

    .line 135
    iget-object v2, p0, Lcom/cashwalk/cashwalk/activity/ProfileActivity$3;->this$0:Lcom/cashwalk/cashwalk/activity/ProfileActivity;

    invoke-static {v2}, Lcom/cashwalk/cashwalk/activity/ProfileActivity;->access$400(Lcom/cashwalk/cashwalk/activity/ProfileActivity;)Landroid/widget/ProgressBar;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 137
    iget-object v2, p0, Lcom/cashwalk/cashwalk/activity/ProfileActivity$3;->this$0:Lcom/cashwalk/cashwalk/activity/ProfileActivity;

    invoke-static {v2}, Lcom/cashwalk/cashwalk/activity/ProfileActivity;->access$300(Lcom/cashwalk/cashwalk/activity/ProfileActivity;)Lcom/cashwalk/cashwalk/util/network/model/User;

    move-result-object v2

    iget-object v3, p0, Lcom/cashwalk/cashwalk/activity/ProfileActivity$3;->this$0:Lcom/cashwalk/cashwalk/activity/ProfileActivity;

    invoke-static {v3}, Lcom/cashwalk/cashwalk/activity/ProfileActivity;->access$500(Lcom/cashwalk/cashwalk/activity/ProfileActivity;)Landroid/widget/EditText;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/cashwalk/cashwalk/util/network/model/User;->nickname:Ljava/lang/String;

    .line 138
    iget-object v2, p0, Lcom/cashwalk/cashwalk/activity/ProfileActivity$3;->this$0:Lcom/cashwalk/cashwalk/activity/ProfileActivity;

    invoke-static {v2}, Lcom/cashwalk/cashwalk/activity/ProfileActivity;->access$100(Lcom/cashwalk/cashwalk/activity/ProfileActivity;)Landroid/content/SharedPreferences;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string v3, "NICKNAME"

    iget-object v4, p0, Lcom/cashwalk/cashwalk/activity/ProfileActivity$3;->this$0:Lcom/cashwalk/cashwalk/activity/ProfileActivity;

    invoke-static {v4}, Lcom/cashwalk/cashwalk/activity/ProfileActivity;->access$300(Lcom/cashwalk/cashwalk/activity/ProfileActivity;)Lcom/cashwalk/cashwalk/util/network/model/User;

    move-result-object v4

    iget-object v4, v4, Lcom/cashwalk/cashwalk/util/network/model/User;->nickname:Ljava/lang/String;

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 140
    iget-object v2, p0, Lcom/cashwalk/cashwalk/activity/ProfileActivity$3;->this$0:Lcom/cashwalk/cashwalk/activity/ProfileActivity;

    invoke-static {v2}, Lcom/cashwalk/cashwalk/activity/ProfileActivity;->access$600(Lcom/cashwalk/cashwalk/activity/ProfileActivity;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 141
    iget-object v2, p0, Lcom/cashwalk/cashwalk/activity/ProfileActivity$3;->this$0:Lcom/cashwalk/cashwalk/activity/ProfileActivity;

    invoke-static {v2}, Lcom/cashwalk/cashwalk/activity/ProfileActivity;->access$300(Lcom/cashwalk/cashwalk/activity/ProfileActivity;)Lcom/cashwalk/cashwalk/util/network/model/User;

    move-result-object v2

    iget-object v3, p0, Lcom/cashwalk/cashwalk/activity/ProfileActivity$3;->this$0:Lcom/cashwalk/cashwalk/activity/ProfileActivity;

    invoke-static {v3}, Lcom/cashwalk/cashwalk/activity/ProfileActivity;->access$600(Lcom/cashwalk/cashwalk/activity/ProfileActivity;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/cashwalk/cashwalk/util/network/model/User;->profileUrl:Ljava/lang/String;

    .line 142
    iget-object v2, p0, Lcom/cashwalk/cashwalk/activity/ProfileActivity$3;->this$0:Lcom/cashwalk/cashwalk/activity/ProfileActivity;

    invoke-static {v2}, Lcom/cashwalk/cashwalk/activity/ProfileActivity;->access$100(Lcom/cashwalk/cashwalk/activity/ProfileActivity;)Landroid/content/SharedPreferences;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string v3, "PROFILE_URL"

    iget-object v4, p0, Lcom/cashwalk/cashwalk/activity/ProfileActivity$3;->this$0:Lcom/cashwalk/cashwalk/activity/ProfileActivity;

    invoke-static {v4}, Lcom/cashwalk/cashwalk/activity/ProfileActivity;->access$300(Lcom/cashwalk/cashwalk/activity/ProfileActivity;)Lcom/cashwalk/cashwalk/util/network/model/User;

    move-result-object v4

    iget-object v4, v4, Lcom/cashwalk/cashwalk/util/network/model/User;->profileUrl:Ljava/lang/String;

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 145
    :cond_3
    iget-object v2, p0, Lcom/cashwalk/cashwalk/activity/ProfileActivity$3;->this$0:Lcom/cashwalk/cashwalk/activity/ProfileActivity;

    invoke-static {v2}, Lcom/cashwalk/cashwalk/activity/ProfileActivity;->access$700(Lcom/cashwalk/cashwalk/activity/ProfileActivity;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 146
    iget-object v2, p0, Lcom/cashwalk/cashwalk/activity/ProfileActivity$3;->this$0:Lcom/cashwalk/cashwalk/activity/ProfileActivity;

    invoke-static {v2}, Lcom/cashwalk/cashwalk/activity/ProfileActivity;->access$300(Lcom/cashwalk/cashwalk/activity/ProfileActivity;)Lcom/cashwalk/cashwalk/util/network/model/User;

    move-result-object v2

    new-instance v3, Lcom/cashwalk/cashwalk/activity/ProfileActivity$3$1;

    invoke-direct {v3, p0}, Lcom/cashwalk/cashwalk/activity/ProfileActivity$3$1;-><init>(Lcom/cashwalk/cashwalk/activity/ProfileActivity$3;)V

    invoke-static {v2, v3}, Lcom/cashwalk/cashwalk/util/network/RestClient;->setUser(Lcom/cashwalk/cashwalk/util/network/model/User;Lcom/cashwalk/cashwalk/util/network/ResponseHandler;)Lcom/android/volley/toolbox/JsonObjectRequest;

    move-result-object v1

    .line 154
    .local v1, "request":Lcom/android/volley/toolbox/JsonObjectRequest;
    iget-object v2, p0, Lcom/cashwalk/cashwalk/activity/ProfileActivity$3;->this$0:Lcom/cashwalk/cashwalk/activity/ProfileActivity;

    invoke-virtual {v2}, Lcom/cashwalk/cashwalk/activity/ProfileActivity;->getApplication()Landroid/app/Application;

    move-result-object v2

    check-cast v2, Lcom/cashwalk/cashwalk/CashWalkApp;

    invoke-virtual {v2}, Lcom/cashwalk/cashwalk/CashWalkApp;->requestQueue()Lcom/android/volley/RequestQueue;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/android/volley/RequestQueue;->add(Lcom/android/volley/Request;)Lcom/android/volley/Request;

    goto/16 :goto_0

    .line 156
    .end local v1    # "request":Lcom/android/volley/toolbox/JsonObjectRequest;
    :cond_4
    iget-object v2, p0, Lcom/cashwalk/cashwalk/activity/ProfileActivity$3;->this$0:Lcom/cashwalk/cashwalk/activity/ProfileActivity;

    invoke-static {v2}, Lcom/cashwalk/cashwalk/activity/ProfileActivity;->access$300(Lcom/cashwalk/cashwalk/activity/ProfileActivity;)Lcom/cashwalk/cashwalk/util/network/model/User;

    move-result-object v2

    new-instance v3, Lcom/cashwalk/cashwalk/activity/ProfileActivity$3$2;

    invoke-direct {v3, p0}, Lcom/cashwalk/cashwalk/activity/ProfileActivity$3$2;-><init>(Lcom/cashwalk/cashwalk/activity/ProfileActivity$3;)V

    invoke-static {v2, v3}, Lcom/cashwalk/cashwalk/util/network/RestClient;->setUser(Lcom/cashwalk/cashwalk/util/network/model/User;Lcom/cashwalk/cashwalk/util/network/ResponseHandler;)Lcom/android/volley/toolbox/JsonObjectRequest;

    move-result-object v1

    .line 163
    .restart local v1    # "request":Lcom/android/volley/toolbox/JsonObjectRequest;
    iget-object v2, p0, Lcom/cashwalk/cashwalk/activity/ProfileActivity$3;->this$0:Lcom/cashwalk/cashwalk/activity/ProfileActivity;

    invoke-virtual {v2}, Lcom/cashwalk/cashwalk/activity/ProfileActivity;->getApplication()Landroid/app/Application;

    move-result-object v2

    check-cast v2, Lcom/cashwalk/cashwalk/CashWalkApp;

    invoke-virtual {v2}, Lcom/cashwalk/cashwalk/CashWalkApp;->requestQueue()Lcom/android/volley/RequestQueue;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/android/volley/RequestQueue;->add(Lcom/android/volley/Request;)Lcom/android/volley/Request;

    goto/16 :goto_0
.end method
