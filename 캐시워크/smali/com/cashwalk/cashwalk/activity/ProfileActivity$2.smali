.class Lcom/cashwalk/cashwalk/activity/ProfileActivity$2;
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
    .line 109
    iput-object p1, p0, Lcom/cashwalk/cashwalk/activity/ProfileActivity$2;->this$0:Lcom/cashwalk/cashwalk/activity/ProfileActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 112
    const/4 v0, 0x0

    sput-object v0, Lcom/cashwalk/cashwalk/CashWalkApp;->token:Ljava/lang/String;

    .line 113
    iget-object v0, p0, Lcom/cashwalk/cashwalk/activity/ProfileActivity$2;->this$0:Lcom/cashwalk/cashwalk/activity/ProfileActivity;

    invoke-static {v0}, Lcom/cashwalk/cashwalk/activity/ProfileActivity;->access$100(Lcom/cashwalk/cashwalk/activity/ProfileActivity;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "PREFERENCE_TOS_ACCEPTED"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 114
    iget-object v0, p0, Lcom/cashwalk/cashwalk/activity/ProfileActivity$2;->this$0:Lcom/cashwalk/cashwalk/activity/ProfileActivity;

    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/cashwalk/cashwalk/activity/ProfileActivity$2;->this$0:Lcom/cashwalk/cashwalk/activity/ProfileActivity;

    const-class v3, Lcom/cashwalk/cashwalk/activity/LoginActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Lcom/cashwalk/cashwalk/activity/ProfileActivity;->startActivity(Landroid/content/Intent;)V

    .line 115
    iget-object v0, p0, Lcom/cashwalk/cashwalk/activity/ProfileActivity$2;->this$0:Lcom/cashwalk/cashwalk/activity/ProfileActivity;

    invoke-virtual {v0}, Lcom/cashwalk/cashwalk/activity/ProfileActivity;->finish()V

    .line 116
    return-void
.end method
