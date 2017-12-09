.class Lcom/cashwalk/cashwalk/cashband/dialog/NotiPermissionDialog$1;
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
    .line 26
    iput-object p1, p0, Lcom/cashwalk/cashwalk/cashband/dialog/NotiPermissionDialog$1;->this$0:Lcom/cashwalk/cashwalk/cashband/dialog/NotiPermissionDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 29
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 30
    return-void
.end method
