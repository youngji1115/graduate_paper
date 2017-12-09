.class Lcom/prolificinteractive/materialcalendarview/TitleChanger;
.super Ljava/lang/Object;
.source "TitleChanger.java"


# static fields
.field public static final DEFAULT_ANIMATION_DELAY:I = 0x190

.field public static final DEFAULT_Y_TRANSLATION_DP:I = 0x14


# instance fields
.field private final animDelay:I

.field private final animDuration:I

.field private final interpolator:Landroid/view/animation/Interpolator;

.field private lastAnimTime:J

.field private orientation:I

.field private previousMonth:Lcom/prolificinteractive/materialcalendarview/CalendarDay;

.field private final title:Landroid/widget/TextView;

.field private titleFormatter:Lcom/prolificinteractive/materialcalendarview/format/TitleFormatter;

.field private final translate:I


# direct methods
.method public constructor <init>(Landroid/widget/TextView;)V
    .locals 4
    .param p1, "title"    # Landroid/widget/TextView;

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    const/high16 v2, 0x40000000    # 2.0f

    invoke-direct {v1, v2}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    iput-object v1, p0, Lcom/prolificinteractive/materialcalendarview/TitleChanger;->interpolator:Landroid/view/animation/Interpolator;

    .line 27
    const/4 v1, 0x0

    iput v1, p0, Lcom/prolificinteractive/materialcalendarview/TitleChanger;->orientation:I

    .line 29
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/prolificinteractive/materialcalendarview/TitleChanger;->lastAnimTime:J

    .line 30
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/prolificinteractive/materialcalendarview/TitleChanger;->previousMonth:Lcom/prolificinteractive/materialcalendarview/CalendarDay;

    .line 33
    iput-object p1, p0, Lcom/prolificinteractive/materialcalendarview/TitleChanger;->title:Landroid/widget/TextView;

    .line 35
    invoke-virtual {p1}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 37
    .local v0, "res":Landroid/content/res/Resources;
    const/16 v1, 0x190

    iput v1, p0, Lcom/prolificinteractive/materialcalendarview/TitleChanger;->animDelay:I

    .line 39
    const/high16 v1, 0x10e0000

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    iput v1, p0, Lcom/prolificinteractive/materialcalendarview/TitleChanger;->animDuration:I

    .line 41
    const/4 v1, 0x1

    const/high16 v2, 0x41a00000    # 20.0f

    .line 42
    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    .line 41
    invoke-static {v1, v2, v3}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/prolificinteractive/materialcalendarview/TitleChanger;->translate:I

    .line 44
    return-void
.end method

.method static synthetic access$000(Lcom/prolificinteractive/materialcalendarview/TitleChanger;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/prolificinteractive/materialcalendarview/TitleChanger;

    .prologue
    .line 14
    iget-object v0, p0, Lcom/prolificinteractive/materialcalendarview/TitleChanger;->title:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$100(Lcom/prolificinteractive/materialcalendarview/TitleChanger;Landroid/widget/TextView;I)V
    .locals 0
    .param p0, "x0"    # Lcom/prolificinteractive/materialcalendarview/TitleChanger;
    .param p1, "x1"    # Landroid/widget/TextView;
    .param p2, "x2"    # I

    .prologue
    .line 14
    invoke-direct {p0, p1, p2}, Lcom/prolificinteractive/materialcalendarview/TitleChanger;->doTranslation(Landroid/widget/TextView;I)V

    return-void
.end method

.method static synthetic access$200(Lcom/prolificinteractive/materialcalendarview/TitleChanger;)I
    .locals 1
    .param p0, "x0"    # Lcom/prolificinteractive/materialcalendarview/TitleChanger;

    .prologue
    .line 14
    iget v0, p0, Lcom/prolificinteractive/materialcalendarview/TitleChanger;->orientation:I

    return v0
.end method

.method static synthetic access$300(Lcom/prolificinteractive/materialcalendarview/TitleChanger;)Landroid/view/animation/Interpolator;
    .locals 1
    .param p0, "x0"    # Lcom/prolificinteractive/materialcalendarview/TitleChanger;

    .prologue
    .line 14
    iget-object v0, p0, Lcom/prolificinteractive/materialcalendarview/TitleChanger;->interpolator:Landroid/view/animation/Interpolator;

    return-object v0
.end method

.method static synthetic access$400(Lcom/prolificinteractive/materialcalendarview/TitleChanger;)I
    .locals 1
    .param p0, "x0"    # Lcom/prolificinteractive/materialcalendarview/TitleChanger;

    .prologue
    .line 14
    iget v0, p0, Lcom/prolificinteractive/materialcalendarview/TitleChanger;->animDuration:I

    return v0
.end method

.method private doChange(JLcom/prolificinteractive/materialcalendarview/CalendarDay;Z)V
    .locals 7
    .param p1, "now"    # J
    .param p3, "currentMonth"    # Lcom/prolificinteractive/materialcalendarview/CalendarDay;
    .param p4, "animate"    # Z

    .prologue
    const/4 v4, 0x1

    .line 68
    iget-object v3, p0, Lcom/prolificinteractive/materialcalendarview/TitleChanger;->title:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 69
    iget-object v3, p0, Lcom/prolificinteractive/materialcalendarview/TitleChanger;->title:Landroid/widget/TextView;

    const/4 v5, 0x0

    invoke-direct {p0, v3, v5}, Lcom/prolificinteractive/materialcalendarview/TitleChanger;->doTranslation(Landroid/widget/TextView;I)V

    .line 71
    iget-object v3, p0, Lcom/prolificinteractive/materialcalendarview/TitleChanger;->title:Landroid/widget/TextView;

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setAlpha(F)V

    .line 72
    iput-wide p1, p0, Lcom/prolificinteractive/materialcalendarview/TitleChanger;->lastAnimTime:J

    .line 74
    iget-object v3, p0, Lcom/prolificinteractive/materialcalendarview/TitleChanger;->titleFormatter:Lcom/prolificinteractive/materialcalendarview/format/TitleFormatter;

    invoke-interface {v3, p3}, Lcom/prolificinteractive/materialcalendarview/format/TitleFormatter;->format(Lcom/prolificinteractive/materialcalendarview/CalendarDay;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 76
    .local v0, "newTitle":Ljava/lang/CharSequence;
    if-nez p4, :cond_0

    .line 77
    iget-object v3, p0, Lcom/prolificinteractive/materialcalendarview/TitleChanger;->title:Landroid/widget/TextView;

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 122
    :goto_0
    iput-object p3, p0, Lcom/prolificinteractive/materialcalendarview/TitleChanger;->previousMonth:Lcom/prolificinteractive/materialcalendarview/CalendarDay;

    .line 123
    return-void

    .line 79
    :cond_0
    iget v5, p0, Lcom/prolificinteractive/materialcalendarview/TitleChanger;->translate:I

    iget-object v3, p0, Lcom/prolificinteractive/materialcalendarview/TitleChanger;->previousMonth:Lcom/prolificinteractive/materialcalendarview/CalendarDay;

    invoke-virtual {v3, p3}, Lcom/prolificinteractive/materialcalendarview/CalendarDay;->isBefore(Lcom/prolificinteractive/materialcalendarview/CalendarDay;)Z

    move-result v3

    if-eqz v3, :cond_1

    move v3, v4

    :goto_1
    mul-int v1, v5, v3

    .line 80
    .local v1, "translation":I
    iget-object v3, p0, Lcom/prolificinteractive/materialcalendarview/TitleChanger;->title:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    .line 82
    .local v2, "viewPropertyAnimator":Landroid/view/ViewPropertyAnimator;
    iget v3, p0, Lcom/prolificinteractive/materialcalendarview/TitleChanger;->orientation:I

    if-ne v3, v4, :cond_2

    .line 83
    mul-int/lit8 v3, v1, -0x1

    int-to-float v3, v3

    invoke-virtual {v2, v3}, Landroid/view/ViewPropertyAnimator;->translationX(F)Landroid/view/ViewPropertyAnimator;

    .line 88
    :goto_2
    const/4 v3, 0x0

    .line 89
    invoke-virtual {v2, v3}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    iget v4, p0, Lcom/prolificinteractive/materialcalendarview/TitleChanger;->animDuration:I

    int-to-long v4, v4

    .line 90
    invoke-virtual {v3, v4, v5}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    iget-object v4, p0, Lcom/prolificinteractive/materialcalendarview/TitleChanger;->interpolator:Landroid/view/animation/Interpolator;

    .line 91
    invoke-virtual {v3, v4}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    new-instance v4, Lcom/prolificinteractive/materialcalendarview/TitleChanger$1;

    invoke-direct {v4, p0, v0, v1}, Lcom/prolificinteractive/materialcalendarview/TitleChanger$1;-><init>(Lcom/prolificinteractive/materialcalendarview/TitleChanger;Ljava/lang/CharSequence;I)V

    .line 92
    invoke-virtual {v3, v4}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    .line 119
    invoke-virtual {v3}, Landroid/view/ViewPropertyAnimator;->start()V

    goto :goto_0

    .line 79
    .end local v1    # "translation":I
    .end local v2    # "viewPropertyAnimator":Landroid/view/ViewPropertyAnimator;
    :cond_1
    const/4 v3, -0x1

    goto :goto_1

    .line 85
    .restart local v1    # "translation":I
    .restart local v2    # "viewPropertyAnimator":Landroid/view/ViewPropertyAnimator;
    :cond_2
    mul-int/lit8 v3, v1, -0x1

    int-to-float v3, v3

    invoke-virtual {v2, v3}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    goto :goto_2
.end method

.method private doTranslation(Landroid/widget/TextView;I)V
    .locals 2
    .param p1, "title"    # Landroid/widget/TextView;
    .param p2, "translate"    # I

    .prologue
    .line 126
    iget v0, p0, Lcom/prolificinteractive/materialcalendarview/TitleChanger;->orientation:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 127
    int-to-float v0, p2

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTranslationX(F)V

    .line 131
    :goto_0
    return-void

    .line 129
    :cond_0
    int-to-float v0, p2

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTranslationY(F)V

    goto :goto_0
.end method


# virtual methods
.method public change(Lcom/prolificinteractive/materialcalendarview/CalendarDay;)V
    .locals 6
    .param p1, "currentMonth"    # Lcom/prolificinteractive/materialcalendarview/CalendarDay;

    .prologue
    .line 47
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 49
    .local v0, "currentTime":J
    if-nez p1, :cond_1

    .line 64
    :cond_0
    :goto_0
    return-void

    .line 53
    :cond_1
    iget-object v2, p0, Lcom/prolificinteractive/materialcalendarview/TitleChanger;->title:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    iget-wide v2, p0, Lcom/prolificinteractive/materialcalendarview/TitleChanger;->lastAnimTime:J

    sub-long v2, v0, v2

    iget v4, p0, Lcom/prolificinteractive/materialcalendarview/TitleChanger;->animDelay:I

    int-to-long v4, v4

    cmp-long v2, v2, v4

    if-gez v2, :cond_3

    .line 54
    :cond_2
    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, p1, v2}, Lcom/prolificinteractive/materialcalendarview/TitleChanger;->doChange(JLcom/prolificinteractive/materialcalendarview/CalendarDay;Z)V

    .line 57
    :cond_3
    iget-object v2, p0, Lcom/prolificinteractive/materialcalendarview/TitleChanger;->previousMonth:Lcom/prolificinteractive/materialcalendarview/CalendarDay;

    invoke-virtual {p1, v2}, Lcom/prolificinteractive/materialcalendarview/CalendarDay;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 58
    invoke-virtual {p1}, Lcom/prolificinteractive/materialcalendarview/CalendarDay;->getMonth()I

    move-result v2

    iget-object v3, p0, Lcom/prolificinteractive/materialcalendarview/TitleChanger;->previousMonth:Lcom/prolificinteractive/materialcalendarview/CalendarDay;

    invoke-virtual {v3}, Lcom/prolificinteractive/materialcalendarview/CalendarDay;->getMonth()I

    move-result v3

    if-ne v2, v3, :cond_4

    .line 59
    invoke-virtual {p1}, Lcom/prolificinteractive/materialcalendarview/CalendarDay;->getYear()I

    move-result v2

    iget-object v3, p0, Lcom/prolificinteractive/materialcalendarview/TitleChanger;->previousMonth:Lcom/prolificinteractive/materialcalendarview/CalendarDay;

    invoke-virtual {v3}, Lcom/prolificinteractive/materialcalendarview/CalendarDay;->getYear()I

    move-result v3

    if-eq v2, v3, :cond_0

    .line 63
    :cond_4
    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, p1, v2}, Lcom/prolificinteractive/materialcalendarview/TitleChanger;->doChange(JLcom/prolificinteractive/materialcalendarview/CalendarDay;Z)V

    goto :goto_0
.end method

.method public getOrientation()I
    .locals 1

    .prologue
    .line 146
    iget v0, p0, Lcom/prolificinteractive/materialcalendarview/TitleChanger;->orientation:I

    return v0
.end method

.method public getTitleFormatter()Lcom/prolificinteractive/materialcalendarview/format/TitleFormatter;
    .locals 1

    .prologue
    .line 134
    iget-object v0, p0, Lcom/prolificinteractive/materialcalendarview/TitleChanger;->titleFormatter:Lcom/prolificinteractive/materialcalendarview/format/TitleFormatter;

    return-object v0
.end method

.method public setOrientation(I)V
    .locals 0
    .param p1, "orientation"    # I

    .prologue
    .line 142
    iput p1, p0, Lcom/prolificinteractive/materialcalendarview/TitleChanger;->orientation:I

    .line 143
    return-void
.end method

.method public setPreviousMonth(Lcom/prolificinteractive/materialcalendarview/CalendarDay;)V
    .locals 0
    .param p1, "previousMonth"    # Lcom/prolificinteractive/materialcalendarview/CalendarDay;

    .prologue
    .line 150
    iput-object p1, p0, Lcom/prolificinteractive/materialcalendarview/TitleChanger;->previousMonth:Lcom/prolificinteractive/materialcalendarview/CalendarDay;

    .line 151
    return-void
.end method

.method public setTitleFormatter(Lcom/prolificinteractive/materialcalendarview/format/TitleFormatter;)V
    .locals 0
    .param p1, "titleFormatter"    # Lcom/prolificinteractive/materialcalendarview/format/TitleFormatter;

    .prologue
    .line 138
    iput-object p1, p0, Lcom/prolificinteractive/materialcalendarview/TitleChanger;->titleFormatter:Lcom/prolificinteractive/materialcalendarview/format/TitleFormatter;

    .line 139
    return-void
.end method
