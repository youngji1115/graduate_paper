.class abstract Lcom/prolificinteractive/materialcalendarview/CalendarPagerView;
.super Landroid/view/ViewGroup;
.source "CalendarPagerView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/prolificinteractive/materialcalendarview/CalendarPagerView$LayoutParams;
    }
.end annotation


# static fields
.field protected static final DAY_NAMES_ROW:I = 0x1

.field protected static final DEFAULT_DAYS_IN_WEEK:I = 0x7

.field protected static final DEFAULT_MAX_WEEKS:I = 0x6

.field private static final tempWorkingCalendar:Ljava/util/Calendar;


# instance fields
.field private final dayViews:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection",
            "<",
            "Lcom/prolificinteractive/materialcalendarview/DayView;",
            ">;"
        }
    .end annotation
.end field

.field private final decoratorResults:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/prolificinteractive/materialcalendarview/DecoratorResult;",
            ">;"
        }
    .end annotation
.end field

.field private firstDayOfWeek:I

.field private firstViewDay:Lcom/prolificinteractive/materialcalendarview/CalendarDay;

.field private maxDate:Lcom/prolificinteractive/materialcalendarview/CalendarDay;

.field private mcv:Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;

.field private minDate:Lcom/prolificinteractive/materialcalendarview/CalendarDay;

.field protected showOtherDates:I
    .annotation runtime Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView$ShowOtherDates;
    .end annotation
.end field

.field private final weekDayViews:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/prolificinteractive/materialcalendarview/WeekDayView;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 29
    invoke-static {}, Lcom/prolificinteractive/materialcalendarview/CalendarUtils;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    sput-object v0, Lcom/prolificinteractive/materialcalendarview/CalendarPagerView;->tempWorkingCalendar:Ljava/util/Calendar;

    return-void
.end method

.method public constructor <init>(Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;Lcom/prolificinteractive/materialcalendarview/CalendarDay;I)V
    .locals 3
    .param p1, "view"    # Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "firstViewDay"    # Lcom/prolificinteractive/materialcalendarview/CalendarDay;
    .param p3, "firstDayOfWeek"    # I

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 45
    invoke-virtual {p1}, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;)V

    .line 30
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/prolificinteractive/materialcalendarview/CalendarPagerView;->weekDayViews:Ljava/util/ArrayList;

    .line 31
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/prolificinteractive/materialcalendarview/CalendarPagerView;->decoratorResults:Ljava/util/ArrayList;

    .line 32
    const/4 v0, 0x4

    iput v0, p0, Lcom/prolificinteractive/materialcalendarview/CalendarPagerView;->showOtherDates:I

    .line 36
    iput-object v2, p0, Lcom/prolificinteractive/materialcalendarview/CalendarPagerView;->minDate:Lcom/prolificinteractive/materialcalendarview/CalendarDay;

    .line 37
    iput-object v2, p0, Lcom/prolificinteractive/materialcalendarview/CalendarPagerView;->maxDate:Lcom/prolificinteractive/materialcalendarview/CalendarDay;

    .line 40
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/prolificinteractive/materialcalendarview/CalendarPagerView;->dayViews:Ljava/util/Collection;

    .line 46
    iput-object p1, p0, Lcom/prolificinteractive/materialcalendarview/CalendarPagerView;->mcv:Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;

    .line 47
    iput-object p2, p0, Lcom/prolificinteractive/materialcalendarview/CalendarPagerView;->firstViewDay:Lcom/prolificinteractive/materialcalendarview/CalendarDay;

    .line 48
    iput p3, p0, Lcom/prolificinteractive/materialcalendarview/CalendarPagerView;->firstDayOfWeek:I

    .line 50
    invoke-virtual {p0, v1}, Lcom/prolificinteractive/materialcalendarview/CalendarPagerView;->setClipChildren(Z)V

    .line 51
    invoke-virtual {p0, v1}, Lcom/prolificinteractive/materialcalendarview/CalendarPagerView;->setClipToPadding(Z)V

    .line 53
    invoke-virtual {p0}, Lcom/prolificinteractive/materialcalendarview/CalendarPagerView;->resetAndGetWorkingCalendar()Ljava/util/Calendar;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/prolificinteractive/materialcalendarview/CalendarPagerView;->buildWeekDays(Ljava/util/Calendar;)V

    .line 54
    iget-object v0, p0, Lcom/prolificinteractive/materialcalendarview/CalendarPagerView;->dayViews:Ljava/util/Collection;

    invoke-virtual {p0}, Lcom/prolificinteractive/materialcalendarview/CalendarPagerView;->resetAndGetWorkingCalendar()Ljava/util/Calendar;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/prolificinteractive/materialcalendarview/CalendarPagerView;->buildDayViews(Ljava/util/Collection;Ljava/util/Calendar;)V

    .line 55
    return-void
.end method

.method private buildWeekDays(Ljava/util/Calendar;)V
    .locals 4
    .param p1, "calendar"    # Ljava/util/Calendar;

    .prologue
    .line 58
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/4 v2, 0x7

    if-ge v0, v2, :cond_0

    .line 59
    new-instance v1, Lcom/prolificinteractive/materialcalendarview/WeekDayView;

    invoke-virtual {p0}, Lcom/prolificinteractive/materialcalendarview/CalendarPagerView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {p1}, Lcom/prolificinteractive/materialcalendarview/CalendarUtils;->getDayOfWeek(Ljava/util/Calendar;)I

    move-result v3

    invoke-direct {v1, v2, v3}, Lcom/prolificinteractive/materialcalendarview/WeekDayView;-><init>(Landroid/content/Context;I)V

    .line 60
    .local v1, "weekDayView":Lcom/prolificinteractive/materialcalendarview/WeekDayView;
    iget-object v2, p0, Lcom/prolificinteractive/materialcalendarview/CalendarPagerView;->weekDayViews:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 61
    invoke-virtual {p0, v1}, Lcom/prolificinteractive/materialcalendarview/CalendarPagerView;->addView(Landroid/view/View;)V

    .line 62
    const/4 v2, 0x5

    const/4 v3, 0x1

    invoke-virtual {p1, v2, v3}, Ljava/util/Calendar;->add(II)V

    .line 58
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 64
    .end local v1    # "weekDayView":Lcom/prolificinteractive/materialcalendarview/WeekDayView;
    :cond_0
    return-void
.end method


# virtual methods
.method protected addDayView(Ljava/util/Collection;Ljava/util/Calendar;)V
    .locals 4
    .param p2, "calendar"    # Ljava/util/Calendar;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lcom/prolificinteractive/materialcalendarview/DayView;",
            ">;",
            "Ljava/util/Calendar;",
            ")V"
        }
    .end annotation

    .prologue
    .line 67
    .local p1, "dayViews":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/prolificinteractive/materialcalendarview/DayView;>;"
    invoke-static {p2}, Lcom/prolificinteractive/materialcalendarview/CalendarDay;->from(Ljava/util/Calendar;)Lcom/prolificinteractive/materialcalendarview/CalendarDay;

    move-result-object v0

    .line 68
    .local v0, "day":Lcom/prolificinteractive/materialcalendarview/CalendarDay;
    new-instance v1, Lcom/prolificinteractive/materialcalendarview/DayView;

    invoke-virtual {p0}, Lcom/prolificinteractive/materialcalendarview/CalendarPagerView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/prolificinteractive/materialcalendarview/DayView;-><init>(Landroid/content/Context;Lcom/prolificinteractive/materialcalendarview/CalendarDay;)V

    .line 69
    .local v1, "dayView":Lcom/prolificinteractive/materialcalendarview/DayView;
    invoke-virtual {v1, p0}, Lcom/prolificinteractive/materialcalendarview/DayView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 70
    invoke-interface {p1, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 71
    new-instance v2, Lcom/prolificinteractive/materialcalendarview/CalendarPagerView$LayoutParams;

    invoke-direct {v2}, Lcom/prolificinteractive/materialcalendarview/CalendarPagerView$LayoutParams;-><init>()V

    invoke-virtual {p0, v1, v2}, Lcom/prolificinteractive/materialcalendarview/CalendarPagerView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 73
    const/4 v2, 0x5

    const/4 v3, 0x1

    invoke-virtual {p2, v2, v3}, Ljava/util/Calendar;->add(II)V

    .line 74
    return-void
.end method

.method protected abstract buildDayViews(Ljava/util/Collection;Ljava/util/Calendar;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lcom/prolificinteractive/materialcalendarview/DayView;",
            ">;",
            "Ljava/util/Calendar;",
            ")V"
        }
    .end annotation
.end method

.method protected checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .locals 1
    .param p1, "p"    # Landroid/view/ViewGroup$LayoutParams;

    .prologue
    .line 305
    instance-of v0, p1, Lcom/prolificinteractive/materialcalendarview/CalendarPagerView$LayoutParams;

    return v0
.end method

.method protected bridge synthetic generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    .prologue
    .line 24
    invoke-virtual {p0}, Lcom/prolificinteractive/materialcalendarview/CalendarPagerView;->generateDefaultLayoutParams()Lcom/prolificinteractive/materialcalendarview/CalendarPagerView$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method protected generateDefaultLayoutParams()Lcom/prolificinteractive/materialcalendarview/CalendarPagerView$LayoutParams;
    .locals 1

    .prologue
    .line 206
    new-instance v0, Lcom/prolificinteractive/materialcalendarview/CalendarPagerView$LayoutParams;

    invoke-direct {v0}, Lcom/prolificinteractive/materialcalendarview/CalendarPagerView$LayoutParams;-><init>()V

    return-object v0
.end method

.method public bridge synthetic generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    .prologue
    .line 24
    invoke-virtual {p0, p1}, Lcom/prolificinteractive/materialcalendarview/CalendarPagerView;->generateLayoutParams(Landroid/util/AttributeSet;)Lcom/prolificinteractive/materialcalendarview/CalendarPagerView$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method protected generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .locals 1
    .param p1, "p"    # Landroid/view/ViewGroup$LayoutParams;

    .prologue
    .line 310
    new-instance v0, Lcom/prolificinteractive/materialcalendarview/CalendarPagerView$LayoutParams;

    invoke-direct {v0}, Lcom/prolificinteractive/materialcalendarview/CalendarPagerView$LayoutParams;-><init>()V

    return-object v0
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Lcom/prolificinteractive/materialcalendarview/CalendarPagerView$LayoutParams;
    .locals 1
    .param p1, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 292
    new-instance v0, Lcom/prolificinteractive/materialcalendarview/CalendarPagerView$LayoutParams;

    invoke-direct {v0}, Lcom/prolificinteractive/materialcalendarview/CalendarPagerView$LayoutParams;-><init>()V

    return-object v0
.end method

.method protected getFirstDayOfWeek()I
    .locals 1

    .prologue
    .line 92
    iget v0, p0, Lcom/prolificinteractive/materialcalendarview/CalendarPagerView;->firstDayOfWeek:I

    return v0
.end method

.method protected getFirstViewDay()Lcom/prolificinteractive/materialcalendarview/CalendarDay;
    .locals 1

    .prologue
    .line 327
    iget-object v0, p0, Lcom/prolificinteractive/materialcalendarview/CalendarPagerView;->firstViewDay:Lcom/prolificinteractive/materialcalendarview/CalendarDay;

    return-object v0
.end method

.method protected abstract getRows()I
.end method

.method protected invalidateDecorators()V
    .locals 7

    .prologue
    .line 177
    new-instance v1, Lcom/prolificinteractive/materialcalendarview/DayViewFacade;

    invoke-direct {v1}, Lcom/prolificinteractive/materialcalendarview/DayViewFacade;-><init>()V

    .line 178
    .local v1, "facadeAccumulator":Lcom/prolificinteractive/materialcalendarview/DayViewFacade;
    iget-object v3, p0, Lcom/prolificinteractive/materialcalendarview/CalendarPagerView;->dayViews:Ljava/util/Collection;

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/prolificinteractive/materialcalendarview/DayView;

    .line 179
    .local v0, "dayView":Lcom/prolificinteractive/materialcalendarview/DayView;
    invoke-virtual {v1}, Lcom/prolificinteractive/materialcalendarview/DayViewFacade;->reset()V

    .line 180
    iget-object v4, p0, Lcom/prolificinteractive/materialcalendarview/CalendarPagerView;->decoratorResults:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/prolificinteractive/materialcalendarview/DecoratorResult;

    .line 181
    .local v2, "result":Lcom/prolificinteractive/materialcalendarview/DecoratorResult;
    iget-object v5, v2, Lcom/prolificinteractive/materialcalendarview/DecoratorResult;->decorator:Lcom/prolificinteractive/materialcalendarview/DayViewDecorator;

    invoke-virtual {v0}, Lcom/prolificinteractive/materialcalendarview/DayView;->getDate()Lcom/prolificinteractive/materialcalendarview/CalendarDay;

    move-result-object v6

    invoke-interface {v5, v6}, Lcom/prolificinteractive/materialcalendarview/DayViewDecorator;->shouldDecorate(Lcom/prolificinteractive/materialcalendarview/CalendarDay;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 182
    iget-object v5, v2, Lcom/prolificinteractive/materialcalendarview/DecoratorResult;->result:Lcom/prolificinteractive/materialcalendarview/DayViewFacade;

    invoke-virtual {v5, v1}, Lcom/prolificinteractive/materialcalendarview/DayViewFacade;->applyTo(Lcom/prolificinteractive/materialcalendarview/DayViewFacade;)V

    goto :goto_1

    .line 185
    .end local v2    # "result":Lcom/prolificinteractive/materialcalendarview/DecoratorResult;
    :cond_1
    invoke-virtual {v0, v1}, Lcom/prolificinteractive/materialcalendarview/DayView;->applyFacade(Lcom/prolificinteractive/materialcalendarview/DayViewFacade;)V

    goto :goto_0

    .line 187
    .end local v0    # "dayView":Lcom/prolificinteractive/materialcalendarview/DayView;
    :cond_2
    return-void
.end method

.method protected abstract isDayEnabled(Lcom/prolificinteractive/materialcalendarview/CalendarDay;)Z
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 191
    instance-of v1, p1, Lcom/prolificinteractive/materialcalendarview/DayView;

    if-eqz v1, :cond_0

    move-object v0, p1

    .line 192
    check-cast v0, Lcom/prolificinteractive/materialcalendarview/DayView;

    .line 193
    .local v0, "dayView":Lcom/prolificinteractive/materialcalendarview/DayView;
    iget-object v1, p0, Lcom/prolificinteractive/materialcalendarview/CalendarPagerView;->mcv:Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;

    invoke-virtual {v1, v0}, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;->onDateClicked(Lcom/prolificinteractive/materialcalendarview/DayView;)V

    .line 195
    .end local v0    # "dayView":Lcom/prolificinteractive/materialcalendarview/DayView;
    :cond_0
    return-void
.end method

.method public onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 1
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 316
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 317
    const-class v0, Lcom/prolificinteractive/materialcalendarview/CalendarPagerView;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setClassName(Ljava/lang/CharSequence;)V

    .line 318
    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 1
    .param p1, "info"    # Landroid/view/accessibility/AccessibilityNodeInfo;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 322
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 323
    const-class v0, Lcom/prolificinteractive/materialcalendarview/CalendarPagerView;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    .line 324
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 10
    .param p1, "changed"    # Z
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    .prologue
    .line 261
    invoke-virtual {p0}, Lcom/prolificinteractive/materialcalendarview/CalendarPagerView;->getChildCount()I

    move-result v3

    .line 263
    .local v3, "count":I
    const/4 v6, 0x0

    .line 265
    .local v6, "parentLeft":I
    const/4 v2, 0x0

    .line 266
    .local v2, "childTop":I
    const/4 v1, 0x0

    .line 268
    .local v1, "childLeft":I
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    if-ge v5, v3, :cond_1

    .line 269
    invoke-virtual {p0, v5}, Lcom/prolificinteractive/materialcalendarview/CalendarPagerView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 271
    .local v0, "child":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v7

    .line 272
    .local v7, "width":I
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    .line 274
    .local v4, "height":I
    add-int v8, v1, v7

    add-int v9, v2, v4

    invoke-virtual {v0, v1, v2, v8, v9}, Landroid/view/View;->layout(IIII)V

    .line 276
    add-int/2addr v1, v7

    .line 279
    rem-int/lit8 v8, v5, 0x7

    const/4 v9, 0x6

    if-ne v8, v9, :cond_0

    .line 280
    const/4 v1, 0x0

    .line 281
    add-int/2addr v2, v4

    .line 268
    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 285
    .end local v0    # "child":Landroid/view/View;
    .end local v4    # "height":I
    .end local v7    # "width":I
    :cond_1
    return-void
.end method

.method protected onMeasure(II)V
    .locals 13
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    const/high16 v12, 0x40000000    # 2.0f

    .line 214
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v10

    .line 215
    .local v10, "specWidthSize":I
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v9

    .line 216
    .local v9, "specWidthMode":I
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v8

    .line 217
    .local v8, "specHeightSize":I
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v7

    .line 220
    .local v7, "specHeightMode":I
    if-eqz v7, :cond_0

    if-nez v9, :cond_1

    .line 221
    :cond_0
    new-instance v11, Ljava/lang/IllegalStateException;

    const-string v12, "CalendarPagerView should never be left to decide it\'s size"

    invoke-direct {v11, v12}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v11

    .line 225
    :cond_1
    div-int/lit8 v6, v10, 0x7

    .line 226
    .local v6, "measureTileWidth":I
    invoke-virtual {p0}, Lcom/prolificinteractive/materialcalendarview/CalendarPagerView;->getRows()I

    move-result v11

    div-int v5, v8, v11

    .line 229
    .local v5, "measureTileHeight":I
    invoke-virtual {p0, v10, v8}, Lcom/prolificinteractive/materialcalendarview/CalendarPagerView;->setMeasuredDimension(II)V

    .line 231
    invoke-virtual {p0}, Lcom/prolificinteractive/materialcalendarview/CalendarPagerView;->getChildCount()I

    move-result v3

    .line 233
    .local v3, "count":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    if-ge v4, v3, :cond_2

    .line 234
    invoke-virtual {p0, v4}, Lcom/prolificinteractive/materialcalendarview/CalendarPagerView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 236
    .local v0, "child":Landroid/view/View;
    invoke-static {v6, v12}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    .line 241
    .local v2, "childWidthMeasureSpec":I
    invoke-static {v5, v12}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    .line 246
    .local v1, "childHeightMeasureSpec":I
    invoke-virtual {v0, v2, v1}, Landroid/view/View;->measure(II)V

    .line 233
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 248
    .end local v0    # "child":Landroid/view/View;
    .end local v1    # "childHeightMeasureSpec":I
    .end local v2    # "childWidthMeasureSpec":I
    :cond_2
    return-void
.end method

.method protected resetAndGetWorkingCalendar()Ljava/util/Calendar;
    .locals 6

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 77
    invoke-virtual {p0}, Lcom/prolificinteractive/materialcalendarview/CalendarPagerView;->getFirstViewDay()Lcom/prolificinteractive/materialcalendarview/CalendarDay;

    move-result-object v4

    sget-object v5, Lcom/prolificinteractive/materialcalendarview/CalendarPagerView;->tempWorkingCalendar:Ljava/util/Calendar;

    invoke-virtual {v4, v5}, Lcom/prolificinteractive/materialcalendarview/CalendarDay;->copyTo(Ljava/util/Calendar;)V

    .line 79
    sget-object v4, Lcom/prolificinteractive/materialcalendarview/CalendarPagerView;->tempWorkingCalendar:Ljava/util/Calendar;

    invoke-virtual {p0}, Lcom/prolificinteractive/materialcalendarview/CalendarPagerView;->getFirstDayOfWeek()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/util/Calendar;->setFirstDayOfWeek(I)V

    .line 80
    sget-object v4, Lcom/prolificinteractive/materialcalendarview/CalendarPagerView;->tempWorkingCalendar:Ljava/util/Calendar;

    invoke-static {v4}, Lcom/prolificinteractive/materialcalendarview/CalendarUtils;->getDayOfWeek(Ljava/util/Calendar;)I

    move-result v1

    .line 81
    .local v1, "dow":I
    invoke-virtual {p0}, Lcom/prolificinteractive/materialcalendarview/CalendarPagerView;->getFirstDayOfWeek()I

    move-result v4

    sub-int v0, v4, v1

    .line 83
    .local v0, "delta":I
    iget v4, p0, Lcom/prolificinteractive/materialcalendarview/CalendarPagerView;->showOtherDates:I

    invoke-static {v4}, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;->showOtherMonths(I)Z

    move-result v4

    if-eqz v4, :cond_3

    if-ltz v0, :cond_2

    .line 84
    .local v2, "removeRow":Z
    :cond_0
    :goto_0
    if-eqz v2, :cond_1

    .line 85
    add-int/lit8 v0, v0, -0x7

    .line 87
    :cond_1
    sget-object v3, Lcom/prolificinteractive/materialcalendarview/CalendarPagerView;->tempWorkingCalendar:Ljava/util/Calendar;

    const/4 v4, 0x5

    invoke-virtual {v3, v4, v0}, Ljava/util/Calendar;->add(II)V

    .line 88
    sget-object v3, Lcom/prolificinteractive/materialcalendarview/CalendarPagerView;->tempWorkingCalendar:Ljava/util/Calendar;

    return-object v3

    .end local v2    # "removeRow":Z
    :cond_2
    move v2, v3

    .line 83
    goto :goto_0

    :cond_3
    if-gtz v0, :cond_0

    move v2, v3

    goto :goto_0
.end method

.method public setDateTextAppearance(I)V
    .locals 3
    .param p1, "taId"    # I

    .prologue
    .line 114
    iget-object v1, p0, Lcom/prolificinteractive/materialcalendarview/CalendarPagerView;->dayViews:Ljava/util/Collection;

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/prolificinteractive/materialcalendarview/DayView;

    .line 115
    .local v0, "dayView":Lcom/prolificinteractive/materialcalendarview/DayView;
    invoke-virtual {p0}, Lcom/prolificinteractive/materialcalendarview/CalendarPagerView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v0, v2, p1}, Lcom/prolificinteractive/materialcalendarview/DayView;->setTextAppearance(Landroid/content/Context;I)V

    goto :goto_0

    .line 117
    .end local v0    # "dayView":Lcom/prolificinteractive/materialcalendarview/DayView;
    :cond_0
    return-void
.end method

.method public setDayFormatter(Lcom/prolificinteractive/materialcalendarview/format/DayFormatter;)V
    .locals 3
    .param p1, "formatter"    # Lcom/prolificinteractive/materialcalendarview/format/DayFormatter;

    .prologue
    .line 144
    iget-object v1, p0, Lcom/prolificinteractive/materialcalendarview/CalendarPagerView;->dayViews:Ljava/util/Collection;

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/prolificinteractive/materialcalendarview/DayView;

    .line 145
    .local v0, "dayView":Lcom/prolificinteractive/materialcalendarview/DayView;
    invoke-virtual {v0, p1}, Lcom/prolificinteractive/materialcalendarview/DayView;->setDayFormatter(Lcom/prolificinteractive/materialcalendarview/format/DayFormatter;)V

    goto :goto_0

    .line 147
    .end local v0    # "dayView":Lcom/prolificinteractive/materialcalendarview/DayView;
    :cond_0
    return-void
.end method

.method setDayViewDecorators(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/prolificinteractive/materialcalendarview/DecoratorResult;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 100
    .local p1, "results":Ljava/util/List;, "Ljava/util/List<Lcom/prolificinteractive/materialcalendarview/DecoratorResult;>;"
    iget-object v0, p0, Lcom/prolificinteractive/materialcalendarview/CalendarPagerView;->decoratorResults:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 101
    if-eqz p1, :cond_0

    .line 102
    iget-object v0, p0, Lcom/prolificinteractive/materialcalendarview/CalendarPagerView;->decoratorResults:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 104
    :cond_0
    invoke-virtual {p0}, Lcom/prolificinteractive/materialcalendarview/CalendarPagerView;->invalidateDecorators()V

    .line 105
    return-void
.end method

.method public setMaximumDate(Lcom/prolificinteractive/materialcalendarview/CalendarDay;)V
    .locals 0
    .param p1, "maxDate"    # Lcom/prolificinteractive/materialcalendarview/CalendarDay;

    .prologue
    .line 155
    iput-object p1, p0, Lcom/prolificinteractive/materialcalendarview/CalendarPagerView;->maxDate:Lcom/prolificinteractive/materialcalendarview/CalendarDay;

    .line 156
    invoke-virtual {p0}, Lcom/prolificinteractive/materialcalendarview/CalendarPagerView;->updateUi()V

    .line 157
    return-void
.end method

.method public setMinimumDate(Lcom/prolificinteractive/materialcalendarview/CalendarDay;)V
    .locals 0
    .param p1, "minDate"    # Lcom/prolificinteractive/materialcalendarview/CalendarDay;

    .prologue
    .line 150
    iput-object p1, p0, Lcom/prolificinteractive/materialcalendarview/CalendarPagerView;->minDate:Lcom/prolificinteractive/materialcalendarview/CalendarDay;

    .line 151
    invoke-virtual {p0}, Lcom/prolificinteractive/materialcalendarview/CalendarPagerView;->updateUi()V

    .line 152
    return-void
.end method

.method public setSelectedDates(Ljava/util/Collection;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lcom/prolificinteractive/materialcalendarview/CalendarDay;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 160
    .local p1, "dates":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/prolificinteractive/materialcalendarview/CalendarDay;>;"
    iget-object v2, p0, Lcom/prolificinteractive/materialcalendarview/CalendarPagerView;->dayViews:Ljava/util/Collection;

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/prolificinteractive/materialcalendarview/DayView;

    .line 161
    .local v1, "dayView":Lcom/prolificinteractive/materialcalendarview/DayView;
    invoke-virtual {v1}, Lcom/prolificinteractive/materialcalendarview/DayView;->getDate()Lcom/prolificinteractive/materialcalendarview/CalendarDay;

    move-result-object v0

    .line 162
    .local v0, "day":Lcom/prolificinteractive/materialcalendarview/CalendarDay;
    if-eqz p1, :cond_0

    invoke-interface {p1, v0}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    :goto_1
    invoke-virtual {v1, v2}, Lcom/prolificinteractive/materialcalendarview/DayView;->setChecked(Z)V

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    goto :goto_1

    .line 164
    .end local v0    # "day":Lcom/prolificinteractive/materialcalendarview/CalendarDay;
    .end local v1    # "dayView":Lcom/prolificinteractive/materialcalendarview/DayView;
    :cond_1
    invoke-virtual {p0}, Lcom/prolificinteractive/materialcalendarview/CalendarPagerView;->postInvalidate()V

    .line 165
    return-void
.end method

.method public setSelectionColor(I)V
    .locals 3
    .param p1, "color"    # I

    .prologue
    .line 132
    iget-object v1, p0, Lcom/prolificinteractive/materialcalendarview/CalendarPagerView;->dayViews:Ljava/util/Collection;

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/prolificinteractive/materialcalendarview/DayView;

    .line 133
    .local v0, "dayView":Lcom/prolificinteractive/materialcalendarview/DayView;
    invoke-virtual {v0, p1}, Lcom/prolificinteractive/materialcalendarview/DayView;->setSelectionColor(I)V

    goto :goto_0

    .line 135
    .end local v0    # "dayView":Lcom/prolificinteractive/materialcalendarview/DayView;
    :cond_0
    return-void
.end method

.method public setSelectionEnabled(Z)V
    .locals 3
    .param p1, "selectionEnabled"    # Z

    .prologue
    .line 125
    iget-object v1, p0, Lcom/prolificinteractive/materialcalendarview/CalendarPagerView;->dayViews:Ljava/util/Collection;

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/prolificinteractive/materialcalendarview/DayView;

    .line 126
    .local v0, "dayView":Lcom/prolificinteractive/materialcalendarview/DayView;
    if-eqz p1, :cond_0

    move-object v1, p0

    :goto_1
    invoke-virtual {v0, v1}, Lcom/prolificinteractive/materialcalendarview/DayView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 127
    invoke-virtual {v0, p1}, Lcom/prolificinteractive/materialcalendarview/DayView;->setClickable(Z)V

    goto :goto_0

    .line 126
    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    .line 129
    .end local v0    # "dayView":Lcom/prolificinteractive/materialcalendarview/DayView;
    :cond_1
    return-void
.end method

.method public setShowOtherDates(I)V
    .locals 0
    .param p1, "showFlags"    # I
        .annotation runtime Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView$ShowOtherDates;
        .end annotation
    .end param

    .prologue
    .line 120
    iput p1, p0, Lcom/prolificinteractive/materialcalendarview/CalendarPagerView;->showOtherDates:I

    .line 121
    invoke-virtual {p0}, Lcom/prolificinteractive/materialcalendarview/CalendarPagerView;->updateUi()V

    .line 122
    return-void
.end method

.method public setWeekDayFormatter(Lcom/prolificinteractive/materialcalendarview/format/WeekDayFormatter;)V
    .locals 3
    .param p1, "formatter"    # Lcom/prolificinteractive/materialcalendarview/format/WeekDayFormatter;

    .prologue
    .line 138
    iget-object v1, p0, Lcom/prolificinteractive/materialcalendarview/CalendarPagerView;->weekDayViews:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/prolificinteractive/materialcalendarview/WeekDayView;

    .line 139
    .local v0, "dayView":Lcom/prolificinteractive/materialcalendarview/WeekDayView;
    invoke-virtual {v0, p1}, Lcom/prolificinteractive/materialcalendarview/WeekDayView;->setWeekDayFormatter(Lcom/prolificinteractive/materialcalendarview/format/WeekDayFormatter;)V

    goto :goto_0

    .line 141
    .end local v0    # "dayView":Lcom/prolificinteractive/materialcalendarview/WeekDayView;
    :cond_0
    return-void
.end method

.method public setWeekDayTextAppearance(I)V
    .locals 3
    .param p1, "taId"    # I

    .prologue
    .line 108
    iget-object v1, p0, Lcom/prolificinteractive/materialcalendarview/CalendarPagerView;->weekDayViews:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/prolificinteractive/materialcalendarview/WeekDayView;

    .line 109
    .local v0, "weekDayView":Lcom/prolificinteractive/materialcalendarview/WeekDayView;
    invoke-virtual {p0}, Lcom/prolificinteractive/materialcalendarview/CalendarPagerView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v0, v2, p1}, Lcom/prolificinteractive/materialcalendarview/WeekDayView;->setTextAppearance(Landroid/content/Context;I)V

    goto :goto_0

    .line 111
    .end local v0    # "weekDayView":Lcom/prolificinteractive/materialcalendarview/WeekDayView;
    :cond_0
    return-void
.end method

.method public shouldDelayChildPressedState()Z
    .locals 1

    .prologue
    .line 297
    const/4 v0, 0x0

    return v0
.end method

.method protected updateUi()V
    .locals 6

    .prologue
    .line 168
    iget-object v2, p0, Lcom/prolificinteractive/materialcalendarview/CalendarPagerView;->dayViews:Ljava/util/Collection;

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/prolificinteractive/materialcalendarview/DayView;

    .line 169
    .local v1, "dayView":Lcom/prolificinteractive/materialcalendarview/DayView;
    invoke-virtual {v1}, Lcom/prolificinteractive/materialcalendarview/DayView;->getDate()Lcom/prolificinteractive/materialcalendarview/CalendarDay;

    move-result-object v0

    .line 170
    .local v0, "day":Lcom/prolificinteractive/materialcalendarview/CalendarDay;
    iget v3, p0, Lcom/prolificinteractive/materialcalendarview/CalendarPagerView;->showOtherDates:I

    iget-object v4, p0, Lcom/prolificinteractive/materialcalendarview/CalendarPagerView;->minDate:Lcom/prolificinteractive/materialcalendarview/CalendarDay;

    iget-object v5, p0, Lcom/prolificinteractive/materialcalendarview/CalendarPagerView;->maxDate:Lcom/prolificinteractive/materialcalendarview/CalendarDay;

    .line 171
    invoke-virtual {v0, v4, v5}, Lcom/prolificinteractive/materialcalendarview/CalendarDay;->isInRange(Lcom/prolificinteractive/materialcalendarview/CalendarDay;Lcom/prolificinteractive/materialcalendarview/CalendarDay;)Z

    move-result v4

    invoke-virtual {p0, v0}, Lcom/prolificinteractive/materialcalendarview/CalendarPagerView;->isDayEnabled(Lcom/prolificinteractive/materialcalendarview/CalendarDay;)Z

    move-result v5

    .line 170
    invoke-virtual {v1, v3, v4, v5}, Lcom/prolificinteractive/materialcalendarview/DayView;->setupSelection(IZZ)V

    goto :goto_0

    .line 173
    .end local v0    # "day":Lcom/prolificinteractive/materialcalendarview/CalendarDay;
    .end local v1    # "dayView":Lcom/prolificinteractive/materialcalendarview/DayView;
    :cond_0
    invoke-virtual {p0}, Lcom/prolificinteractive/materialcalendarview/CalendarPagerView;->postInvalidate()V

    .line 174
    return-void
.end method
