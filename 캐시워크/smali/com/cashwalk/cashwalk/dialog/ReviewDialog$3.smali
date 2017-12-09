.class Lcom/cashwalk/cashwalk/dialog/ReviewDialog$3;
.super Ljava/lang/Object;
.source "ReviewDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cashwalk/cashwalk/dialog/ReviewDialog;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cashwalk/cashwalk/dialog/ReviewDialog;


# direct methods
.method constructor <init>(Lcom/cashwalk/cashwalk/dialog/ReviewDialog;)V
    .locals 0
    .param p1, "this$0"    # Lcom/cashwalk/cashwalk/dialog/ReviewDialog;

    .prologue
    .line 93
    iput-object p1, p0, Lcom/cashwalk/cashwalk/dialog/ReviewDialog$3;->this$0:Lcom/cashwalk/cashwalk/dialog/ReviewDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 96
    iget-object v0, p0, Lcom/cashwalk/cashwalk/dialog/ReviewDialog$3;->this$0:Lcom/cashwalk/cashwalk/dialog/ReviewDialog;

    invoke-static {v0}, Lcom/cashwalk/cashwalk/dialog/ReviewDialog;->access$000(Lcom/cashwalk/cashwalk/dialog/ReviewDialog;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "PREFERENCE_REVIEW_CANCEL_DATETIME"

    new-instance v2, Lorg/joda/time/DateTime;

    invoke-direct {v2}, Lorg/joda/time/DateTime;-><init>()V

    invoke-virtual {v2}, Lorg/joda/time/DateTime;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 97
    iget-object v0, p0, Lcom/cashwalk/cashwalk/dialog/ReviewDialog$3;->this$0:Lcom/cashwalk/cashwalk/dialog/ReviewDialog;

    invoke-virtual {v0}, Lcom/cashwalk/cashwalk/dialog/ReviewDialog;->dismiss()V

    .line 98
    return-void
.end method
