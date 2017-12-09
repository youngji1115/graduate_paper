.class public Lcom/cashwalk/cashwalk/dialog/PurchaseDoneDialog;
.super Landroid/app/Dialog;
.source "PurchaseDoneDialog.java"


# instance fields
.field private brand:Landroid/widget/TextView;

.field private confirm:Landroid/widget/Button;

.field private go:Landroid/widget/Button;

.field private pref:Landroid/content/SharedPreferences;

.field private review:Landroid/widget/LinearLayout;

.field private title:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/cashwalk/cashwalk/util/network/model/ShopItem;Landroid/os/Handler;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "item"    # Lcom/cashwalk/cashwalk/util/network/model/ShopItem;
    .param p3, "handler"    # Landroid/os/Handler;

    .prologue
    .line 35
    invoke-direct {p0, p1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    move-object v1, p1

    .line 37
    check-cast v1, Landroid/app/Activity;

    invoke-virtual {p0, v1}, Lcom/cashwalk/cashwalk/dialog/PurchaseDoneDialog;->setOwnerActivity(Landroid/app/Activity;)V

    .line 39
    invoke-static {p1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    iput-object v1, p0, Lcom/cashwalk/cashwalk/dialog/PurchaseDoneDialog;->pref:Landroid/content/SharedPreferences;

    .line 41
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/cashwalk/cashwalk/dialog/PurchaseDoneDialog;->requestWindowFeature(I)Z

    .line 42
    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v0}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    .line 43
    .local v0, "lpWindow":Landroid/view/WindowManager$LayoutParams;
    const/4 v1, 0x2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 44
    const v1, 0x3f4ccccd    # 0.8f

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->dimAmount:F

    .line 45
    invoke-virtual {p0}, Lcom/cashwalk/cashwalk/dialog/PurchaseDoneDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 47
    const v1, 0x7f040081

    invoke-virtual {p0, v1}, Lcom/cashwalk/cashwalk/dialog/PurchaseDoneDialog;->setContentView(I)V

    .line 49
    const v1, 0x7f100200

    invoke-virtual {p0, v1}, Lcom/cashwalk/cashwalk/dialog/PurchaseDoneDialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/cashwalk/cashwalk/dialog/PurchaseDoneDialog;->brand:Landroid/widget/TextView;

    .line 50
    const v1, 0x7f100093

    invoke-virtual {p0, v1}, Lcom/cashwalk/cashwalk/dialog/PurchaseDoneDialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/cashwalk/cashwalk/dialog/PurchaseDoneDialog;->title:Landroid/widget/TextView;

    .line 51
    const v1, 0x7f100367

    invoke-virtual {p0, v1}, Lcom/cashwalk/cashwalk/dialog/PurchaseDoneDialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/cashwalk/cashwalk/dialog/PurchaseDoneDialog;->review:Landroid/widget/LinearLayout;

    .line 53
    const v1, 0x7f10026f

    invoke-virtual {p0, v1}, Lcom/cashwalk/cashwalk/dialog/PurchaseDoneDialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/cashwalk/cashwalk/dialog/PurchaseDoneDialog;->confirm:Landroid/widget/Button;

    .line 54
    const v1, 0x7f100368

    invoke-virtual {p0, v1}, Lcom/cashwalk/cashwalk/dialog/PurchaseDoneDialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/cashwalk/cashwalk/dialog/PurchaseDoneDialog;->go:Landroid/widget/Button;

    .line 56
    iget-object v1, p0, Lcom/cashwalk/cashwalk/dialog/PurchaseDoneDialog;->brand:Landroid/widget/TextView;

    iget-object v2, p2, Lcom/cashwalk/cashwalk/util/network/model/ShopItem;->brand:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 57
    iget-object v1, p0, Lcom/cashwalk/cashwalk/dialog/PurchaseDoneDialog;->title:Landroid/widget/TextView;

    iget-object v2, p2, Lcom/cashwalk/cashwalk/util/network/model/ShopItem;->title:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 59
    iget-object v1, p0, Lcom/cashwalk/cashwalk/dialog/PurchaseDoneDialog;->review:Landroid/widget/LinearLayout;

    new-instance v2, Lcom/cashwalk/cashwalk/dialog/PurchaseDoneDialog$1;

    invoke-direct {v2, p0, p1, p3}, Lcom/cashwalk/cashwalk/dialog/PurchaseDoneDialog$1;-><init>(Lcom/cashwalk/cashwalk/dialog/PurchaseDoneDialog;Landroid/content/Context;Landroid/os/Handler;)V

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 78
    iget-object v1, p0, Lcom/cashwalk/cashwalk/dialog/PurchaseDoneDialog;->confirm:Landroid/widget/Button;

    new-instance v2, Lcom/cashwalk/cashwalk/dialog/PurchaseDoneDialog$2;

    invoke-direct {v2, p0, p1, p3}, Lcom/cashwalk/cashwalk/dialog/PurchaseDoneDialog$2;-><init>(Lcom/cashwalk/cashwalk/dialog/PurchaseDoneDialog;Landroid/content/Context;Landroid/os/Handler;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 97
    iget-object v1, p0, Lcom/cashwalk/cashwalk/dialog/PurchaseDoneDialog;->go:Landroid/widget/Button;

    new-instance v2, Lcom/cashwalk/cashwalk/dialog/PurchaseDoneDialog$3;

    invoke-direct {v2, p0, p3, p1}, Lcom/cashwalk/cashwalk/dialog/PurchaseDoneDialog$3;-><init>(Lcom/cashwalk/cashwalk/dialog/PurchaseDoneDialog;Landroid/os/Handler;Landroid/content/Context;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 105
    return-void
.end method
