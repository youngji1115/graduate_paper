.class public Lcom/cashwalk/cashwalk/lockscreen/OffDialog;
.super Landroid/app/Dialog;
.source "OffDialog.java"


# instance fields
.field private cancel:Landroid/widget/Button;

.field private confirm:Landroid/widget/Button;

.field private selected:I

.field private spinner:Landroid/widget/Spinner;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "handler"    # Landroid/os/Handler;

    .prologue
    .line 27
    invoke-direct {p0, p1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    .line 24
    const/4 v1, 0x0

    iput v1, p0, Lcom/cashwalk/cashwalk/lockscreen/OffDialog;->selected:I

    .line 29
    check-cast p1, Landroid/app/Activity;

    .end local p1    # "context":Landroid/content/Context;
    invoke-virtual {p0, p1}, Lcom/cashwalk/cashwalk/lockscreen/OffDialog;->setOwnerActivity(Landroid/app/Activity;)V

    .line 31
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/cashwalk/cashwalk/lockscreen/OffDialog;->requestWindowFeature(I)Z

    .line 32
    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v0}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    .line 33
    .local v0, "lpWindow":Landroid/view/WindowManager$LayoutParams;
    const/4 v1, 0x2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 34
    const v1, 0x3f4ccccd    # 0.8f

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->dimAmount:F

    .line 35
    invoke-virtual {p0}, Lcom/cashwalk/cashwalk/lockscreen/OffDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 37
    const v1, 0x7f04007e

    invoke-virtual {p0, v1}, Lcom/cashwalk/cashwalk/lockscreen/OffDialog;->setContentView(I)V

    .line 39
    const v1, 0x7f100363

    invoke-virtual {p0, v1}, Lcom/cashwalk/cashwalk/lockscreen/OffDialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Spinner;

    iput-object v1, p0, Lcom/cashwalk/cashwalk/lockscreen/OffDialog;->spinner:Landroid/widget/Spinner;

    .line 40
    const v1, 0x7f10026f

    invoke-virtual {p0, v1}, Lcom/cashwalk/cashwalk/lockscreen/OffDialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/cashwalk/cashwalk/lockscreen/OffDialog;->confirm:Landroid/widget/Button;

    .line 41
    const v1, 0x7f100364

    invoke-virtual {p0, v1}, Lcom/cashwalk/cashwalk/lockscreen/OffDialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/cashwalk/cashwalk/lockscreen/OffDialog;->cancel:Landroid/widget/Button;

    .line 43
    iget-object v1, p0, Lcom/cashwalk/cashwalk/lockscreen/OffDialog;->spinner:Landroid/widget/Spinner;

    invoke-virtual {p0}, Lcom/cashwalk/cashwalk/lockscreen/OffDialog;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f0c0002

    const v4, 0x1090009

    invoke-static {v2, v3, v4}, Landroid/widget/ArrayAdapter;->createFromResource(Landroid/content/Context;II)Landroid/widget/ArrayAdapter;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 44
    iget-object v1, p0, Lcom/cashwalk/cashwalk/lockscreen/OffDialog;->spinner:Landroid/widget/Spinner;

    new-instance v2, Lcom/cashwalk/cashwalk/lockscreen/OffDialog$1;

    invoke-direct {v2, p0}, Lcom/cashwalk/cashwalk/lockscreen/OffDialog$1;-><init>(Lcom/cashwalk/cashwalk/lockscreen/OffDialog;)V

    invoke-virtual {v1, v2}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 56
    iget-object v1, p0, Lcom/cashwalk/cashwalk/lockscreen/OffDialog;->confirm:Landroid/widget/Button;

    new-instance v2, Lcom/cashwalk/cashwalk/lockscreen/OffDialog$2;

    invoke-direct {v2, p0, p2}, Lcom/cashwalk/cashwalk/lockscreen/OffDialog$2;-><init>(Lcom/cashwalk/cashwalk/lockscreen/OffDialog;Landroid/os/Handler;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 64
    iget-object v1, p0, Lcom/cashwalk/cashwalk/lockscreen/OffDialog;->cancel:Landroid/widget/Button;

    new-instance v2, Lcom/cashwalk/cashwalk/lockscreen/OffDialog$3;

    invoke-direct {v2, p0, p2}, Lcom/cashwalk/cashwalk/lockscreen/OffDialog$3;-><init>(Lcom/cashwalk/cashwalk/lockscreen/OffDialog;Landroid/os/Handler;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 71
    return-void
.end method

.method static synthetic access$000(Lcom/cashwalk/cashwalk/lockscreen/OffDialog;)I
    .locals 1
    .param p0, "x0"    # Lcom/cashwalk/cashwalk/lockscreen/OffDialog;

    .prologue
    .line 18
    iget v0, p0, Lcom/cashwalk/cashwalk/lockscreen/OffDialog;->selected:I

    return v0
.end method

.method static synthetic access$002(Lcom/cashwalk/cashwalk/lockscreen/OffDialog;I)I
    .locals 0
    .param p0, "x0"    # Lcom/cashwalk/cashwalk/lockscreen/OffDialog;
    .param p1, "x1"    # I

    .prologue
    .line 18
    iput p1, p0, Lcom/cashwalk/cashwalk/lockscreen/OffDialog;->selected:I

    return p1
.end method
