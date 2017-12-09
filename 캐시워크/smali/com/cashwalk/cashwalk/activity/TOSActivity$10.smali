.class Lcom/cashwalk/cashwalk/activity/TOSActivity$10;
.super Ljava/lang/Object;
.source "TOSActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cashwalk/cashwalk/activity/TOSActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cashwalk/cashwalk/activity/TOSActivity;


# direct methods
.method constructor <init>(Lcom/cashwalk/cashwalk/activity/TOSActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/cashwalk/cashwalk/activity/TOSActivity;

    .prologue
    .line 142
    iput-object p1, p0, Lcom/cashwalk/cashwalk/activity/TOSActivity$10;->this$0:Lcom/cashwalk/cashwalk/activity/TOSActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const/4 v2, 0x0

    const/4 v4, 0x1

    .line 145
    iget-object v0, p0, Lcom/cashwalk/cashwalk/activity/TOSActivity$10;->this$0:Lcom/cashwalk/cashwalk/activity/TOSActivity;

    invoke-static {v0}, Lcom/cashwalk/cashwalk/activity/TOSActivity;->access$000(Lcom/cashwalk/cashwalk/activity/TOSActivity;)[Z

    move-result-object v0

    aget-boolean v0, v0, v2

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/cashwalk/cashwalk/activity/TOSActivity$10;->this$0:Lcom/cashwalk/cashwalk/activity/TOSActivity;

    invoke-static {v0}, Lcom/cashwalk/cashwalk/activity/TOSActivity;->access$000(Lcom/cashwalk/cashwalk/activity/TOSActivity;)[Z

    move-result-object v0

    aget-boolean v0, v0, v4

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/cashwalk/cashwalk/activity/TOSActivity$10;->this$0:Lcom/cashwalk/cashwalk/activity/TOSActivity;

    invoke-static {v0}, Lcom/cashwalk/cashwalk/activity/TOSActivity;->access$000(Lcom/cashwalk/cashwalk/activity/TOSActivity;)[Z

    move-result-object v0

    const/4 v1, 0x2

    aget-boolean v0, v0, v1

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/cashwalk/cashwalk/activity/TOSActivity$10;->this$0:Lcom/cashwalk/cashwalk/activity/TOSActivity;

    invoke-static {v0}, Lcom/cashwalk/cashwalk/activity/TOSActivity;->access$000(Lcom/cashwalk/cashwalk/activity/TOSActivity;)[Z

    move-result-object v0

    const/4 v1, 0x3

    aget-boolean v0, v0, v1

    if-eqz v0, :cond_2

    .line 147
    iget-object v0, p0, Lcom/cashwalk/cashwalk/activity/TOSActivity$10;->this$0:Lcom/cashwalk/cashwalk/activity/TOSActivity;

    invoke-static {v0}, Lcom/cashwalk/cashwalk/activity/TOSActivity;->access$100(Lcom/cashwalk/cashwalk/activity/TOSActivity;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "PREFERENCE_TOS_ACCEPTED"

    invoke-interface {v0, v1, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 148
    iget-object v0, p0, Lcom/cashwalk/cashwalk/activity/TOSActivity$10;->this$0:Lcom/cashwalk/cashwalk/activity/TOSActivity;

    invoke-static {v0}, Lcom/cashwalk/cashwalk/activity/TOSActivity;->access$100(Lcom/cashwalk/cashwalk/activity/TOSActivity;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "IS_LOGIN"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 149
    iget-object v0, p0, Lcom/cashwalk/cashwalk/activity/TOSActivity$10;->this$0:Lcom/cashwalk/cashwalk/activity/TOSActivity;

    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/cashwalk/cashwalk/activity/TOSActivity$10;->this$0:Lcom/cashwalk/cashwalk/activity/TOSActivity;

    const-class v3, Lcom/cashwalk/cashwalk/activity/ProfileActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string/jumbo v2, "user"

    iget-object v3, p0, Lcom/cashwalk/cashwalk/activity/TOSActivity$10;->this$0:Lcom/cashwalk/cashwalk/activity/TOSActivity;

    invoke-static {v3}, Lcom/cashwalk/cashwalk/activity/TOSActivity;->access$200(Lcom/cashwalk/cashwalk/activity/TOSActivity;)Lcom/cashwalk/cashwalk/util/network/model/User;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    move-result-object v1

    const-string v2, "from_signup"

    invoke-virtual {v1, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/cashwalk/cashwalk/activity/TOSActivity;->startActivity(Landroid/content/Intent;)V

    .line 150
    iget-object v0, p0, Lcom/cashwalk/cashwalk/activity/TOSActivity$10;->this$0:Lcom/cashwalk/cashwalk/activity/TOSActivity;

    invoke-virtual {v0}, Lcom/cashwalk/cashwalk/activity/TOSActivity;->finish()V

    .line 165
    :goto_0
    return-void

    .line 153
    :cond_0
    iget-object v0, p0, Lcom/cashwalk/cashwalk/activity/TOSActivity$10;->this$0:Lcom/cashwalk/cashwalk/activity/TOSActivity;

    invoke-static {v0}, Lcom/cashwalk/cashwalk/activity/TOSActivity;->access$200(Lcom/cashwalk/cashwalk/activity/TOSActivity;)Lcom/cashwalk/cashwalk/util/network/model/User;

    move-result-object v0

    iget-boolean v0, v0, Lcom/cashwalk/cashwalk/util/network/model/User;->smsAuth:Z

    if-eqz v0, :cond_1

    .line 154
    iget-object v0, p0, Lcom/cashwalk/cashwalk/activity/TOSActivity$10;->this$0:Lcom/cashwalk/cashwalk/activity/TOSActivity;

    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/cashwalk/cashwalk/activity/TOSActivity$10;->this$0:Lcom/cashwalk/cashwalk/activity/TOSActivity;

    const-class v3, Lcom/cashwalk/cashwalk/activity/ProfileActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string/jumbo v2, "user"

    iget-object v3, p0, Lcom/cashwalk/cashwalk/activity/TOSActivity$10;->this$0:Lcom/cashwalk/cashwalk/activity/TOSActivity;

    invoke-static {v3}, Lcom/cashwalk/cashwalk/activity/TOSActivity;->access$200(Lcom/cashwalk/cashwalk/activity/TOSActivity;)Lcom/cashwalk/cashwalk/util/network/model/User;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    move-result-object v1

    const-string v2, "from_signup"

    invoke-virtual {v1, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/cashwalk/cashwalk/activity/TOSActivity;->startActivity(Landroid/content/Intent;)V

    .line 155
    iget-object v0, p0, Lcom/cashwalk/cashwalk/activity/TOSActivity$10;->this$0:Lcom/cashwalk/cashwalk/activity/TOSActivity;

    invoke-virtual {v0}, Lcom/cashwalk/cashwalk/activity/TOSActivity;->finish()V

    goto :goto_0

    .line 158
    :cond_1
    iget-object v0, p0, Lcom/cashwalk/cashwalk/activity/TOSActivity$10;->this$0:Lcom/cashwalk/cashwalk/activity/TOSActivity;

    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/cashwalk/cashwalk/activity/TOSActivity$10;->this$0:Lcom/cashwalk/cashwalk/activity/TOSActivity;

    const-class v3, Lcom/cashwalk/cashwalk/activity/AuthSMSActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string/jumbo v2, "type"

    const-string v3, "join"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/cashwalk/cashwalk/activity/TOSActivity;->startActivity(Landroid/content/Intent;)V

    .line 159
    iget-object v0, p0, Lcom/cashwalk/cashwalk/activity/TOSActivity$10;->this$0:Lcom/cashwalk/cashwalk/activity/TOSActivity;

    invoke-virtual {v0}, Lcom/cashwalk/cashwalk/activity/TOSActivity;->finish()V

    goto :goto_0

    .line 163
    :cond_2
    iget-object v0, p0, Lcom/cashwalk/cashwalk/activity/TOSActivity$10;->this$0:Lcom/cashwalk/cashwalk/activity/TOSActivity;

    iget-object v1, p0, Lcom/cashwalk/cashwalk/activity/TOSActivity$10;->this$0:Lcom/cashwalk/cashwalk/activity/TOSActivity;

    const v2, 0x7f09028f

    invoke-virtual {v1, v2}, Lcom/cashwalk/cashwalk/activity/TOSActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method
