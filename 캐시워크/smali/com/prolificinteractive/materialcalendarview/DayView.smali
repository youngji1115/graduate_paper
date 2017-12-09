.class Lcom/prolificinteractive/materialcalendarview/DayView;
.super Landroid/widget/CheckedTextView;
.source "DayView.java"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "ViewConstructor"
    }
.end annotation


# instance fields
.field private final circleDrawableRect:Landroid/graphics/Rect;

.field private customBackground:Landroid/graphics/drawable/Drawable;

.field private date:Lcom/prolificinteractive/materialcalendarview/CalendarDay;

.field private final fadeTime:I

.field private formatter:Lcom/prolificinteractive/materialcalendarview/format/DayFormatter;

.field private isDecoratedDisabled:Z

.field private isInMonth:Z

.field private isInRange:Z

.field private mCircleDrawable:Landroid/graphics/drawable/Drawable;

.field private selectionColor:I

.field private selectionDrawable:Landroid/graphics/drawable/Drawable;

.field private showOtherDates:I
    .annotation runtime Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView$ShowOtherDates;
    .end annotation
.end field

.field private final tempRect:Landroid/graphics/Rect;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/prolificinteractive/materialcalendarview/CalendarDay;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "day"    # Lcom/prolificinteractive/materialcalendarview/CalendarDay;

    .prologue
    const/16 v3, 0x11

    const/4 v2, 0x4

    const/4 v1, 0x1

    .line 54
    invoke-direct {p0, p1}, Landroid/widget/CheckedTextView;-><init>(Landroid/content/Context;)V

    .line 39
    const v0, -0x777778

    iput v0, p0, Lcom/prolificinteractive/materialcalendarview/DayView;->selectionColor:I

    .line 42
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/prolificinteractive/materialcalendarview/DayView;->customBackground:Landroid/graphics/drawable/Drawable;

    .line 45
    sget-object v0, Lcom/prolificinteractive/materialcalendarview/format/DayFormatter;->DEFAULT:Lcom/prolificinteractive/materialcalendarview/format/DayFormatter;

    iput-object v0, p0, Lcom/prolificinteractive/materialcalendarview/DayView;->formatter:Lcom/prolificinteractive/materialcalendarview/format/DayFormatter;

    .line 47
    iput-boolean v1, p0, Lcom/prolificinteractive/materialcalendarview/DayView;->isInRange:Z

    .line 48
    iput-boolean v1, p0, Lcom/prolificinteractive/materialcalendarview/DayView;->isInMonth:Z

    .line 49
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/prolificinteractive/materialcalendarview/DayView;->isDecoratedDisabled:Z

    .line 50
    iput v2, p0, Lcom/prolificinteractive/materialcalendarview/DayView;->showOtherDates:I

    .line 169
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/prolificinteractive/materialcalendarview/DayView;->tempRect:Landroid/graphics/Rect;

    .line 170
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/prolificinteractive/materialcalendarview/DayView;->circleDrawableRect:Landroid/graphics/Rect;

    .line 56
    invoke-virtual {p0}, Lcom/prolificinteractive/materialcalendarview/DayView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const/high16 v1, 0x10e0000

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/prolificinteractive/materialcalendarview/DayView;->fadeTime:I

    .line 58
    iget v0, p0, Lcom/prolificinteractive/materialcalendarview/DayView;->selectionColor:I

    invoke-virtual {p0, v0}, Lcom/prolificinteractive/materialcalendarview/DayView;->setSelectionColor(I)V

    .line 60
    invoke-virtual {p0, v3}, Lcom/prolificinteractive/materialcalendarview/DayView;->setGravity(I)V

    .line 62
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v0, v3, :cond_0

    .line 63
    invoke-virtual {p0, v2}, Lcom/prolificinteractive/materialcalendarview/DayView;->setTextAlignment(I)V

    .line 66
    :cond_0
    invoke-virtual {p0, p2}, Lcom/prolificinteractive/materialcalendarview/DayView;->setDay(Lcom/prolificinteractive/materialcalendarview/CalendarDay;)V

    .line 67
    return-void
.end method

.method private calculateBounds(II)V
    .locals 6
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    const/4 v5, 0x0

    .line 268
    invoke-static {p2, p1}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 269
    .local v2, "radius":I
    sub-int v3, p2, p1

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v3

    div-int/lit8 v1, v3, 0x2

    .line 272
    .local v1, "offset":I
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x15

    if-ne v3, v4, :cond_0

    div-int/lit8 v0, v1, 0x2

    .line 274
    .local v0, "circleOffset":I
    :goto_0
    if-lt p1, p2, :cond_1

    .line 275
    iget-object v3, p0, Lcom/prolificinteractive/materialcalendarview/DayView;->tempRect:Landroid/graphics/Rect;

    add-int v4, v2, v1

    invoke-virtual {v3, v1, v5, v4, p2}, Landroid/graphics/Rect;->set(IIII)V

    .line 276
    iget-object v3, p0, Lcom/prolificinteractive/materialcalendarview/DayView;->circleDrawableRect:Landroid/graphics/Rect;

    add-int v4, v2, v0

    invoke-virtual {v3, v0, v5, v4, p2}, Landroid/graphics/Rect;->set(IIII)V

    .line 281
    :goto_1
    return-void

    .end local v0    # "circleOffset":I
    :cond_0
    move v0, v1

    .line 272
    goto :goto_0

    .line 278
    .restart local v0    # "circleOffset":I
    :cond_1
    iget-object v3, p0, Lcom/prolificinteractive/materialcalendarview/DayView;->tempRect:Landroid/graphics/Rect;

    add-int v4, v2, v1

    invoke-virtual {v3, v5, v1, p1, v4}, Landroid/graphics/Rect;->set(IIII)V

    .line 279
    iget-object v3, p0, Lcom/prolificinteractive/materialcalendarview/DayView;->circleDrawableRect:Landroid/graphics/Rect;

    add-int v4, v2, v0

    invoke-virtual {v3, v5, v0, p1, v4}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_1
.end method

.method private static generateBackground(IILandroid/graphics/Rect;)Landroid/graphics/drawable/Drawable;
    .locals 6
    .param p0, "color"    # I
    .param p1, "fadeTime"    # I
    .param p2, "bounds"    # Landroid/graphics/Rect;

    .prologue
    const v5, 0x10100a7

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 195
    new-instance v0, Landroid/graphics/drawable/StateListDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/StateListDrawable;-><init>()V

    .line 196
    .local v0, "drawable":Landroid/graphics/drawable/StateListDrawable;
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/StateListDrawable;->setExitFadeDuration(I)V

    .line 197
    new-array v1, v4, [I

    const v2, 0x10100a0

    aput v2, v1, v3

    invoke-static {p0}, Lcom/prolificinteractive/materialcalendarview/DayView;->generateCircleDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 198
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x15

    if-lt v1, v2, :cond_0

    .line 199
    new-array v1, v4, [I

    aput v5, v1, v3

    invoke-static {p0, p2}, Lcom/prolificinteractive/materialcalendarview/DayView;->generateRippleDrawable(ILandroid/graphics/Rect;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 204
    :goto_0
    new-array v1, v3, [I

    invoke-static {v3}, Lcom/prolificinteractive/materialcalendarview/DayView;->generateCircleDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 206
    return-object v0

    .line 201
    :cond_0
    new-array v1, v4, [I

    aput v5, v1, v3

    invoke-static {p0}, Lcom/prolificinteractive/materialcalendarview/DayView;->generateCircleDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method

.method private static generateCircleDrawable(I)Landroid/graphics/drawable/Drawable;
    .locals 2
    .param p0, "color"    # I

    .prologue
    .line 210
    new-instance v0, Landroid/graphics/drawable/ShapeDrawable;

    new-instance v1, Landroid/graphics/drawable/shapes/OvalShape;

    invoke-direct {v1}, Landroid/graphics/drawable/shapes/OvalShape;-><init>()V

    invoke-direct {v0, v1}, Landroid/graphics/drawable/ShapeDrawable;-><init>(Landroid/graphics/drawable/shapes/Shape;)V

    .line 211
    .local v0, "drawable":Landroid/graphics/drawable/ShapeDrawable;
    invoke-virtual {v0}, Landroid/graphics/drawable/ShapeDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/graphics/Paint;->setColor(I)V

    .line 212
    return-object v0
.end method

.method private static generateRippleDrawable(ILandroid/graphics/Rect;)Landroid/graphics/drawable/Drawable;
    .locals 6
    .param p0, "color"    # I
    .param p1, "bounds"    # Landroid/graphics/Rect;
    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    .prologue
    .line 217
    invoke-static {p0}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    .line 218
    .local v1, "list":Landroid/content/res/ColorStateList;
    const/4 v4, -0x1

    invoke-static {v4}, Lcom/prolificinteractive/materialcalendarview/DayView;->generateCircleDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 219
    .local v2, "mask":Landroid/graphics/drawable/Drawable;
    new-instance v3, Landroid/graphics/drawable/RippleDrawable;

    const/4 v4, 0x0

    invoke-direct {v3, v1, v4, v2}, Landroid/graphics/drawable/RippleDrawable;-><init>(Landroid/content/res/ColorStateList;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 221
    .local v3, "rippleDrawable":Landroid/graphics/drawable/RippleDrawable;
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x15

    if-ne v4, v5, :cond_0

    .line 222
    invoke-virtual {v3, p1}, Landroid/graphics/drawable/RippleDrawable;->setBounds(Landroid/graphics/Rect;)V

    .line 226
    :cond_0
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x16

    if-ne v4, v5, :cond_1

    .line 227
    iget v4, p1, Landroid/graphics/Rect;->left:I

    iget v5, p1, Landroid/graphics/Rect;->right:I

    add-int/2addr v4, v5

    div-int/lit8 v0, v4, 0x2

    .line 228
    .local v0, "center":I
    iget v4, p1, Landroid/graphics/Rect;->top:I

    iget v5, p1, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v3, v0, v4, v0, v5}, Landroid/graphics/drawable/RippleDrawable;->setHotspotBounds(IIII)V

    .line 231
    .end local v0    # "center":I
    :cond_1
    return-object v3
.end method

.method private regenerateBackground()V
    .locals 3

    .prologue
    .line 186
    iget-object v0, p0, Lcom/prolificinteractive/materialcalendarview/DayView;->selectionDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 187
    iget-object v0, p0, Lcom/prolificinteractive/materialcalendarview/DayView;->selectionDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v0}, Lcom/prolificinteractive/materialcalendarview/DayView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 192
    :goto_0
    return-void

    .line 189
    :cond_0
    iget v0, p0, Lcom/prolificinteractive/materialcalendarview/DayView;->selectionColor:I

    iget v1, p0, Lcom/prolificinteractive/materialcalendarview/DayView;->fadeTime:I

    iget-object v2, p0, Lcom/prolificinteractive/materialcalendarview/DayView;->circleDrawableRect:Landroid/graphics/Rect;

    invoke-static {v0, v1, v2}, Lcom/prolificinteractive/materialcalendarview/DayView;->generateBackground(IILandroid/graphics/Rect;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/prolificinteractive/materialcalendarview/DayView;->mCircleDrawable:Landroid/graphics/drawable/Drawable;

    .line 190
    iget-object v0, p0, Lcom/prolificinteractive/materialcalendarview/DayView;->mCircleDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v0}, Lcom/prolificinteractive/materialcalendarview/DayView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method

.method private setEnabled()V
    .locals 9

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 134
    iget-boolean v7, p0, Lcom/prolificinteractive/materialcalendarview/DayView;->isInMonth:Z

    if-eqz v7, :cond_5

    iget-boolean v7, p0, Lcom/prolificinteractive/materialcalendarview/DayView;->isInRange:Z

    if-eqz v7, :cond_5

    iget-boolean v7, p0, Lcom/prolificinteractive/materialcalendarview/DayView;->isDecoratedDisabled:Z

    if-nez v7, :cond_5

    move v0, v5

    .line 135
    .local v0, "enabled":Z
    :goto_0
    iget-boolean v7, p0, Lcom/prolificinteractive/materialcalendarview/DayView;->isInRange:Z

    if-eqz v7, :cond_6

    iget-boolean v7, p0, Lcom/prolificinteractive/materialcalendarview/DayView;->isDecoratedDisabled:Z

    if-nez v7, :cond_6

    move v7, v5

    :goto_1
    invoke-super {p0, v7}, Landroid/widget/CheckedTextView;->setEnabled(Z)V

    .line 137
    iget v7, p0, Lcom/prolificinteractive/materialcalendarview/DayView;->showOtherDates:I

    invoke-static {v7}, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;->showOtherMonths(I)Z

    move-result v3

    .line 138
    .local v3, "showOtherMonths":Z
    iget v7, p0, Lcom/prolificinteractive/materialcalendarview/DayView;->showOtherDates:I

    invoke-static {v7}, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;->showOutOfRange(I)Z

    move-result v7

    if-nez v7, :cond_0

    if-eqz v3, :cond_7

    :cond_0
    move v4, v5

    .line 139
    .local v4, "showOutOfRange":Z
    :goto_2
    iget v7, p0, Lcom/prolificinteractive/materialcalendarview/DayView;->showOtherDates:I

    invoke-static {v7}, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;->showDecoratedDisabled(I)Z

    move-result v2

    .line 141
    .local v2, "showDecoratedDisabled":Z
    move v1, v0

    .line 143
    .local v1, "shouldBeVisible":Z
    iget-boolean v7, p0, Lcom/prolificinteractive/materialcalendarview/DayView;->isInMonth:Z

    if-nez v7, :cond_1

    if-eqz v3, :cond_1

    .line 144
    const/4 v1, 0x1

    .line 147
    :cond_1
    iget-boolean v7, p0, Lcom/prolificinteractive/materialcalendarview/DayView;->isInRange:Z

    if-nez v7, :cond_2

    if-eqz v4, :cond_2

    .line 148
    iget-boolean v7, p0, Lcom/prolificinteractive/materialcalendarview/DayView;->isInMonth:Z

    or-int/2addr v1, v7

    .line 151
    :cond_2
    iget-boolean v7, p0, Lcom/prolificinteractive/materialcalendarview/DayView;->isDecoratedDisabled:Z

    if-eqz v7, :cond_3

    if-eqz v2, :cond_3

    .line 152
    iget-boolean v7, p0, Lcom/prolificinteractive/materialcalendarview/DayView;->isInMonth:Z

    if-eqz v7, :cond_8

    iget-boolean v7, p0, Lcom/prolificinteractive/materialcalendarview/DayView;->isInRange:Z

    if-eqz v7, :cond_8

    move v7, v5

    :goto_3
    or-int/2addr v1, v7

    .line 155
    :cond_3
    iget-boolean v7, p0, Lcom/prolificinteractive/materialcalendarview/DayView;->isInMonth:Z

    if-nez v7, :cond_4

    if-eqz v1, :cond_4

    .line 156
    invoke-virtual {p0}, Lcom/prolificinteractive/materialcalendarview/DayView;->getTextColors()Landroid/content/res/ColorStateList;

    move-result-object v7

    new-array v5, v5, [I

    const v8, -0x101009e

    aput v8, v5, v6

    const v8, -0x777778

    invoke-virtual {v7, v5, v8}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v5

    invoke-virtual {p0, v5}, Lcom/prolificinteractive/materialcalendarview/DayView;->setTextColor(I)V

    .line 159
    :cond_4
    if-eqz v1, :cond_9

    :goto_4
    invoke-virtual {p0, v6}, Lcom/prolificinteractive/materialcalendarview/DayView;->setVisibility(I)V

    .line 160
    return-void

    .end local v0    # "enabled":Z
    .end local v1    # "shouldBeVisible":Z
    .end local v2    # "showDecoratedDisabled":Z
    .end local v3    # "showOtherMonths":Z
    .end local v4    # "showOutOfRange":Z
    :cond_5
    move v0, v6

    .line 134
    goto :goto_0

    .restart local v0    # "enabled":Z
    :cond_6
    move v7, v6

    .line 135
    goto :goto_1

    .restart local v3    # "showOtherMonths":Z
    :cond_7
    move v4, v6

    .line 138
    goto :goto_2

    .restart local v1    # "shouldBeVisible":Z
    .restart local v2    # "showDecoratedDisabled":Z
    .restart local v4    # "showOutOfRange":Z
    :cond_8
    move v7, v6

    .line 152
    goto :goto_3

    .line 159
    :cond_9
    const/4 v6, 0x4

    goto :goto_4
.end method


# virtual methods
.method applyFacade(Lcom/prolificinteractive/materialcalendarview/DayViewFacade;)V
    .locals 9
    .param p1, "facade"    # Lcom/prolificinteractive/materialcalendarview/DayViewFacade;

    .prologue
    .line 238
    invoke-virtual {p1}, Lcom/prolificinteractive/materialcalendarview/DayViewFacade;->areDaysDisabled()Z

    move-result v4

    iput-boolean v4, p0, Lcom/prolificinteractive/materialcalendarview/DayView;->isDecoratedDisabled:Z

    .line 239
    invoke-direct {p0}, Lcom/prolificinteractive/materialcalendarview/DayView;->setEnabled()V

    .line 241
    invoke-virtual {p1}, Lcom/prolificinteractive/materialcalendarview/DayViewFacade;->getBackgroundDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/prolificinteractive/materialcalendarview/DayView;->setCustomBackground(Landroid/graphics/drawable/Drawable;)V

    .line 242
    invoke-virtual {p1}, Lcom/prolificinteractive/materialcalendarview/DayViewFacade;->getSelectionDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/prolificinteractive/materialcalendarview/DayView;->setSelectionDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 245
    invoke-virtual {p1}, Lcom/prolificinteractive/materialcalendarview/DayViewFacade;->getSpans()Ljava/util/List;

    move-result-object v3

    .line 246
    .local v3, "spans":Ljava/util/List;, "Ljava/util/List<Lcom/prolificinteractive/materialcalendarview/DayViewFacade$Span;>;"
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_1

    .line 247
    invoke-virtual {p0}, Lcom/prolificinteractive/materialcalendarview/DayView;->getLabel()Ljava/lang/String;

    move-result-object v1

    .line 248
    .local v1, "label":Ljava/lang/String;
    new-instance v0, Landroid/text/SpannableString;

    invoke-virtual {p0}, Lcom/prolificinteractive/materialcalendarview/DayView;->getLabel()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v4}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 249
    .local v0, "formattedLabel":Landroid/text/SpannableString;
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/prolificinteractive/materialcalendarview/DayViewFacade$Span;

    .line 250
    .local v2, "span":Lcom/prolificinteractive/materialcalendarview/DayViewFacade$Span;
    iget-object v5, v2, Lcom/prolificinteractive/materialcalendarview/DayViewFacade$Span;->span:Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v7

    const/16 v8, 0x21

    invoke-virtual {v0, v5, v6, v7, v8}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    goto :goto_0

    .line 252
    .end local v2    # "span":Lcom/prolificinteractive/materialcalendarview/DayViewFacade$Span;
    :cond_0
    invoke-virtual {p0, v0}, Lcom/prolificinteractive/materialcalendarview/DayView;->setText(Ljava/lang/CharSequence;)V

    .line 258
    .end local v0    # "formattedLabel":Landroid/text/SpannableString;
    .end local v1    # "label":Ljava/lang/String;
    :goto_1
    return-void

    .line 256
    :cond_1
    invoke-virtual {p0}, Lcom/prolificinteractive/materialcalendarview/DayView;->getLabel()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/prolificinteractive/materialcalendarview/DayView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1
.end method

.method public getDate()Lcom/prolificinteractive/materialcalendarview/CalendarDay;
    .locals 1

    .prologue
    .line 130
    iget-object v0, p0, Lcom/prolificinteractive/materialcalendarview/DayView;->date:Lcom/prolificinteractive/materialcalendarview/CalendarDay;

    return-object v0
.end method

.method public getLabel()Ljava/lang/String;
    .locals 2
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 97
    iget-object v0, p0, Lcom/prolificinteractive/materialcalendarview/DayView;->formatter:Lcom/prolificinteractive/materialcalendarview/format/DayFormatter;

    iget-object v1, p0, Lcom/prolificinteractive/materialcalendarview/DayView;->date:Lcom/prolificinteractive/materialcalendarview/CalendarDay;

    invoke-interface {v0, v1}, Lcom/prolificinteractive/materialcalendarview/format/DayFormatter;->format(Lcom/prolificinteractive/materialcalendarview/CalendarDay;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 2
    .param p1, "canvas"    # Landroid/graphics/Canvas;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 174
    iget-object v0, p0, Lcom/prolificinteractive/materialcalendarview/DayView;->customBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 175
    iget-object v0, p0, Lcom/prolificinteractive/materialcalendarview/DayView;->customBackground:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Lcom/prolificinteractive/materialcalendarview/DayView;->tempRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 176
    iget-object v0, p0, Lcom/prolificinteractive/materialcalendarview/DayView;->customBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Lcom/prolificinteractive/materialcalendarview/DayView;->getDrawableState()[I

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 177
    iget-object v0, p0, Lcom/prolificinteractive/materialcalendarview/DayView;->customBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 180
    :cond_0
    iget-object v0, p0, Lcom/prolificinteractive/materialcalendarview/DayView;->mCircleDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Lcom/prolificinteractive/materialcalendarview/DayView;->circleDrawableRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 182
    invoke-super {p0, p1}, Landroid/widget/CheckedTextView;->onDraw(Landroid/graphics/Canvas;)V

    .line 183
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 2
    .param p1, "changed"    # Z
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    .prologue
    .line 262
    invoke-super/range {p0 .. p5}, Landroid/widget/CheckedTextView;->onLayout(ZIIII)V

    .line 263
    sub-int v0, p4, p2

    sub-int v1, p5, p3

    invoke-direct {p0, v0, v1}, Lcom/prolificinteractive/materialcalendarview/DayView;->calculateBounds(II)V

    .line 264
    invoke-direct {p0}, Lcom/prolificinteractive/materialcalendarview/DayView;->regenerateBackground()V

    .line 265
    return-void
.end method

.method public setCustomBackground(Landroid/graphics/drawable/Drawable;)V
    .locals 2
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 121
    if-nez p1, :cond_0

    .line 122
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/prolificinteractive/materialcalendarview/DayView;->customBackground:Landroid/graphics/drawable/Drawable;

    .line 126
    :goto_0
    invoke-virtual {p0}, Lcom/prolificinteractive/materialcalendarview/DayView;->invalidate()V

    .line 127
    return-void

    .line 124
    :cond_0
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v0

    invoke-virtual {p0}, Lcom/prolificinteractive/materialcalendarview/DayView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable(Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/prolificinteractive/materialcalendarview/DayView;->customBackground:Landroid/graphics/drawable/Drawable;

    goto :goto_0
.end method

.method public setDay(Lcom/prolificinteractive/materialcalendarview/CalendarDay;)V
    .locals 1
    .param p1, "date"    # Lcom/prolificinteractive/materialcalendarview/CalendarDay;

    .prologue
    .line 70
    iput-object p1, p0, Lcom/prolificinteractive/materialcalendarview/DayView;->date:Lcom/prolificinteractive/materialcalendarview/CalendarDay;

    .line 71
    invoke-virtual {p0}, Lcom/prolificinteractive/materialcalendarview/DayView;->getLabel()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/prolificinteractive/materialcalendarview/DayView;->setText(Ljava/lang/CharSequence;)V

    .line 72
    return-void
.end method

.method public setDayFormatter(Lcom/prolificinteractive/materialcalendarview/format/DayFormatter;)V
    .locals 9
    .param p1, "formatter"    # Lcom/prolificinteractive/materialcalendarview/format/DayFormatter;

    .prologue
    const/4 v5, 0x0

    .line 80
    if-nez p1, :cond_0

    sget-object p1, Lcom/prolificinteractive/materialcalendarview/format/DayFormatter;->DEFAULT:Lcom/prolificinteractive/materialcalendarview/format/DayFormatter;

    .end local p1    # "formatter":Lcom/prolificinteractive/materialcalendarview/format/DayFormatter;
    :cond_0
    iput-object p1, p0, Lcom/prolificinteractive/materialcalendarview/DayView;->formatter:Lcom/prolificinteractive/materialcalendarview/format/DayFormatter;

    .line 81
    invoke-virtual {p0}, Lcom/prolificinteractive/materialcalendarview/DayView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    .line 82
    .local v0, "currentLabel":Ljava/lang/CharSequence;
    const/4 v3, 0x0

    .line 83
    .local v3, "spans":[Ljava/lang/Object;
    instance-of v4, v0, Landroid/text/Spanned;

    if-eqz v4, :cond_1

    move-object v4, v0

    .line 84
    check-cast v4, Landroid/text/Spanned;

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v6

    const-class v7, Ljava/lang/Object;

    invoke-interface {v4, v5, v6, v7}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v3

    .line 86
    :cond_1
    new-instance v1, Landroid/text/SpannableString;

    invoke-virtual {p0}, Lcom/prolificinteractive/materialcalendarview/DayView;->getLabel()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v4}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 87
    .local v1, "newLabel":Landroid/text/SpannableString;
    if-eqz v3, :cond_2

    .line 88
    array-length v6, v3

    move v4, v5

    :goto_0
    if-ge v4, v6, :cond_2

    aget-object v2, v3, v4

    .line 89
    .local v2, "span":Ljava/lang/Object;
    invoke-virtual {v1}, Landroid/text/SpannableString;->length()I

    move-result v7

    const/16 v8, 0x21

    invoke-virtual {v1, v2, v5, v7, v8}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 88
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 92
    .end local v2    # "span":Ljava/lang/Object;
    :cond_2
    invoke-virtual {p0, v1}, Lcom/prolificinteractive/materialcalendarview/DayView;->setText(Ljava/lang/CharSequence;)V

    .line 93
    return-void
.end method

.method public setSelectionColor(I)V
    .locals 0
    .param p1, "color"    # I

    .prologue
    .line 101
    iput p1, p0, Lcom/prolificinteractive/materialcalendarview/DayView;->selectionColor:I

    .line 102
    invoke-direct {p0}, Lcom/prolificinteractive/materialcalendarview/DayView;->regenerateBackground()V

    .line 103
    return-void
.end method

.method public setSelectionDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 2
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 109
    if-nez p1, :cond_0

    .line 110
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/prolificinteractive/materialcalendarview/DayView;->selectionDrawable:Landroid/graphics/drawable/Drawable;

    .line 114
    :goto_0
    invoke-direct {p0}, Lcom/prolificinteractive/materialcalendarview/DayView;->regenerateBackground()V

    .line 115
    return-void

    .line 112
    :cond_0
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v0

    invoke-virtual {p0}, Lcom/prolificinteractive/materialcalendarview/DayView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable(Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/prolificinteractive/materialcalendarview/DayView;->selectionDrawable:Landroid/graphics/drawable/Drawable;

    goto :goto_0
.end method

.method protected setupSelection(IZZ)V
    .locals 0
    .param p1, "showOtherDates"    # I
        .annotation runtime Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView$ShowOtherDates;
        .end annotation
    .end param
    .param p2, "inRange"    # Z
    .param p3, "inMonth"    # Z

    .prologue
    .line 163
    iput p1, p0, Lcom/prolificinteractive/materialcalendarview/DayView;->showOtherDates:I

    .line 164
    iput-boolean p3, p0, Lcom/prolificinteractive/materialcalendarview/DayView;->isInMonth:Z

    .line 165
    iput-boolean p2, p0, Lcom/prolificinteractive/materialcalendarview/DayView;->isInRange:Z

    .line 166
    invoke-direct {p0}, Lcom/prolificinteractive/materialcalendarview/DayView;->setEnabled()V

    .line 167
    return-void
.end method
