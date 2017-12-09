.class Lcom/cashwalk/cashwalk/activity/SignupActivity$2$2;
.super Ljava/lang/Object;
.source "SignupActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cashwalk/cashwalk/activity/SignupActivity$2;->handleResponse(Lorg/json/JSONObject;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/cashwalk/cashwalk/activity/SignupActivity$2;


# direct methods
.method constructor <init>(Lcom/cashwalk/cashwalk/activity/SignupActivity$2;)V
    .locals 0
    .param p1, "this$1"    # Lcom/cashwalk/cashwalk/activity/SignupActivity$2;

    .prologue
    .line 186
    iput-object p1, p0, Lcom/cashwalk/cashwalk/activity/SignupActivity$2$2;->this$1:Lcom/cashwalk/cashwalk/activity/SignupActivity$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 189
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 190
    iget-object v0, p0, Lcom/cashwalk/cashwalk/activity/SignupActivity$2$2;->this$1:Lcom/cashwalk/cashwalk/activity/SignupActivity$2;

    iget-object v0, v0, Lcom/cashwalk/cashwalk/activity/SignupActivity$2;->this$0:Lcom/cashwalk/cashwalk/activity/SignupActivity;

    iget-object v1, p0, Lcom/cashwalk/cashwalk/activity/SignupActivity$2$2;->this$1:Lcom/cashwalk/cashwalk/activity/SignupActivity$2;

    iget-object v1, v1, Lcom/cashwalk/cashwalk/activity/SignupActivity$2;->this$0:Lcom/cashwalk/cashwalk/activity/SignupActivity;

    invoke-static {v1}, Lcom/cashwalk/cashwalk/activity/SignupActivity;->access$200(Lcom/cashwalk/cashwalk/activity/SignupActivity;)Lcom/cashwalk/cashwalk/util/network/model/User;

    move-result-object v1

    iget-object v1, v1, Lcom/cashwalk/cashwalk/util/network/model/User;->friendCode:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/cashwalk/cashwalk/activity/SignupActivity;->access$100(Lcom/cashwalk/cashwalk/activity/SignupActivity;Ljava/lang/String;)V

    .line 191
    return-void
.end method
