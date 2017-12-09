.class Lcom/prolificinteractive/materialcalendarview/MonthPagerAdapter;
.super Lcom/prolificinteractive/materialcalendarview/CalendarPagerAdapter;
.source "MonthPagerAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/prolificinteractive/materialcalendarview/MonthPagerAdapter$Monthly;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/prolificinteractive/materialcalendarview/CalendarPagerAdapter",
        "<",
        "Lcom/prolificinteractive/materialcalendarview/MonthView;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>(Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;)V
    .locals 0
    .param p1, "mcv"    # Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;

    .prologue
    .line 12
    invoke-direct {p0, p1}, Lcom/prolificinteractive/materialcalendarview/CalendarPagerAdapter;-><init>(Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;)V

    .line 13
    return-void
.end method


# virtual methods
.method protected createRangeIndex(Lcom/prolificinteractive/materialcalendarview/CalendarDay;Lcom/prolificinteractive/materialcalendarview/CalendarDay;)Lcom/prolificinteractive/materialcalendarview/DateRangeIndex;
    .locals 1
    .param p1, "min"    # Lcom/prolificinteractive/materialcalendarview/CalendarDay;
    .param p2, "max"    # Lcom/prolificinteractive/materialcalendarview/CalendarDay;

    .prologue
    .line 33
    new-instance v0, Lcom/prolificinteractive/materialcalendarview/MonthPagerAdapter$Monthly;

    invoke-direct {v0, p1, p2}, Lcom/prolificinteractive/materialcalendarview/MonthPagerAdapter$Monthly;-><init>(Lcom/prolificinteractive/materialcalendarview/CalendarDay;Lcom/prolificinteractive/materialcalendarview/CalendarDay;)V

    return-object v0
.end method

.method protected bridge synthetic createView(I)Lcom/prolificinteractive/materialcalendarview/CalendarPagerView;
    .locals 1

    .prologue
    .line 9
    invoke-virtual {p0, p1}, Lcom/prolificinteractive/materialcalendarview/MonthPagerAdapter;->createView(I)Lcom/prolificinteractive/materialcalendarview/MonthView;

    move-result-object v0

    return-object v0
.end method

.method protected createView(I)Lcom/prolificinteractive/materialcalendarview/MonthView;
    .locals 4
    .param p1, "position"    # I

    .prologue
    .line 17
    new-instance v0, Lcom/prolificinteractive/materialcalendarview/MonthView;

    iget-object v1, p0, Lcom/prolificinteractive/materialcalendarview/MonthPagerAdapter;->mcv:Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;

    invoke-virtual {p0, p1}, Lcom/prolificinteractive/materialcalendarview/MonthPagerAdapter;->getItem(I)Lcom/prolificinteractive/materialcalendarview/CalendarDay;

    move-result-object v2

    iget-object v3, p0, Lcom/prolificinteractive/materialcalendarview/MonthPagerAdapter;->mcv:Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;

    invoke-virtual {v3}, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;->getFirstDayOfWeek()I

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Lcom/prolificinteractive/materialcalendarview/MonthView;-><init>(Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;Lcom/prolificinteractive/materialcalendarview/CalendarDay;I)V

    return-object v0
.end method

.method protected bridge synthetic indexOf(Lcom/prolificinteractive/materialcalendarview/CalendarPagerView;)I
    .locals 1

    .prologue
    .line 9
    check-cast p1, Lcom/prolificinteractive/materialcalendarview/MonthView;

    invoke-virtual {p0, p1}, Lcom/prolificinteractive/materialcalendarview/MonthPagerAdapter;->indexOf(Lcom/prolificinteractive/materialcalendarview/MonthView;)I

    move-result v0

    return v0
.end method

.method protected indexOf(Lcom/prolificinteractive/materialcalendarview/MonthView;)I
    .locals 2
    .param p1, "view"    # Lcom/prolificinteractive/materialcalendarview/MonthView;

    .prologue
    .line 22
    invoke-virtual {p1}, Lcom/prolificinteractive/materialcalendarview/MonthView;->getMonth()Lcom/prolificinteractive/materialcalendarview/CalendarDay;

    move-result-object v0

    .line 23
    .local v0, "month":Lcom/prolificinteractive/materialcalendarview/CalendarDay;
    invoke-virtual {p0}, Lcom/prolificinteractive/materialcalendarview/MonthPagerAdapter;->getRangeIndex()Lcom/prolificinteractive/materialcalendarview/DateRangeIndex;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/prolificinteractive/materialcalendarview/DateRangeIndex;->indexOf(Lcom/prolificinteractive/materialcalendarview/CalendarDay;)I

    move-result v1

    return v1
.end method

.method protected isInstanceOfView(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "object"    # Ljava/lang/Object;

    .prologue
    .line 28
    instance-of v0, p1, Lcom/prolificinteractive/materialcalendarview/MonthView;

    return v0
.end method
