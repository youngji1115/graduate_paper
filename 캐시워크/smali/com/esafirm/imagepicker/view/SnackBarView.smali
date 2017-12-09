.class public Lcom/esafirm/imagepicker/view/SnackBarView;
.super Landroid/widget/RelativeLayout;
.source "SnackBarView.java"


# static fields
.field private static final ANIM_DURATION:I = 0xc8

.field private static final INTERPOLATOR:Landroid/view/animation/Interpolator;


# instance fields
.field private btnAction:Landroid/widget/Button;

.field private txtCaption:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 20
    new-instance v0, Landroid/support/v4/view/animation/FastOutLinearInInterpolator;

    invoke-direct {v0}, Landroid/support/v4/view/animation/FastOutLinearInInterpolator;-><init>()V

    sput-object v0, Lcom/esafirm/imagepicker/view/SnackBarView;->INTERPOLATOR:Landroid/view/animation/Interpolator;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 26
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/esafirm/imagepicker/view/SnackBarView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 27
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 30
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/esafirm/imagepicker/view/SnackBarView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 31
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 34
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 35
    invoke-direct {p0}, Lcom/esafirm/imagepicker/view/SnackBarView;->init()V

    .line 36
    return-void
.end method

.method static synthetic access$000(Lcom/esafirm/imagepicker/view/SnackBarView;Ljava/lang/Runnable;)V
    .locals 0
    .param p0, "x0"    # Lcom/esafirm/imagepicker/view/SnackBarView;
    .param p1, "x1"    # Ljava/lang/Runnable;

    .prologue
    .line 16
    invoke-direct {p0, p1}, Lcom/esafirm/imagepicker/view/SnackBarView;->hide(Ljava/lang/Runnable;)V

    return-void
.end method

.method private hide(Ljava/lang/Runnable;)V
    .locals 4
    .param p1, "runnable"    # Ljava/lang/Runnable;

    .prologue
    .line 91
    invoke-static {p0}, Landroid/support/v4/view/ViewCompat;->animate(Landroid/view/View;)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v0

    .line 92
    invoke-virtual {p0}, Lcom/esafirm/imagepicker/view/SnackBarView;->getHeight()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->translationY(F)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v0

    const-wide/16 v2, 0xc8

    .line 93
    invoke-virtual {v0, v2, v3}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->setDuration(J)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v0

    const/high16 v1, 0x3f000000    # 0.5f

    .line 94
    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->alpha(F)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v0

    .line 95
    invoke-virtual {v0, p1}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->withEndAction(Ljava/lang/Runnable;)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    .line 96
    return-void
.end method

.method private init()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 39
    invoke-virtual {p0}, Lcom/esafirm/imagepicker/view/SnackBarView;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/esafirm/imagepicker/R$layout;->ef_imagepikcer_snackbar:I

    invoke-static {v1, v2, p0}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 40
    invoke-virtual {p0}, Lcom/esafirm/imagepicker/view/SnackBarView;->isInEditMode()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 50
    :goto_0
    return-void

    .line 43
    :cond_0
    const/4 v1, 0x0

    invoke-static {p0, v1}, Landroid/support/v4/view/ViewCompat;->setAlpha(Landroid/view/View;F)V

    .line 45
    invoke-virtual {p0}, Lcom/esafirm/imagepicker/view/SnackBarView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/esafirm/imagepicker/R$dimen;->ef_spacing_double:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 46
    .local v0, "padding":I
    invoke-virtual {p0, v0, v3, v0, v3}, Lcom/esafirm/imagepicker/view/SnackBarView;->setPadding(IIII)V

    .line 48
    sget v1, Lcom/esafirm/imagepicker/R$id;->ef_snackbar_txt_bottom_caption:I

    invoke-virtual {p0, v1}, Lcom/esafirm/imagepicker/view/SnackBarView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/esafirm/imagepicker/view/SnackBarView;->txtCaption:Landroid/widget/TextView;

    .line 49
    sget v1, Lcom/esafirm/imagepicker/R$id;->ef_snackbar_btn_action:I

    invoke-virtual {p0, v1}, Lcom/esafirm/imagepicker/view/SnackBarView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/esafirm/imagepicker/view/SnackBarView;->btnAction:Landroid/widget/Button;

    goto :goto_0
.end method


# virtual methods
.method public hide()V
    .locals 1

    .prologue
    .line 87
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/esafirm/imagepicker/view/SnackBarView;->hide(Ljava/lang/Runnable;)V

    .line 88
    return-void
.end method

.method public setOnActionClickListener(ILandroid/view/View$OnClickListener;)V
    .locals 2
    .param p1, "textId"    # I
        .annotation build Landroid/support/annotation/StringRes;
        .end annotation
    .end param
    .param p2, "onClickListener"    # Landroid/view/View$OnClickListener;

    .prologue
    .line 57
    if-nez p1, :cond_0

    .line 58
    sget p1, Lcom/esafirm/imagepicker/R$string;->ef_ok:I

    .line 61
    :cond_0
    iget-object v0, p0, Lcom/esafirm/imagepicker/view/SnackBarView;->btnAction:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setText(I)V

    .line 62
    iget-object v0, p0, Lcom/esafirm/imagepicker/view/SnackBarView;->btnAction:Landroid/widget/Button;

    new-instance v1, Lcom/esafirm/imagepicker/view/SnackBarView$1;

    invoke-direct {v1, p0, p2}, Lcom/esafirm/imagepicker/view/SnackBarView$1;-><init>(Lcom/esafirm/imagepicker/view/SnackBarView;Landroid/view/View$OnClickListener;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 73
    return-void
.end method

.method public setText(I)V
    .locals 1
    .param p1, "textResId"    # I
        .annotation build Landroid/support/annotation/StringRes;
        .end annotation
    .end param

    .prologue
    .line 53
    iget-object v0, p0, Lcom/esafirm/imagepicker/view/SnackBarView;->txtCaption:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(I)V

    .line 54
    return-void
.end method

.method public show(ILandroid/view/View$OnClickListener;)V
    .locals 4
    .param p1, "textResId"    # I
        .annotation build Landroid/support/annotation/StringRes;
        .end annotation
    .end param
    .param p2, "onClickListener"    # Landroid/view/View$OnClickListener;

    .prologue
    .line 76
    invoke-virtual {p0, p1}, Lcom/esafirm/imagepicker/view/SnackBarView;->setText(I)V

    .line 77
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p2}, Lcom/esafirm/imagepicker/view/SnackBarView;->setOnActionClickListener(ILandroid/view/View$OnClickListener;)V

    .line 79
    invoke-static {p0}, Landroid/support/v4/view/ViewCompat;->animate(Landroid/view/View;)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v0

    const/4 v1, 0x0

    .line 80
    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->translationY(F)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v0

    const-wide/16 v2, 0xc8

    .line 81
    invoke-virtual {v0, v2, v3}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->setDuration(J)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v0

    sget-object v1, Lcom/esafirm/imagepicker/view/SnackBarView;->INTERPOLATOR:Landroid/view/animation/Interpolator;

    .line 82
    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->setInterpolator(Landroid/view/animation/Interpolator;)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    .line 83
    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->alpha(F)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    .line 84
    return-void
.end method
