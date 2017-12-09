.class public Lcom/cashwalk/cashwalk/activity/friend/MyEmblemActivity;
.super Lcom/cashwalk/cashwalk/BaseActivity;
.source "MyEmblemActivity.java"


# instance fields
.field private count:I

.field private tv_temp_btn:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 15
    invoke-direct {p0}, Lcom/cashwalk/cashwalk/BaseActivity;-><init>()V

    .line 18
    const/4 v0, 0x0

    iput v0, p0, Lcom/cashwalk/cashwalk/activity/friend/MyEmblemActivity;->count:I

    return-void
.end method

.method static synthetic access$000(Lcom/cashwalk/cashwalk/activity/friend/MyEmblemActivity;)I
    .locals 1
    .param p0, "x0"    # Lcom/cashwalk/cashwalk/activity/friend/MyEmblemActivity;

    .prologue
    .line 15
    iget v0, p0, Lcom/cashwalk/cashwalk/activity/friend/MyEmblemActivity;->count:I

    return v0
.end method

.method static synthetic access$002(Lcom/cashwalk/cashwalk/activity/friend/MyEmblemActivity;I)I
    .locals 0
    .param p0, "x0"    # Lcom/cashwalk/cashwalk/activity/friend/MyEmblemActivity;
    .param p1, "x1"    # I

    .prologue
    .line 15
    iput p1, p0, Lcom/cashwalk/cashwalk/activity/friend/MyEmblemActivity;->count:I

    return p1
.end method

.method static synthetic access$008(Lcom/cashwalk/cashwalk/activity/friend/MyEmblemActivity;)I
    .locals 2
    .param p0, "x0"    # Lcom/cashwalk/cashwalk/activity/friend/MyEmblemActivity;

    .prologue
    .line 15
    iget v0, p0, Lcom/cashwalk/cashwalk/activity/friend/MyEmblemActivity;->count:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/cashwalk/cashwalk/activity/friend/MyEmblemActivity;->count:I

    return v0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 22
    invoke-super {p0, p1}, Lcom/cashwalk/cashwalk/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 23
    const v0, 0x7f040036

    invoke-virtual {p0, v0}, Lcom/cashwalk/cashwalk/activity/friend/MyEmblemActivity;->setContentView(I)V

    .line 25
    invoke-virtual {p0}, Lcom/cashwalk/cashwalk/activity/friend/MyEmblemActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const v1, 0x680080

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 31
    const v0, 0x7f1001d0

    invoke-virtual {p0, v0}, Lcom/cashwalk/cashwalk/activity/friend/MyEmblemActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/cashwalk/cashwalk/activity/friend/MyEmblemActivity;->tv_temp_btn:Landroid/widget/TextView;

    .line 32
    iget-object v0, p0, Lcom/cashwalk/cashwalk/activity/friend/MyEmblemActivity;->tv_temp_btn:Landroid/widget/TextView;

    new-instance v1, Lcom/cashwalk/cashwalk/activity/friend/MyEmblemActivity$1;

    invoke-direct {v1, p0}, Lcom/cashwalk/cashwalk/activity/friend/MyEmblemActivity$1;-><init>(Lcom/cashwalk/cashwalk/activity/friend/MyEmblemActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 43
    return-void
.end method
