.class Lcom/cashwalk/cashwalk/cashband/BandHeartRateActivity$2;
.super Ljava/lang/Object;
.source "BandHeartRateActivity.java"

# interfaces
.implements Lcom/prolificinteractive/materialcalendarview/OnMonthChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cashwalk/cashwalk/cashband/BandHeartRateActivity;->initView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cashwalk/cashwalk/cashband/BandHeartRateActivity;


# direct methods
.method constructor <init>(Lcom/cashwalk/cashwalk/cashband/BandHeartRateActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/cashwalk/cashwalk/cashband/BandHeartRateActivity;

    .prologue
    .line 178
    iput-object p1, p0, Lcom/cashwalk/cashwalk/cashband/BandHeartRateActivity$2;->this$0:Lcom/cashwalk/cashwalk/cashband/BandHeartRateActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMonthChanged(Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;Lcom/prolificinteractive/materialcalendarview/CalendarDay;)V
    .locals 7
    .param p1, "widget"    # Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;
    .param p2, "date"    # Lcom/prolificinteractive/materialcalendarview/CalendarDay;

    .prologue
    const/4 v4, 0x0

    .line 181
    invoke-virtual {p2}, Lcom/prolificinteractive/materialcalendarview/CalendarDay;->getYear()I

    move-result v1

    invoke-virtual {p2}, Lcom/prolificinteractive/materialcalendarview/CalendarDay;->getMonth()I

    move-result v2

    invoke-virtual {p2}, Lcom/prolificinteractive/materialcalendarview/CalendarDay;->getDay()I

    move-result v3

    invoke-static {v1, v2, v3}, Lcom/prolificinteractive/materialcalendarview/CalendarDay;->from(III)Lcom/prolificinteractive/materialcalendarview/CalendarDay;

    move-result-object v6

    .line 182
    .local v6, "nextMonth":Lcom/prolificinteractive/materialcalendarview/CalendarDay;
    iget-object v1, p0, Lcom/cashwalk/cashwalk/cashband/BandHeartRateActivity$2;->this$0:Lcom/cashwalk/cashwalk/cashband/BandHeartRateActivity;

    invoke-static {v1}, Lcom/cashwalk/cashwalk/cashband/BandHeartRateActivity;->access$400(Lcom/cashwalk/cashwalk/cashband/BandHeartRateActivity;)Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;

    move-result-object v1

    invoke-virtual {v1, v6}, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;->setSelectedDate(Lcom/prolificinteractive/materialcalendarview/CalendarDay;)V

    .line 184
    new-instance v0, Lorg/joda/time/DateTime;

    invoke-virtual {v6}, Lcom/prolificinteractive/materialcalendarview/CalendarDay;->getYear()I

    move-result v1

    invoke-virtual {v6}, Lcom/prolificinteractive/materialcalendarview/CalendarDay;->getMonth()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v6}, Lcom/prolificinteractive/materialcalendarview/CalendarDay;->getDay()I

    move-result v3

    move v5, v4

    invoke-direct/range {v0 .. v5}, Lorg/joda/time/DateTime;-><init>(IIIII)V

    .line 185
    .local v0, "dt":Lorg/joda/time/DateTime;
    iget-object v1, p0, Lcom/cashwalk/cashwalk/cashband/BandHeartRateActivity$2;->this$0:Lcom/cashwalk/cashwalk/cashband/BandHeartRateActivity;

    invoke-static {v1}, Lcom/cashwalk/cashwalk/cashband/BandHeartRateActivity;->access$500(Lcom/cashwalk/cashwalk/cashband/BandHeartRateActivity;)Landroid/widget/TextView;

    move-result-object v1

    const-string v2, "MM\uc6d4 dd\uc77c"

    invoke-virtual {v0, v2}, Lorg/joda/time/DateTime;->toString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 186
    return-void
.end method
