.class public Lcom/cashwalk/cashwalk/dialog/PurchaseDialog;
.super Landroid/app/Dialog;
.source "PurchaseDialog.java"


# instance fields
.field private brand:Landroid/widget/TextView;

.field private cancel:Landroid/widget/Button;

.field private cashNow:Landroid/widget/TextView;

.field private cashRemain:Landroid/widget/TextView;

.field private confirm:Landroid/widget/Button;

.field private pref:Landroid/content/SharedPreferences;

.field private price:Landroid/widget/TextView;

.field private title:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/cashwalk/cashwalk/util/network/model/ShopItem;FLandroid/os/Handler;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "item"    # Lcom/cashwalk/cashwalk/util/network/model/ShopItem;
    .param p3, "exchangeRate"    # F
    .param p4, "handler"    # Landroid/os/Handler;

    .prologue
    .line 32
    invoke-direct {p0, p1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    move-object v2, p1

    .line 34
    check-cast v2, Landroid/app/Activity;

    invoke-virtual {p0, v2}, Lcom/cashwalk/cashwalk/dialog/PurchaseDialog;->setOwnerActivity(Landroid/app/Activity;)V

    .line 36
    invoke-static {p1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    iput-object v2, p0, Lcom/cashwalk/cashwalk/dialog/PurchaseDialog;->pref:Landroid/content/SharedPreferences;

    .line 38
    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lcom/cashwalk/cashwalk/dialog/PurchaseDialog;->requestWindowFeature(I)Z

    .line 39
    new-instance v1, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v1}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    .line 40
    .local v1, "lpWindow":Landroid/view/WindowManager$LayoutParams;
    const/4 v2, 0x2

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 41
    const v2, 0x3f4ccccd    # 0.8f

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->dimAmount:F

    .line 42
    invoke-virtual {p0}, Lcom/cashwalk/cashwalk/dialog/PurchaseDialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 44
    const v2, 0x7f040080

    invoke-virtual {p0, v2}, Lcom/cashwalk/cashwalk/dialog/PurchaseDialog;->setContentView(I)V

    .line 46
    const v2, 0x7f100200

    invoke-virtual {p0, v2}, Lcom/cashwalk/cashwalk/dialog/PurchaseDialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/cashwalk/cashwalk/dialog/PurchaseDialog;->brand:Landroid/widget/TextView;

    .line 47
    const v2, 0x7f100093

    invoke-virtual {p0, v2}, Lcom/cashwalk/cashwalk/dialog/PurchaseDialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/cashwalk/cashwalk/dialog/PurchaseDialog;->title:Landroid/widget/TextView;

    .line 48
    const v2, 0x7f100201

    invoke-virtual {p0, v2}, Lcom/cashwalk/cashwalk/dialog/PurchaseDialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/cashwalk/cashwalk/dialog/PurchaseDialog;->price:Landroid/widget/TextView;

    .line 49
    const v2, 0x7f100365

    invoke-virtual {p0, v2}, Lcom/cashwalk/cashwalk/dialog/PurchaseDialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/cashwalk/cashwalk/dialog/PurchaseDialog;->cashNow:Landroid/widget/TextView;

    .line 50
    const v2, 0x7f100366

    invoke-virtual {p0, v2}, Lcom/cashwalk/cashwalk/dialog/PurchaseDialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/cashwalk/cashwalk/dialog/PurchaseDialog;->cashRemain:Landroid/widget/TextView;

    .line 52
    const v2, 0x7f10026f

    invoke-virtual {p0, v2}, Lcom/cashwalk/cashwalk/dialog/PurchaseDialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/cashwalk/cashwalk/dialog/PurchaseDialog;->confirm:Landroid/widget/Button;

    .line 53
    const v2, 0x7f100364

    invoke-virtual {p0, v2}, Lcom/cashwalk/cashwalk/dialog/PurchaseDialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/cashwalk/cashwalk/dialog/PurchaseDialog;->cancel:Landroid/widget/Button;

    .line 55
    iget-object v2, p0, Lcom/cashwalk/cashwalk/dialog/PurchaseDialog;->pref:Landroid/content/SharedPreferences;

    const-string v3, "POINT"

    const/4 v4, 0x0

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 57
    .local v0, "cashNowInt":I
    iget-object v2, p0, Lcom/cashwalk/cashwalk/dialog/PurchaseDialog;->brand:Landroid/widget/TextView;

    iget-object v3, p2, Lcom/cashwalk/cashwalk/util/network/model/ShopItem;->brand:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 58
    iget-object v2, p0, Lcom/cashwalk/cashwalk/dialog/PurchaseDialog;->title:Landroid/widget/TextView;

    iget-object v3, p2, Lcom/cashwalk/cashwalk/util/network/model/ShopItem;->title:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 59
    iget-object v2, p0, Lcom/cashwalk/cashwalk/dialog/PurchaseDialog;->price:Landroid/widget/TextView;

    iget v3, p2, Lcom/cashwalk/cashwalk/util/network/model/ShopItem;->price:I

    int-to-float v3, v3

    mul-float/2addr v3, p3

    float-to-int v3, v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 60
    iget-object v2, p0, Lcom/cashwalk/cashwalk/dialog/PurchaseDialog;->cashNow:Landroid/widget/TextView;

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 61
    iget-object v2, p0, Lcom/cashwalk/cashwalk/dialog/PurchaseDialog;->cashRemain:Landroid/widget/TextView;

    iget v3, p2, Lcom/cashwalk/cashwalk/util/network/model/ShopItem;->price:I

    int-to-float v3, v3

    mul-float/2addr v3, p3

    float-to-int v3, v3

    sub-int v3, v0, v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 63
    iget-object v2, p0, Lcom/cashwalk/cashwalk/dialog/PurchaseDialog;->confirm:Landroid/widget/Button;

    new-instance v3, Lcom/cashwalk/cashwalk/dialog/PurchaseDialog$1;

    invoke-direct {v3, p0, p4}, Lcom/cashwalk/cashwalk/dialog/PurchaseDialog$1;-><init>(Lcom/cashwalk/cashwalk/dialog/PurchaseDialog;Landroid/os/Handler;)V

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 71
    iget-object v2, p0, Lcom/cashwalk/cashwalk/dialog/PurchaseDialog;->cancel:Landroid/widget/Button;

    new-instance v3, Lcom/cashwalk/cashwalk/dialog/PurchaseDialog$2;

    invoke-direct {v3, p0}, Lcom/cashwalk/cashwalk/dialog/PurchaseDialog$2;-><init>(Lcom/cashwalk/cashwalk/dialog/PurchaseDialog;)V

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 77
    return-void
.end method
