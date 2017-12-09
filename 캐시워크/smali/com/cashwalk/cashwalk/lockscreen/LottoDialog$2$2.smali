.class Lcom/cashwalk/cashwalk/lockscreen/LottoDialog$2$2;
.super Ljava/lang/Object;
.source "LottoDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cashwalk/cashwalk/lockscreen/LottoDialog$2;->onRevealed(Lcom/cooltechworks/views/ScratchImageView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/cashwalk/cashwalk/lockscreen/LottoDialog$2;


# direct methods
.method constructor <init>(Lcom/cashwalk/cashwalk/lockscreen/LottoDialog$2;)V
    .locals 0
    .param p1, "this$1"    # Lcom/cashwalk/cashwalk/lockscreen/LottoDialog$2;

    .prologue
    .line 214
    iput-object p1, p0, Lcom/cashwalk/cashwalk/lockscreen/LottoDialog$2$2;->this$1:Lcom/cashwalk/cashwalk/lockscreen/LottoDialog$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 217
    iget-object v0, p0, Lcom/cashwalk/cashwalk/lockscreen/LottoDialog$2$2;->this$1:Lcom/cashwalk/cashwalk/lockscreen/LottoDialog$2;

    iget-object v0, v0, Lcom/cashwalk/cashwalk/lockscreen/LottoDialog$2;->val$handler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 218
    iget-object v0, p0, Lcom/cashwalk/cashwalk/lockscreen/LottoDialog$2$2;->this$1:Lcom/cashwalk/cashwalk/lockscreen/LottoDialog$2;

    iget-object v0, v0, Lcom/cashwalk/cashwalk/lockscreen/LottoDialog$2;->this$0:Lcom/cashwalk/cashwalk/lockscreen/LottoDialog;

    invoke-virtual {v0}, Lcom/cashwalk/cashwalk/lockscreen/LottoDialog;->dismiss()V

    .line 219
    return-void
.end method
