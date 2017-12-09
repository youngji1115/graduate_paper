.class Lcom/esafirm/imagepicker/view/SnackBarView$1;
.super Ljava/lang/Object;
.source "SnackBarView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/esafirm/imagepicker/view/SnackBarView;->setOnActionClickListener(ILandroid/view/View$OnClickListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/esafirm/imagepicker/view/SnackBarView;

.field final synthetic val$onClickListener:Landroid/view/View$OnClickListener;


# direct methods
.method constructor <init>(Lcom/esafirm/imagepicker/view/SnackBarView;Landroid/view/View$OnClickListener;)V
    .locals 0
    .param p1, "this$0"    # Lcom/esafirm/imagepicker/view/SnackBarView;

    .prologue
    .line 62
    iput-object p1, p0, Lcom/esafirm/imagepicker/view/SnackBarView$1;->this$0:Lcom/esafirm/imagepicker/view/SnackBarView;

    iput-object p2, p0, Lcom/esafirm/imagepicker/view/SnackBarView$1;->val$onClickListener:Landroid/view/View$OnClickListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 65
    iget-object v0, p0, Lcom/esafirm/imagepicker/view/SnackBarView$1;->this$0:Lcom/esafirm/imagepicker/view/SnackBarView;

    new-instance v1, Lcom/esafirm/imagepicker/view/SnackBarView$1$1;

    invoke-direct {v1, p0, p1}, Lcom/esafirm/imagepicker/view/SnackBarView$1$1;-><init>(Lcom/esafirm/imagepicker/view/SnackBarView$1;Landroid/view/View;)V

    invoke-static {v0, v1}, Lcom/esafirm/imagepicker/view/SnackBarView;->access$000(Lcom/esafirm/imagepicker/view/SnackBarView;Ljava/lang/Runnable;)V

    .line 71
    return-void
.end method
