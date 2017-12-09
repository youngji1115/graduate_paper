.class Lcom/cashwalk/cashwalk/activity/LoginActivity$4$1;
.super Lcom/facebook/ProfileTracker;
.source "LoginActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cashwalk/cashwalk/activity/LoginActivity$4;->onSuccess(Lcom/facebook/login/LoginResult;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/cashwalk/cashwalk/activity/LoginActivity$4;


# direct methods
.method constructor <init>(Lcom/cashwalk/cashwalk/activity/LoginActivity$4;)V
    .locals 0
    .param p1, "this$1"    # Lcom/cashwalk/cashwalk/activity/LoginActivity$4;

    .prologue
    .line 173
    iput-object p1, p0, Lcom/cashwalk/cashwalk/activity/LoginActivity$4$1;->this$1:Lcom/cashwalk/cashwalk/activity/LoginActivity$4;

    invoke-direct {p0}, Lcom/facebook/ProfileTracker;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCurrentProfileChanged(Lcom/facebook/Profile;Lcom/facebook/Profile;)V
    .locals 1
    .param p1, "oldProfile"    # Lcom/facebook/Profile;
    .param p2, "currentProfile"    # Lcom/facebook/Profile;

    .prologue
    .line 177
    iget-object v0, p0, Lcom/cashwalk/cashwalk/activity/LoginActivity$4$1;->this$1:Lcom/cashwalk/cashwalk/activity/LoginActivity$4;

    iget-object v0, v0, Lcom/cashwalk/cashwalk/activity/LoginActivity$4;->this$0:Lcom/cashwalk/cashwalk/activity/LoginActivity;

    invoke-static {v0, p2}, Lcom/cashwalk/cashwalk/activity/LoginActivity;->access$000(Lcom/cashwalk/cashwalk/activity/LoginActivity;Lcom/facebook/Profile;)V

    .line 178
    return-void
.end method
