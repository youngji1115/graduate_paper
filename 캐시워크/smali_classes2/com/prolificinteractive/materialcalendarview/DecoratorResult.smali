.class Lcom/prolificinteractive/materialcalendarview/DecoratorResult;
.super Ljava/lang/Object;
.source "DecoratorResult.java"


# instance fields
.field public final decorator:Lcom/prolificinteractive/materialcalendarview/DayViewDecorator;

.field public final result:Lcom/prolificinteractive/materialcalendarview/DayViewFacade;


# direct methods
.method constructor <init>(Lcom/prolificinteractive/materialcalendarview/DayViewDecorator;Lcom/prolificinteractive/materialcalendarview/DayViewFacade;)V
    .locals 0
    .param p1, "decorator"    # Lcom/prolificinteractive/materialcalendarview/DayViewDecorator;
    .param p2, "result"    # Lcom/prolificinteractive/materialcalendarview/DayViewFacade;

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    iput-object p1, p0, Lcom/prolificinteractive/materialcalendarview/DecoratorResult;->decorator:Lcom/prolificinteractive/materialcalendarview/DayViewDecorator;

    .line 9
    iput-object p2, p0, Lcom/prolificinteractive/materialcalendarview/DecoratorResult;->result:Lcom/prolificinteractive/materialcalendarview/DayViewFacade;

    .line 10
    return-void
.end method
