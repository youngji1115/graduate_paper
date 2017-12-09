.class Lcom/cashwalk/cashwalk/activity/LottoAdActivity$2$2;
.super Ljava/lang/Object;
.source "LottoAdActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cashwalk/cashwalk/activity/LottoAdActivity$2;->onSingleClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/cashwalk/cashwalk/activity/LottoAdActivity$2;


# direct methods
.method constructor <init>(Lcom/cashwalk/cashwalk/activity/LottoAdActivity$2;)V
    .locals 0
    .param p1, "this$1"    # Lcom/cashwalk/cashwalk/activity/LottoAdActivity$2;

    .prologue
    .line 250
    iput-object p1, p0, Lcom/cashwalk/cashwalk/activity/LottoAdActivity$2$2;->this$1:Lcom/cashwalk/cashwalk/activity/LottoAdActivity$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 253
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 254
    iget-object v0, p0, Lcom/cashwalk/cashwalk/activity/LottoAdActivity$2$2;->this$1:Lcom/cashwalk/cashwalk/activity/LottoAdActivity$2;

    iget-object v0, v0, Lcom/cashwalk/cashwalk/activity/LottoAdActivity$2;->this$0:Lcom/cashwalk/cashwalk/activity/LottoAdActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/cashwalk/cashwalk/activity/LottoAdActivity;->access$302(Lcom/cashwalk/cashwalk/activity/LottoAdActivity;Z)Z

    .line 255
    iget-object v0, p0, Lcom/cashwalk/cashwalk/activity/LottoAdActivity$2$2;->this$1:Lcom/cashwalk/cashwalk/activity/LottoAdActivity$2;

    iget-object v0, v0, Lcom/cashwalk/cashwalk/activity/LottoAdActivity$2;->this$0:Lcom/cashwalk/cashwalk/activity/LottoAdActivity;

    invoke-static {v0}, Lcom/cashwalk/cashwalk/activity/LottoAdActivity;->access$400(Lcom/cashwalk/cashwalk/activity/LottoAdActivity;)V

    .line 256
    return-void
.end method
