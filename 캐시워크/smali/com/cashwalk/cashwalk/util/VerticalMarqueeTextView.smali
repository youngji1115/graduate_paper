.class public Lcom/cashwalk/cashwalk/util/VerticalMarqueeTextView;
.super Landroid/widget/ScrollView;
.source "VerticalMarqueeTextView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cashwalk/cashwalk/util/VerticalMarqueeTextView$MarqueeRunnable;
    }
.end annotation


# static fields
.field private static final MAX_MARQUEE_SPEED:I = 0x3e8

.field private static final MIN_MARQUEE_SPEED:I = 0x1

.field private static final SECOND:D = 1000.0

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private handler:Landroid/os/Handler;

.field private isAnimating:Z

.field private marqueePaused:Z

.field private marqueeSpeed:I

.field private marqueeStarted:Z

.field private textView:Landroid/widget/TextView;

.field private unitDisplacement:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 19
    const-class v0, Lcom/cashwalk/cashwalk/util/VerticalMarqueeTextView;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/cashwalk/cashwalk/util/VerticalMarqueeTextView;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 38
    invoke-direct {p0, p1}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;)V

    .line 40
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/cashwalk/cashwalk/util/VerticalMarqueeTextView;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 41
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 44
    invoke-direct {p0, p1, p2}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 46
    invoke-direct {p0, p1, p2}, Lcom/cashwalk/cashwalk/util/VerticalMarqueeTextView;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 47
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 50
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 52
    invoke-direct {p0, p1, p2}, Lcom/cashwalk/cashwalk/util/VerticalMarqueeTextView;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 53
    return-void
.end method

.method static synthetic access$000(Lcom/cashwalk/cashwalk/util/VerticalMarqueeTextView;)V
    .locals 0
    .param p0, "x0"    # Lcom/cashwalk/cashwalk/util/VerticalMarqueeTextView;

    .prologue
    .line 18
    invoke-direct {p0}, Lcom/cashwalk/cashwalk/util/VerticalMarqueeTextView;->animateTextView()V

    return-void
.end method

.method static synthetic access$100(Lcom/cashwalk/cashwalk/util/VerticalMarqueeTextView;)I
    .locals 1
    .param p0, "x0"    # Lcom/cashwalk/cashwalk/util/VerticalMarqueeTextView;

    .prologue
    .line 18
    iget v0, p0, Lcom/cashwalk/cashwalk/util/VerticalMarqueeTextView;->unitDisplacement:I

    return v0
.end method

.method private animateTextView()V
    .locals 10

    .prologue
    const-wide v8, 0x408f400000000000L    # 1000.0

    .line 216
    new-instance v3, Lcom/cashwalk/cashwalk/util/VerticalMarqueeTextView$MarqueeRunnable;

    iget-object v6, p0, Lcom/cashwalk/cashwalk/util/VerticalMarqueeTextView;->textView:Landroid/widget/TextView;

    invoke-direct {v3, p0, v6}, Lcom/cashwalk/cashwalk/util/VerticalMarqueeTextView$MarqueeRunnable;-><init>(Lcom/cashwalk/cashwalk/util/VerticalMarqueeTextView;Landroid/widget/TextView;)V

    .line 218
    .local v3, "runnable":Ljava/lang/Runnable;
    const-wide/16 v4, 0x0

    .line 220
    .local v4, "previousMillis":J
    :goto_0
    iget-boolean v6, p0, Lcom/cashwalk/cashwalk/util/VerticalMarqueeTextView;->marqueeStarted:Z

    if-eqz v6, :cond_1

    iget-boolean v6, p0, Lcom/cashwalk/cashwalk/util/VerticalMarqueeTextView;->marqueePaused:Z

    if-nez v6, :cond_1

    .line 221
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 223
    .local v0, "currentMillis":J
    cmp-long v6, v0, v4

    if-ltz v6, :cond_0

    .line 224
    iget-object v6, p0, Lcom/cashwalk/cashwalk/util/VerticalMarqueeTextView;->handler:Landroid/os/Handler;

    invoke-virtual {v6, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 226
    iget v6, p0, Lcom/cashwalk/cashwalk/util/VerticalMarqueeTextView;->marqueeSpeed:I

    int-to-double v6, v6

    div-double v6, v8, v6

    double-to-long v6, v6

    add-long v4, v0, v6

    .line 230
    :cond_0
    :try_start_0
    iget v6, p0, Lcom/cashwalk/cashwalk/util/VerticalMarqueeTextView;->marqueeSpeed:I

    int-to-double v6, v6

    div-double v6, v8, v6

    double-to-long v6, v6

    invoke-static {v6, v7}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 231
    :catch_0
    move-exception v2

    .line 232
    .local v2, "e":Ljava/lang/InterruptedException;
    sget-object v6, Lcom/cashwalk/cashwalk/util/VerticalMarqueeTextView;->TAG:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/InterruptedException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 236
    .end local v0    # "currentMillis":J
    .end local v2    # "e":Ljava/lang/InterruptedException;
    :cond_1
    const/4 v6, 0x0

    iput-boolean v6, p0, Lcom/cashwalk/cashwalk/util/VerticalMarqueeTextView;->isAnimating:Z

    .line 237
    return-void
.end method

.method private init(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 13
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 146
    new-instance v9, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v10

    invoke-direct {v9, v10}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v9, p0, Lcom/cashwalk/cashwalk/util/VerticalMarqueeTextView;->handler:Landroid/os/Handler;

    .line 149
    invoke-virtual {p0}, Lcom/cashwalk/cashwalk/util/VerticalMarqueeTextView;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v9

    iget v9, v9, Landroid/util/DisplayMetrics;->density:F

    invoke-static {v9}, Ljava/lang/Math;->round(F)I

    move-result v9

    iput v9, p0, Lcom/cashwalk/cashwalk/util/VerticalMarqueeTextView;->unitDisplacement:I

    .line 151
    new-instance v9, Landroid/widget/TextView;

    invoke-direct {v9, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v9, p0, Lcom/cashwalk/cashwalk/util/VerticalMarqueeTextView;->textView:Landroid/widget/TextView;

    .line 152
    iget-object v9, p0, Lcom/cashwalk/cashwalk/util/VerticalMarqueeTextView;->textView:Landroid/widget/TextView;

    const/4 v10, 0x3

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setGravity(I)V

    .line 153
    iget-object v9, p0, Lcom/cashwalk/cashwalk/util/VerticalMarqueeTextView;->textView:Landroid/widget/TextView;

    new-instance v10, Landroid/view/ViewGroup$LayoutParams;

    const/4 v11, -0x1

    const/4 v12, -0x1

    invoke-direct {v10, v11, v12}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v9, v10}, Lcom/cashwalk/cashwalk/util/VerticalMarqueeTextView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 154
    iget-object v9, p0, Lcom/cashwalk/cashwalk/util/VerticalMarqueeTextView;->textView:Landroid/widget/TextView;

    const/4 v10, 0x0

    invoke-virtual {p0}, Lcom/cashwalk/cashwalk/util/VerticalMarqueeTextView;->getHeight()I

    move-result v11

    neg-int v11, v11

    invoke-virtual {v9, v10, v11}, Landroid/widget/TextView;->scrollTo(II)V

    .line 156
    const/4 v9, 0x0

    invoke-virtual {p0, v9}, Lcom/cashwalk/cashwalk/util/VerticalMarqueeTextView;->setHorizontalScrollBarEnabled(Z)V

    .line 157
    const/4 v9, 0x0

    invoke-virtual {p0, v9}, Lcom/cashwalk/cashwalk/util/VerticalMarqueeTextView;->setVerticalScrollBarEnabled(Z)V

    .line 158
    const/4 v9, 0x0

    invoke-virtual {p0, v9}, Lcom/cashwalk/cashwalk/util/VerticalMarqueeTextView;->setHorizontalFadingEdgeEnabled(Z)V

    .line 159
    const/4 v9, 0x1

    invoke-virtual {p0, v9}, Lcom/cashwalk/cashwalk/util/VerticalMarqueeTextView;->setVerticalFadingEdgeEnabled(Z)V

    .line 160
    const/16 v9, 0x1e

    invoke-virtual {p0, v9}, Lcom/cashwalk/cashwalk/util/VerticalMarqueeTextView;->setFadingEdgeLength(I)V

    .line 162
    if-eqz p2, :cond_7

    .line 163
    sget-object v9, Lcom/cashwalk/cashwalk/R$styleable;->VerticalMarqueeTextView:[I

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-virtual {p1, p2, v9, v10, v11}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 165
    .local v0, "array":Landroid/content/res/TypedArray;
    iget-object v9, p0, Lcom/cashwalk/cashwalk/util/VerticalMarqueeTextView;->textView:Landroid/widget/TextView;

    const/4 v10, 0x2

    invoke-virtual {v0, v10}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 167
    const/4 v9, 0x2

    const/4 v10, 0x0

    invoke-virtual {v0, v9, v10}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v5

    .line 168
    .local v5, "textRes":I
    if-lez v5, :cond_0

    .line 169
    iget-object v9, p0, Lcom/cashwalk/cashwalk/util/VerticalMarqueeTextView;->textView:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 172
    :cond_0
    iget-object v9, p0, Lcom/cashwalk/cashwalk/util/VerticalMarqueeTextView;->textView:Landroid/widget/TextView;

    const/4 v10, 0x4

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const v12, 0x1060003

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getColor(I)I

    move-result v11

    invoke-virtual {v0, v10, v11}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v10

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setTextColor(I)V

    .line 174
    const/4 v9, 0x4

    const/4 v10, 0x0

    invoke-virtual {v0, v9, v10}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v4

    .line 175
    .local v4, "textColorRes":I
    if-lez v4, :cond_1

    .line 176
    iget-object v9, p0, Lcom/cashwalk/cashwalk/util/VerticalMarqueeTextView;->textView:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    invoke-virtual {v10, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v10

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setTextColor(I)V

    .line 179
    :cond_1
    const/4 v9, 0x3

    const/4 v10, 0x0

    invoke-virtual {v0, v9, v10}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v6

    .line 180
    .local v6, "textSize":F
    const/4 v9, 0x0

    cmpl-float v9, v6, v9

    if-lez v9, :cond_2

    .line 181
    iget-object v9, p0, Lcom/cashwalk/cashwalk/util/VerticalMarqueeTextView;->textView:Landroid/widget/TextView;

    invoke-virtual {v9, v6}, Landroid/widget/TextView;->setTextSize(F)V

    .line 184
    :cond_2
    const/4 v9, 0x3

    const/4 v10, 0x0

    invoke-virtual {v0, v9, v10}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v7

    .line 185
    .local v7, "textSizeRes":I
    if-lez v7, :cond_3

    .line 186
    iget-object v9, p0, Lcom/cashwalk/cashwalk/util/VerticalMarqueeTextView;->textView:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    invoke-virtual {v10, v7}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v10

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setTextSize(F)V

    .line 189
    :cond_3
    const/4 v9, 0x7

    const/4 v10, 0x0

    invoke-virtual {v0, v9, v10}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v8

    .line 190
    .local v8, "typeface":I
    iget-object v10, p0, Lcom/cashwalk/cashwalk/util/VerticalMarqueeTextView;->textView:Landroid/widget/TextView;

    const/4 v9, 0x1

    if-ne v8, v9, :cond_8

    sget-object v9, Landroid/graphics/Typeface;->SANS_SERIF:Landroid/graphics/Typeface;

    :goto_0
    const/4 v11, 0x6

    const/4 v12, 0x0

    invoke-virtual {v0, v11, v12}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v11

    invoke-virtual {v10, v9, v11}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 192
    const/4 v9, 0x5

    const/4 v10, 0x0

    invoke-virtual {v0, v9, v10}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v3

    .line 193
    .local v3, "textAppearance":I
    if-lez v3, :cond_4

    .line 194
    iget-object v9, p0, Lcom/cashwalk/cashwalk/util/VerticalMarqueeTextView;->textView:Landroid/widget/TextView;

    invoke-virtual {v9, p1, v3}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 197
    :cond_4
    const/4 v9, 0x1

    const/4 v10, 0x0

    invoke-virtual {v0, v9, v10}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v9

    invoke-virtual {p0, v9}, Lcom/cashwalk/cashwalk/util/VerticalMarqueeTextView;->setMarqueeSpeed(I)V

    .line 199
    const/4 v9, 0x1

    const/4 v10, 0x0

    invoke-virtual {v0, v9, v10}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    .line 200
    .local v2, "marqueeSpeedRes":I
    if-lez v2, :cond_5

    .line 201
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    invoke-virtual {v9, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v9

    invoke-virtual {p0, v9}, Lcom/cashwalk/cashwalk/util/VerticalMarqueeTextView;->setMarqueeSpeed(I)V

    .line 204
    :cond_5
    const/4 v9, 0x0

    const/4 v10, 0x1

    invoke-virtual {v0, v9, v10}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    .line 206
    .local v1, "autoStartMarquee":Z
    if-eqz v1, :cond_6

    .line 207
    const/4 v9, 0x1

    iput-boolean v9, p0, Lcom/cashwalk/cashwalk/util/VerticalMarqueeTextView;->marqueeStarted:Z

    .line 209
    :cond_6
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 212
    .end local v0    # "array":Landroid/content/res/TypedArray;
    .end local v1    # "autoStartMarquee":Z
    .end local v2    # "marqueeSpeedRes":I
    .end local v3    # "textAppearance":I
    .end local v4    # "textColorRes":I
    .end local v5    # "textRes":I
    .end local v6    # "textSize":F
    .end local v7    # "textSizeRes":I
    .end local v8    # "typeface":I
    :cond_7
    iget-object v9, p0, Lcom/cashwalk/cashwalk/util/VerticalMarqueeTextView;->textView:Landroid/widget/TextView;

    const/4 v10, 0x1

    const/high16 v11, 0x41400000    # 12.0f

    invoke-virtual {v9, v10, v11}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 213
    return-void

    .line 190
    .restart local v0    # "array":Landroid/content/res/TypedArray;
    .restart local v4    # "textColorRes":I
    .restart local v5    # "textRes":I
    .restart local v6    # "textSize":F
    .restart local v7    # "textSizeRes":I
    .restart local v8    # "typeface":I
    :cond_8
    const/4 v9, 0x2

    if-ne v8, v9, :cond_9

    sget-object v9, Landroid/graphics/Typeface;->SERIF:Landroid/graphics/Typeface;

    goto :goto_0

    :cond_9
    const/4 v9, 0x3

    if-ne v8, v9, :cond_a

    sget-object v9, Landroid/graphics/Typeface;->MONOSPACE:Landroid/graphics/Typeface;

    goto :goto_0

    :cond_a
    sget-object v9, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    goto :goto_0
.end method


# virtual methods
.method public getMarqueeSpeed()I
    .locals 1

    .prologue
    .line 76
    iget v0, p0, Lcom/cashwalk/cashwalk/util/VerticalMarqueeTextView;->marqueeSpeed:I

    return v0
.end method

.method public getText()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lcom/cashwalk/cashwalk/util/VerticalMarqueeTextView;->textView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method protected getTopFadingEdgeStrength()F
    .locals 4

    .prologue
    .line 131
    invoke-virtual {p0}, Lcom/cashwalk/cashwalk/util/VerticalMarqueeTextView;->getChildCount()I

    move-result v2

    if-nez v2, :cond_0

    .line 132
    const/4 v2, 0x0

    .line 142
    :goto_0
    return v2

    .line 135
    :cond_0
    invoke-virtual {p0}, Lcom/cashwalk/cashwalk/util/VerticalMarqueeTextView;->getVerticalFadingEdgeLength()I

    move-result v0

    .line 136
    .local v0, "length":I
    iget-object v2, p0, Lcom/cashwalk/cashwalk/util/VerticalMarqueeTextView;->textView:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getScrollY()I

    move-result v1

    .line 138
    .local v1, "scrollY":I
    if-ge v1, v0, :cond_1

    .line 139
    int-to-float v2, v1

    int-to-float v3, v0

    div-float/2addr v2, v3

    goto :goto_0

    .line 142
    :cond_1
    const/high16 v2, 0x3f800000    # 1.0f

    goto :goto_0
.end method

.method protected onAttachedToWindow()V
    .locals 1

    .prologue
    .line 115
    invoke-super {p0}, Landroid/widget/ScrollView;->onAttachedToWindow()V

    .line 117
    iget-boolean v0, p0, Lcom/cashwalk/cashwalk/util/VerticalMarqueeTextView;->marqueeStarted:Z

    if-eqz v0, :cond_0

    .line 118
    invoke-virtual {p0}, Lcom/cashwalk/cashwalk/util/VerticalMarqueeTextView;->startMarquee()V

    .line 120
    :cond_0
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .prologue
    .line 124
    invoke-super {p0}, Landroid/widget/ScrollView;->onDetachedFromWindow()V

    .line 126
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/cashwalk/cashwalk/util/VerticalMarqueeTextView;->marqueePaused:Z

    .line 127
    return-void
.end method

.method public setMarqueeSpeed(I)V
    .locals 2
    .param p1, "marqueeSpeed"    # I

    .prologue
    .line 84
    const/16 v0, 0x3e8

    const/4 v1, 0x1

    invoke-static {v1, p1}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Lcom/cashwalk/cashwalk/util/VerticalMarqueeTextView;->marqueeSpeed:I

    .line 85
    return-void
.end method

.method public setText(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "text"    # Ljava/lang/CharSequence;

    .prologue
    .line 68
    iget-object v0, p0, Lcom/cashwalk/cashwalk/util/VerticalMarqueeTextView;->textView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 69
    return-void
.end method

.method public startMarquee()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 91
    iput-boolean v1, p0, Lcom/cashwalk/cashwalk/util/VerticalMarqueeTextView;->marqueeStarted:Z

    .line 92
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/cashwalk/cashwalk/util/VerticalMarqueeTextView;->marqueePaused:Z

    .line 94
    iget-boolean v0, p0, Lcom/cashwalk/cashwalk/util/VerticalMarqueeTextView;->isAnimating:Z

    if-nez v0, :cond_0

    .line 95
    iput-boolean v1, p0, Lcom/cashwalk/cashwalk/util/VerticalMarqueeTextView;->isAnimating:Z

    .line 97
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/cashwalk/cashwalk/util/VerticalMarqueeTextView$1;

    invoke-direct {v1, p0}, Lcom/cashwalk/cashwalk/util/VerticalMarqueeTextView$1;-><init>(Lcom/cashwalk/cashwalk/util/VerticalMarqueeTextView;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 102
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 104
    :cond_0
    return-void
.end method

.method public stopMarquee()V
    .locals 1

    .prologue
    .line 110
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/cashwalk/cashwalk/util/VerticalMarqueeTextView;->marqueeStarted:Z

    .line 111
    return-void
.end method
