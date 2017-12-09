.class Lcom/cashwalk/cashwalk/MainActivity$8;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cashwalk/cashwalk/MainActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cashwalk/cashwalk/MainActivity;


# direct methods
.method constructor <init>(Lcom/cashwalk/cashwalk/MainActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/cashwalk/cashwalk/MainActivity;

    .prologue
    .line 373
    iput-object p1, p0, Lcom/cashwalk/cashwalk/MainActivity$8;->this$0:Lcom/cashwalk/cashwalk/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 376
    new-instance v0, Lcom/cashwalk/cashwalk/dialog/CommonShareDialog;

    iget-object v1, p0, Lcom/cashwalk/cashwalk/MainActivity$8;->this$0:Lcom/cashwalk/cashwalk/MainActivity;

    sget-object v2, Lcom/cashwalk/cashwalk/dialog/CommonShareDialog;->REF_MAIN:Ljava/lang/String;

    iget-object v3, p0, Lcom/cashwalk/cashwalk/MainActivity$8;->this$0:Lcom/cashwalk/cashwalk/MainActivity;

    invoke-static {v3}, Lcom/cashwalk/cashwalk/MainActivity;->access$300(Lcom/cashwalk/cashwalk/MainActivity;)Landroid/widget/RelativeLayout;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/cashwalk/cashwalk/dialog/CommonShareDialog;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/view/View;)V

    .line 377
    .local v0, "mShareDialog":Lcom/cashwalk/cashwalk/dialog/CommonShareDialog;
    invoke-virtual {v0}, Lcom/cashwalk/cashwalk/dialog/CommonShareDialog;->show()V

    .line 378
    return-void
.end method
