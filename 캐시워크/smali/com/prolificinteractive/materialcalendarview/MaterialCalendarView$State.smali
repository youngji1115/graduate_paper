.class public Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView$State;
.super Ljava/lang/Object;
.source "MaterialCalendarView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "State"
.end annotation


# instance fields
.field private final cacheCurrentPosition:Z

.field private final calendarMode:Lcom/prolificinteractive/materialcalendarview/CalendarMode;

.field private final firstDayOfWeek:I

.field private final maxDate:Lcom/prolificinteractive/materialcalendarview/CalendarDay;

.field private final minDate:Lcom/prolificinteractive/materialcalendarview/CalendarDay;

.field final synthetic this$0:Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;


# direct methods
.method private constructor <init>(Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView$StateBuilder;)V
    .locals 1
    .param p1, "this$0"    # Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;
    .param p2, "builder"    # Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView$StateBuilder;

    .prologue
    .line 1814
    iput-object p1, p0, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView$State;->this$0:Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1815
    invoke-static {p2}, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView$StateBuilder;->access$900(Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView$StateBuilder;)Lcom/prolificinteractive/materialcalendarview/CalendarMode;

    move-result-object v0

    iput-object v0, p0, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView$State;->calendarMode:Lcom/prolificinteractive/materialcalendarview/CalendarMode;

    .line 1816
    invoke-static {p2}, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView$StateBuilder;->access$1000(Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView$StateBuilder;)I

    move-result v0

    iput v0, p0, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView$State;->firstDayOfWeek:I

    .line 1817
    invoke-static {p2}, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView$StateBuilder;->access$1100(Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView$StateBuilder;)Lcom/prolificinteractive/materialcalendarview/CalendarDay;

    move-result-object v0

    iput-object v0, p0, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView$State;->minDate:Lcom/prolificinteractive/materialcalendarview/CalendarDay;

    .line 1818
    invoke-static {p2}, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView$StateBuilder;->access$1200(Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView$StateBuilder;)Lcom/prolificinteractive/materialcalendarview/CalendarDay;

    move-result-object v0

    iput-object v0, p0, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView$State;->maxDate:Lcom/prolificinteractive/materialcalendarview/CalendarDay;

    .line 1819
    invoke-static {p2}, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView$StateBuilder;->access$1300(Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView$StateBuilder;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView$State;->cacheCurrentPosition:Z

    .line 1820
    return-void
.end method

.method synthetic constructor <init>(Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView$StateBuilder;Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;
    .param p2, "x1"    # Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView$StateBuilder;
    .param p3, "x2"    # Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView$1;

    .prologue
    .line 1807
    invoke-direct {p0, p1, p2}, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView$State;-><init>(Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView$StateBuilder;)V

    return-void
.end method

.method static synthetic access$1500(Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView$State;)Lcom/prolificinteractive/materialcalendarview/CalendarMode;
    .locals 1
    .param p0, "x0"    # Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView$State;

    .prologue
    .line 1807
    iget-object v0, p0, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView$State;->calendarMode:Lcom/prolificinteractive/materialcalendarview/CalendarMode;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView$State;)I
    .locals 1
    .param p0, "x0"    # Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView$State;

    .prologue
    .line 1807
    iget v0, p0, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView$State;->firstDayOfWeek:I

    return v0
.end method

.method static synthetic access$1700(Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView$State;)Lcom/prolificinteractive/materialcalendarview/CalendarDay;
    .locals 1
    .param p0, "x0"    # Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView$State;

    .prologue
    .line 1807
    iget-object v0, p0, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView$State;->minDate:Lcom/prolificinteractive/materialcalendarview/CalendarDay;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView$State;)Lcom/prolificinteractive/materialcalendarview/CalendarDay;
    .locals 1
    .param p0, "x0"    # Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView$State;

    .prologue
    .line 1807
    iget-object v0, p0, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView$State;->maxDate:Lcom/prolificinteractive/materialcalendarview/CalendarDay;

    return-object v0
.end method

.method static synthetic access$700(Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView$State;)Z
    .locals 1
    .param p0, "x0"    # Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView$State;

    .prologue
    .line 1807
    iget-boolean v0, p0, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView$State;->cacheCurrentPosition:Z

    return v0
.end method


# virtual methods
.method public edit()Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView$StateBuilder;
    .locals 3

    .prologue
    .line 1826
    new-instance v0, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView$StateBuilder;

    iget-object v1, p0, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView$State;->this$0:Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;

    const/4 v2, 0x0

    invoke-direct {v0, v1, p0, v2}, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView$StateBuilder;-><init>(Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView$State;Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView$1;)V

    return-object v0
.end method
