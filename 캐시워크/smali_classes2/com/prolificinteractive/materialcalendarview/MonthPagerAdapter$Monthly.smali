.class public Lcom/prolificinteractive/materialcalendarview/MonthPagerAdapter$Monthly;
.super Ljava/lang/Object;
.source "MonthPagerAdapter.java"

# interfaces
.implements Lcom/prolificinteractive/materialcalendarview/DateRangeIndex;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/prolificinteractive/materialcalendarview/MonthPagerAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Monthly"
.end annotation


# instance fields
.field private final count:I

.field private dayCache:Landroid/support/v4/util/SparseArrayCompat;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v4/util/SparseArrayCompat",
            "<",
            "Lcom/prolificinteractive/materialcalendarview/CalendarDay;",
            ">;"
        }
    .end annotation
.end field

.field private final min:Lcom/prolificinteractive/materialcalendarview/CalendarDay;


# direct methods
.method public constructor <init>(Lcom/prolificinteractive/materialcalendarview/CalendarDay;Lcom/prolificinteractive/materialcalendarview/CalendarDay;)V
    .locals 3
    .param p1, "min"    # Lcom/prolificinteractive/materialcalendarview/CalendarDay;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "max"    # Lcom/prolificinteractive/materialcalendarview/CalendarDay;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    const/4 v2, 0x1

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    new-instance v0, Landroid/support/v4/util/SparseArrayCompat;

    invoke-direct {v0}, Landroid/support/v4/util/SparseArrayCompat;-><init>()V

    iput-object v0, p0, Lcom/prolificinteractive/materialcalendarview/MonthPagerAdapter$Monthly;->dayCache:Landroid/support/v4/util/SparseArrayCompat;

    .line 44
    invoke-virtual {p1}, Lcom/prolificinteractive/materialcalendarview/CalendarDay;->getYear()I

    move-result v0

    invoke-virtual {p1}, Lcom/prolificinteractive/materialcalendarview/CalendarDay;->getMonth()I

    move-result v1

    invoke-static {v0, v1, v2}, Lcom/prolificinteractive/materialcalendarview/CalendarDay;->from(III)Lcom/prolificinteractive/materialcalendarview/CalendarDay;

    move-result-object v0

    iput-object v0, p0, Lcom/prolificinteractive/materialcalendarview/MonthPagerAdapter$Monthly;->min:Lcom/prolificinteractive/materialcalendarview/CalendarDay;

    .line 45
    invoke-virtual {p2}, Lcom/prolificinteractive/materialcalendarview/CalendarDay;->getYear()I

    move-result v0

    invoke-virtual {p2}, Lcom/prolificinteractive/materialcalendarview/CalendarDay;->getMonth()I

    move-result v1

    invoke-static {v0, v1, v2}, Lcom/prolificinteractive/materialcalendarview/CalendarDay;->from(III)Lcom/prolificinteractive/materialcalendarview/CalendarDay;

    move-result-object p2

    .line 46
    invoke-virtual {p0, p2}, Lcom/prolificinteractive/materialcalendarview/MonthPagerAdapter$Monthly;->indexOf(Lcom/prolificinteractive/materialcalendarview/CalendarDay;)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/prolificinteractive/materialcalendarview/MonthPagerAdapter$Monthly;->count:I

    .line 47
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 50
    iget v0, p0, Lcom/prolificinteractive/materialcalendarview/MonthPagerAdapter$Monthly;->count:I

    return v0
.end method

.method public getItem(I)Lcom/prolificinteractive/materialcalendarview/CalendarDay;
    .locals 7
    .param p1, "position"    # I

    .prologue
    .line 62
    iget-object v6, p0, Lcom/prolificinteractive/materialcalendarview/MonthPagerAdapter$Monthly;->dayCache:Landroid/support/v4/util/SparseArrayCompat;

    invoke-virtual {v6, p1}, Landroid/support/v4/util/SparseArrayCompat;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/prolificinteractive/materialcalendarview/CalendarDay;

    .line 63
    .local v3, "re":Lcom/prolificinteractive/materialcalendarview/CalendarDay;
    if-eqz v3, :cond_0

    move-object v4, v3

    .line 79
    .end local v3    # "re":Lcom/prolificinteractive/materialcalendarview/CalendarDay;
    .local v4, "re":Lcom/prolificinteractive/materialcalendarview/CalendarDay;
    :goto_0
    return-object v4

    .line 67
    .end local v4    # "re":Lcom/prolificinteractive/materialcalendarview/CalendarDay;
    .restart local v3    # "re":Lcom/prolificinteractive/materialcalendarview/CalendarDay;
    :cond_0
    div-int/lit8 v2, p1, 0xc

    .line 68
    .local v2, "numY":I
    rem-int/lit8 v1, p1, 0xc

    .line 70
    .local v1, "numM":I
    iget-object v6, p0, Lcom/prolificinteractive/materialcalendarview/MonthPagerAdapter$Monthly;->min:Lcom/prolificinteractive/materialcalendarview/CalendarDay;

    invoke-virtual {v6}, Lcom/prolificinteractive/materialcalendarview/CalendarDay;->getYear()I

    move-result v6

    add-int v5, v6, v2

    .line 71
    .local v5, "year":I
    iget-object v6, p0, Lcom/prolificinteractive/materialcalendarview/MonthPagerAdapter$Monthly;->min:Lcom/prolificinteractive/materialcalendarview/CalendarDay;

    invoke-virtual {v6}, Lcom/prolificinteractive/materialcalendarview/CalendarDay;->getMonth()I

    move-result v6

    add-int v0, v6, v1

    .line 72
    .local v0, "month":I
    const/16 v6, 0xc

    if-lt v0, v6, :cond_1

    .line 73
    add-int/lit8 v5, v5, 0x1

    .line 74
    add-int/lit8 v0, v0, -0xc

    .line 77
    :cond_1
    const/4 v6, 0x1

    invoke-static {v5, v0, v6}, Lcom/prolificinteractive/materialcalendarview/CalendarDay;->from(III)Lcom/prolificinteractive/materialcalendarview/CalendarDay;

    move-result-object v3

    .line 78
    iget-object v6, p0, Lcom/prolificinteractive/materialcalendarview/MonthPagerAdapter$Monthly;->dayCache:Landroid/support/v4/util/SparseArrayCompat;

    invoke-virtual {v6, p1, v3}, Landroid/support/v4/util/SparseArrayCompat;->put(ILjava/lang/Object;)V

    move-object v4, v3

    .line 79
    .end local v3    # "re":Lcom/prolificinteractive/materialcalendarview/CalendarDay;
    .restart local v4    # "re":Lcom/prolificinteractive/materialcalendarview/CalendarDay;
    goto :goto_0
.end method

.method public indexOf(Lcom/prolificinteractive/materialcalendarview/CalendarDay;)I
    .locals 4
    .param p1, "day"    # Lcom/prolificinteractive/materialcalendarview/CalendarDay;

    .prologue
    .line 54
    invoke-virtual {p1}, Lcom/prolificinteractive/materialcalendarview/CalendarDay;->getYear()I

    move-result v2

    iget-object v3, p0, Lcom/prolificinteractive/materialcalendarview/MonthPagerAdapter$Monthly;->min:Lcom/prolificinteractive/materialcalendarview/CalendarDay;

    invoke-virtual {v3}, Lcom/prolificinteractive/materialcalendarview/CalendarDay;->getYear()I

    move-result v3

    sub-int v1, v2, v3

    .line 55
    .local v1, "yDiff":I
    invoke-virtual {p1}, Lcom/prolificinteractive/materialcalendarview/CalendarDay;->getMonth()I

    move-result v2

    iget-object v3, p0, Lcom/prolificinteractive/materialcalendarview/MonthPagerAdapter$Monthly;->min:Lcom/prolificinteractive/materialcalendarview/CalendarDay;

    invoke-virtual {v3}, Lcom/prolificinteractive/materialcalendarview/CalendarDay;->getMonth()I

    move-result v3

    sub-int v0, v2, v3

    .line 57
    .local v0, "mDiff":I
    mul-int/lit8 v2, v1, 0xc

    add-int/2addr v2, v0

    return v2
.end method
