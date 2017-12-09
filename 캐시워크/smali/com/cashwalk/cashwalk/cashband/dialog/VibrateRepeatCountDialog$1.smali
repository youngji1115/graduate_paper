.class Lcom/cashwalk/cashwalk/cashband/dialog/VibrateRepeatCountDialog$1;
.super Ljava/lang/Object;
.source "VibrateRepeatCountDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cashwalk/cashwalk/cashband/dialog/VibrateRepeatCountDialog;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cashwalk/cashwalk/cashband/dialog/VibrateRepeatCountDialog;


# direct methods
.method constructor <init>(Lcom/cashwalk/cashwalk/cashband/dialog/VibrateRepeatCountDialog;)V
    .locals 0
    .param p1, "this$0"    # Lcom/cashwalk/cashwalk/cashband/dialog/VibrateRepeatCountDialog;

    .prologue
    .line 22
    iput-object p1, p0, Lcom/cashwalk/cashwalk/cashband/dialog/VibrateRepeatCountDialog$1;->this$0:Lcom/cashwalk/cashwalk/cashband/dialog/VibrateRepeatCountDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 25
    iget-object v0, p0, Lcom/cashwalk/cashwalk/cashband/dialog/VibrateRepeatCountDialog$1;->this$0:Lcom/cashwalk/cashwalk/cashband/dialog/VibrateRepeatCountDialog;

    invoke-static {v0}, Lcom/cashwalk/cashwalk/cashband/dialog/VibrateRepeatCountDialog;->access$100(Lcom/cashwalk/cashwalk/cashband/dialog/VibrateRepeatCountDialog;)Lcom/cashwalk/cashwalk/cashband/dialog/VibrateRepeatCountDialog$OnSelectRepeatCount;

    move-result-object v0

    iget-object v1, p0, Lcom/cashwalk/cashwalk/cashband/dialog/VibrateRepeatCountDialog$1;->this$0:Lcom/cashwalk/cashwalk/cashband/dialog/VibrateRepeatCountDialog;

    invoke-static {v1}, Lcom/cashwalk/cashwalk/cashband/dialog/VibrateRepeatCountDialog;->access$000(Lcom/cashwalk/cashwalk/cashband/dialog/VibrateRepeatCountDialog;)I

    move-result v1

    invoke-interface {v0, v1}, Lcom/cashwalk/cashwalk/cashband/dialog/VibrateRepeatCountDialog$OnSelectRepeatCount;->onSelect(I)V

    .line 26
    iget-object v0, p0, Lcom/cashwalk/cashwalk/cashband/dialog/VibrateRepeatCountDialog$1;->this$0:Lcom/cashwalk/cashwalk/cashband/dialog/VibrateRepeatCountDialog;

    invoke-virtual {v0}, Lcom/cashwalk/cashwalk/cashband/dialog/VibrateRepeatCountDialog;->dismiss()V

    .line 27
    return-void
.end method
