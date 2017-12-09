.class Lcom/prolificinteractive/materialcalendarview/MonthView;
.super Lcom/prolificinteractive/materialcalendarview/CalendarPagerView;
.source "MonthView.java"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "ViewConstructor"
    }
.end annotation


# direct methods
.method public constructor <init>(Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;Lcom/prolificinteractive/materialcalendarview/CalendarDay;I)V
    .locals 0
    .param p1, "view"    # Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "month"    # Lcom/prolificinteractive/materialcalendarview/CalendarDay;
    .param p3, "firstDayOfWeek"    # I

    .prologue
    .line 17
    invoke-direct {p0, p1, p2, p3}, Lcom/prolificinteractive/materialcalendarview/CalendarPagerView;-><init>(Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;Lcom/prolificinteractive/materialcalendarview/CalendarDay;I)V

    .line 18
    return-void
.end method


# virtual methods
.method protected buildDayViews(Ljava/util/Collection;Ljava/util/Calendar;)V
    .locals 3
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
    .line 22
    .local p1, "dayViews":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/prolificinteractive/materialcalendarview/DayView;>;"
    const/4 v1, 0x0

    .local v1, "r":I
    :goto_0
    const/4 v2, 0x6

    if-ge v1, v2, :cond_1

    .line 23
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    const/4 v2, 0x7

    if-ge v0, v2, :cond_0

    .line 24
    invoke-virtual {p0, p1, p2}, Lcom/prolificinteractive/materialcalendarview/MonthView;->addDayView(Ljava/util/Collection;Ljava/util/Calendar;)V

    .line 23
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 22
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 27
    .end local v0    # "i":I
    :cond_1
    return-void
.end method

.method public getMonth()Lcom/prolificinteractive/materialcalendarview/CalendarDay;
    .locals 1

    .prologue
    .line 30
    invoke-virtual {p0}, Lcom/prolificinteractive/materialcalendarview/MonthView;->getFirstViewDay()Lcom/prolificinteractive/materialcalendarview/CalendarDay;

    move-result-object v0

    return-object v0
.end method

.method protected getRows()I
    .locals 1

    .prologue
    .line 40
    const/4 v0, 0x7

    return v0
.end method

.method protected isDayEnabled(Lcom/prolificinteractive/materialcalendarview/CalendarDay;)Z
    .locals 2
    .param p1, "day"    # Lcom/prolificinteractive/materialcalendarview/CalendarDay;

    .prologue
    .line 35
    invoke-virtual {p1}, Lcom/prolificinteractive/materialcalendarview/CalendarDay;->getMonth()I

    move-result v0

    invoke-virtual {p0}, Lcom/prolificinteractive/materialcalendarview/MonthView;->getFirstViewDay()Lcom/prolificinteractive/materialcalendarview/CalendarDay;

    move-result-object v1

    invoke-virtual {v1}, Lcom/prolificinteractive/materialcalendarview/CalendarDay;->getMonth()I

    move-result v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
