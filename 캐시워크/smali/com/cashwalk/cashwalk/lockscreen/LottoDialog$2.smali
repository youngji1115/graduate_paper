.class Lcom/cashwalk/cashwalk/lockscreen/LottoDialog$2;
.super Ljava/lang/Object;
.source "LottoDialog.java"

# interfaces
.implements Lcom/cooltechworks/views/ScratchImageView$IRevealListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cashwalk/cashwalk/lockscreen/LottoDialog;-><init>(Landroid/content/Context;Lcom/cashwalk/cashwalk/util/network/model/Lotto;Ljava/lang/String;Landroid/os/Handler;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cashwalk/cashwalk/lockscreen/LottoDialog;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$handler:Landroid/os/Handler;


# direct methods
.method constructor <init>(Lcom/cashwalk/cashwalk/lockscreen/LottoDialog;Landroid/content/Context;Landroid/os/Handler;)V
    .locals 0
    .param p1, "this$0"    # Lcom/cashwalk/cashwalk/lockscreen/LottoDialog;

    .prologue
    .line 183
    iput-object p1, p0, Lcom/cashwalk/cashwalk/lockscreen/LottoDialog$2;->this$0:Lcom/cashwalk/cashwalk/lockscreen/LottoDialog;

    iput-object p2, p0, Lcom/cashwalk/cashwalk/lockscreen/LottoDialog$2;->val$context:Landroid/content/Context;

    iput-object p3, p0, Lcom/cashwalk/cashwalk/lockscreen/LottoDialog$2;->val$handler:Landroid/os/Handler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onRevealPercentChangedListener(Lcom/cooltechworks/views/ScratchImageView;F)V
    .locals 2
    .param p1, "scratchImageView"    # Lcom/cooltechworks/views/ScratchImageView;
    .param p2, "v"    # F

    .prologue
    .line 226
    iget-object v0, p0, Lcom/cashwalk/cashwalk/lockscreen/LottoDialog$2;->this$0:Lcom/cashwalk/cashwalk/lockscreen/LottoDialog;

    invoke-static {v0}, Lcom/cashwalk/cashwalk/lockscreen/LottoDialog;->access$800(Lcom/cashwalk/cashwalk/lockscreen/LottoDialog;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 227
    iget-object v0, p0, Lcom/cashwalk/cashwalk/lockscreen/LottoDialog$2;->this$0:Lcom/cashwalk/cashwalk/lockscreen/LottoDialog;

    invoke-static {v0}, Lcom/cashwalk/cashwalk/lockscreen/LottoDialog;->access$900(Lcom/cashwalk/cashwalk/lockscreen/LottoDialog;)Landroid/widget/FrameLayout;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 228
    iget-object v0, p0, Lcom/cashwalk/cashwalk/lockscreen/LottoDialog$2;->this$0:Lcom/cashwalk/cashwalk/lockscreen/LottoDialog;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/cashwalk/cashwalk/lockscreen/LottoDialog;->access$802(Lcom/cashwalk/cashwalk/lockscreen/LottoDialog;Z)Z

    .line 230
    :cond_0
    const v0, 0x3f333333    # 0.7f

    cmpl-float v0, p2, v0

    if-lez v0, :cond_1

    .line 231
    iget-object v0, p0, Lcom/cashwalk/cashwalk/lockscreen/LottoDialog$2;->this$0:Lcom/cashwalk/cashwalk/lockscreen/LottoDialog;

    invoke-static {v0}, Lcom/cashwalk/cashwalk/lockscreen/LottoDialog;->access$100(Lcom/cashwalk/cashwalk/lockscreen/LottoDialog;)Lcom/cooltechworks/views/ScratchImageView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cooltechworks/views/ScratchImageView;->reveal()V

    .line 233
    :cond_1
    return-void
.end method

.method public onRevealed(Lcom/cooltechworks/views/ScratchImageView;)V
    .locals 7
    .param p1, "scratchImageView"    # Lcom/cooltechworks/views/ScratchImageView;

    .prologue
    const/4 v6, 0x0

    .line 186
    iget-object v3, p0, Lcom/cashwalk/cashwalk/lockscreen/LottoDialog$2;->this$0:Lcom/cashwalk/cashwalk/lockscreen/LottoDialog;

    invoke-static {v3}, Lcom/cashwalk/cashwalk/lockscreen/LottoDialog;->access$400(Lcom/cashwalk/cashwalk/lockscreen/LottoDialog;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 187
    iget-object v3, p0, Lcom/cashwalk/cashwalk/lockscreen/LottoDialog$2;->this$0:Lcom/cashwalk/cashwalk/lockscreen/LottoDialog;

    invoke-virtual {v3}, Lcom/cashwalk/cashwalk/lockscreen/LottoDialog;->getWindow()Landroid/view/Window;

    move-result-object v3

    const v4, 0x7f020300

    invoke-virtual {v3, v4}, Landroid/view/Window;->setBackgroundDrawableResource(I)V

    .line 188
    iget-object v3, p0, Lcom/cashwalk/cashwalk/lockscreen/LottoDialog$2;->this$0:Lcom/cashwalk/cashwalk/lockscreen/LottoDialog;

    invoke-static {v3}, Lcom/cashwalk/cashwalk/lockscreen/LottoDialog;->access$500(Lcom/cashwalk/cashwalk/lockscreen/LottoDialog;)Landroid/widget/ImageView;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 189
    iget-object v3, p0, Lcom/cashwalk/cashwalk/lockscreen/LottoDialog$2;->this$0:Lcom/cashwalk/cashwalk/lockscreen/LottoDialog;

    invoke-static {v3}, Lcom/cashwalk/cashwalk/lockscreen/LottoDialog;->access$600(Lcom/cashwalk/cashwalk/lockscreen/LottoDialog;)Landroid/widget/Button;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/widget/Button;->setVisibility(I)V

    .line 190
    iget-object v3, p0, Lcom/cashwalk/cashwalk/lockscreen/LottoDialog$2;->this$0:Lcom/cashwalk/cashwalk/lockscreen/LottoDialog;

    invoke-static {v3}, Lcom/cashwalk/cashwalk/lockscreen/LottoDialog;->access$600(Lcom/cashwalk/cashwalk/lockscreen/LottoDialog;)Landroid/widget/Button;

    move-result-object v3

    iget-object v4, p0, Lcom/cashwalk/cashwalk/lockscreen/LottoDialog$2;->val$context:Landroid/content/Context;

    const v5, 0x7f0901e8

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 191
    iget-object v3, p0, Lcom/cashwalk/cashwalk/lockscreen/LottoDialog$2;->this$0:Lcom/cashwalk/cashwalk/lockscreen/LottoDialog;

    invoke-static {v3}, Lcom/cashwalk/cashwalk/lockscreen/LottoDialog;->access$600(Lcom/cashwalk/cashwalk/lockscreen/LottoDialog;)Landroid/widget/Button;

    move-result-object v3

    new-instance v4, Lcom/cashwalk/cashwalk/lockscreen/LottoDialog$2$1;

    invoke-direct {v4, p0}, Lcom/cashwalk/cashwalk/lockscreen/LottoDialog$2$1;-><init>(Lcom/cashwalk/cashwalk/lockscreen/LottoDialog$2;)V

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 199
    iget-object v4, p0, Lcom/cashwalk/cashwalk/lockscreen/LottoDialog$2;->this$0:Lcom/cashwalk/cashwalk/lockscreen/LottoDialog;

    iget-object v3, p0, Lcom/cashwalk/cashwalk/lockscreen/LottoDialog$2;->this$0:Lcom/cashwalk/cashwalk/lockscreen/LottoDialog;

    const v5, 0x7f100361

    invoke-virtual {v3, v5}, Lcom/cashwalk/cashwalk/lockscreen/LottoDialog;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/felipecsl/gifimageview/library/GifImageView;

    invoke-static {v4, v3}, Lcom/cashwalk/cashwalk/lockscreen/LottoDialog;->access$702(Lcom/cashwalk/cashwalk/lockscreen/LottoDialog;Lcom/felipecsl/gifimageview/library/GifImageView;)Lcom/felipecsl/gifimageview/library/GifImageView;

    .line 200
    iget-object v3, p0, Lcom/cashwalk/cashwalk/lockscreen/LottoDialog$2;->this$0:Lcom/cashwalk/cashwalk/lockscreen/LottoDialog;

    invoke-static {v3}, Lcom/cashwalk/cashwalk/lockscreen/LottoDialog;->access$700(Lcom/cashwalk/cashwalk/lockscreen/LottoDialog;)Lcom/felipecsl/gifimageview/library/GifImageView;

    move-result-object v3

    invoke-virtual {v3, v6}, Lcom/felipecsl/gifimageview/library/GifImageView;->setVisibility(I)V

    .line 202
    :try_start_0
    iget-object v3, p0, Lcom/cashwalk/cashwalk/lockscreen/LottoDialog$2;->this$0:Lcom/cashwalk/cashwalk/lockscreen/LottoDialog;

    invoke-virtual {v3}, Lcom/cashwalk/cashwalk/lockscreen/LottoDialog;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v3

    const-string v4, "bg_lottery.gif"

    invoke-virtual {v3, v4}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v2

    .line 203
    .local v2, "is":Ljava/io/InputStream;
    invoke-virtual {v2}, Ljava/io/InputStream;->available()I

    move-result v3

    new-array v0, v3, [B

    .line 204
    .local v0, "bytes":[B
    invoke-virtual {v2, v0}, Ljava/io/InputStream;->read([B)I

    .line 205
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    .line 206
    iget-object v3, p0, Lcom/cashwalk/cashwalk/lockscreen/LottoDialog$2;->this$0:Lcom/cashwalk/cashwalk/lockscreen/LottoDialog;

    invoke-static {v3}, Lcom/cashwalk/cashwalk/lockscreen/LottoDialog;->access$700(Lcom/cashwalk/cashwalk/lockscreen/LottoDialog;)Lcom/felipecsl/gifimageview/library/GifImageView;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/felipecsl/gifimageview/library/GifImageView;->setBytes([B)V

    .line 207
    iget-object v3, p0, Lcom/cashwalk/cashwalk/lockscreen/LottoDialog$2;->this$0:Lcom/cashwalk/cashwalk/lockscreen/LottoDialog;

    invoke-static {v3}, Lcom/cashwalk/cashwalk/lockscreen/LottoDialog;->access$700(Lcom/cashwalk/cashwalk/lockscreen/LottoDialog;)Lcom/felipecsl/gifimageview/library/GifImageView;

    move-result-object v3

    invoke-virtual {v3}, Lcom/felipecsl/gifimageview/library/GifImageView;->startAnimation()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 222
    .end local v0    # "bytes":[B
    .end local v2    # "is":Ljava/io/InputStream;
    :goto_0
    return-void

    .line 208
    :catch_0
    move-exception v1

    .line 209
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 212
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_0
    iget-object v3, p0, Lcom/cashwalk/cashwalk/lockscreen/LottoDialog$2;->this$0:Lcom/cashwalk/cashwalk/lockscreen/LottoDialog;

    invoke-static {v3}, Lcom/cashwalk/cashwalk/lockscreen/LottoDialog;->access$600(Lcom/cashwalk/cashwalk/lockscreen/LottoDialog;)Landroid/widget/Button;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/widget/Button;->setVisibility(I)V

    .line 213
    iget-object v3, p0, Lcom/cashwalk/cashwalk/lockscreen/LottoDialog$2;->this$0:Lcom/cashwalk/cashwalk/lockscreen/LottoDialog;

    invoke-static {v3}, Lcom/cashwalk/cashwalk/lockscreen/LottoDialog;->access$600(Lcom/cashwalk/cashwalk/lockscreen/LottoDialog;)Landroid/widget/Button;

    move-result-object v3

    iget-object v4, p0, Lcom/cashwalk/cashwalk/lockscreen/LottoDialog$2;->val$context:Landroid/content/Context;

    const v5, 0x7f0901ec

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 214
    iget-object v3, p0, Lcom/cashwalk/cashwalk/lockscreen/LottoDialog$2;->this$0:Lcom/cashwalk/cashwalk/lockscreen/LottoDialog;

    invoke-static {v3}, Lcom/cashwalk/cashwalk/lockscreen/LottoDialog;->access$600(Lcom/cashwalk/cashwalk/lockscreen/LottoDialog;)Landroid/widget/Button;

    move-result-object v3

    new-instance v4, Lcom/cashwalk/cashwalk/lockscreen/LottoDialog$2$2;

    invoke-direct {v4, p0}, Lcom/cashwalk/cashwalk/lockscreen/LottoDialog$2$2;-><init>(Lcom/cashwalk/cashwalk/lockscreen/LottoDialog$2;)V

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0
.end method
