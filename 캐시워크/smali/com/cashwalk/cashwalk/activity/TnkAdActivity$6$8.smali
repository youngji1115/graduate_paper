.class Lcom/cashwalk/cashwalk/activity/TnkAdActivity$6$8;
.super Ljava/lang/Object;
.source "TnkAdActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cashwalk/cashwalk/activity/TnkAdActivity$6;->handleResponse(Lorg/json/JSONObject;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/cashwalk/cashwalk/activity/TnkAdActivity$6;


# direct methods
.method constructor <init>(Lcom/cashwalk/cashwalk/activity/TnkAdActivity$6;)V
    .locals 0
    .param p1, "this$1"    # Lcom/cashwalk/cashwalk/activity/TnkAdActivity$6;

    .prologue
    .line 853
    iput-object p1, p0, Lcom/cashwalk/cashwalk/activity/TnkAdActivity$6$8;->this$1:Lcom/cashwalk/cashwalk/activity/TnkAdActivity$6;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 856
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 857
    iget-object v0, p0, Lcom/cashwalk/cashwalk/activity/TnkAdActivity$6$8;->this$1:Lcom/cashwalk/cashwalk/activity/TnkAdActivity$6;

    iget-object v0, v0, Lcom/cashwalk/cashwalk/activity/TnkAdActivity$6;->this$0:Lcom/cashwalk/cashwalk/activity/TnkAdActivity;

    iget-object v1, p0, Lcom/cashwalk/cashwalk/activity/TnkAdActivity$6$8;->this$1:Lcom/cashwalk/cashwalk/activity/TnkAdActivity$6;

    iget-object v1, v1, Lcom/cashwalk/cashwalk/activity/TnkAdActivity$6;->this$0:Lcom/cashwalk/cashwalk/activity/TnkAdActivity;

    invoke-static {v1}, Lcom/cashwalk/cashwalk/activity/TnkAdActivity;->access$300(Lcom/cashwalk/cashwalk/activity/TnkAdActivity;)Landroid/content/SharedPreferences;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/cashwalk/cashwalk/util/Utils;->sendCsEmail(Landroid/content/Context;Landroid/content/SharedPreferences;Z)V

    .line 858
    return-void
.end method
