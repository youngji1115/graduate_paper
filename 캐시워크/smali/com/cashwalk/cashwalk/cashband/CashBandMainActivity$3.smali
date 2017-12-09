.class Lcom/cashwalk/cashwalk/cashband/CashBandMainActivity$3;
.super Ljava/lang/Object;
.source "CashBandMainActivity.java"

# interfaces
.implements Lcom/cashwalk/cashwalk/cashband/util/BluetoothConnectionManager$OnConnectionFinishListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cashwalk/cashwalk/cashband/CashBandMainActivity;->bluetoothConnect(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cashwalk/cashwalk/cashband/CashBandMainActivity;

.field final synthetic val$isRefresh:Z


# direct methods
.method constructor <init>(Lcom/cashwalk/cashwalk/cashband/CashBandMainActivity;Z)V
    .locals 0
    .param p1, "this$0"    # Lcom/cashwalk/cashwalk/cashband/CashBandMainActivity;

    .prologue
    .line 209
    iput-object p1, p0, Lcom/cashwalk/cashwalk/cashband/CashBandMainActivity$3;->this$0:Lcom/cashwalk/cashwalk/cashband/CashBandMainActivity;

    iput-boolean p2, p0, Lcom/cashwalk/cashwalk/cashband/CashBandMainActivity$3;->val$isRefresh:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailed(I)V
    .locals 4
    .param p1, "err"    # I

    .prologue
    const/16 v1, 0x8

    const/4 v3, 0x0

    .line 258
    iget-object v0, p0, Lcom/cashwalk/cashwalk/cashband/CashBandMainActivity$3;->this$0:Lcom/cashwalk/cashwalk/cashband/CashBandMainActivity;

    invoke-static {v0}, Lcom/cashwalk/cashwalk/cashband/CashBandMainActivity;->access$1200(Lcom/cashwalk/cashwalk/cashband/CashBandMainActivity;)V

    .line 259
    iget-object v0, p0, Lcom/cashwalk/cashwalk/cashband/CashBandMainActivity$3;->this$0:Lcom/cashwalk/cashwalk/cashband/CashBandMainActivity;

    invoke-static {v0}, Lcom/cashwalk/cashwalk/cashband/CashBandMainActivity;->access$1000(Lcom/cashwalk/cashwalk/cashband/CashBandMainActivity;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 260
    iget-object v0, p0, Lcom/cashwalk/cashwalk/cashband/CashBandMainActivity$3;->this$0:Lcom/cashwalk/cashwalk/cashband/CashBandMainActivity;

    invoke-static {v0}, Lcom/cashwalk/cashwalk/cashband/CashBandMainActivity;->access$1100(Lcom/cashwalk/cashwalk/cashband/CashBandMainActivity;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 261
    iget-object v0, p0, Lcom/cashwalk/cashwalk/cashband/CashBandMainActivity$3;->this$0:Lcom/cashwalk/cashwalk/cashband/CashBandMainActivity;

    invoke-static {v0}, Lcom/cashwalk/cashwalk/cashband/CashBandMainActivity;->access$1300(Lcom/cashwalk/cashwalk/cashband/CashBandMainActivity;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 262
    iget-object v0, p0, Lcom/cashwalk/cashwalk/cashband/CashBandMainActivity$3;->this$0:Lcom/cashwalk/cashwalk/cashband/CashBandMainActivity;

    invoke-static {v0}, Lcom/cashwalk/cashwalk/cashband/CashBandMainActivity;->access$1400(Lcom/cashwalk/cashwalk/cashband/CashBandMainActivity;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 264
    const/16 v0, -0x3e8

    if-ne p1, v0, :cond_0

    .line 265
    iget-object v0, p0, Lcom/cashwalk/cashwalk/cashband/CashBandMainActivity$3;->this$0:Lcom/cashwalk/cashwalk/cashband/CashBandMainActivity;

    invoke-static {v0}, Lcom/cashwalk/cashwalk/cashband/CashBandMainActivity;->access$1500(Lcom/cashwalk/cashwalk/cashband/CashBandMainActivity;)V

    .line 274
    :goto_0
    return-void

    .line 266
    :cond_0
    const/16 v0, -0x3e9

    if-ne p1, v0, :cond_1

    .line 267
    iget-object v0, p0, Lcom/cashwalk/cashwalk/cashband/CashBandMainActivity$3;->this$0:Lcom/cashwalk/cashwalk/cashband/CashBandMainActivity;

    iget-object v1, p0, Lcom/cashwalk/cashwalk/cashband/CashBandMainActivity$3;->this$0:Lcom/cashwalk/cashwalk/cashband/CashBandMainActivity;

    invoke-virtual {v1}, Lcom/cashwalk/cashwalk/cashband/CashBandMainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090111

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 268
    :cond_1
    const/16 v0, -0x3ea

    if-ne p1, v0, :cond_2

    .line 269
    iget-object v0, p0, Lcom/cashwalk/cashwalk/cashband/CashBandMainActivity$3;->this$0:Lcom/cashwalk/cashwalk/cashband/CashBandMainActivity;

    const-string/jumbo v1, "\ub514\ubc14\uc774\uc2a4\ub97c \ucc3e\uc9c0 \ubabb\ud558\uc600\uc2b5\ub2c8\ub2e4."

    invoke-static {v0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 271
    :cond_2
    iget-object v0, p0, Lcom/cashwalk/cashwalk/cashband/CashBandMainActivity$3;->this$0:Lcom/cashwalk/cashwalk/cashband/CashBandMainActivity;

    const-string/jumbo v1, "\ub514\ubc14\uc774\uc2a4\uc640\uc758 \uc5f0\uacb0\uc774 \ubd88\uc548\uc815\ud569\ub2c8\ub2e4."

    invoke-static {v0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method public onSuccess(Lcom/cashwalk/cashwalk/cashband/util/CashBandManager;)V
    .locals 3
    .param p1, "cashBandManager"    # Lcom/cashwalk/cashwalk/cashband/util/CashBandManager;

    .prologue
    const/4 v2, 0x0

    .line 212
    iget-object v0, p0, Lcom/cashwalk/cashwalk/cashband/CashBandMainActivity$3;->this$0:Lcom/cashwalk/cashwalk/cashband/CashBandMainActivity;

    invoke-static {v0, p1}, Lcom/cashwalk/cashwalk/cashband/CashBandMainActivity;->access$202(Lcom/cashwalk/cashwalk/cashband/CashBandMainActivity;Lcom/cashwalk/cashwalk/cashband/util/CashBandManager;)Lcom/cashwalk/cashwalk/cashband/util/CashBandManager;

    .line 214
    iget-object v0, p0, Lcom/cashwalk/cashwalk/cashband/CashBandMainActivity$3;->this$0:Lcom/cashwalk/cashwalk/cashband/CashBandMainActivity;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/cashwalk/cashwalk/cashband/CashBandMainActivity;->access$300(Lcom/cashwalk/cashwalk/cashband/CashBandMainActivity;Z)V

    .line 215
    iget-object v0, p0, Lcom/cashwalk/cashwalk/cashband/CashBandMainActivity$3;->this$0:Lcom/cashwalk/cashwalk/cashband/CashBandMainActivity;

    invoke-static {v0}, Lcom/cashwalk/cashwalk/cashband/CashBandMainActivity;->access$400(Lcom/cashwalk/cashwalk/cashband/CashBandMainActivity;)V

    .line 216
    invoke-virtual {p1}, Lcom/cashwalk/cashwalk/cashband/util/CashBandManager;->getBandTimeSync()V

    .line 217
    invoke-virtual {p1}, Lcom/cashwalk/cashwalk/cashband/util/CashBandManager;->setWeather()V

    .line 218
    invoke-virtual {p1}, Lcom/cashwalk/cashwalk/cashband/util/CashBandManager;->setBandDisplayInfo()V

    .line 221
    new-instance v0, Lcom/cashwalk/cashwalk/cashband/CashBandMainActivity$3$1;

    invoke-direct {v0, p0}, Lcom/cashwalk/cashwalk/cashband/CashBandMainActivity$3$1;-><init>(Lcom/cashwalk/cashwalk/cashband/CashBandMainActivity$3;)V

    invoke-virtual {p1, v0}, Lcom/cashwalk/cashwalk/cashband/util/CashBandManager;->getHeartData(Lcom/cashwalk/cashwalk/cashband/util/CashBandManager$OnRefreshFinishListener;)V

    .line 228
    iget-object v0, p0, Lcom/cashwalk/cashwalk/cashband/CashBandMainActivity$3;->this$0:Lcom/cashwalk/cashwalk/cashband/CashBandMainActivity;

    invoke-static {v0}, Lcom/cashwalk/cashwalk/cashband/CashBandMainActivity;->access$100(Lcom/cashwalk/cashwalk/cashband/CashBandMainActivity;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 229
    new-instance v0, Lcom/cashwalk/cashwalk/cashband/CashBandMainActivity$3$2;

    invoke-direct {v0, p0}, Lcom/cashwalk/cashwalk/cashband/CashBandMainActivity$3$2;-><init>(Lcom/cashwalk/cashwalk/cashband/CashBandMainActivity$3;)V

    invoke-virtual {p1, v0}, Lcom/cashwalk/cashwalk/cashband/util/CashBandManager;->get3BVersion(Lcom/cashwalk/cashwalk/cashband/util/CashBandManager$OnRefreshFinishListener;)V

    .line 237
    :cond_0
    iget-object v0, p0, Lcom/cashwalk/cashwalk/cashband/CashBandMainActivity$3;->this$0:Lcom/cashwalk/cashwalk/cashband/CashBandMainActivity;

    invoke-static {v0}, Lcom/cashwalk/cashwalk/cashband/CashBandMainActivity;->access$500(Lcom/cashwalk/cashwalk/cashband/CashBandMainActivity;)V

    .line 238
    iget-object v0, p0, Lcom/cashwalk/cashwalk/cashband/CashBandMainActivity$3;->this$0:Lcom/cashwalk/cashwalk/cashband/CashBandMainActivity;

    invoke-static {v0}, Lcom/cashwalk/cashwalk/cashband/CashBandMainActivity;->access$600(Lcom/cashwalk/cashwalk/cashband/CashBandMainActivity;)V

    .line 240
    iget-object v0, p0, Lcom/cashwalk/cashwalk/cashband/CashBandMainActivity$3;->this$0:Lcom/cashwalk/cashwalk/cashband/CashBandMainActivity;

    invoke-static {v0}, Lcom/cashwalk/cashwalk/cashband/CashBandMainActivity;->access$700(Lcom/cashwalk/cashwalk/cashband/CashBandMainActivity;)V

    .line 241
    iget-object v0, p0, Lcom/cashwalk/cashwalk/cashband/CashBandMainActivity$3;->this$0:Lcom/cashwalk/cashwalk/cashband/CashBandMainActivity;

    invoke-static {v0}, Lcom/cashwalk/cashwalk/cashband/CashBandMainActivity;->access$800(Lcom/cashwalk/cashwalk/cashband/CashBandMainActivity;)V

    .line 243
    invoke-static {}, Lcom/cashwalk/cashwalk/util/Utils;->isDebug()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 244
    iget-object v0, p0, Lcom/cashwalk/cashwalk/cashband/CashBandMainActivity$3;->this$0:Lcom/cashwalk/cashwalk/cashband/CashBandMainActivity;

    invoke-static {v0}, Lcom/cashwalk/cashwalk/cashband/CashBandMainActivity;->access$900(Lcom/cashwalk/cashwalk/cashband/CashBandMainActivity;)V

    .line 248
    :cond_1
    iget-boolean v0, p0, Lcom/cashwalk/cashwalk/cashband/CashBandMainActivity$3;->val$isRefresh:Z

    if-eqz v0, :cond_2

    .line 249
    iget-object v0, p0, Lcom/cashwalk/cashwalk/cashband/CashBandMainActivity$3;->this$0:Lcom/cashwalk/cashwalk/cashband/CashBandMainActivity;

    const-string/jumbo v1, "\uc0c8\ub85c\uace0\uce68 \ub418\uc5c8\uc2b5\ub2c8\ub2e4."

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 252
    :cond_2
    iget-object v0, p0, Lcom/cashwalk/cashwalk/cashband/CashBandMainActivity$3;->this$0:Lcom/cashwalk/cashwalk/cashband/CashBandMainActivity;

    invoke-static {v0}, Lcom/cashwalk/cashwalk/cashband/CashBandMainActivity;->access$1000(Lcom/cashwalk/cashwalk/cashband/CashBandMainActivity;)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 253
    iget-object v0, p0, Lcom/cashwalk/cashwalk/cashband/CashBandMainActivity$3;->this$0:Lcom/cashwalk/cashwalk/cashband/CashBandMainActivity;

    invoke-static {v0}, Lcom/cashwalk/cashwalk/cashband/CashBandMainActivity;->access$1100(Lcom/cashwalk/cashwalk/cashband/CashBandMainActivity;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 254
    return-void
.end method
