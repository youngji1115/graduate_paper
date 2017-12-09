.class Lcom/cashwalk/cashwalk/util/FeedbackDialog$2;
.super Ljava/lang/Object;
.source "FeedbackDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cashwalk/cashwalk/util/FeedbackDialog;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cashwalk/cashwalk/util/FeedbackDialog;


# direct methods
.method constructor <init>(Lcom/cashwalk/cashwalk/util/FeedbackDialog;)V
    .locals 0
    .param p1, "this$0"    # Lcom/cashwalk/cashwalk/util/FeedbackDialog;

    .prologue
    .line 35
    iput-object p1, p0, Lcom/cashwalk/cashwalk/util/FeedbackDialog$2;->this$0:Lcom/cashwalk/cashwalk/util/FeedbackDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 38
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 39
    iget-object v0, p0, Lcom/cashwalk/cashwalk/util/FeedbackDialog$2;->this$0:Lcom/cashwalk/cashwalk/util/FeedbackDialog;

    iget-object v1, p0, Lcom/cashwalk/cashwalk/util/FeedbackDialog$2;->this$0:Lcom/cashwalk/cashwalk/util/FeedbackDialog;

    invoke-static {v1}, Lcom/cashwalk/cashwalk/util/FeedbackDialog;->access$000(Lcom/cashwalk/cashwalk/util/FeedbackDialog;)Landroid/content/SharedPreferences;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/cashwalk/cashwalk/util/Utils;->sendCsEmail(Landroid/content/Context;Landroid/content/SharedPreferences;Z)V

    .line 40
    iget-object v0, p0, Lcom/cashwalk/cashwalk/util/FeedbackDialog$2;->this$0:Lcom/cashwalk/cashwalk/util/FeedbackDialog;

    invoke-virtual {v0}, Lcom/cashwalk/cashwalk/util/FeedbackDialog;->finish()V

    .line 41
    return-void
.end method
