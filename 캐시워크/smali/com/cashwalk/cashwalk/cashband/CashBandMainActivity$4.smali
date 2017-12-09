.class Lcom/cashwalk/cashwalk/cashband/CashBandMainActivity$4;
.super Ljava/lang/Object;
.source "CashBandMainActivity.java"

# interfaces
.implements Lcom/cashwalk/cashwalk/cashband/util/CashBandManager$OnRefreshFinishListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cashwalk/cashwalk/cashband/CashBandMainActivity;->setDeviceInfo(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cashwalk/cashwalk/cashband/CashBandMainActivity;


# direct methods
.method constructor <init>(Lcom/cashwalk/cashwalk/cashband/CashBandMainActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/cashwalk/cashwalk/cashband/CashBandMainActivity;

    .prologue
    .line 287
    iput-object p1, p0, Lcom/cashwalk/cashwalk/cashband/CashBandMainActivity$4;->this$0:Lcom/cashwalk/cashwalk/cashband/CashBandMainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSuccess(Lcom/cashwalk/cashwalk/model/BandInfo;)V
    .locals 4
    .param p1, "result"    # Lcom/cashwalk/cashwalk/model/BandInfo;

    .prologue
    const/4 v2, 0x0

    .line 290
    iget-object v1, p1, Lcom/cashwalk/cashwalk/model/BandInfo;->battery:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 291
    .local v0, "battery":I
    iget-object v1, p0, Lcom/cashwalk/cashwalk/cashband/CashBandMainActivity$4;->this$0:Lcom/cashwalk/cashwalk/cashband/CashBandMainActivity;

    invoke-static {v1}, Lcom/cashwalk/cashwalk/cashband/CashBandMainActivity;->access$1300(Lcom/cashwalk/cashwalk/cashband/CashBandMainActivity;)Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 292
    iget-object v1, p0, Lcom/cashwalk/cashwalk/cashband/CashBandMainActivity$4;->this$0:Lcom/cashwalk/cashwalk/cashband/CashBandMainActivity;

    invoke-static {v1}, Lcom/cashwalk/cashwalk/cashband/CashBandMainActivity;->access$1400(Lcom/cashwalk/cashwalk/cashband/CashBandMainActivity;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 294
    const/16 v1, 0x21

    if-ge v0, v1, :cond_0

    .line 295
    iget-object v1, p0, Lcom/cashwalk/cashwalk/cashband/CashBandMainActivity$4;->this$0:Lcom/cashwalk/cashwalk/cashband/CashBandMainActivity;

    invoke-static {v1}, Lcom/cashwalk/cashwalk/cashband/CashBandMainActivity;->access$1300(Lcom/cashwalk/cashwalk/cashband/CashBandMainActivity;)Landroid/widget/ImageView;

    move-result-object v1

    const v2, 0x7f0201e9

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 302
    :goto_0
    iget-object v1, p0, Lcom/cashwalk/cashwalk/cashband/CashBandMainActivity$4;->this$0:Lcom/cashwalk/cashwalk/cashband/CashBandMainActivity;

    invoke-static {v1}, Lcom/cashwalk/cashwalk/cashband/CashBandMainActivity;->access$1400(Lcom/cashwalk/cashwalk/cashband/CashBandMainActivity;)Landroid/widget/TextView;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "%"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 303
    return-void

    .line 296
    :cond_0
    const/16 v1, 0x42

    if-ge v0, v1, :cond_1

    .line 297
    iget-object v1, p0, Lcom/cashwalk/cashwalk/cashband/CashBandMainActivity$4;->this$0:Lcom/cashwalk/cashwalk/cashband/CashBandMainActivity;

    invoke-static {v1}, Lcom/cashwalk/cashwalk/cashband/CashBandMainActivity;->access$1300(Lcom/cashwalk/cashwalk/cashband/CashBandMainActivity;)Landroid/widget/ImageView;

    move-result-object v1

    const v2, 0x7f0201eb

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 299
    :cond_1
    iget-object v1, p0, Lcom/cashwalk/cashwalk/cashband/CashBandMainActivity$4;->this$0:Lcom/cashwalk/cashwalk/cashband/CashBandMainActivity;

    invoke-static {v1}, Lcom/cashwalk/cashwalk/cashband/CashBandMainActivity;->access$1300(Lcom/cashwalk/cashwalk/cashband/CashBandMainActivity;)Landroid/widget/ImageView;

    move-result-object v1

    const v2, 0x7f0201ea

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0
.end method
