.class Lcom/cashwalk/cashwalk/MainActivity$18$4;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cashwalk/cashwalk/MainActivity$18;->handleResponse(Lorg/json/JSONObject;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/cashwalk/cashwalk/MainActivity$18;


# direct methods
.method constructor <init>(Lcom/cashwalk/cashwalk/MainActivity$18;)V
    .locals 0
    .param p1, "this$1"    # Lcom/cashwalk/cashwalk/MainActivity$18;

    .prologue
    .line 707
    iput-object p1, p0, Lcom/cashwalk/cashwalk/MainActivity$18$4;->this$1:Lcom/cashwalk/cashwalk/MainActivity$18;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 710
    iget-object v0, p0, Lcom/cashwalk/cashwalk/MainActivity$18$4;->this$1:Lcom/cashwalk/cashwalk/MainActivity$18;

    iget-object v0, v0, Lcom/cashwalk/cashwalk/MainActivity$18;->this$0:Lcom/cashwalk/cashwalk/MainActivity;

    invoke-static {v0}, Lcom/cashwalk/cashwalk/MainActivity;->access$100(Lcom/cashwalk/cashwalk/MainActivity;)Landroid/content/SharedPreferences;

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

    .line 711
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 712
    return-void
.end method
