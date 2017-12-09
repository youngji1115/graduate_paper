.class public Lcom/cashwalk/cashwalk/cashband/util/CustomCalendarView;
.super Landroid/widget/LinearLayout;
.source "CustomCalendarView.java"

# interfaces
.implements Landroid/widget/NumberPicker$OnValueChangeListener;


# instance fields
.field private final BASE_MONTH:I

.field private final BASE_YEAR:I

.field private final MONTH_SIZE:I

.field private final YEAR_SIZE:I

.field private month:Landroid/widget/NumberPicker;

.field private monthIndex:I

.field private final today:Lorg/joda/time/DateTime;

.field private year:Landroid/widget/NumberPicker;

.field private yearIndex:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 35
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 20
    iput-object v1, p0, Lcom/cashwalk/cashwalk/cashband/util/CustomCalendarView;->year:Landroid/widget/NumberPicker;

    .line 21
    iput-object v1, p0, Lcom/cashwalk/cashwalk/cashband/util/CustomCalendarView;->month:Landroid/widget/NumberPicker;

    .line 23
    iput v0, p0, Lcom/cashwalk/cashwalk/cashband/util/CustomCalendarView;->yearIndex:I

    .line 24
    iput v0, p0, Lcom/cashwalk/cashwalk/cashband/util/CustomCalendarView;->monthIndex:I

    .line 26
    const/16 v0, 0x7d0

    iput v0, p0, Lcom/cashwalk/cashwalk/cashband/util/CustomCalendarView;->BASE_YEAR:I

    .line 27
    const/4 v0, 0x1

    iput v0, p0, Lcom/cashwalk/cashwalk/cashband/util/CustomCalendarView;->BASE_MONTH:I

    .line 29
    const/16 v0, 0x64

    iput v0, p0, Lcom/cashwalk/cashwalk/cashband/util/CustomCalendarView;->YEAR_SIZE:I

    .line 30
    const/16 v0, 0xc

    iput v0, p0, Lcom/cashwalk/cashwalk/cashband/util/CustomCalendarView;->MONTH_SIZE:I

    .line 32
    new-instance v0, Lorg/joda/time/DateTime;

    invoke-direct {v0}, Lorg/joda/time/DateTime;-><init>()V

    iput-object v0, p0, Lcom/cashwalk/cashwalk/cashband/util/CustomCalendarView;->today:Lorg/joda/time/DateTime;

    .line 36
    invoke-direct {p0}, Lcom/cashwalk/cashwalk/cashband/util/CustomCalendarView;->initView()V

    .line 37
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 40
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 20
    iput-object v1, p0, Lcom/cashwalk/cashwalk/cashband/util/CustomCalendarView;->year:Landroid/widget/NumberPicker;

    .line 21
    iput-object v1, p0, Lcom/cashwalk/cashwalk/cashband/util/CustomCalendarView;->month:Landroid/widget/NumberPicker;

    .line 23
    iput v0, p0, Lcom/cashwalk/cashwalk/cashband/util/CustomCalendarView;->yearIndex:I

    .line 24
    iput v0, p0, Lcom/cashwalk/cashwalk/cashband/util/CustomCalendarView;->monthIndex:I

    .line 26
    const/16 v0, 0x7d0

    iput v0, p0, Lcom/cashwalk/cashwalk/cashband/util/CustomCalendarView;->BASE_YEAR:I

    .line 27
    const/4 v0, 0x1

    iput v0, p0, Lcom/cashwalk/cashwalk/cashband/util/CustomCalendarView;->BASE_MONTH:I

    .line 29
    const/16 v0, 0x64

    iput v0, p0, Lcom/cashwalk/cashwalk/cashband/util/CustomCalendarView;->YEAR_SIZE:I

    .line 30
    const/16 v0, 0xc

    iput v0, p0, Lcom/cashwalk/cashwalk/cashband/util/CustomCalendarView;->MONTH_SIZE:I

    .line 32
    new-instance v0, Lorg/joda/time/DateTime;

    invoke-direct {v0}, Lorg/joda/time/DateTime;-><init>()V

    iput-object v0, p0, Lcom/cashwalk/cashwalk/cashband/util/CustomCalendarView;->today:Lorg/joda/time/DateTime;

    .line 41
    invoke-direct {p0}, Lcom/cashwalk/cashwalk/cashband/util/CustomCalendarView;->initView()V

    .line 42
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p3, "defStyleAttr"    # I

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 45
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 20
    iput-object v1, p0, Lcom/cashwalk/cashwalk/cashband/util/CustomCalendarView;->year:Landroid/widget/NumberPicker;

    .line 21
    iput-object v1, p0, Lcom/cashwalk/cashwalk/cashband/util/CustomCalendarView;->month:Landroid/widget/NumberPicker;

    .line 23
    iput v0, p0, Lcom/cashwalk/cashwalk/cashband/util/CustomCalendarView;->yearIndex:I

    .line 24
    iput v0, p0, Lcom/cashwalk/cashwalk/cashband/util/CustomCalendarView;->monthIndex:I

    .line 26
    const/16 v0, 0x7d0

    iput v0, p0, Lcom/cashwalk/cashwalk/cashband/util/CustomCalendarView;->BASE_YEAR:I

    .line 27
    const/4 v0, 0x1

    iput v0, p0, Lcom/cashwalk/cashwalk/cashband/util/CustomCalendarView;->BASE_MONTH:I

    .line 29
    const/16 v0, 0x64

    iput v0, p0, Lcom/cashwalk/cashwalk/cashband/util/CustomCalendarView;->YEAR_SIZE:I

    .line 30
    const/16 v0, 0xc

    iput v0, p0, Lcom/cashwalk/cashwalk/cashband/util/CustomCalendarView;->MONTH_SIZE:I

    .line 32
    new-instance v0, Lorg/joda/time/DateTime;

    invoke-direct {v0}, Lorg/joda/time/DateTime;-><init>()V

    iput-object v0, p0, Lcom/cashwalk/cashwalk/cashband/util/CustomCalendarView;->today:Lorg/joda/time/DateTime;

    .line 46
    invoke-direct {p0}, Lcom/cashwalk/cashwalk/cashband/util/CustomCalendarView;->initView()V

    .line 47
    return-void
.end method

.method private initView()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 50
    const-string v0, "layout_inflater"

    .line 51
    .local v0, "infService":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/cashwalk/cashwalk/cashband/util/CustomCalendarView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    .line 52
    .local v1, "li":Landroid/view/LayoutInflater;
    const v3, 0x7f04006c

    invoke-virtual {v1, v3, p0, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    .line 53
    .local v2, "v":Landroid/view/View;
    invoke-virtual {p0, v2}, Lcom/cashwalk/cashwalk/cashband/util/CustomCalendarView;->addView(Landroid/view/View;)V

    .line 55
    const v3, 0x7f10034f

    invoke-virtual {p0, v3}, Lcom/cashwalk/cashwalk/cashband/util/CustomCalendarView;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/NumberPicker;

    iput-object v3, p0, Lcom/cashwalk/cashwalk/cashband/util/CustomCalendarView;->year:Landroid/widget/NumberPicker;

    .line 56
    const v3, 0x7f100064

    invoke-virtual {p0, v3}, Lcom/cashwalk/cashwalk/cashband/util/CustomCalendarView;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/NumberPicker;

    iput-object v3, p0, Lcom/cashwalk/cashwalk/cashband/util/CustomCalendarView;->month:Landroid/widget/NumberPicker;

    .line 57
    iget-object v3, p0, Lcom/cashwalk/cashwalk/cashband/util/CustomCalendarView;->month:Landroid/widget/NumberPicker;

    invoke-virtual {v3, p0}, Landroid/widget/NumberPicker;->setOnValueChangedListener(Landroid/widget/NumberPicker$OnValueChangeListener;)V

    .line 59
    iget-object v3, p0, Lcom/cashwalk/cashwalk/cashband/util/CustomCalendarView;->today:Lorg/joda/time/DateTime;

    invoke-virtual {v3}, Lorg/joda/time/DateTime;->getYear()I

    move-result v3

    add-int/lit16 v3, v3, -0x7d0

    iput v3, p0, Lcom/cashwalk/cashwalk/cashband/util/CustomCalendarView;->yearIndex:I

    .line 60
    iget-object v3, p0, Lcom/cashwalk/cashwalk/cashband/util/CustomCalendarView;->today:Lorg/joda/time/DateTime;

    invoke-virtual {v3}, Lorg/joda/time/DateTime;->getMonthOfYear()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    iput v3, p0, Lcom/cashwalk/cashwalk/cashband/util/CustomCalendarView;->monthIndex:I

    .line 62
    iget-object v3, p0, Lcom/cashwalk/cashwalk/cashband/util/CustomCalendarView;->year:Landroid/widget/NumberPicker;

    invoke-static {v3, v4}, Lcom/cashwalk/cashwalk/util/Utils;->setDividerColor(Landroid/widget/NumberPicker;I)V

    .line 63
    iget-object v3, p0, Lcom/cashwalk/cashwalk/cashband/util/CustomCalendarView;->month:Landroid/widget/NumberPicker;

    invoke-static {v3, v4}, Lcom/cashwalk/cashwalk/util/Utils;->setDividerColor(Landroid/widget/NumberPicker;I)V

    .line 65
    invoke-direct {p0}, Lcom/cashwalk/cashwalk/cashband/util/CustomCalendarView;->setDisplayValues()V

    .line 66
    return-void
.end method

.method private setDisplayValues()V
    .locals 8

    .prologue
    const/high16 v7, 0x60000

    const/16 v6, 0x64

    const/16 v5, 0xc

    .line 87
    new-array v1, v6, [Ljava/lang/String;

    .line 88
    .local v1, "displayYear":[Ljava/lang/String;
    new-array v0, v5, [Ljava/lang/String;

    .line 90
    .local v0, "displayMonth":[Ljava/lang/String;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v6, :cond_0

    .line 91
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    add-int/lit16 v4, v2, 0x7d0

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " \ub144"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    .line 90
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 94
    :cond_0
    const/4 v2, 0x0

    :goto_1
    if-ge v2, v5, :cond_1

    .line 95
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    add-int/lit8 v4, v2, 0x1

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " \uc6d4"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v2

    .line 94
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 98
    :cond_1
    iget-object v3, p0, Lcom/cashwalk/cashwalk/cashband/util/CustomCalendarView;->year:Landroid/widget/NumberPicker;

    invoke-virtual {v3, v7}, Landroid/widget/NumberPicker;->setDescendantFocusability(I)V

    .line 99
    iget-object v3, p0, Lcom/cashwalk/cashwalk/cashband/util/CustomCalendarView;->year:Landroid/widget/NumberPicker;

    const/16 v4, 0x63

    invoke-virtual {v3, v4}, Landroid/widget/NumberPicker;->setMaxValue(I)V

    .line 100
    iget-object v3, p0, Lcom/cashwalk/cashwalk/cashband/util/CustomCalendarView;->year:Landroid/widget/NumberPicker;

    invoke-virtual {v3, v1}, Landroid/widget/NumberPicker;->setDisplayedValues([Ljava/lang/String;)V

    .line 102
    iget-object v3, p0, Lcom/cashwalk/cashwalk/cashband/util/CustomCalendarView;->month:Landroid/widget/NumberPicker;

    invoke-virtual {v3, v7}, Landroid/widget/NumberPicker;->setDescendantFocusability(I)V

    .line 103
    iget-object v3, p0, Lcom/cashwalk/cashwalk/cashband/util/CustomCalendarView;->month:Landroid/widget/NumberPicker;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/NumberPicker;->setMinValue(I)V

    .line 104
    iget-object v3, p0, Lcom/cashwalk/cashwalk/cashband/util/CustomCalendarView;->month:Landroid/widget/NumberPicker;

    const/16 v4, 0xb

    invoke-virtual {v3, v4}, Landroid/widget/NumberPicker;->setMaxValue(I)V

    .line 105
    iget-object v3, p0, Lcom/cashwalk/cashwalk/cashband/util/CustomCalendarView;->month:Landroid/widget/NumberPicker;

    invoke-virtual {v3, v0}, Landroid/widget/NumberPicker;->setDisplayedValues([Ljava/lang/String;)V

    .line 107
    iget-object v3, p0, Lcom/cashwalk/cashwalk/cashband/util/CustomCalendarView;->year:Landroid/widget/NumberPicker;

    iget v4, p0, Lcom/cashwalk/cashwalk/cashband/util/CustomCalendarView;->yearIndex:I

    invoke-virtual {v3, v4}, Landroid/widget/NumberPicker;->setValue(I)V

    .line 108
    iget-object v3, p0, Lcom/cashwalk/cashwalk/cashband/util/CustomCalendarView;->month:Landroid/widget/NumberPicker;

    iget v4, p0, Lcom/cashwalk/cashwalk/cashband/util/CustomCalendarView;->monthIndex:I

    invoke-virtual {v3, v4}, Landroid/widget/NumberPicker;->setValue(I)V

    .line 109
    return-void
.end method


# virtual methods
.method public getMonth()I
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lcom/cashwalk/cashwalk/cashband/util/CustomCalendarView;->month:Landroid/widget/NumberPicker;

    invoke-virtual {v0}, Landroid/widget/NumberPicker;->getValue()I

    move-result v0

    return v0
.end method

.method public getYear()I
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lcom/cashwalk/cashwalk/cashband/util/CustomCalendarView;->year:Landroid/widget/NumberPicker;

    invoke-virtual {v0}, Landroid/widget/NumberPicker;->getValue()I

    move-result v0

    add-int/lit16 v0, v0, 0x7d0

    return v0
.end method

.method public onValueChange(Landroid/widget/NumberPicker;II)V
    .locals 2
    .param p1, "picker"    # Landroid/widget/NumberPicker;
    .param p2, "oldMonth"    # I
    .param p3, "newMonth"    # I

    .prologue
    const/16 v0, 0xb

    .line 113
    if-nez p2, :cond_1

    if-ne p3, v0, :cond_1

    .line 114
    iget v0, p0, Lcom/cashwalk/cashwalk/cashband/util/CustomCalendarView;->yearIndex:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/cashwalk/cashwalk/cashband/util/CustomCalendarView;->yearIndex:I

    .line 115
    iget-object v0, p0, Lcom/cashwalk/cashwalk/cashband/util/CustomCalendarView;->year:Landroid/widget/NumberPicker;

    iget v1, p0, Lcom/cashwalk/cashwalk/cashband/util/CustomCalendarView;->yearIndex:I

    invoke-virtual {v0, v1}, Landroid/widget/NumberPicker;->setValue(I)V

    .line 120
    :cond_0
    :goto_0
    return-void

    .line 116
    :cond_1
    if-ne p2, v0, :cond_0

    if-nez p3, :cond_0

    .line 117
    iget v0, p0, Lcom/cashwalk/cashwalk/cashband/util/CustomCalendarView;->yearIndex:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/cashwalk/cashwalk/cashband/util/CustomCalendarView;->yearIndex:I

    .line 118
    iget-object v0, p0, Lcom/cashwalk/cashwalk/cashband/util/CustomCalendarView;->year:Landroid/widget/NumberPicker;

    iget v1, p0, Lcom/cashwalk/cashwalk/cashband/util/CustomCalendarView;->yearIndex:I

    invoke-virtual {v0, v1}, Landroid/widget/NumberPicker;->setValue(I)V

    goto :goto_0
.end method

.method public setMonth(I)V
    .locals 2
    .param p1, "idx"    # I

    .prologue
    .line 82
    iput p1, p0, Lcom/cashwalk/cashwalk/cashband/util/CustomCalendarView;->monthIndex:I

    .line 83
    iget-object v0, p0, Lcom/cashwalk/cashwalk/cashband/util/CustomCalendarView;->month:Landroid/widget/NumberPicker;

    iget v1, p0, Lcom/cashwalk/cashwalk/cashband/util/CustomCalendarView;->monthIndex:I

    invoke-virtual {v0, v1}, Landroid/widget/NumberPicker;->setValue(I)V

    .line 84
    return-void
.end method

.method public setYear(I)V
    .locals 2
    .param p1, "idx"    # I

    .prologue
    .line 77
    add-int/lit16 v0, p1, -0x7d0

    iput v0, p0, Lcom/cashwalk/cashwalk/cashband/util/CustomCalendarView;->yearIndex:I

    .line 78
    iget-object v0, p0, Lcom/cashwalk/cashwalk/cashband/util/CustomCalendarView;->year:Landroid/widget/NumberPicker;

    iget v1, p0, Lcom/cashwalk/cashwalk/cashband/util/CustomCalendarView;->yearIndex:I

    invoke-virtual {v0, v1}, Landroid/widget/NumberPicker;->setValue(I)V

    .line 79
    return-void
.end method
