.class public Lcom/cashwalk/cashwalk/dialog/ReviewDialog;
.super Landroid/app/Dialog;
.source "ReviewDialog.java"


# instance fields
.field private cancel:Landroid/widget/Button;

.field private confirm:Landroid/widget/Button;

.field private pref:Landroid/content/SharedPreferences;

.field private review:Landroid/widget/LinearLayout;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 32
    invoke-direct {p0, p1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    move-object v1, p1

    .line 34
    check-cast v1, Landroid/app/Activity;

    invoke-virtual {p0, v1}, Lcom/cashwalk/cashwalk/dialog/ReviewDialog;->setOwnerActivity(Landroid/app/Activity;)V

    .line 36
    invoke-static {p1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    iput-object v1, p0, Lcom/cashwalk/cashwalk/dialog/ReviewDialog;->pref:Landroid/content/SharedPreferences;

    .line 38
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/cashwalk/cashwalk/dialog/ReviewDialog;->requestWindowFeature(I)Z

    .line 39
    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v0}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    .line 40
    .local v0, "lpWindow":Landroid/view/WindowManager$LayoutParams;
    const/4 v1, 0x2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 41
    const v1, 0x3f4ccccd    # 0.8f

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->dimAmount:F

    .line 42
    invoke-virtual {p0}, Lcom/cashwalk/cashwalk/dialog/ReviewDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 44
    const v1, 0x7f040083

    invoke-virtual {p0, v1}, Lcom/cashwalk/cashwalk/dialog/ReviewDialog;->setContentView(I)V

    .line 46
    const v1, 0x7f100367

    invoke-virtual {p0, v1}, Lcom/cashwalk/cashwalk/dialog/ReviewDialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/cashwalk/cashwalk/dialog/ReviewDialog;->review:Landroid/widget/LinearLayout;

    .line 48
    const v1, 0x7f10026f

    invoke-virtual {p0, v1}, Lcom/cashwalk/cashwalk/dialog/ReviewDialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/cashwalk/cashwalk/dialog/ReviewDialog;->confirm:Landroid/widget/Button;

    .line 49
    const v1, 0x7f100364

    invoke-virtual {p0, v1}, Lcom/cashwalk/cashwalk/dialog/ReviewDialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/cashwalk/cashwalk/dialog/ReviewDialog;->cancel:Landroid/widget/Button;

    .line 51
    iget-object v1, p0, Lcom/cashwalk/cashwalk/dialog/ReviewDialog;->review:Landroid/widget/LinearLayout;

    new-instance v2, Lcom/cashwalk/cashwalk/dialog/ReviewDialog$1;

    invoke-direct {v2, p0, p1}, Lcom/cashwalk/cashwalk/dialog/ReviewDialog$1;-><init>(Lcom/cashwalk/cashwalk/dialog/ReviewDialog;Landroid/content/Context;)V

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 72
    iget-object v1, p0, Lcom/cashwalk/cashwalk/dialog/ReviewDialog;->confirm:Landroid/widget/Button;

    new-instance v2, Lcom/cashwalk/cashwalk/dialog/ReviewDialog$2;

    invoke-direct {v2, p0, p1}, Lcom/cashwalk/cashwalk/dialog/ReviewDialog$2;-><init>(Lcom/cashwalk/cashwalk/dialog/ReviewDialog;Landroid/content/Context;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 93
    iget-object v1, p0, Lcom/cashwalk/cashwalk/dialog/ReviewDialog;->cancel:Landroid/widget/Button;

    new-instance v2, Lcom/cashwalk/cashwalk/dialog/ReviewDialog$3;

    invoke-direct {v2, p0}, Lcom/cashwalk/cashwalk/dialog/ReviewDialog$3;-><init>(Lcom/cashwalk/cashwalk/dialog/ReviewDialog;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 100
    return-void
.end method

.method static synthetic access$000(Lcom/cashwalk/cashwalk/dialog/ReviewDialog;)Landroid/content/SharedPreferences;
    .locals 1
    .param p0, "x0"    # Lcom/cashwalk/cashwalk/dialog/ReviewDialog;

    .prologue
    .line 23
    iget-object v0, p0, Lcom/cashwalk/cashwalk/dialog/ReviewDialog;->pref:Landroid/content/SharedPreferences;

    return-object v0
.end method
