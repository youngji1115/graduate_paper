.class Lcom/cashwalk/cashwalk/activity/TnkAdActivity$7$2;
.super Ljava/lang/Object;
.source "TnkAdActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cashwalk/cashwalk/activity/TnkAdActivity$7;->handleResponse(Lorg/json/JSONObject;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/cashwalk/cashwalk/activity/TnkAdActivity$7;


# direct methods
.method constructor <init>(Lcom/cashwalk/cashwalk/activity/TnkAdActivity$7;)V
    .locals 0
    .param p1, "this$1"    # Lcom/cashwalk/cashwalk/activity/TnkAdActivity$7;

    .prologue
    .line 1105
    iput-object p1, p0, Lcom/cashwalk/cashwalk/activity/TnkAdActivity$7$2;->this$1:Lcom/cashwalk/cashwalk/activity/TnkAdActivity$7;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 1108
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 1109
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    const-string v2, "https://play.google.com/store/apps/details?id=com.cashwalk.cashwalk"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 1110
    .local v0, "browserIntent":Landroid/content/Intent;
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1111
    iget-object v1, p0, Lcom/cashwalk/cashwalk/activity/TnkAdActivity$7$2;->this$1:Lcom/cashwalk/cashwalk/activity/TnkAdActivity$7;

    iget-object v1, v1, Lcom/cashwalk/cashwalk/activity/TnkAdActivity$7;->this$0:Lcom/cashwalk/cashwalk/activity/TnkAdActivity;

    invoke-virtual {v1, v0}, Lcom/cashwalk/cashwalk/activity/TnkAdActivity;->startActivity(Landroid/content/Intent;)V

    .line 1112
    return-void
.end method
