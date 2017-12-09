.class Lcom/cashwalk/cashwalk/cashband/dialog/NotiPermissionDialog$2;
.super Ljava/lang/Object;
.source "NotiPermissionDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cashwalk/cashwalk/cashband/dialog/NotiPermissionDialog;->checkAndShow()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cashwalk/cashwalk/cashband/dialog/NotiPermissionDialog;


# direct methods
.method constructor <init>(Lcom/cashwalk/cashwalk/cashband/dialog/NotiPermissionDialog;)V
    .locals 0
    .param p1, "this$0"    # Lcom/cashwalk/cashwalk/cashband/dialog/NotiPermissionDialog;

    .prologue
    .line 33
    iput-object p1, p0, Lcom/cashwalk/cashwalk/cashband/dialog/NotiPermissionDialog$2;->this$0:Lcom/cashwalk/cashwalk/cashband/dialog/NotiPermissionDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 36
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.settings.ACTION_NOTIFICATION_LISTENER_SETTINGS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 37
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/cashwalk/cashwalk/cashband/dialog/NotiPermissionDialog$2;->this$0:Lcom/cashwalk/cashwalk/cashband/dialog/NotiPermissionDialog;

    invoke-virtual {v1}, Lcom/cashwalk/cashwalk/cashband/dialog/NotiPermissionDialog;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 38
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 39
    return-void
.end method
