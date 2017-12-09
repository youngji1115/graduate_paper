.class Lcom/cashwalk/cashwalk/CashWalkMainActivity$6$4;
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
    .line 755
    iput-object p1, p0, Lcom/cashwalk/cashwalk/CashWalkMainActivity$6$4;->this$1:Lcom/cashwalk/cashwalk/CashWalkMainActivity$6;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 758
    iget-object v0, p0, Lcom/cashwalk/cashwalk/CashWalkMainActivity$6$4;->this$1:Lcom/cashwalk/cashwalk/CashWalkMainActivity$6;

    iget-object v0, v0, Lcom/cashwalk/cashwalk/CashWalkMainActivity$6;->this$0:Lcom/cashwalk/cashwalk/CashWalkMainActivity;

    invoke-static {v0}, Lcom/cashwalk/cashwalk/CashWalkMainActivity;->access$000(Lcom/cashwalk/cashwalk/CashWalkMainActivity;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "PREFERENCE_UPDATE_CHECK_DATETIME"

    new-instance v2, Lorg/joda/time/DateTime;

    invoke-direct {v2}, Lorg/joda/time/DateTime;-><init>()V

    invoke-virtual {v2}, Lorg/joda/time/DateTime;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 759
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 760
    return-void
.end method
