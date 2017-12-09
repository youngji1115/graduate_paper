.class Lcom/cashwalk/cashwalk/activity/ProfileActivity$3$1;
.super Lcom/cashwalk/cashwalk/util/network/ResponseHandler;
.source "ProfileActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cashwalk/cashwalk/activity/ProfileActivity$3;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/cashwalk/cashwalk/activity/ProfileActivity$3;


# direct methods
.method constructor <init>(Lcom/cashwalk/cashwalk/activity/ProfileActivity$3;)V
    .locals 0
    .param p1, "this$1"    # Lcom/cashwalk/cashwalk/activity/ProfileActivity$3;

    .prologue
    .line 146
    iput-object p1, p0, Lcom/cashwalk/cashwalk/activity/ProfileActivity$3$1;->this$1:Lcom/cashwalk/cashwalk/activity/ProfileActivity$3;

    invoke-direct {p0}, Lcom/cashwalk/cashwalk/util/network/ResponseHandler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleResponse(Lorg/json/JSONObject;)V
    .locals 4
    .param p1, "jo"    # Lorg/json/JSONObject;

    .prologue
    .line 149
    iget-object v0, p0, Lcom/cashwalk/cashwalk/activity/ProfileActivity$3$1;->this$1:Lcom/cashwalk/cashwalk/activity/ProfileActivity$3;

    iget-object v0, v0, Lcom/cashwalk/cashwalk/activity/ProfileActivity$3;->this$0:Lcom/cashwalk/cashwalk/activity/ProfileActivity;

    invoke-static {v0}, Lcom/cashwalk/cashwalk/activity/ProfileActivity;->access$400(Lcom/cashwalk/cashwalk/activity/ProfileActivity;)Landroid/widget/ProgressBar;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 150
    iget-object v0, p0, Lcom/cashwalk/cashwalk/activity/ProfileActivity$3$1;->this$1:Lcom/cashwalk/cashwalk/activity/ProfileActivity$3;

    iget-object v0, v0, Lcom/cashwalk/cashwalk/activity/ProfileActivity$3;->this$0:Lcom/cashwalk/cashwalk/activity/ProfileActivity;

    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/cashwalk/cashwalk/activity/ProfileActivity$3$1;->this$1:Lcom/cashwalk/cashwalk/activity/ProfileActivity$3;

    iget-object v2, v2, Lcom/cashwalk/cashwalk/activity/ProfileActivity$3;->this$0:Lcom/cashwalk/cashwalk/activity/ProfileActivity;

    const-class v3, Lcom/cashwalk/cashwalk/activity/SignupActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string/jumbo v2, "user"

    iget-object v3, p0, Lcom/cashwalk/cashwalk/activity/ProfileActivity$3$1;->this$1:Lcom/cashwalk/cashwalk/activity/ProfileActivity$3;

    iget-object v3, v3, Lcom/cashwalk/cashwalk/activity/ProfileActivity$3;->this$0:Lcom/cashwalk/cashwalk/activity/ProfileActivity;

    invoke-static {v3}, Lcom/cashwalk/cashwalk/activity/ProfileActivity;->access$300(Lcom/cashwalk/cashwalk/activity/ProfileActivity;)Lcom/cashwalk/cashwalk/util/network/model/User;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/cashwalk/cashwalk/activity/ProfileActivity;->startActivity(Landroid/content/Intent;)V

    .line 151
    iget-object v0, p0, Lcom/cashwalk/cashwalk/activity/ProfileActivity$3$1;->this$1:Lcom/cashwalk/cashwalk/activity/ProfileActivity$3;

    iget-object v0, v0, Lcom/cashwalk/cashwalk/activity/ProfileActivity$3;->this$0:Lcom/cashwalk/cashwalk/activity/ProfileActivity;

    invoke-virtual {v0}, Lcom/cashwalk/cashwalk/activity/ProfileActivity;->finish()V

    .line 152
    return-void
.end method
