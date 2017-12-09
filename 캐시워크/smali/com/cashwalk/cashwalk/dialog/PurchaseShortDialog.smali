.class public Lcom/cashwalk/cashwalk/dialog/PurchaseShortDialog;
.super Landroid/app/Dialog;
.source "PurchaseShortDialog.java"


# instance fields
.field private confirm:Landroid/widget/Button;

.field private friend:Landroid/widget/LinearLayout;

.field private mContext:Landroid/content/Context;

.field private pref:Landroid/content/SharedPreferences;

.field private progress:Landroid/widget/ProgressBar;

.field private review:Landroid/widget/LinearLayout;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "type"    # Ljava/lang/String;

    .prologue
    .line 36
    invoke-direct {p0, p1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    .line 38
    iput-object p1, p0, Lcom/cashwalk/cashwalk/dialog/PurchaseShortDialog;->mContext:Landroid/content/Context;

    .line 39
    iget-object v1, p0, Lcom/cashwalk/cashwalk/dialog/PurchaseShortDialog;->mContext:Landroid/content/Context;

    check-cast v1, Landroid/app/Activity;

    invoke-virtual {p0, v1}, Lcom/cashwalk/cashwalk/dialog/PurchaseShortDialog;->setOwnerActivity(Landroid/app/Activity;)V

    .line 41
    invoke-static {p1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    iput-object v1, p0, Lcom/cashwalk/cashwalk/dialog/PurchaseShortDialog;->pref:Landroid/content/SharedPreferences;

    .line 43
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/cashwalk/cashwalk/dialog/PurchaseShortDialog;->requestWindowFeature(I)Z

    .line 44
    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v0}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    .line 45
    .local v0, "lpWindow":Landroid/view/WindowManager$LayoutParams;
    const/4 v1, 0x2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 46
    const v1, 0x3f4ccccd    # 0.8f

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->dimAmount:F

    .line 47
    invoke-virtual {p0}, Lcom/cashwalk/cashwalk/dialog/PurchaseShortDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 49
    const v1, 0x7f040082

    invoke-virtual {p0, v1}, Lcom/cashwalk/cashwalk/dialog/PurchaseShortDialog;->setContentView(I)V

    .line 51
    const v1, 0x7f100367

    invoke-virtual {p0, v1}, Lcom/cashwalk/cashwalk/dialog/PurchaseShortDialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/cashwalk/cashwalk/dialog/PurchaseShortDialog;->review:Landroid/widget/LinearLayout;

    .line 52
    const v1, 0x7f100369

    invoke-virtual {p0, v1}, Lcom/cashwalk/cashwalk/dialog/PurchaseShortDialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/cashwalk/cashwalk/dialog/PurchaseShortDialog;->friend:Landroid/widget/LinearLayout;

    .line 54
    const v1, 0x7f10026f

    invoke-virtual {p0, v1}, Lcom/cashwalk/cashwalk/dialog/PurchaseShortDialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/cashwalk/cashwalk/dialog/PurchaseShortDialog;->confirm:Landroid/widget/Button;

    .line 55
    const v1, 0x7f1000d6

    invoke-virtual {p0, v1}, Lcom/cashwalk/cashwalk/dialog/PurchaseShortDialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ProgressBar;

    iput-object v1, p0, Lcom/cashwalk/cashwalk/dialog/PurchaseShortDialog;->progress:Landroid/widget/ProgressBar;

    .line 64
    iget-object v1, p0, Lcom/cashwalk/cashwalk/dialog/PurchaseShortDialog;->review:Landroid/widget/LinearLayout;

    new-instance v2, Lcom/cashwalk/cashwalk/dialog/PurchaseShortDialog$1;

    invoke-direct {v2, p0, p1}, Lcom/cashwalk/cashwalk/dialog/PurchaseShortDialog$1;-><init>(Lcom/cashwalk/cashwalk/dialog/PurchaseShortDialog;Landroid/content/Context;)V

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 74
    iget-object v1, p0, Lcom/cashwalk/cashwalk/dialog/PurchaseShortDialog;->friend:Landroid/widget/LinearLayout;

    new-instance v2, Lcom/cashwalk/cashwalk/dialog/PurchaseShortDialog$2;

    invoke-direct {v2, p0}, Lcom/cashwalk/cashwalk/dialog/PurchaseShortDialog$2;-><init>(Lcom/cashwalk/cashwalk/dialog/PurchaseShortDialog;)V

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 91
    iget-object v1, p0, Lcom/cashwalk/cashwalk/dialog/PurchaseShortDialog;->confirm:Landroid/widget/Button;

    new-instance v2, Lcom/cashwalk/cashwalk/dialog/PurchaseShortDialog$3;

    invoke-direct {v2, p0}, Lcom/cashwalk/cashwalk/dialog/PurchaseShortDialog$3;-><init>(Lcom/cashwalk/cashwalk/dialog/PurchaseShortDialog;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 97
    return-void
.end method

.method static synthetic access$000(Lcom/cashwalk/cashwalk/dialog/PurchaseShortDialog;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/cashwalk/cashwalk/dialog/PurchaseShortDialog;

    .prologue
    .line 22
    iget-object v0, p0, Lcom/cashwalk/cashwalk/dialog/PurchaseShortDialog;->mContext:Landroid/content/Context;

    return-object v0
.end method
