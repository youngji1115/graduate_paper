.class public Lcom/cashwalk/cashwalk/util/ScrollTextView;
.super Landroid/widget/TextSwitcher;
.source "ScrollTextView.java"


# instance fields
.field private ANIM_DURATION:I

.field private DEFAULT_TEXT_COLOR:I

.field private TEXT_DURATION:I

.field private TEXT_SIZE:I

.field private handler:Landroid/os/Handler;

.field private i:I

.field private texts:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 30
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/widget/TextSwitcher;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 22
    const/16 v0, 0x3e8

    iput v0, p0, Lcom/cashwalk/cashwalk/util/ScrollTextView;->TEXT_DURATION:I

    .line 23
    const/16 v0, 0x320

    iput v0, p0, Lcom/cashwalk/cashwalk/util/ScrollTextView;->ANIM_DURATION:I

    .line 24
    const/16 v0, 0x10

    iput v0, p0, Lcom/cashwalk/cashwalk/util/ScrollTextView;->TEXT_SIZE:I

    .line 25
    const-string v0, "#FF000000"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/cashwalk/cashwalk/util/ScrollTextView;->DEFAULT_TEXT_COLOR:I

    .line 26
    const/4 v0, 0x0

    iput v0, p0, Lcom/cashwalk/cashwalk/util/ScrollTextView;->i:I

    .line 31
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 34
    invoke-direct {p0, p1, p2}, Landroid/widget/TextSwitcher;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 22
    const/16 v0, 0x3e8

    iput v0, p0, Lcom/cashwalk/cashwalk/util/ScrollTextView;->TEXT_DURATION:I

    .line 23
    const/16 v0, 0x320

    iput v0, p0, Lcom/cashwalk/cashwalk/util/ScrollTextView;->ANIM_DURATION:I

    .line 24
    const/16 v0, 0x10

    iput v0, p0, Lcom/cashwalk/cashwalk/util/ScrollTextView;->TEXT_SIZE:I

    .line 25
    const-string v0, "#FF000000"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/cashwalk/cashwalk/util/ScrollTextView;->DEFAULT_TEXT_COLOR:I

    .line 26
    const/4 v0, 0x0

    iput v0, p0, Lcom/cashwalk/cashwalk/util/ScrollTextView;->i:I

    .line 35
    new-instance v0, Lcom/cashwalk/cashwalk/util/ScrollTextView$1;

    invoke-direct {v0, p0}, Lcom/cashwalk/cashwalk/util/ScrollTextView$1;-><init>(Lcom/cashwalk/cashwalk/util/ScrollTextView;)V

    iput-object v0, p0, Lcom/cashwalk/cashwalk/util/ScrollTextView;->handler:Landroid/os/Handler;

    .line 45
    return-void
.end method

.method static synthetic access$000(Lcom/cashwalk/cashwalk/util/ScrollTextView;)I
    .locals 1
    .param p0, "x0"    # Lcom/cashwalk/cashwalk/util/ScrollTextView;

    .prologue
    .line 20
    iget v0, p0, Lcom/cashwalk/cashwalk/util/ScrollTextView;->i:I

    return v0
.end method

.method static synthetic access$008(Lcom/cashwalk/cashwalk/util/ScrollTextView;)I
    .locals 2
    .param p0, "x0"    # Lcom/cashwalk/cashwalk/util/ScrollTextView;

    .prologue
    .line 20
    iget v0, p0, Lcom/cashwalk/cashwalk/util/ScrollTextView;->i:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/cashwalk/cashwalk/util/ScrollTextView;->i:I

    return v0
.end method

.method static synthetic access$100(Lcom/cashwalk/cashwalk/util/ScrollTextView;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/cashwalk/cashwalk/util/ScrollTextView;

    .prologue
    .line 20
    iget-object v0, p0, Lcom/cashwalk/cashwalk/util/ScrollTextView;->texts:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$200(Lcom/cashwalk/cashwalk/util/ScrollTextView;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/cashwalk/cashwalk/util/ScrollTextView;

    .prologue
    .line 20
    iget-object v0, p0, Lcom/cashwalk/cashwalk/util/ScrollTextView;->handler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$300(Lcom/cashwalk/cashwalk/util/ScrollTextView;)I
    .locals 1
    .param p0, "x0"    # Lcom/cashwalk/cashwalk/util/ScrollTextView;

    .prologue
    .line 20
    iget v0, p0, Lcom/cashwalk/cashwalk/util/ScrollTextView;->DEFAULT_TEXT_COLOR:I

    return v0
.end method

.method static synthetic access$400(Lcom/cashwalk/cashwalk/util/ScrollTextView;)I
    .locals 1
    .param p0, "x0"    # Lcom/cashwalk/cashwalk/util/ScrollTextView;

    .prologue
    .line 20
    iget v0, p0, Lcom/cashwalk/cashwalk/util/ScrollTextView;->TEXT_SIZE:I

    return v0
.end method


# virtual methods
.method public setAnimDuration(I)V
    .locals 0
    .param p1, "duration"    # I

    .prologue
    .line 125
    iput p1, p0, Lcom/cashwalk/cashwalk/util/ScrollTextView;->ANIM_DURATION:I

    .line 126
    return-void
.end method

.method public setContentTextColor(I)V
    .locals 0
    .param p1, "color"    # I

    .prologue
    .line 114
    iput p1, p0, Lcom/cashwalk/cashwalk/util/ScrollTextView;->DEFAULT_TEXT_COLOR:I

    .line 115
    return-void
.end method

.method public setContentTextSize(I)V
    .locals 0
    .param p1, "textSize"    # I

    .prologue
    .line 118
    iput p1, p0, Lcom/cashwalk/cashwalk/util/ScrollTextView;->TEXT_SIZE:I

    .line 119
    return-void
.end method

.method public setFactory(Landroid/widget/ViewSwitcher$ViewFactory;)V
    .locals 0
    .param p1, "factory"    # Landroid/widget/ViewSwitcher$ViewFactory;

    .prologue
    .line 97
    if-nez p1, :cond_0

    .line 98
    new-instance p1, Lcom/cashwalk/cashwalk/util/ScrollTextView$3;

    .end local p1    # "factory":Landroid/widget/ViewSwitcher$ViewFactory;
    invoke-direct {p1, p0}, Lcom/cashwalk/cashwalk/util/ScrollTextView$3;-><init>(Lcom/cashwalk/cashwalk/util/ScrollTextView;)V

    .line 109
    .restart local p1    # "factory":Landroid/widget/ViewSwitcher$ViewFactory;
    invoke-super {p0, p1}, Landroid/widget/TextSwitcher;->setFactory(Landroid/widget/ViewSwitcher$ViewFactory;)V

    .line 111
    :cond_0
    return-void
.end method

.method public setInAnimation(Landroid/view/animation/Animation;)V
    .locals 9
    .param p1, "inAnimation"    # Landroid/view/animation/Animation;

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 80
    if-nez p1, :cond_0

    .line 81
    new-instance p1, Landroid/view/animation/TranslateAnimation;

    .end local p1    # "inAnimation":Landroid/view/animation/Animation;
    const/high16 v6, 0x3f800000    # 1.0f

    const/4 v7, 0x2

    move-object v0, p1

    move v3, v1

    move v4, v2

    move v5, v1

    move v8, v2

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    .line 82
    .restart local p1    # "inAnimation":Landroid/view/animation/Animation;
    iget v0, p0, Lcom/cashwalk/cashwalk/util/ScrollTextView;->ANIM_DURATION:I

    int-to-long v2, v0

    invoke-virtual {p1, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 83
    invoke-virtual {p1, v1}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    .line 84
    invoke-super {p0, p1}, Landroid/widget/TextSwitcher;->setInAnimation(Landroid/view/animation/Animation;)V

    .line 86
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/TextSwitcher;->setInAnimation(Landroid/view/animation/Animation;)V

    .line 87
    return-void
.end method

.method public setOutAnimation(Landroid/view/animation/Animation;)V
    .locals 9
    .param p1, "outAnimation"    # Landroid/view/animation/Animation;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 49
    if-nez p1, :cond_0

    .line 50
    new-instance p1, Landroid/view/animation/TranslateAnimation;

    .end local p1    # "outAnimation":Landroid/view/animation/Animation;
    const/4 v7, 0x2

    const/high16 v8, -0x40800000    # -1.0f

    move-object v0, p1

    move v3, v1

    move v4, v2

    move v5, v1

    move v6, v2

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    .line 51
    .restart local p1    # "outAnimation":Landroid/view/animation/Animation;
    iget v0, p0, Lcom/cashwalk/cashwalk/util/ScrollTextView;->ANIM_DURATION:I

    int-to-long v0, v0

    invoke-virtual {p1, v0, v1}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 52
    invoke-super {p0, p1}, Landroid/widget/TextSwitcher;->setOutAnimation(Landroid/view/animation/Animation;)V

    .line 54
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/TextSwitcher;->setOutAnimation(Landroid/view/animation/Animation;)V

    .line 55
    return-void
.end method

.method public setTextDuration(I)V
    .locals 0
    .param p1, "duration"    # I

    .prologue
    .line 122
    iput p1, p0, Lcom/cashwalk/cashwalk/util/ScrollTextView;->TEXT_DURATION:I

    .line 123
    return-void
.end method

.method public setTexts(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 90
    .local p1, "texts":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz p1, :cond_0

    .line 91
    iput-object p1, p0, Lcom/cashwalk/cashwalk/util/ScrollTextView;->texts:Ljava/util/List;

    .line 93
    :cond_0
    return-void
.end method

.method public start()V
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 59
    invoke-virtual {p0, v1}, Lcom/cashwalk/cashwalk/util/ScrollTextView;->setFactory(Landroid/widget/ViewSwitcher$ViewFactory;)V

    .line 60
    invoke-virtual {p0, v1}, Lcom/cashwalk/cashwalk/util/ScrollTextView;->setInAnimation(Landroid/view/animation/Animation;)V

    .line 61
    invoke-virtual {p0, v1}, Lcom/cashwalk/cashwalk/util/ScrollTextView;->setOutAnimation(Landroid/view/animation/Animation;)V

    .line 62
    new-instance v0, Ljava/util/Timer;

    const-string/jumbo v1, "start"

    invoke-direct {v0, v1}, Ljava/util/Timer;-><init>(Ljava/lang/String;)V

    .line 63
    .local v0, "timer":Ljava/util/Timer;
    new-instance v1, Lcom/cashwalk/cashwalk/util/ScrollTextView$2;

    invoke-direct {v1, p0}, Lcom/cashwalk/cashwalk/util/ScrollTextView$2;-><init>(Lcom/cashwalk/cashwalk/util/ScrollTextView;)V

    const-wide/16 v2, 0x0

    iget v4, p0, Lcom/cashwalk/cashwalk/util/ScrollTextView;->TEXT_DURATION:I

    int-to-long v4, v4

    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    .line 76
    return-void
.end method
