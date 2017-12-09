.class abstract Lcom/prolificinteractive/materialcalendarview/CalendarPagerAdapter;
.super Landroid/support/v4/view/PagerAdapter;
.source "CalendarPagerAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Lcom/prolificinteractive/materialcalendarview/CalendarPagerView;",
        ">",
        "Landroid/support/v4/view/PagerAdapter;"
    }
.end annotation


# instance fields
.field private color:Ljava/lang/Integer;

.field private final currentViews:Ljava/util/ArrayDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayDeque",
            "<TV;>;"
        }
    .end annotation
.end field

.field private dateTextAppearance:Ljava/lang/Integer;

.field private dayFormatter:Lcom/prolificinteractive/materialcalendarview/format/DayFormatter;

.field private decoratorResults:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/prolificinteractive/materialcalendarview/DecoratorResult;",
            ">;"
        }
    .end annotation
.end field

.field private decorators:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/prolificinteractive/materialcalendarview/DayViewDecorator;",
            ">;"
        }
    .end annotation
.end field

.field private maxDate:Lcom/prolificinteractive/materialcalendarview/CalendarDay;

.field protected final mcv:Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;

.field private minDate:Lcom/prolificinteractive/materialcalendarview/CalendarDay;

.field private rangeIndex:Lcom/prolificinteractive/materialcalendarview/DateRangeIndex;

.field private selectedDates:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/prolificinteractive/materialcalendarview/CalendarDay;",
            ">;"
        }
    .end annotation
.end field

.field private selectionEnabled:Z

.field private showOtherDates:I
    .annotation runtime Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView$ShowOtherDates;
    .end annotation
.end field

.field private titleFormatter:Lcom/prolificinteractive/materialcalendarview/format/TitleFormatter;

.field private final today:Lcom/prolificinteractive/materialcalendarview/CalendarDay;

.field private weekDayFormatter:Lcom/prolificinteractive/materialcalendarview/format/WeekDayFormatter;

.field private weekDayTextAppearance:Ljava/lang/Integer;


# direct methods
.method constructor <init>(Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;)V
    .locals 2
    .param p1, "mcv"    # Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;

    .prologue
    .local p0, "this":Lcom/prolificinteractive/materialcalendarview/CalendarPagerAdapter;, "Lcom/prolificinteractive/materialcalendarview/CalendarPagerAdapter<TV;>;"
    const/4 v1, 0x0

    .line 44
    invoke-direct {p0}, Landroid/support/v4/view/PagerAdapter;-><init>()V

    .line 28
    iput-object v1, p0, Lcom/prolificinteractive/materialcalendarview/CalendarPagerAdapter;->titleFormatter:Lcom/prolificinteractive/materialcalendarview/format/TitleFormatter;

    .line 29
    iput-object v1, p0, Lcom/prolificinteractive/materialcalendarview/CalendarPagerAdapter;->color:Ljava/lang/Integer;

    .line 30
    iput-object v1, p0, Lcom/prolificinteractive/materialcalendarview/CalendarPagerAdapter;->dateTextAppearance:Ljava/lang/Integer;

    .line 31
    iput-object v1, p0, Lcom/prolificinteractive/materialcalendarview/CalendarPagerAdapter;->weekDayTextAppearance:Ljava/lang/Integer;

    .line 32
    const/4 v0, 0x4

    iput v0, p0, Lcom/prolificinteractive/materialcalendarview/CalendarPagerAdapter;->showOtherDates:I

    .line 34
    iput-object v1, p0, Lcom/prolificinteractive/materialcalendarview/CalendarPagerAdapter;->minDate:Lcom/prolificinteractive/materialcalendarview/CalendarDay;

    .line 35
    iput-object v1, p0, Lcom/prolificinteractive/materialcalendarview/CalendarPagerAdapter;->maxDate:Lcom/prolificinteractive/materialcalendarview/CalendarDay;

    .line 37
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/prolificinteractive/materialcalendarview/CalendarPagerAdapter;->selectedDates:Ljava/util/List;

    .line 38
    sget-object v0, Lcom/prolificinteractive/materialcalendarview/format/WeekDayFormatter;->DEFAULT:Lcom/prolificinteractive/materialcalendarview/format/WeekDayFormatter;

    iput-object v0, p0, Lcom/prolificinteractive/materialcalendarview/CalendarPagerAdapter;->weekDayFormatter:Lcom/prolificinteractive/materialcalendarview/format/WeekDayFormatter;

    .line 39
    sget-object v0, Lcom/prolificinteractive/materialcalendarview/format/DayFormatter;->DEFAULT:Lcom/prolificinteractive/materialcalendarview/format/DayFormatter;

    iput-object v0, p0, Lcom/prolificinteractive/materialcalendarview/CalendarPagerAdapter;->dayFormatter:Lcom/prolificinteractive/materialcalendarview/format/DayFormatter;

    .line 40
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/prolificinteractive/materialcalendarview/CalendarPagerAdapter;->decorators:Ljava/util/List;

    .line 41
    iput-object v1, p0, Lcom/prolificinteractive/materialcalendarview/CalendarPagerAdapter;->decoratorResults:Ljava/util/List;

    .line 42
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/prolificinteractive/materialcalendarview/CalendarPagerAdapter;->selectionEnabled:Z

    .line 45
    iput-object p1, p0, Lcom/prolificinteractive/materialcalendarview/CalendarPagerAdapter;->mcv:Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;

    .line 46
    invoke-static {}, Lcom/prolificinteractive/materialcalendarview/CalendarDay;->today()Lcom/prolificinteractive/materialcalendarview/CalendarDay;

    move-result-object v0

    iput-object v0, p0, Lcom/prolificinteractive/materialcalendarview/CalendarPagerAdapter;->today:Lcom/prolificinteractive/materialcalendarview/CalendarDay;

    .line 47
    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v0, p0, Lcom/prolificinteractive/materialcalendarview/CalendarPagerAdapter;->currentViews:Ljava/util/ArrayDeque;

    .line 48
    iget-object v0, p0, Lcom/prolificinteractive/materialcalendarview/CalendarPagerAdapter;->currentViews:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->iterator()Ljava/util/Iterator;

    .line 49
    invoke-virtual {p0, v1, v1}, Lcom/prolificinteractive/materialcalendarview/CalendarPagerAdapter;->setRangeDates(Lcom/prolificinteractive/materialcalendarview/CalendarDay;Lcom/prolificinteractive/materialcalendarview/CalendarDay;)V

    .line 50
    return-void
.end method

.method private invalidateSelectedDates()V
    .locals 3

    .prologue
    .line 289
    .local p0, "this":Lcom/prolificinteractive/materialcalendarview/CalendarPagerAdapter;, "Lcom/prolificinteractive/materialcalendarview/CalendarPagerAdapter<TV;>;"
    invoke-direct {p0}, Lcom/prolificinteractive/materialcalendarview/CalendarPagerAdapter;->validateSelectedDates()V

    .line 290
    iget-object v1, p0, Lcom/prolificinteractive/materialcalendarview/CalendarPagerAdapter;->currentViews:Ljava/util/ArrayDeque;

    invoke-virtual {v1}, Ljava/util/ArrayDeque;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/prolificinteractive/materialcalendarview/CalendarPagerView;

    .line 291
    .local v0, "pagerView":Lcom/prolificinteractive/materialcalendarview/CalendarPagerView;, "TV;"
    iget-object v2, p0, Lcom/prolificinteractive/materialcalendarview/CalendarPagerAdapter;->selectedDates:Ljava/util/List;

    invoke-virtual {v0, v2}, Lcom/prolificinteractive/materialcalendarview/CalendarPagerView;->setSelectedDates(Ljava/util/Collection;)V

    goto :goto_0

    .line 293
    .end local v0    # "pagerView":Lcom/prolificinteractive/materialcalendarview/CalendarPagerView;, "TV;"
    :cond_0
    return-void
.end method

.method private validateSelectedDates()V
    .locals 3

    .prologue
    .line 296
    .local p0, "this":Lcom/prolificinteractive/materialcalendarview/CalendarPagerAdapter;, "Lcom/prolificinteractive/materialcalendarview/CalendarPagerAdapter<TV;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/prolificinteractive/materialcalendarview/CalendarPagerAdapter;->selectedDates:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_3

    .line 297
    iget-object v2, p0, Lcom/prolificinteractive/materialcalendarview/CalendarPagerAdapter;->selectedDates:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/prolificinteractive/materialcalendarview/CalendarDay;

    .line 299
    .local v0, "date":Lcom/prolificinteractive/materialcalendarview/CalendarDay;
    iget-object v2, p0, Lcom/prolificinteractive/materialcalendarview/CalendarPagerAdapter;->minDate:Lcom/prolificinteractive/materialcalendarview/CalendarDay;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/prolificinteractive/materialcalendarview/CalendarPagerAdapter;->minDate:Lcom/prolificinteractive/materialcalendarview/CalendarDay;

    invoke-virtual {v2, v0}, Lcom/prolificinteractive/materialcalendarview/CalendarDay;->isAfter(Lcom/prolificinteractive/materialcalendarview/CalendarDay;)Z

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    iget-object v2, p0, Lcom/prolificinteractive/materialcalendarview/CalendarPagerAdapter;->maxDate:Lcom/prolificinteractive/materialcalendarview/CalendarDay;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/prolificinteractive/materialcalendarview/CalendarPagerAdapter;->maxDate:Lcom/prolificinteractive/materialcalendarview/CalendarDay;

    invoke-virtual {v2, v0}, Lcom/prolificinteractive/materialcalendarview/CalendarDay;->isBefore(Lcom/prolificinteractive/materialcalendarview/CalendarDay;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 300
    :cond_1
    iget-object v2, p0, Lcom/prolificinteractive/materialcalendarview/CalendarPagerAdapter;->selectedDates:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 301
    iget-object v2, p0, Lcom/prolificinteractive/materialcalendarview/CalendarPagerAdapter;->mcv:Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;

    invoke-virtual {v2, v0}, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;->onDateUnselected(Lcom/prolificinteractive/materialcalendarview/CalendarDay;)V

    .line 302
    add-int/lit8 v1, v1, -0x1

    .line 296
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 305
    .end local v0    # "date":Lcom/prolificinteractive/materialcalendarview/CalendarDay;
    :cond_3
    return-void
.end method


# virtual methods
.method public clearSelections()V
    .locals 1

    .prologue
    .line 270
    .local p0, "this":Lcom/prolificinteractive/materialcalendarview/CalendarPagerAdapter;, "Lcom/prolificinteractive/materialcalendarview/CalendarPagerAdapter<TV;>;"
    iget-object v0, p0, Lcom/prolificinteractive/materialcalendarview/CalendarPagerAdapter;->selectedDates:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 271
    invoke-direct {p0}, Lcom/prolificinteractive/materialcalendarview/CalendarPagerAdapter;->invalidateSelectedDates()V

    .line 272
    return-void
.end method

.method protected abstract createRangeIndex(Lcom/prolificinteractive/materialcalendarview/CalendarDay;Lcom/prolificinteractive/materialcalendarview/CalendarDay;)Lcom/prolificinteractive/materialcalendarview/DateRangeIndex;
.end method

.method protected abstract createView(I)Lcom/prolificinteractive/materialcalendarview/CalendarPagerView;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TV;"
        }
    .end annotation
.end method

.method public destroyItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V
    .locals 2
    .param p1, "container"    # Landroid/view/ViewGroup;
    .param p2, "position"    # I
    .param p3, "object"    # Ljava/lang/Object;

    .prologue
    .line 176
    .local p0, "this":Lcom/prolificinteractive/materialcalendarview/CalendarPagerAdapter;, "Lcom/prolificinteractive/materialcalendarview/CalendarPagerAdapter<TV;>;"
    move-object v0, p3

    check-cast v0, Lcom/prolificinteractive/materialcalendarview/CalendarPagerView;

    .line 177
    .local v0, "pagerView":Lcom/prolificinteractive/materialcalendarview/CalendarPagerView;
    iget-object v1, p0, Lcom/prolificinteractive/materialcalendarview/CalendarPagerAdapter;->currentViews:Ljava/util/ArrayDeque;

    invoke-virtual {v1, v0}, Ljava/util/ArrayDeque;->remove(Ljava/lang/Object;)Z

    .line 178
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 179
    return-void
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 73
    .local p0, "this":Lcom/prolificinteractive/materialcalendarview/CalendarPagerAdapter;, "Lcom/prolificinteractive/materialcalendarview/CalendarPagerAdapter<TV;>;"
    iget-object v0, p0, Lcom/prolificinteractive/materialcalendarview/CalendarPagerAdapter;->rangeIndex:Lcom/prolificinteractive/materialcalendarview/DateRangeIndex;

    invoke-interface {v0}, Lcom/prolificinteractive/materialcalendarview/DateRangeIndex;->getCount()I

    move-result v0

    return v0
.end method

.method protected getDateTextAppearance()I
    .locals 1

    .prologue
    .line 317
    .local p0, "this":Lcom/prolificinteractive/materialcalendarview/CalendarPagerAdapter;, "Lcom/prolificinteractive/materialcalendarview/CalendarPagerAdapter<TV;>;"
    iget-object v0, p0, Lcom/prolificinteractive/materialcalendarview/CalendarPagerAdapter;->dateTextAppearance:Ljava/lang/Integer;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/prolificinteractive/materialcalendarview/CalendarPagerAdapter;->dateTextAppearance:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_0
.end method

.method public getIndexForDay(Lcom/prolificinteractive/materialcalendarview/CalendarDay;)I
    .locals 1
    .param p1, "day"    # Lcom/prolificinteractive/materialcalendarview/CalendarDay;

    .prologue
    .line 99
    .local p0, "this":Lcom/prolificinteractive/materialcalendarview/CalendarPagerAdapter;, "Lcom/prolificinteractive/materialcalendarview/CalendarPagerAdapter<TV;>;"
    if-nez p1, :cond_0

    .line 100
    invoke-virtual {p0}, Lcom/prolificinteractive/materialcalendarview/CalendarPagerAdapter;->getCount()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    .line 108
    :goto_0
    return v0

    .line 102
    :cond_0
    iget-object v0, p0, Lcom/prolificinteractive/materialcalendarview/CalendarPagerAdapter;->minDate:Lcom/prolificinteractive/materialcalendarview/CalendarDay;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/prolificinteractive/materialcalendarview/CalendarPagerAdapter;->minDate:Lcom/prolificinteractive/materialcalendarview/CalendarDay;

    invoke-virtual {p1, v0}, Lcom/prolificinteractive/materialcalendarview/CalendarDay;->isBefore(Lcom/prolificinteractive/materialcalendarview/CalendarDay;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 103
    const/4 v0, 0x0

    goto :goto_0

    .line 105
    :cond_1
    iget-object v0, p0, Lcom/prolificinteractive/materialcalendarview/CalendarPagerAdapter;->maxDate:Lcom/prolificinteractive/materialcalendarview/CalendarDay;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/prolificinteractive/materialcalendarview/CalendarPagerAdapter;->maxDate:Lcom/prolificinteractive/materialcalendarview/CalendarDay;

    invoke-virtual {p1, v0}, Lcom/prolificinteractive/materialcalendarview/CalendarDay;->isAfter(Lcom/prolificinteractive/materialcalendarview/CalendarDay;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 106
    invoke-virtual {p0}, Lcom/prolificinteractive/materialcalendarview/CalendarPagerAdapter;->getCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 108
    :cond_2
    iget-object v0, p0, Lcom/prolificinteractive/materialcalendarview/CalendarPagerAdapter;->rangeIndex:Lcom/prolificinteractive/materialcalendarview/DateRangeIndex;

    invoke-interface {v0, p1}, Lcom/prolificinteractive/materialcalendarview/DateRangeIndex;->indexOf(Lcom/prolificinteractive/materialcalendarview/CalendarDay;)I

    move-result v0

    goto :goto_0
.end method

.method public getItem(I)Lcom/prolificinteractive/materialcalendarview/CalendarDay;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 308
    .local p0, "this":Lcom/prolificinteractive/materialcalendarview/CalendarPagerAdapter;, "Lcom/prolificinteractive/materialcalendarview/CalendarPagerAdapter<TV;>;"
    iget-object v0, p0, Lcom/prolificinteractive/materialcalendarview/CalendarPagerAdapter;->rangeIndex:Lcom/prolificinteractive/materialcalendarview/DateRangeIndex;

    invoke-interface {v0, p1}, Lcom/prolificinteractive/materialcalendarview/DateRangeIndex;->getItem(I)Lcom/prolificinteractive/materialcalendarview/CalendarDay;

    move-result-object v0

    return-object v0
.end method

.method public getItemPosition(Ljava/lang/Object;)I
    .locals 5
    .param p1, "object"    # Ljava/lang/Object;

    .prologue
    .local p0, "this":Lcom/prolificinteractive/materialcalendarview/CalendarPagerAdapter;, "Lcom/prolificinteractive/materialcalendarview/CalendarPagerAdapter<TV;>;"
    const/4 v3, -0x2

    .line 121
    invoke-virtual {p0, p1}, Lcom/prolificinteractive/materialcalendarview/CalendarPagerAdapter;->isInstanceOfView(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    move v1, v3

    .line 133
    .end local p1    # "object":Ljava/lang/Object;
    :cond_0
    :goto_0
    return v1

    .restart local p1    # "object":Ljava/lang/Object;
    :cond_1
    move-object v2, p1

    .line 124
    check-cast v2, Lcom/prolificinteractive/materialcalendarview/CalendarPagerView;

    .line 125
    .local v2, "pagerView":Lcom/prolificinteractive/materialcalendarview/CalendarPagerView;
    invoke-virtual {v2}, Lcom/prolificinteractive/materialcalendarview/CalendarPagerView;->getFirstViewDay()Lcom/prolificinteractive/materialcalendarview/CalendarDay;

    move-result-object v0

    .line 126
    .local v0, "firstViewDay":Lcom/prolificinteractive/materialcalendarview/CalendarDay;
    if-nez v0, :cond_2

    move v1, v3

    .line 127
    goto :goto_0

    .line 129
    :cond_2
    check-cast p1, Lcom/prolificinteractive/materialcalendarview/CalendarPagerView;

    .end local p1    # "object":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/prolificinteractive/materialcalendarview/CalendarPagerAdapter;->indexOf(Lcom/prolificinteractive/materialcalendarview/CalendarPagerView;)I

    move-result v1

    .line 130
    .local v1, "index":I
    if-gez v1, :cond_0

    move v1, v3

    .line 131
    goto :goto_0
.end method

.method public getPageTitle(I)Ljava/lang/CharSequence;
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 78
    .local p0, "this":Lcom/prolificinteractive/materialcalendarview/CalendarPagerAdapter;, "Lcom/prolificinteractive/materialcalendarview/CalendarPagerAdapter<TV;>;"
    iget-object v0, p0, Lcom/prolificinteractive/materialcalendarview/CalendarPagerAdapter;->titleFormatter:Lcom/prolificinteractive/materialcalendarview/format/TitleFormatter;

    if-nez v0, :cond_0

    const-string v0, ""

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/prolificinteractive/materialcalendarview/CalendarPagerAdapter;->titleFormatter:Lcom/prolificinteractive/materialcalendarview/format/TitleFormatter;

    invoke-virtual {p0, p1}, Lcom/prolificinteractive/materialcalendarview/CalendarPagerAdapter;->getItem(I)Lcom/prolificinteractive/materialcalendarview/CalendarDay;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/prolificinteractive/materialcalendarview/format/TitleFormatter;->format(Lcom/prolificinteractive/materialcalendarview/CalendarDay;)Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_0
.end method

.method public getRangeIndex()Lcom/prolificinteractive/materialcalendarview/DateRangeIndex;
    .locals 1

    .prologue
    .line 266
    .local p0, "this":Lcom/prolificinteractive/materialcalendarview/CalendarPagerAdapter;, "Lcom/prolificinteractive/materialcalendarview/CalendarPagerAdapter<TV;>;"
    iget-object v0, p0, Lcom/prolificinteractive/materialcalendarview/CalendarPagerAdapter;->rangeIndex:Lcom/prolificinteractive/materialcalendarview/DateRangeIndex;

    return-object v0
.end method

.method public getSelectedDates()Ljava/util/List;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/prolificinteractive/materialcalendarview/CalendarDay;",
            ">;"
        }
    .end annotation

    .prologue
    .line 313
    .local p0, "this":Lcom/prolificinteractive/materialcalendarview/CalendarPagerAdapter;, "Lcom/prolificinteractive/materialcalendarview/CalendarPagerAdapter<TV;>;"
    iget-object v0, p0, Lcom/prolificinteractive/materialcalendarview/CalendarPagerAdapter;->selectedDates:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getShowOtherDates()I
    .locals 1
    .annotation runtime Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView$ShowOtherDates;
    .end annotation

    .prologue
    .line 230
    .local p0, "this":Lcom/prolificinteractive/materialcalendarview/CalendarPagerAdapter;, "Lcom/prolificinteractive/materialcalendarview/CalendarPagerAdapter<TV;>;"
    iget v0, p0, Lcom/prolificinteractive/materialcalendarview/CalendarPagerAdapter;->showOtherDates:I

    return v0
.end method

.method protected getWeekDayTextAppearance()I
    .locals 1

    .prologue
    .line 321
    .local p0, "this":Lcom/prolificinteractive/materialcalendarview/CalendarPagerAdapter;, "Lcom/prolificinteractive/materialcalendarview/CalendarPagerAdapter<TV;>;"
    iget-object v0, p0, Lcom/prolificinteractive/materialcalendarview/CalendarPagerAdapter;->weekDayTextAppearance:Ljava/lang/Integer;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/prolificinteractive/materialcalendarview/CalendarPagerAdapter;->weekDayTextAppearance:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_0
.end method

.method protected abstract indexOf(Lcom/prolificinteractive/materialcalendarview/CalendarPagerView;)I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)I"
        }
    .end annotation
.end method

.method public instantiateItem(Landroid/view/ViewGroup;I)Ljava/lang/Object;
    .locals 2
    .param p1, "container"    # Landroid/view/ViewGroup;
    .param p2, "position"    # I

    .prologue
    .line 138
    .local p0, "this":Lcom/prolificinteractive/materialcalendarview/CalendarPagerAdapter;, "Lcom/prolificinteractive/materialcalendarview/CalendarPagerAdapter<TV;>;"
    invoke-virtual {p0, p2}, Lcom/prolificinteractive/materialcalendarview/CalendarPagerAdapter;->createView(I)Lcom/prolificinteractive/materialcalendarview/CalendarPagerView;

    move-result-object v0

    .line 139
    .local v0, "pagerView":Lcom/prolificinteractive/materialcalendarview/CalendarPagerView;, "TV;"
    iget-object v1, p0, Lcom/prolificinteractive/materialcalendarview/CalendarPagerAdapter;->mcv:Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;

    invoke-virtual {v1}, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;->getCalendarContentDescription()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/prolificinteractive/materialcalendarview/CalendarPagerView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 140
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/prolificinteractive/materialcalendarview/CalendarPagerView;->setAlpha(F)V

    .line 141
    iget-boolean v1, p0, Lcom/prolificinteractive/materialcalendarview/CalendarPagerAdapter;->selectionEnabled:Z

    invoke-virtual {v0, v1}, Lcom/prolificinteractive/materialcalendarview/CalendarPagerView;->setSelectionEnabled(Z)V

    .line 143
    iget-object v1, p0, Lcom/prolificinteractive/materialcalendarview/CalendarPagerAdapter;->weekDayFormatter:Lcom/prolificinteractive/materialcalendarview/format/WeekDayFormatter;

    invoke-virtual {v0, v1}, Lcom/prolificinteractive/materialcalendarview/CalendarPagerView;->setWeekDayFormatter(Lcom/prolificinteractive/materialcalendarview/format/WeekDayFormatter;)V

    .line 144
    iget-object v1, p0, Lcom/prolificinteractive/materialcalendarview/CalendarPagerAdapter;->dayFormatter:Lcom/prolificinteractive/materialcalendarview/format/DayFormatter;

    invoke-virtual {v0, v1}, Lcom/prolificinteractive/materialcalendarview/CalendarPagerView;->setDayFormatter(Lcom/prolificinteractive/materialcalendarview/format/DayFormatter;)V

    .line 145
    iget-object v1, p0, Lcom/prolificinteractive/materialcalendarview/CalendarPagerAdapter;->color:Ljava/lang/Integer;

    if-eqz v1, :cond_0

    .line 146
    iget-object v1, p0, Lcom/prolificinteractive/materialcalendarview/CalendarPagerAdapter;->color:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/prolificinteractive/materialcalendarview/CalendarPagerView;->setSelectionColor(I)V

    .line 148
    :cond_0
    iget-object v1, p0, Lcom/prolificinteractive/materialcalendarview/CalendarPagerAdapter;->dateTextAppearance:Ljava/lang/Integer;

    if-eqz v1, :cond_1

    .line 149
    iget-object v1, p0, Lcom/prolificinteractive/materialcalendarview/CalendarPagerAdapter;->dateTextAppearance:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/prolificinteractive/materialcalendarview/CalendarPagerView;->setDateTextAppearance(I)V

    .line 151
    :cond_1
    iget-object v1, p0, Lcom/prolificinteractive/materialcalendarview/CalendarPagerAdapter;->weekDayTextAppearance:Ljava/lang/Integer;

    if-eqz v1, :cond_2

    .line 152
    iget-object v1, p0, Lcom/prolificinteractive/materialcalendarview/CalendarPagerAdapter;->weekDayTextAppearance:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/prolificinteractive/materialcalendarview/CalendarPagerView;->setWeekDayTextAppearance(I)V

    .line 154
    :cond_2
    iget v1, p0, Lcom/prolificinteractive/materialcalendarview/CalendarPagerAdapter;->showOtherDates:I

    invoke-virtual {v0, v1}, Lcom/prolificinteractive/materialcalendarview/CalendarPagerView;->setShowOtherDates(I)V

    .line 155
    iget-object v1, p0, Lcom/prolificinteractive/materialcalendarview/CalendarPagerAdapter;->minDate:Lcom/prolificinteractive/materialcalendarview/CalendarDay;

    invoke-virtual {v0, v1}, Lcom/prolificinteractive/materialcalendarview/CalendarPagerView;->setMinimumDate(Lcom/prolificinteractive/materialcalendarview/CalendarDay;)V

    .line 156
    iget-object v1, p0, Lcom/prolificinteractive/materialcalendarview/CalendarPagerAdapter;->maxDate:Lcom/prolificinteractive/materialcalendarview/CalendarDay;

    invoke-virtual {v0, v1}, Lcom/prolificinteractive/materialcalendarview/CalendarPagerView;->setMaximumDate(Lcom/prolificinteractive/materialcalendarview/CalendarDay;)V

    .line 157
    iget-object v1, p0, Lcom/prolificinteractive/materialcalendarview/CalendarPagerAdapter;->selectedDates:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/prolificinteractive/materialcalendarview/CalendarPagerView;->setSelectedDates(Ljava/util/Collection;)V

    .line 159
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 160
    iget-object v1, p0, Lcom/prolificinteractive/materialcalendarview/CalendarPagerAdapter;->currentViews:Ljava/util/ArrayDeque;

    invoke-virtual {v1, v0}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    .line 162
    iget-object v1, p0, Lcom/prolificinteractive/materialcalendarview/CalendarPagerAdapter;->decoratorResults:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/prolificinteractive/materialcalendarview/CalendarPagerView;->setDayViewDecorators(Ljava/util/List;)V

    .line 164
    return-object v0
.end method

.method public invalidateDecorators()V
    .locals 6

    .prologue
    .line 58
    .local p0, "this":Lcom/prolificinteractive/materialcalendarview/CalendarPagerAdapter;, "Lcom/prolificinteractive/materialcalendarview/CalendarPagerAdapter<TV;>;"
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/prolificinteractive/materialcalendarview/CalendarPagerAdapter;->decoratorResults:Ljava/util/List;

    .line 59
    iget-object v3, p0, Lcom/prolificinteractive/materialcalendarview/CalendarPagerAdapter;->decorators:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/prolificinteractive/materialcalendarview/DayViewDecorator;

    .line 60
    .local v0, "decorator":Lcom/prolificinteractive/materialcalendarview/DayViewDecorator;
    new-instance v1, Lcom/prolificinteractive/materialcalendarview/DayViewFacade;

    invoke-direct {v1}, Lcom/prolificinteractive/materialcalendarview/DayViewFacade;-><init>()V

    .line 61
    .local v1, "facade":Lcom/prolificinteractive/materialcalendarview/DayViewFacade;
    invoke-interface {v0, v1}, Lcom/prolificinteractive/materialcalendarview/DayViewDecorator;->decorate(Lcom/prolificinteractive/materialcalendarview/DayViewFacade;)V

    .line 62
    invoke-virtual {v1}, Lcom/prolificinteractive/materialcalendarview/DayViewFacade;->isDecorated()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 63
    iget-object v4, p0, Lcom/prolificinteractive/materialcalendarview/CalendarPagerAdapter;->decoratorResults:Ljava/util/List;

    new-instance v5, Lcom/prolificinteractive/materialcalendarview/DecoratorResult;

    invoke-direct {v5, v0, v1}, Lcom/prolificinteractive/materialcalendarview/DecoratorResult;-><init>(Lcom/prolificinteractive/materialcalendarview/DayViewDecorator;Lcom/prolificinteractive/materialcalendarview/DayViewFacade;)V

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 66
    .end local v0    # "decorator":Lcom/prolificinteractive/materialcalendarview/DayViewDecorator;
    .end local v1    # "facade":Lcom/prolificinteractive/materialcalendarview/DayViewFacade;
    :cond_1
    iget-object v3, p0, Lcom/prolificinteractive/materialcalendarview/CalendarPagerAdapter;->currentViews:Ljava/util/ArrayDeque;

    invoke-virtual {v3}, Ljava/util/ArrayDeque;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/prolificinteractive/materialcalendarview/CalendarPagerView;

    .line 67
    .local v2, "pagerView":Lcom/prolificinteractive/materialcalendarview/CalendarPagerView;, "TV;"
    iget-object v4, p0, Lcom/prolificinteractive/materialcalendarview/CalendarPagerAdapter;->decoratorResults:Ljava/util/List;

    invoke-virtual {v2, v4}, Lcom/prolificinteractive/materialcalendarview/CalendarPagerView;->setDayViewDecorators(Ljava/util/List;)V

    goto :goto_1

    .line 69
    .end local v2    # "pagerView":Lcom/prolificinteractive/materialcalendarview/CalendarPagerView;, "TV;"
    :cond_2
    return-void
.end method

.method protected abstract isInstanceOfView(Ljava/lang/Object;)Z
.end method

.method public isViewFromObject(Landroid/view/View;Ljava/lang/Object;)Z
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "object"    # Ljava/lang/Object;

    .prologue
    .line 183
    .local p0, "this":Lcom/prolificinteractive/materialcalendarview/CalendarPagerAdapter;, "Lcom/prolificinteractive/materialcalendarview/CalendarPagerAdapter<TV;>;"
    if-ne p1, p2, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public migrateStateAndReturn(Lcom/prolificinteractive/materialcalendarview/CalendarPagerAdapter;)Lcom/prolificinteractive/materialcalendarview/CalendarPagerAdapter;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/prolificinteractive/materialcalendarview/CalendarPagerAdapter",
            "<*>;)",
            "Lcom/prolificinteractive/materialcalendarview/CalendarPagerAdapter",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 82
    .local p0, "this":Lcom/prolificinteractive/materialcalendarview/CalendarPagerAdapter;, "Lcom/prolificinteractive/materialcalendarview/CalendarPagerAdapter<TV;>;"
    .local p1, "newAdapter":Lcom/prolificinteractive/materialcalendarview/CalendarPagerAdapter;, "Lcom/prolificinteractive/materialcalendarview/CalendarPagerAdapter<*>;"
    iget-object v0, p0, Lcom/prolificinteractive/materialcalendarview/CalendarPagerAdapter;->titleFormatter:Lcom/prolificinteractive/materialcalendarview/format/TitleFormatter;

    iput-object v0, p1, Lcom/prolificinteractive/materialcalendarview/CalendarPagerAdapter;->titleFormatter:Lcom/prolificinteractive/materialcalendarview/format/TitleFormatter;

    .line 83
    iget-object v0, p0, Lcom/prolificinteractive/materialcalendarview/CalendarPagerAdapter;->color:Ljava/lang/Integer;

    iput-object v0, p1, Lcom/prolificinteractive/materialcalendarview/CalendarPagerAdapter;->color:Ljava/lang/Integer;

    .line 84
    iget-object v0, p0, Lcom/prolificinteractive/materialcalendarview/CalendarPagerAdapter;->dateTextAppearance:Ljava/lang/Integer;

    iput-object v0, p1, Lcom/prolificinteractive/materialcalendarview/CalendarPagerAdapter;->dateTextAppearance:Ljava/lang/Integer;

    .line 85
    iget-object v0, p0, Lcom/prolificinteractive/materialcalendarview/CalendarPagerAdapter;->weekDayTextAppearance:Ljava/lang/Integer;

    iput-object v0, p1, Lcom/prolificinteractive/materialcalendarview/CalendarPagerAdapter;->weekDayTextAppearance:Ljava/lang/Integer;

    .line 86
    iget v0, p0, Lcom/prolificinteractive/materialcalendarview/CalendarPagerAdapter;->showOtherDates:I

    iput v0, p1, Lcom/prolificinteractive/materialcalendarview/CalendarPagerAdapter;->showOtherDates:I

    .line 87
    iget-object v0, p0, Lcom/prolificinteractive/materialcalendarview/CalendarPagerAdapter;->minDate:Lcom/prolificinteractive/materialcalendarview/CalendarDay;

    iput-object v0, p1, Lcom/prolificinteractive/materialcalendarview/CalendarPagerAdapter;->minDate:Lcom/prolificinteractive/materialcalendarview/CalendarDay;

    .line 88
    iget-object v0, p0, Lcom/prolificinteractive/materialcalendarview/CalendarPagerAdapter;->maxDate:Lcom/prolificinteractive/materialcalendarview/CalendarDay;

    iput-object v0, p1, Lcom/prolificinteractive/materialcalendarview/CalendarPagerAdapter;->maxDate:Lcom/prolificinteractive/materialcalendarview/CalendarDay;

    .line 89
    iget-object v0, p0, Lcom/prolificinteractive/materialcalendarview/CalendarPagerAdapter;->selectedDates:Ljava/util/List;

    iput-object v0, p1, Lcom/prolificinteractive/materialcalendarview/CalendarPagerAdapter;->selectedDates:Ljava/util/List;

    .line 90
    iget-object v0, p0, Lcom/prolificinteractive/materialcalendarview/CalendarPagerAdapter;->weekDayFormatter:Lcom/prolificinteractive/materialcalendarview/format/WeekDayFormatter;

    iput-object v0, p1, Lcom/prolificinteractive/materialcalendarview/CalendarPagerAdapter;->weekDayFormatter:Lcom/prolificinteractive/materialcalendarview/format/WeekDayFormatter;

    .line 91
    iget-object v0, p0, Lcom/prolificinteractive/materialcalendarview/CalendarPagerAdapter;->dayFormatter:Lcom/prolificinteractive/materialcalendarview/format/DayFormatter;

    iput-object v0, p1, Lcom/prolificinteractive/materialcalendarview/CalendarPagerAdapter;->dayFormatter:Lcom/prolificinteractive/materialcalendarview/format/DayFormatter;

    .line 92
    iget-object v0, p0, Lcom/prolificinteractive/materialcalendarview/CalendarPagerAdapter;->decorators:Ljava/util/List;

    iput-object v0, p1, Lcom/prolificinteractive/materialcalendarview/CalendarPagerAdapter;->decorators:Ljava/util/List;

    .line 93
    iget-object v0, p0, Lcom/prolificinteractive/materialcalendarview/CalendarPagerAdapter;->decoratorResults:Ljava/util/List;

    iput-object v0, p1, Lcom/prolificinteractive/materialcalendarview/CalendarPagerAdapter;->decoratorResults:Ljava/util/List;

    .line 94
    iget-boolean v0, p0, Lcom/prolificinteractive/materialcalendarview/CalendarPagerAdapter;->selectionEnabled:Z

    iput-boolean v0, p1, Lcom/prolificinteractive/materialcalendarview/CalendarPagerAdapter;->selectionEnabled:Z

    .line 95
    return-object p1
.end method

.method public setDateSelected(Lcom/prolificinteractive/materialcalendarview/CalendarDay;Z)V
    .locals 1
    .param p1, "day"    # Lcom/prolificinteractive/materialcalendarview/CalendarDay;
    .param p2, "selected"    # Z

    .prologue
    .line 275
    .local p0, "this":Lcom/prolificinteractive/materialcalendarview/CalendarPagerAdapter;, "Lcom/prolificinteractive/materialcalendarview/CalendarPagerAdapter<TV;>;"
    if-eqz p2, :cond_1

    .line 276
    iget-object v0, p0, Lcom/prolificinteractive/materialcalendarview/CalendarPagerAdapter;->selectedDates:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 277
    iget-object v0, p0, Lcom/prolificinteractive/materialcalendarview/CalendarPagerAdapter;->selectedDates:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 278
    invoke-direct {p0}, Lcom/prolificinteractive/materialcalendarview/CalendarPagerAdapter;->invalidateSelectedDates()V

    .line 286
    :cond_0
    :goto_0
    return-void

    .line 281
    :cond_1
    iget-object v0, p0, Lcom/prolificinteractive/materialcalendarview/CalendarPagerAdapter;->selectedDates:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 282
    iget-object v0, p0, Lcom/prolificinteractive/materialcalendarview/CalendarPagerAdapter;->selectedDates:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 283
    invoke-direct {p0}, Lcom/prolificinteractive/materialcalendarview/CalendarPagerAdapter;->invalidateSelectedDates()V

    goto :goto_0
.end method

.method public setDateTextAppearance(I)V
    .locals 3
    .param p1, "taId"    # I

    .prologue
    .line 198
    .local p0, "this":Lcom/prolificinteractive/materialcalendarview/CalendarPagerAdapter;, "Lcom/prolificinteractive/materialcalendarview/CalendarPagerAdapter<TV;>;"
    if-nez p1, :cond_1

    .line 205
    :cond_0
    return-void

    .line 201
    :cond_1
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, p0, Lcom/prolificinteractive/materialcalendarview/CalendarPagerAdapter;->dateTextAppearance:Ljava/lang/Integer;

    .line 202
    iget-object v1, p0, Lcom/prolificinteractive/materialcalendarview/CalendarPagerAdapter;->currentViews:Ljava/util/ArrayDeque;

    invoke-virtual {v1}, Ljava/util/ArrayDeque;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/prolificinteractive/materialcalendarview/CalendarPagerView;

    .line 203
    .local v0, "pagerView":Lcom/prolificinteractive/materialcalendarview/CalendarPagerView;, "TV;"
    invoke-virtual {v0, p1}, Lcom/prolificinteractive/materialcalendarview/CalendarPagerView;->setDateTextAppearance(I)V

    goto :goto_0
.end method

.method public setDayFormatter(Lcom/prolificinteractive/materialcalendarview/format/DayFormatter;)V
    .locals 3
    .param p1, "formatter"    # Lcom/prolificinteractive/materialcalendarview/format/DayFormatter;

    .prologue
    .line 222
    .local p0, "this":Lcom/prolificinteractive/materialcalendarview/CalendarPagerAdapter;, "Lcom/prolificinteractive/materialcalendarview/CalendarPagerAdapter<TV;>;"
    iput-object p1, p0, Lcom/prolificinteractive/materialcalendarview/CalendarPagerAdapter;->dayFormatter:Lcom/prolificinteractive/materialcalendarview/format/DayFormatter;

    .line 223
    iget-object v1, p0, Lcom/prolificinteractive/materialcalendarview/CalendarPagerAdapter;->currentViews:Ljava/util/ArrayDeque;

    invoke-virtual {v1}, Ljava/util/ArrayDeque;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/prolificinteractive/materialcalendarview/CalendarPagerView;

    .line 224
    .local v0, "pagerView":Lcom/prolificinteractive/materialcalendarview/CalendarPagerView;, "TV;"
    invoke-virtual {v0, p1}, Lcom/prolificinteractive/materialcalendarview/CalendarPagerView;->setDayFormatter(Lcom/prolificinteractive/materialcalendarview/format/DayFormatter;)V

    goto :goto_0

    .line 226
    .end local v0    # "pagerView":Lcom/prolificinteractive/materialcalendarview/CalendarPagerView;, "TV;"
    :cond_0
    return-void
.end method

.method public setDecorators(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/prolificinteractive/materialcalendarview/DayViewDecorator;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 53
    .local p0, "this":Lcom/prolificinteractive/materialcalendarview/CalendarPagerAdapter;, "Lcom/prolificinteractive/materialcalendarview/CalendarPagerAdapter<TV;>;"
    .local p1, "decorators":Ljava/util/List;, "Ljava/util/List<Lcom/prolificinteractive/materialcalendarview/DayViewDecorator;>;"
    iput-object p1, p0, Lcom/prolificinteractive/materialcalendarview/CalendarPagerAdapter;->decorators:Ljava/util/List;

    .line 54
    invoke-virtual {p0}, Lcom/prolificinteractive/materialcalendarview/CalendarPagerAdapter;->invalidateDecorators()V

    .line 55
    return-void
.end method

.method public setRangeDates(Lcom/prolificinteractive/materialcalendarview/CalendarDay;Lcom/prolificinteractive/materialcalendarview/CalendarDay;)V
    .locals 4
    .param p1, "min"    # Lcom/prolificinteractive/materialcalendarview/CalendarDay;
    .param p2, "max"    # Lcom/prolificinteractive/materialcalendarview/CalendarDay;

    .prologue
    .line 244
    .local p0, "this":Lcom/prolificinteractive/materialcalendarview/CalendarPagerAdapter;, "Lcom/prolificinteractive/materialcalendarview/CalendarPagerAdapter<TV;>;"
    iput-object p1, p0, Lcom/prolificinteractive/materialcalendarview/CalendarPagerAdapter;->minDate:Lcom/prolificinteractive/materialcalendarview/CalendarDay;

    .line 245
    iput-object p2, p0, Lcom/prolificinteractive/materialcalendarview/CalendarPagerAdapter;->maxDate:Lcom/prolificinteractive/materialcalendarview/CalendarDay;

    .line 246
    iget-object v1, p0, Lcom/prolificinteractive/materialcalendarview/CalendarPagerAdapter;->currentViews:Ljava/util/ArrayDeque;

    invoke-virtual {v1}, Ljava/util/ArrayDeque;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/prolificinteractive/materialcalendarview/CalendarPagerView;

    .line 247
    .local v0, "pagerView":Lcom/prolificinteractive/materialcalendarview/CalendarPagerView;, "TV;"
    invoke-virtual {v0, p1}, Lcom/prolificinteractive/materialcalendarview/CalendarPagerView;->setMinimumDate(Lcom/prolificinteractive/materialcalendarview/CalendarDay;)V

    .line 248
    invoke-virtual {v0, p2}, Lcom/prolificinteractive/materialcalendarview/CalendarPagerView;->setMaximumDate(Lcom/prolificinteractive/materialcalendarview/CalendarDay;)V

    goto :goto_0

    .line 251
    .end local v0    # "pagerView":Lcom/prolificinteractive/materialcalendarview/CalendarPagerView;, "TV;"
    :cond_0
    if-nez p1, :cond_1

    .line 252
    iget-object v1, p0, Lcom/prolificinteractive/materialcalendarview/CalendarPagerAdapter;->today:Lcom/prolificinteractive/materialcalendarview/CalendarDay;

    invoke-virtual {v1}, Lcom/prolificinteractive/materialcalendarview/CalendarDay;->getYear()I

    move-result v1

    add-int/lit16 v1, v1, -0xc8

    iget-object v2, p0, Lcom/prolificinteractive/materialcalendarview/CalendarPagerAdapter;->today:Lcom/prolificinteractive/materialcalendarview/CalendarDay;

    invoke-virtual {v2}, Lcom/prolificinteractive/materialcalendarview/CalendarDay;->getMonth()I

    move-result v2

    iget-object v3, p0, Lcom/prolificinteractive/materialcalendarview/CalendarPagerAdapter;->today:Lcom/prolificinteractive/materialcalendarview/CalendarDay;

    invoke-virtual {v3}, Lcom/prolificinteractive/materialcalendarview/CalendarDay;->getDay()I

    move-result v3

    invoke-static {v1, v2, v3}, Lcom/prolificinteractive/materialcalendarview/CalendarDay;->from(III)Lcom/prolificinteractive/materialcalendarview/CalendarDay;

    move-result-object p1

    .line 255
    :cond_1
    if-nez p2, :cond_2

    .line 256
    iget-object v1, p0, Lcom/prolificinteractive/materialcalendarview/CalendarPagerAdapter;->today:Lcom/prolificinteractive/materialcalendarview/CalendarDay;

    invoke-virtual {v1}, Lcom/prolificinteractive/materialcalendarview/CalendarDay;->getYear()I

    move-result v1

    add-int/lit16 v1, v1, 0xc8

    iget-object v2, p0, Lcom/prolificinteractive/materialcalendarview/CalendarPagerAdapter;->today:Lcom/prolificinteractive/materialcalendarview/CalendarDay;

    invoke-virtual {v2}, Lcom/prolificinteractive/materialcalendarview/CalendarDay;->getMonth()I

    move-result v2

    iget-object v3, p0, Lcom/prolificinteractive/materialcalendarview/CalendarPagerAdapter;->today:Lcom/prolificinteractive/materialcalendarview/CalendarDay;

    invoke-virtual {v3}, Lcom/prolificinteractive/materialcalendarview/CalendarDay;->getDay()I

    move-result v3

    invoke-static {v1, v2, v3}, Lcom/prolificinteractive/materialcalendarview/CalendarDay;->from(III)Lcom/prolificinteractive/materialcalendarview/CalendarDay;

    move-result-object p2

    .line 259
    :cond_2
    invoke-virtual {p0, p1, p2}, Lcom/prolificinteractive/materialcalendarview/CalendarPagerAdapter;->createRangeIndex(Lcom/prolificinteractive/materialcalendarview/CalendarDay;Lcom/prolificinteractive/materialcalendarview/CalendarDay;)Lcom/prolificinteractive/materialcalendarview/DateRangeIndex;

    move-result-object v1

    iput-object v1, p0, Lcom/prolificinteractive/materialcalendarview/CalendarPagerAdapter;->rangeIndex:Lcom/prolificinteractive/materialcalendarview/DateRangeIndex;

    .line 261
    invoke-virtual {p0}, Lcom/prolificinteractive/materialcalendarview/CalendarPagerAdapter;->notifyDataSetChanged()V

    .line 262
    invoke-direct {p0}, Lcom/prolificinteractive/materialcalendarview/CalendarPagerAdapter;->invalidateSelectedDates()V

    .line 263
    return-void
.end method

.method public setSelectionColor(I)V
    .locals 3
    .param p1, "color"    # I

    .prologue
    .line 191
    .local p0, "this":Lcom/prolificinteractive/materialcalendarview/CalendarPagerAdapter;, "Lcom/prolificinteractive/materialcalendarview/CalendarPagerAdapter<TV;>;"
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, p0, Lcom/prolificinteractive/materialcalendarview/CalendarPagerAdapter;->color:Ljava/lang/Integer;

    .line 192
    iget-object v1, p0, Lcom/prolificinteractive/materialcalendarview/CalendarPagerAdapter;->currentViews:Ljava/util/ArrayDeque;

    invoke-virtual {v1}, Ljava/util/ArrayDeque;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/prolificinteractive/materialcalendarview/CalendarPagerView;

    .line 193
    .local v0, "pagerView":Lcom/prolificinteractive/materialcalendarview/CalendarPagerView;, "TV;"
    invoke-virtual {v0, p1}, Lcom/prolificinteractive/materialcalendarview/CalendarPagerView;->setSelectionColor(I)V

    goto :goto_0

    .line 195
    .end local v0    # "pagerView":Lcom/prolificinteractive/materialcalendarview/CalendarPagerView;, "TV;"
    :cond_0
    return-void
.end method

.method public setSelectionEnabled(Z)V
    .locals 3
    .param p1, "enabled"    # Z

    .prologue
    .line 168
    .local p0, "this":Lcom/prolificinteractive/materialcalendarview/CalendarPagerAdapter;, "Lcom/prolificinteractive/materialcalendarview/CalendarPagerAdapter<TV;>;"
    iput-boolean p1, p0, Lcom/prolificinteractive/materialcalendarview/CalendarPagerAdapter;->selectionEnabled:Z

    .line 169
    iget-object v1, p0, Lcom/prolificinteractive/materialcalendarview/CalendarPagerAdapter;->currentViews:Ljava/util/ArrayDeque;

    invoke-virtual {v1}, Ljava/util/ArrayDeque;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/prolificinteractive/materialcalendarview/CalendarPagerView;

    .line 170
    .local v0, "pagerView":Lcom/prolificinteractive/materialcalendarview/CalendarPagerView;, "TV;"
    iget-boolean v2, p0, Lcom/prolificinteractive/materialcalendarview/CalendarPagerAdapter;->selectionEnabled:Z

    invoke-virtual {v0, v2}, Lcom/prolificinteractive/materialcalendarview/CalendarPagerView;->setSelectionEnabled(Z)V

    goto :goto_0

    .line 172
    .end local v0    # "pagerView":Lcom/prolificinteractive/materialcalendarview/CalendarPagerView;, "TV;"
    :cond_0
    return-void
.end method

.method public setShowOtherDates(I)V
    .locals 3
    .param p1, "showFlags"    # I
        .annotation runtime Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView$ShowOtherDates;
        .end annotation
    .end param

    .prologue
    .line 208
    .local p0, "this":Lcom/prolificinteractive/materialcalendarview/CalendarPagerAdapter;, "Lcom/prolificinteractive/materialcalendarview/CalendarPagerAdapter<TV;>;"
    iput p1, p0, Lcom/prolificinteractive/materialcalendarview/CalendarPagerAdapter;->showOtherDates:I

    .line 209
    iget-object v1, p0, Lcom/prolificinteractive/materialcalendarview/CalendarPagerAdapter;->currentViews:Ljava/util/ArrayDeque;

    invoke-virtual {v1}, Ljava/util/ArrayDeque;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/prolificinteractive/materialcalendarview/CalendarPagerView;

    .line 210
    .local v0, "pagerView":Lcom/prolificinteractive/materialcalendarview/CalendarPagerView;, "TV;"
    invoke-virtual {v0, p1}, Lcom/prolificinteractive/materialcalendarview/CalendarPagerView;->setShowOtherDates(I)V

    goto :goto_0

    .line 212
    .end local v0    # "pagerView":Lcom/prolificinteractive/materialcalendarview/CalendarPagerView;, "TV;"
    :cond_0
    return-void
.end method

.method public setTitleFormatter(Lcom/prolificinteractive/materialcalendarview/format/TitleFormatter;)V
    .locals 0
    .param p1, "titleFormatter"    # Lcom/prolificinteractive/materialcalendarview/format/TitleFormatter;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 187
    .local p0, "this":Lcom/prolificinteractive/materialcalendarview/CalendarPagerAdapter;, "Lcom/prolificinteractive/materialcalendarview/CalendarPagerAdapter<TV;>;"
    iput-object p1, p0, Lcom/prolificinteractive/materialcalendarview/CalendarPagerAdapter;->titleFormatter:Lcom/prolificinteractive/materialcalendarview/format/TitleFormatter;

    .line 188
    return-void
.end method

.method public setWeekDayFormatter(Lcom/prolificinteractive/materialcalendarview/format/WeekDayFormatter;)V
    .locals 3
    .param p1, "formatter"    # Lcom/prolificinteractive/materialcalendarview/format/WeekDayFormatter;

    .prologue
    .line 215
    .local p0, "this":Lcom/prolificinteractive/materialcalendarview/CalendarPagerAdapter;, "Lcom/prolificinteractive/materialcalendarview/CalendarPagerAdapter<TV;>;"
    iput-object p1, p0, Lcom/prolificinteractive/materialcalendarview/CalendarPagerAdapter;->weekDayFormatter:Lcom/prolificinteractive/materialcalendarview/format/WeekDayFormatter;

    .line 216
    iget-object v1, p0, Lcom/prolificinteractive/materialcalendarview/CalendarPagerAdapter;->currentViews:Ljava/util/ArrayDeque;

    invoke-virtual {v1}, Ljava/util/ArrayDeque;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/prolificinteractive/materialcalendarview/CalendarPagerView;

    .line 217
    .local v0, "pagerView":Lcom/prolificinteractive/materialcalendarview/CalendarPagerView;, "TV;"
    invoke-virtual {v0, p1}, Lcom/prolificinteractive/materialcalendarview/CalendarPagerView;->setWeekDayFormatter(Lcom/prolificinteractive/materialcalendarview/format/WeekDayFormatter;)V

    goto :goto_0

    .line 219
    .end local v0    # "pagerView":Lcom/prolificinteractive/materialcalendarview/CalendarPagerView;, "TV;"
    :cond_0
    return-void
.end method

.method public setWeekDayTextAppearance(I)V
    .locals 3
    .param p1, "taId"    # I

    .prologue
    .line 234
    .local p0, "this":Lcom/prolificinteractive/materialcalendarview/CalendarPagerAdapter;, "Lcom/prolificinteractive/materialcalendarview/CalendarPagerAdapter<TV;>;"
    if-nez p1, :cond_1

    .line 241
    :cond_0
    return-void

    .line 237
    :cond_1
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, p0, Lcom/prolificinteractive/materialcalendarview/CalendarPagerAdapter;->weekDayTextAppearance:Ljava/lang/Integer;

    .line 238
    iget-object v1, p0, Lcom/prolificinteractive/materialcalendarview/CalendarPagerAdapter;->currentViews:Ljava/util/ArrayDeque;

    invoke-virtual {v1}, Ljava/util/ArrayDeque;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/prolificinteractive/materialcalendarview/CalendarPagerView;

    .line 239
    .local v0, "pagerView":Lcom/prolificinteractive/materialcalendarview/CalendarPagerView;, "TV;"
    invoke-virtual {v0, p1}, Lcom/prolificinteractive/materialcalendarview/CalendarPagerView;->setWeekDayTextAppearance(I)V

    goto :goto_0
.end method
