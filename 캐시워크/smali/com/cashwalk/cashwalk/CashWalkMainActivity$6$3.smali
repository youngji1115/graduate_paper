.class Lcom/cashwalk/cashwalk/CashWalkMainActivity$6$3;
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
    .line 746
    iput-object p1, p0, Lcom/cashwalk/cashwalk/CashWalkMainActivity$6$3;->this$1:Lcom/cashwalk/cashwalk/CashWalkMainActivity$6;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 749
    iget-object v1, p0, Lcom/cashwalk/cashwalk/CashWalkMainActivity$6$3;->this$1:Lcom/cashwalk/cashwalk/CashWalkMainActivity$6;

    iget-object v1, v1, Lcom/cashwalk/cashwalk/CashWalkMainActivity$6;->this$0:Lcom/cashwalk/cashwalk/CashWalkMainActivity;

    invoke-static {v1}, Lcom/cashwalk/cashwalk/CashWalkMainActivity;->access$000(Lcom/cashwalk/cashwalk/CashWalkMainActivity;)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "PREFERENCE_UPDATE_CHECK_DATETIME"

    new-instance v3, Lorg/joda/time/DateTime;

    invoke-direct {v3}, Lorg/joda/time/DateTime;-><init>()V

    invoke-virtual {v3}, Lorg/joda/time/DateTime;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 750
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    const-string v2, "https://play.google.com/store/apps/details?id=com.cashwalk.cashwalk"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 751
    .local v0, "browserIntent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/cashwalk/cashwalk/CashWalkMainActivity$6$3;->this$1:Lcom/cashwalk/cashwalk/CashWalkMainActivity$6;

    iget-object v1, v1, Lcom/cashwalk/cashwalk/CashWalkMainActivity$6;->this$0:Lcom/cashwalk/cashwalk/CashWalkMainActivity;

    invoke-virtual {v1, v0}, Lcom/cashwalk/cashwalk/CashWalkMainActivity;->startActivity(Landroid/content/Intent;)V

    .line 752
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 753
    return-void
.end method
