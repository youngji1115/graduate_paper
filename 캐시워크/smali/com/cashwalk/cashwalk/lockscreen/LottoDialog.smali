.class public Lcom/cashwalk/cashwalk/lockscreen/LottoDialog;
.super Landroid/app/Dialog;
.source "LottoDialog.java"


# instance fields
.field private coupon:Landroid/widget/Button;

.field private cover:Landroid/widget/FrameLayout;

.field private description:Landroid/widget/TextView;

.field private dirty:Z

.field private pref:Landroid/content/SharedPreferences;

.field private scratchView:Lcom/cooltechworks/views/ScratchImageView;

.field private setFreeType:Ljava/lang/String;

.field private weatherFilter:Lcom/felipecsl/gifimageview/library/GifImageView;

.field private win:Z

.field private winImg:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/cashwalk/cashwalk/util/network/model/Lotto;Ljava/lang/String;Landroid/os/Handler;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "lotto"    # Lcom/cashwalk/cashwalk/util/network/model/Lotto;
    .param p3, "isFreeType"    # Ljava/lang/String;
    .param p4, "handler"    # Landroid/os/Handler;

    .prologue
    const/4 v5, 0x0

    .line 52
    invoke-direct {p0, p1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    .line 45
    iput-boolean v5, p0, Lcom/cashwalk/cashwalk/lockscreen/LottoDialog;->dirty:Z

    .line 46
    iput-boolean v5, p0, Lcom/cashwalk/cashwalk/lockscreen/LottoDialog;->win:Z

    .line 47
    const-string v2, ""

    iput-object v2, p0, Lcom/cashwalk/cashwalk/lockscreen/LottoDialog;->setFreeType:Ljava/lang/String;

    .line 54
    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lcom/cashwalk/cashwalk/lockscreen/LottoDialog;->requestWindowFeature(I)Z

    .line 55
    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v0}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    .line 56
    .local v0, "lpWindow":Landroid/view/WindowManager$LayoutParams;
    const/4 v2, 0x2

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 57
    const v2, 0x3f4ccccd    # 0.8f

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->dimAmount:F

    .line 58
    invoke-virtual {p0}, Lcom/cashwalk/cashwalk/lockscreen/LottoDialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 60
    const v2, 0x7f04007d

    invoke-virtual {p0, v2}, Lcom/cashwalk/cashwalk/lockscreen/LottoDialog;->setContentView(I)V

    .line 62
    invoke-static {p1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    iput-object v2, p0, Lcom/cashwalk/cashwalk/lockscreen/LottoDialog;->pref:Landroid/content/SharedPreferences;

    .line 64
    if-eqz p3, :cond_0

    .line 65
    iput-object p3, p0, Lcom/cashwalk/cashwalk/lockscreen/LottoDialog;->setFreeType:Ljava/lang/String;

    .line 68
    :cond_0
    iget-object v2, p2, Lcom/cashwalk/cashwalk/util/network/model/Lotto;->id:Ljava/lang/String;

    iget-object v3, p0, Lcom/cashwalk/cashwalk/lockscreen/LottoDialog;->setFreeType:Ljava/lang/String;

    new-instance v4, Lcom/cashwalk/cashwalk/lockscreen/LottoDialog$1;

    invoke-direct {v4, p0, p1, p2}, Lcom/cashwalk/cashwalk/lockscreen/LottoDialog$1;-><init>(Lcom/cashwalk/cashwalk/lockscreen/LottoDialog;Landroid/content/Context;Lcom/cashwalk/cashwalk/util/network/model/Lotto;)V

    invoke-static {v2, v3, v4}, Lcom/cashwalk/cashwalk/util/network/RestClient;->getLottoResult(Ljava/lang/String;Ljava/lang/String;Lcom/cashwalk/cashwalk/util/network/ResponseHandler;)Lcom/android/volley/toolbox/JsonObjectRequest;

    move-result-object v1

    .line 166
    .local v1, "request":Lcom/android/volley/toolbox/JsonObjectRequest;
    new-instance v2, Lcom/android/volley/DefaultRetryPolicy;

    const/16 v3, 0x4e20

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-direct {v2, v3, v5, v4}, Lcom/android/volley/DefaultRetryPolicy;-><init>(IIF)V

    invoke-virtual {v1, v2}, Lcom/android/volley/toolbox/JsonObjectRequest;->setRetryPolicy(Lcom/android/volley/RetryPolicy;)Lcom/android/volley/Request;

    .line 170
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    check-cast v2, Lcom/cashwalk/cashwalk/CashWalkApp;

    invoke-virtual {v2}, Lcom/cashwalk/cashwalk/CashWalkApp;->requestQueue()Lcom/android/volley/RequestQueue;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/android/volley/RequestQueue;->add(Lcom/android/volley/Request;)Lcom/android/volley/Request;

    .line 173
    const v2, 0x7f100203

    invoke-virtual {p0, v2}, Lcom/cashwalk/cashwalk/lockscreen/LottoDialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/FrameLayout;

    iput-object v2, p0, Lcom/cashwalk/cashwalk/lockscreen/LottoDialog;->cover:Landroid/widget/FrameLayout;

    .line 174
    const v2, 0x7f10027c

    invoke-virtual {p0, v2}, Lcom/cashwalk/cashwalk/lockscreen/LottoDialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/cashwalk/cashwalk/lockscreen/LottoDialog;->description:Landroid/widget/TextView;

    .line 175
    const v2, 0x7f100360

    invoke-virtual {p0, v2}, Lcom/cashwalk/cashwalk/lockscreen/LottoDialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/cooltechworks/views/ScratchImageView;

    iput-object v2, p0, Lcom/cashwalk/cashwalk/lockscreen/LottoDialog;->scratchView:Lcom/cooltechworks/views/ScratchImageView;

    .line 176
    const v2, 0x7f10035f

    invoke-virtual {p0, v2}, Lcom/cashwalk/cashwalk/lockscreen/LottoDialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/cashwalk/cashwalk/lockscreen/LottoDialog;->winImg:Landroid/widget/ImageView;

    .line 177
    const v2, 0x7f100206

    invoke-virtual {p0, v2}, Lcom/cashwalk/cashwalk/lockscreen/LottoDialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/cashwalk/cashwalk/lockscreen/LottoDialog;->coupon:Landroid/widget/Button;

    .line 179
    iget-object v2, p0, Lcom/cashwalk/cashwalk/lockscreen/LottoDialog;->description:Landroid/widget/TextView;

    const v3, 0x7f0901ef

    invoke-virtual {p1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 181
    iget-object v2, p0, Lcom/cashwalk/cashwalk/lockscreen/LottoDialog;->scratchView:Lcom/cooltechworks/views/ScratchImageView;

    invoke-virtual {v2, v5}, Lcom/cooltechworks/views/ScratchImageView;->setEnabled(Z)V

    .line 182
    iget-object v2, p0, Lcom/cashwalk/cashwalk/lockscreen/LottoDialog;->scratchView:Lcom/cooltechworks/views/ScratchImageView;

    const/16 v3, 0x14

    invoke-virtual {v2, v3}, Lcom/cooltechworks/views/ScratchImageView;->setStrokeWidth(I)V

    .line 183
    iget-object v2, p0, Lcom/cashwalk/cashwalk/lockscreen/LottoDialog;->scratchView:Lcom/cooltechworks/views/ScratchImageView;

    new-instance v3, Lcom/cashwalk/cashwalk/lockscreen/LottoDialog$2;

    invoke-direct {v3, p0, p1, p4}, Lcom/cashwalk/cashwalk/lockscreen/LottoDialog$2;-><init>(Lcom/cashwalk/cashwalk/lockscreen/LottoDialog;Landroid/content/Context;Landroid/os/Handler;)V

    invoke-virtual {v2, v3}, Lcom/cooltechworks/views/ScratchImageView;->setRevealListener(Lcom/cooltechworks/views/ScratchImageView$IRevealListener;)V

    .line 235
    return-void
.end method

.method static synthetic access$000(Lcom/cashwalk/cashwalk/lockscreen/LottoDialog;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/cashwalk/cashwalk/lockscreen/LottoDialog;

    .prologue
    .line 35
    iget-object v0, p0, Lcom/cashwalk/cashwalk/lockscreen/LottoDialog;->description:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$100(Lcom/cashwalk/cashwalk/lockscreen/LottoDialog;)Lcom/cooltechworks/views/ScratchImageView;
    .locals 1
    .param p0, "x0"    # Lcom/cashwalk/cashwalk/lockscreen/LottoDialog;

    .prologue
    .line 35
    iget-object v0, p0, Lcom/cashwalk/cashwalk/lockscreen/LottoDialog;->scratchView:Lcom/cooltechworks/views/ScratchImageView;

    return-object v0
.end method

.method static synthetic access$200(Lcom/cashwalk/cashwalk/lockscreen/LottoDialog;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/cashwalk/cashwalk/lockscreen/LottoDialog;

    .prologue
    .line 35
    iget-object v0, p0, Lcom/cashwalk/cashwalk/lockscreen/LottoDialog;->setFreeType:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Lcom/cashwalk/cashwalk/lockscreen/LottoDialog;)Landroid/content/SharedPreferences;
    .locals 1
    .param p0, "x0"    # Lcom/cashwalk/cashwalk/lockscreen/LottoDialog;

    .prologue
    .line 35
    iget-object v0, p0, Lcom/cashwalk/cashwalk/lockscreen/LottoDialog;->pref:Landroid/content/SharedPreferences;

    return-object v0
.end method

.method static synthetic access$400(Lcom/cashwalk/cashwalk/lockscreen/LottoDialog;)Z
    .locals 1
    .param p0, "x0"    # Lcom/cashwalk/cashwalk/lockscreen/LottoDialog;

    .prologue
    .line 35
    iget-boolean v0, p0, Lcom/cashwalk/cashwalk/lockscreen/LottoDialog;->win:Z

    return v0
.end method

.method static synthetic access$402(Lcom/cashwalk/cashwalk/lockscreen/LottoDialog;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/cashwalk/cashwalk/lockscreen/LottoDialog;
    .param p1, "x1"    # Z

    .prologue
    .line 35
    iput-boolean p1, p0, Lcom/cashwalk/cashwalk/lockscreen/LottoDialog;->win:Z

    return p1
.end method

.method static synthetic access$500(Lcom/cashwalk/cashwalk/lockscreen/LottoDialog;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lcom/cashwalk/cashwalk/lockscreen/LottoDialog;

    .prologue
    .line 35
    iget-object v0, p0, Lcom/cashwalk/cashwalk/lockscreen/LottoDialog;->winImg:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$600(Lcom/cashwalk/cashwalk/lockscreen/LottoDialog;)Landroid/widget/Button;
    .locals 1
    .param p0, "x0"    # Lcom/cashwalk/cashwalk/lockscreen/LottoDialog;

    .prologue
    .line 35
    iget-object v0, p0, Lcom/cashwalk/cashwalk/lockscreen/LottoDialog;->coupon:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$700(Lcom/cashwalk/cashwalk/lockscreen/LottoDialog;)Lcom/felipecsl/gifimageview/library/GifImageView;
    .locals 1
    .param p0, "x0"    # Lcom/cashwalk/cashwalk/lockscreen/LottoDialog;

    .prologue
    .line 35
    iget-object v0, p0, Lcom/cashwalk/cashwalk/lockscreen/LottoDialog;->weatherFilter:Lcom/felipecsl/gifimageview/library/GifImageView;

    return-object v0
.end method

.method static synthetic access$702(Lcom/cashwalk/cashwalk/lockscreen/LottoDialog;Lcom/felipecsl/gifimageview/library/GifImageView;)Lcom/felipecsl/gifimageview/library/GifImageView;
    .locals 0
    .param p0, "x0"    # Lcom/cashwalk/cashwalk/lockscreen/LottoDialog;
    .param p1, "x1"    # Lcom/felipecsl/gifimageview/library/GifImageView;

    .prologue
    .line 35
    iput-object p1, p0, Lcom/cashwalk/cashwalk/lockscreen/LottoDialog;->weatherFilter:Lcom/felipecsl/gifimageview/library/GifImageView;

    return-object p1
.end method

.method static synthetic access$800(Lcom/cashwalk/cashwalk/lockscreen/LottoDialog;)Z
    .locals 1
    .param p0, "x0"    # Lcom/cashwalk/cashwalk/lockscreen/LottoDialog;

    .prologue
    .line 35
    iget-boolean v0, p0, Lcom/cashwalk/cashwalk/lockscreen/LottoDialog;->dirty:Z

    return v0
.end method

.method static synthetic access$802(Lcom/cashwalk/cashwalk/lockscreen/LottoDialog;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/cashwalk/cashwalk/lockscreen/LottoDialog;
    .param p1, "x1"    # Z

    .prologue
    .line 35
    iput-boolean p1, p0, Lcom/cashwalk/cashwalk/lockscreen/LottoDialog;->dirty:Z

    return p1
.end method

.method static synthetic access$900(Lcom/cashwalk/cashwalk/lockscreen/LottoDialog;)Landroid/widget/FrameLayout;
    .locals 1
    .param p0, "x0"    # Lcom/cashwalk/cashwalk/lockscreen/LottoDialog;

    .prologue
    .line 35
    iget-object v0, p0, Lcom/cashwalk/cashwalk/lockscreen/LottoDialog;->cover:Landroid/widget/FrameLayout;

    return-object v0
.end method
