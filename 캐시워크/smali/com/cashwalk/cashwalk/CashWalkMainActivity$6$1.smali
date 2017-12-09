.class Lcom/cashwalk/cashwalk/CashWalkMainActivity$6$1;
.super Ljava/lang/Object;
.source "CashWalkMainActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cashwalk/cashwalk/CashWalkMainActivity$6;->handleResponse(Lorg/json/JSONObject;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/cashwalk/cashwalk/CashWalkMainActivity$6;


# direct methods
.method constructor <init>(Lcom/cashwalk/cashwalk/CashWalkMainActivity$6;)V
    .locals 0
    .param p1, "this$1"    # Lcom/cashwalk/cashwalk/CashWalkMainActivity$6;

    .prologue
    .line 727
    iput-object p1, p0, Lcom/cashwalk/cashwalk/CashWalkMainActivity$6$1;->this$1:Lcom/cashwalk/cashwalk/CashWalkMainActivity$6;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 730
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    const-string v2, "https://play.google.com/store/apps/details?id=com.cashwalk.cashwalk"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 731
    .local v0, "browserIntent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/cashwalk/cashwalk/CashWalkMainActivity$6$1;->this$1:Lcom/cashwalk/cashwalk/CashWalkMainActivity$6;

    iget-object v1, v1, Lcom/cashwalk/cashwalk/CashWalkMainActivity$6;->this$0:Lcom/cashwalk/cashwalk/CashWalkMainActivity;

    invoke-virtual {v1, v0}, Lcom/cashwalk/cashwalk/CashWalkMainActivity;->startActivity(Landroid/content/Intent;)V

    .line 732
    iget-object v1, p0, Lcom/cashwalk/cashwalk/CashWalkMainActivity$6$1;->this$1:Lcom/cashwalk/cashwalk/CashWalkMainActivity$6;

    iget-object v1, v1, Lcom/cashwalk/cashwalk/CashWalkMainActivity$6;->this$0:Lcom/cashwalk/cashwalk/CashWalkMainActivity;

    invoke-virtual {v1}, Lcom/cashwalk/cashwalk/CashWalkMainActivity;->finish()V

    .line 733
    return-void
.end method
