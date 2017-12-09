.class Lcom/cashwalk/cashwalk/lockscreen/OffDialog$3;
.super Ljava/lang/Object;
.source "OffDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cashwalk/cashwalk/lockscreen/OffDialog;-><init>(Landroid/content/Context;Landroid/os/Handler;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cashwalk/cashwalk/lockscreen/OffDialog;

.field final synthetic val$handler:Landroid/os/Handler;


# direct methods
.method constructor <init>(Lcom/cashwalk/cashwalk/lockscreen/OffDialog;Landroid/os/Handler;)V
    .locals 0
    .param p1, "this$0"    # Lcom/cashwalk/cashwalk/lockscreen/OffDialog;

    .prologue
    .line 64
    iput-object p1, p0, Lcom/cashwalk/cashwalk/lockscreen/OffDialog$3;->this$0:Lcom/cashwalk/cashwalk/lockscreen/OffDialog;

    iput-object p2, p0, Lcom/cashwalk/cashwalk/lockscreen/OffDialog$3;->val$handler:Landroid/os/Handler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 67
    iget-object v0, p0, Lcom/cashwalk/cashwalk/lockscreen/OffDialog$3;->val$handler:Landroid/os/Handler;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 68
    iget-object v0, p0, Lcom/cashwalk/cashwalk/lockscreen/OffDialog$3;->this$0:Lcom/cashwalk/cashwalk/lockscreen/OffDialog;

    invoke-virtual {v0}, Lcom/cashwalk/cashwalk/lockscreen/OffDialog;->dismiss()V

    .line 69
    return-void
.end method
