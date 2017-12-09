.class Lcom/cashwalk/cashwalk/activity/TnkAdActivity$4$1$3;
.super Ljava/lang/Object;
.source "TnkAdActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cashwalk/cashwalk/activity/TnkAdActivity$4$1;->handleResponse(Lorg/json/JSONObject;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/cashwalk/cashwalk/activity/TnkAdActivity$4$1;


# direct methods
.method constructor <init>(Lcom/cashwalk/cashwalk/activity/TnkAdActivity$4$1;)V
    .locals 0
    .param p1, "this$2"    # Lcom/cashwalk/cashwalk/activity/TnkAdActivity$4$1;

    .prologue
    .line 319
    iput-object p1, p0, Lcom/cashwalk/cashwalk/activity/TnkAdActivity$4$1$3;->this$2:Lcom/cashwalk/cashwalk/activity/TnkAdActivity$4$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 322
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 323
    iget-object v0, p0, Lcom/cashwalk/cashwalk/activity/TnkAdActivity$4$1$3;->this$2:Lcom/cashwalk/cashwalk/activity/TnkAdActivity$4$1;

    iget-object v0, v0, Lcom/cashwalk/cashwalk/activity/TnkAdActivity$4$1;->this$1:Lcom/cashwalk/cashwalk/activity/TnkAdActivity$4;

    iget-object v0, v0, Lcom/cashwalk/cashwalk/activity/TnkAdActivity$4;->this$0:Lcom/cashwalk/cashwalk/activity/TnkAdActivity;

    iget-object v1, p0, Lcom/cashwalk/cashwalk/activity/TnkAdActivity$4$1$3;->this$2:Lcom/cashwalk/cashwalk/activity/TnkAdActivity$4$1;

    iget-object v1, v1, Lcom/cashwalk/cashwalk/activity/TnkAdActivity$4$1;->this$1:Lcom/cashwalk/cashwalk/activity/TnkAdActivity$4;

    iget-object v1, v1, Lcom/cashwalk/cashwalk/activity/TnkAdActivity$4;->this$0:Lcom/cashwalk/cashwalk/activity/TnkAdActivity;

    invoke-static {v1}, Lcom/cashwalk/cashwalk/activity/TnkAdActivity;->access$300(Lcom/cashwalk/cashwalk/activity/TnkAdActivity;)Landroid/content/SharedPreferences;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/cashwalk/cashwalk/util/Utils;->sendCsEmail(Landroid/content/Context;Landroid/content/SharedPreferences;Z)V

    .line 324
    return-void
.end method
