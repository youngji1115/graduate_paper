.class Lcom/cashwalk/cashwalk/activity/ProfileActivity$4;
.super Landroid/os/Handler;
.source "ProfileActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cashwalk/cashwalk/activity/ProfileActivity;->updateProfile(Ljava/lang/String;)V
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
    .line 201
    iput-object p1, p0, Lcom/cashwalk/cashwalk/activity/ProfileActivity$4;->this$0:Lcom/cashwalk/cashwalk/activity/ProfileActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 204
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    .line 205
    .local v0, "b":Landroid/os/Bundle;
    if-eqz v0, :cond_0

    .line 206
    const-string v2, "filename"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 207
    .local v1, "fn":Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 208
    iget-object v2, p0, Lcom/cashwalk/cashwalk/activity/ProfileActivity$4;->this$0:Lcom/cashwalk/cashwalk/activity/ProfileActivity;

    invoke-static {v2, v1}, Lcom/cashwalk/cashwalk/activity/ProfileActivity;->access$602(Lcom/cashwalk/cashwalk/activity/ProfileActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 209
    iget-object v2, p0, Lcom/cashwalk/cashwalk/activity/ProfileActivity$4;->this$0:Lcom/cashwalk/cashwalk/activity/ProfileActivity;

    invoke-static {v2}, Lcom/cashwalk/cashwalk/activity/ProfileActivity;->access$100(Lcom/cashwalk/cashwalk/activity/ProfileActivity;)Landroid/content/SharedPreferences;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string v3, "PROFILE_URL"

    iget-object v4, p0, Lcom/cashwalk/cashwalk/activity/ProfileActivity$4;->this$0:Lcom/cashwalk/cashwalk/activity/ProfileActivity;

    invoke-static {v4}, Lcom/cashwalk/cashwalk/activity/ProfileActivity;->access$600(Lcom/cashwalk/cashwalk/activity/ProfileActivity;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 212
    .end local v1    # "fn":Ljava/lang/String;
    :cond_0
    return-void
.end method
