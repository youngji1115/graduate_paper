.class public Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;
.super Landroid/view/ViewGroup;
.source "MaterialCalendarView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView$StateBuilder;,
        Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView$State;,
        Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView$LayoutParams;,
        Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView$SavedState;,
        Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView$ShowOtherDates;,
        Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView$SelectionMode;
    }
.end annotation


# static fields
.field private static final DAY_NAMES_ROW:I = 0x1

.field private static final DEFAULT_DAYS_IN_WEEK:I = 0x7

.field private static final DEFAULT_MAX_WEEKS:I = 0x6

.field public static final DEFAULT_TILE_SIZE_DP:I = 0x2c

.field private static final DEFAULT_TITLE_FORMATTER:Lcom/prolificinteractive/materialcalendarview/format/TitleFormatter;

.field public static final HORIZONTAL:I = 0x1

.field public static final INVALID_TILE_DIMENSION:I = -0xa

.field public static final SELECTION_MODE_MULTIPLE:I = 0x2

.field public static final SELECTION_MODE_NONE:I = 0x0

.field public static final SELECTION_MODE_RANGE:I = 0x3

.field public static final SELECTION_MODE_SINGLE:I = 0x1

.field public static final SHOW_ALL:I = 0x7

.field public static final SHOW_DECORATED_DISABLED:I = 0x4

.field public static final SHOW_DEFAULTS:I = 0x4

.field public static final SHOW_NONE:I = 0x0

.field public static final SHOW_OTHER_MONTHS:I = 0x1

.field public static final SHOW_OUT_OF_RANGE:I = 0x2

.field public static final VERTICAL:I


# instance fields
.field private accentColor:I

.field private adapter:Lcom/prolificinteractive/materialcalendarview/CalendarPagerAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/prolificinteractive/materialcalendarview/CalendarPagerAdapter",
            "<*>;"
        }
    .end annotation
.end field

.field private allowClickDaysOutsideCurrentMonth:Z

.field private arrowColor:I

.field private final buttonFuture:Lcom/prolificinteractive/materialcalendarview/DirectionButton;

.field private final buttonPast:Lcom/prolificinteractive/materialcalendarview/DirectionButton;

.field calendarContentDescription:Ljava/lang/CharSequence;

.field private calendarMode:Lcom/prolificinteractive/materialcalendarview/CalendarMode;

.field private currentMonth:Lcom/prolificinteractive/materialcalendarview/CalendarDay;

.field private final dayViewDecorators:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/prolificinteractive/materialcalendarview/DayViewDecorator;",
            ">;"
        }
    .end annotation
.end field

.field private firstDayOfWeek:I

.field private leftArrowMask:Landroid/graphics/drawable/Drawable;

.field private listener:Lcom/prolificinteractive/materialcalendarview/OnDateSelectedListener;

.field private mDynamicHeightEnabled:Z

.field private maxDate:Lcom/prolificinteractive/materialcalendarview/CalendarDay;

.field private minDate:Lcom/prolificinteractive/materialcalendarview/CalendarDay;

.field private monthListener:Lcom/prolificinteractive/materialcalendarview/OnMonthChangedListener;

.field private final onClickListener:Landroid/view/View$OnClickListener;

.field private final pageChangeListener:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

.field private final pager:Lcom/prolificinteractive/materialcalendarview/CalendarPager;

.field private rangeListener:Lcom/prolificinteractive/materialcalendarview/OnRangeSelectedListener;

.field private rightArrowMask:Landroid/graphics/drawable/Drawable;

.field private selectionMode:I
    .annotation runtime Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView$SelectionMode;
    .end annotation
.end field

.field private state:Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView$State;

.field private tileHeight:I

.field private tileWidth:I

.field private final title:Landroid/widget/TextView;

.field private final titleChanger:Lcom/prolificinteractive/materialcalendarview/TitleChanger;

.field private topbar:Landroid/widget/LinearLayout;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 171
    new-instance v0, Lcom/prolificinteractive/materialcalendarview/format/DateFormatTitleFormatter;

    invoke-direct {v0}, Lcom/prolificinteractive/materialcalendarview/format/DateFormatTitleFormatter;-><init>()V

    sput-object v0, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;->DEFAULT_TITLE_FORMATTER:Lcom/prolificinteractive/materialcalendarview/format/TitleFormatter;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 241
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 242
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 15
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 245
    invoke-direct/range {p0 .. p2}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 187
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    iput-object v11, p0, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;->dayViewDecorators:Ljava/util/ArrayList;

    .line 189
    new-instance v11, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView$1;

    invoke-direct {v11, p0}, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView$1;-><init>(Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;)V

    iput-object v11, p0, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;->onClickListener:Landroid/view/View$OnClickListener;

    .line 200
    new-instance v11, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView$2;

    invoke-direct {v11, p0}, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView$2;-><init>(Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;)V

    iput-object v11, p0, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;->pageChangeListener:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    .line 219
    const/4 v11, 0x0

    iput-object v11, p0, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;->minDate:Lcom/prolificinteractive/materialcalendarview/CalendarDay;

    .line 220
    const/4 v11, 0x0

    iput-object v11, p0, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;->maxDate:Lcom/prolificinteractive/materialcalendarview/CalendarDay;

    .line 227
    const/4 v11, 0x0

    iput v11, p0, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;->accentColor:I

    .line 228
    const/high16 v11, -0x1000000

    iput v11, p0, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;->arrowColor:I

    .line 231
    const/16 v11, -0xa

    iput v11, p0, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;->tileHeight:I

    .line 232
    const/16 v11, -0xa

    iput v11, p0, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;->tileWidth:I

    .line 233
    const/4 v11, 0x1

    iput v11, p0, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;->selectionMode:I

    .line 235
    const/4 v11, 0x1

    iput-boolean v11, p0, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;->allowClickDaysOutsideCurrentMonth:Z

    .line 247
    sget v11, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v12, 0x13

    if-lt v11, v12, :cond_9

    .line 249
    const/4 v11, 0x0

    invoke-virtual {p0, v11}, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;->setClipToPadding(Z)V

    .line 250
    const/4 v11, 0x0

    invoke-virtual {p0, v11}, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;->setClipChildren(Z)V

    .line 257
    :goto_0
    new-instance v11, Lcom/prolificinteractive/materialcalendarview/DirectionButton;

    invoke-virtual {p0}, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;->getContext()Landroid/content/Context;

    move-result-object v12

    invoke-direct {v11, v12}, Lcom/prolificinteractive/materialcalendarview/DirectionButton;-><init>(Landroid/content/Context;)V

    iput-object v11, p0, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;->buttonPast:Lcom/prolificinteractive/materialcalendarview/DirectionButton;

    .line 258
    iget-object v11, p0, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;->buttonPast:Lcom/prolificinteractive/materialcalendarview/DirectionButton;

    invoke-virtual {p0}, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;->getContext()Landroid/content/Context;

    move-result-object v12

    sget v13, Lcom/prolificinteractive/materialcalendarview/R$string;->previous:I

    invoke-virtual {v12, v13}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Lcom/prolificinteractive/materialcalendarview/DirectionButton;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 259
    new-instance v11, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;->getContext()Landroid/content/Context;

    move-result-object v12

    invoke-direct {v11, v12}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v11, p0, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;->title:Landroid/widget/TextView;

    .line 260
    new-instance v11, Lcom/prolificinteractive/materialcalendarview/DirectionButton;

    invoke-virtual {p0}, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;->getContext()Landroid/content/Context;

    move-result-object v12

    invoke-direct {v11, v12}, Lcom/prolificinteractive/materialcalendarview/DirectionButton;-><init>(Landroid/content/Context;)V

    iput-object v11, p0, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;->buttonFuture:Lcom/prolificinteractive/materialcalendarview/DirectionButton;

    .line 261
    iget-object v11, p0, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;->buttonFuture:Lcom/prolificinteractive/materialcalendarview/DirectionButton;

    invoke-virtual {p0}, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;->getContext()Landroid/content/Context;

    move-result-object v12

    sget v13, Lcom/prolificinteractive/materialcalendarview/R$string;->next:I

    invoke-virtual {v12, v13}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Lcom/prolificinteractive/materialcalendarview/DirectionButton;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 262
    new-instance v11, Lcom/prolificinteractive/materialcalendarview/CalendarPager;

    invoke-virtual {p0}, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;->getContext()Landroid/content/Context;

    move-result-object v12

    invoke-direct {v11, v12}, Lcom/prolificinteractive/materialcalendarview/CalendarPager;-><init>(Landroid/content/Context;)V

    iput-object v11, p0, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;->pager:Lcom/prolificinteractive/materialcalendarview/CalendarPager;

    .line 264
    iget-object v11, p0, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;->buttonPast:Lcom/prolificinteractive/materialcalendarview/DirectionButton;

    iget-object v12, p0, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;->onClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v11, v12}, Lcom/prolificinteractive/materialcalendarview/DirectionButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 265
    iget-object v11, p0, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;->buttonFuture:Lcom/prolificinteractive/materialcalendarview/DirectionButton;

    iget-object v12, p0, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;->onClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v11, v12}, Lcom/prolificinteractive/materialcalendarview/DirectionButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 267
    new-instance v11, Lcom/prolificinteractive/materialcalendarview/TitleChanger;

    iget-object v12, p0, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;->title:Landroid/widget/TextView;

    invoke-direct {v11, v12}, Lcom/prolificinteractive/materialcalendarview/TitleChanger;-><init>(Landroid/widget/TextView;)V

    iput-object v11, p0, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;->titleChanger:Lcom/prolificinteractive/materialcalendarview/TitleChanger;

    .line 268
    iget-object v11, p0, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;->titleChanger:Lcom/prolificinteractive/materialcalendarview/TitleChanger;

    sget-object v12, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;->DEFAULT_TITLE_FORMATTER:Lcom/prolificinteractive/materialcalendarview/format/TitleFormatter;

    invoke-virtual {v11, v12}, Lcom/prolificinteractive/materialcalendarview/TitleChanger;->setTitleFormatter(Lcom/prolificinteractive/materialcalendarview/format/TitleFormatter;)V

    .line 270
    iget-object v11, p0, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;->pager:Lcom/prolificinteractive/materialcalendarview/CalendarPager;

    iget-object v12, p0, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;->pageChangeListener:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    invoke-virtual {v11, v12}, Lcom/prolificinteractive/materialcalendarview/CalendarPager;->setOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    .line 271
    iget-object v11, p0, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;->pager:Lcom/prolificinteractive/materialcalendarview/CalendarPager;

    const/4 v12, 0x0

    new-instance v13, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView$3;

    invoke-direct {v13, p0}, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView$3;-><init>(Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;)V

    invoke-virtual {v11, v12, v13}, Lcom/prolificinteractive/materialcalendarview/CalendarPager;->setPageTransformer(ZLandroid/support/v4/view/ViewPager$PageTransformer;)V

    .line 279
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v11

    sget-object v12, Lcom/prolificinteractive/materialcalendarview/R$styleable;->MaterialCalendarView:[I

    const/4 v13, 0x0

    const/4 v14, 0x0

    .line 280
    move-object/from16 v0, p2

    invoke-virtual {v11, v0, v12, v13, v14}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 282
    .local v1, "a":Landroid/content/res/TypedArray;
    :try_start_0
    sget v11, Lcom/prolificinteractive/materialcalendarview/R$styleable;->MaterialCalendarView_mcv_calendarMode:I

    const/4 v12, 0x0

    invoke-virtual {v1, v11, v12}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v3

    .line 286
    .local v3, "calendarModeIndex":I
    sget v11, Lcom/prolificinteractive/materialcalendarview/R$styleable;->MaterialCalendarView_mcv_firstDayOfWeek:I

    const/4 v12, -0x1

    invoke-virtual {v1, v11, v12}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v11

    iput v11, p0, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;->firstDayOfWeek:I

    .line 291
    iget-object v11, p0, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;->titleChanger:Lcom/prolificinteractive/materialcalendarview/TitleChanger;

    sget v12, Lcom/prolificinteractive/materialcalendarview/R$styleable;->MaterialCalendarView_mcv_titleAnimationOrientation:I

    const/4 v13, 0x0

    .line 292
    invoke-virtual {v1, v12, v13}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v12

    .line 291
    invoke-virtual {v11, v12}, Lcom/prolificinteractive/materialcalendarview/TitleChanger;->setOrientation(I)V

    .line 295
    iget v11, p0, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;->firstDayOfWeek:I

    if-gez v11, :cond_0

    .line 297
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v11

    invoke-virtual {v11}, Ljava/util/Calendar;->getFirstDayOfWeek()I

    move-result v11

    iput v11, p0, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;->firstDayOfWeek:I

    .line 300
    :cond_0
    invoke-virtual {p0}, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;->newState()Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView$StateBuilder;

    move-result-object v11

    iget v12, p0, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;->firstDayOfWeek:I

    .line 301
    invoke-virtual {v11, v12}, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView$StateBuilder;->setFirstDayOfWeek(I)Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView$StateBuilder;

    move-result-object v11

    .line 302
    invoke-static {}, Lcom/prolificinteractive/materialcalendarview/CalendarMode;->values()[Lcom/prolificinteractive/materialcalendarview/CalendarMode;

    move-result-object v12

    aget-object v12, v12, v3

    invoke-virtual {v11, v12}, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView$StateBuilder;->setCalendarDisplayMode(Lcom/prolificinteractive/materialcalendarview/CalendarMode;)Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView$StateBuilder;

    move-result-object v11

    .line 303
    invoke-virtual {v11}, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView$StateBuilder;->commit()V

    .line 305
    sget v11, Lcom/prolificinteractive/materialcalendarview/R$styleable;->MaterialCalendarView_mcv_tileSize:I

    const/16 v12, -0xa

    invoke-virtual {v1, v11, v12}, Landroid/content/res/TypedArray;->getLayoutDimension(II)I

    move-result v9

    .line 306
    .local v9, "tileSize":I
    const/16 v11, -0xa

    if-le v9, v11, :cond_1

    .line 307
    invoke-virtual {p0, v9}, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;->setTileSize(I)V

    .line 310
    :cond_1
    sget v11, Lcom/prolificinteractive/materialcalendarview/R$styleable;->MaterialCalendarView_mcv_tileWidth:I

    const/16 v12, -0xa

    invoke-virtual {v1, v11, v12}, Landroid/content/res/TypedArray;->getLayoutDimension(II)I

    move-result v10

    .line 311
    .local v10, "tileWidth":I
    const/16 v11, -0xa

    if-le v10, v11, :cond_2

    .line 312
    invoke-virtual {p0, v10}, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;->setTileWidth(I)V

    .line 315
    :cond_2
    sget v11, Lcom/prolificinteractive/materialcalendarview/R$styleable;->MaterialCalendarView_mcv_tileHeight:I

    const/16 v12, -0xa

    invoke-virtual {v1, v11, v12}, Landroid/content/res/TypedArray;->getLayoutDimension(II)I

    move-result v8

    .line 316
    .local v8, "tileHeight":I
    const/16 v11, -0xa

    if-le v8, v11, :cond_3

    .line 317
    invoke-virtual {p0, v8}, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;->setTileHeight(I)V

    .line 320
    :cond_3
    sget v11, Lcom/prolificinteractive/materialcalendarview/R$styleable;->MaterialCalendarView_mcv_arrowColor:I

    const/high16 v12, -0x1000000

    invoke-virtual {v1, v11, v12}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v11

    invoke-virtual {p0, v11}, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;->setArrowColor(I)V

    .line 324
    sget v11, Lcom/prolificinteractive/materialcalendarview/R$styleable;->MaterialCalendarView_mcv_leftArrowMask:I

    invoke-virtual {v1, v11}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    .line 327
    .local v5, "leftMask":Landroid/graphics/drawable/Drawable;
    if-nez v5, :cond_4

    .line 328
    invoke-virtual {p0}, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    sget v12, Lcom/prolificinteractive/materialcalendarview/R$drawable;->mcv_action_previous:I

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    .line 330
    :cond_4
    invoke-virtual {p0, v5}, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;->setLeftArrowMask(Landroid/graphics/drawable/Drawable;)V

    .line 331
    sget v11, Lcom/prolificinteractive/materialcalendarview/R$styleable;->MaterialCalendarView_mcv_rightArrowMask:I

    invoke-virtual {v1, v11}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    .line 334
    .local v7, "rightMask":Landroid/graphics/drawable/Drawable;
    if-nez v7, :cond_5

    .line 335
    invoke-virtual {p0}, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    sget v12, Lcom/prolificinteractive/materialcalendarview/R$drawable;->mcv_action_next:I

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    .line 337
    :cond_5
    invoke-virtual {p0, v7}, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;->setRightArrowMask(Landroid/graphics/drawable/Drawable;)V

    .line 339
    sget v11, Lcom/prolificinteractive/materialcalendarview/R$styleable;->MaterialCalendarView_mcv_selectionColor:I

    .line 342
    invoke-static/range {p1 .. p1}, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;->getThemeAccentColor(Landroid/content/Context;)I

    move-result v12

    .line 340
    invoke-virtual {v1, v11, v12}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v11

    .line 339
    invoke-virtual {p0, v11}, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;->setSelectionColor(I)V

    .line 346
    sget v11, Lcom/prolificinteractive/materialcalendarview/R$styleable;->MaterialCalendarView_mcv_weekDayLabels:I

    invoke-virtual {v1, v11}, Landroid/content/res/TypedArray;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v2

    .line 347
    .local v2, "array":[Ljava/lang/CharSequence;
    if-eqz v2, :cond_6

    .line 348
    new-instance v11, Lcom/prolificinteractive/materialcalendarview/format/ArrayWeekDayFormatter;

    invoke-direct {v11, v2}, Lcom/prolificinteractive/materialcalendarview/format/ArrayWeekDayFormatter;-><init>([Ljava/lang/CharSequence;)V

    invoke-virtual {p0, v11}, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;->setWeekDayFormatter(Lcom/prolificinteractive/materialcalendarview/format/WeekDayFormatter;)V

    .line 351
    :cond_6
    sget v11, Lcom/prolificinteractive/materialcalendarview/R$styleable;->MaterialCalendarView_mcv_monthLabels:I

    invoke-virtual {v1, v11}, Landroid/content/res/TypedArray;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v2

    .line 352
    if-eqz v2, :cond_7

    .line 353
    new-instance v11, Lcom/prolificinteractive/materialcalendarview/format/MonthArrayTitleFormatter;

    invoke-direct {v11, v2}, Lcom/prolificinteractive/materialcalendarview/format/MonthArrayTitleFormatter;-><init>([Ljava/lang/CharSequence;)V

    invoke-virtual {p0, v11}, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;->setTitleFormatter(Lcom/prolificinteractive/materialcalendarview/format/TitleFormatter;)V

    .line 356
    :cond_7
    sget v11, Lcom/prolificinteractive/materialcalendarview/R$styleable;->MaterialCalendarView_mcv_headerTextAppearance:I

    sget v12, Lcom/prolificinteractive/materialcalendarview/R$style;->TextAppearance_MaterialCalendarWidget_Header:I

    invoke-virtual {v1, v11, v12}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v11

    invoke-virtual {p0, v11}, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;->setHeaderTextAppearance(I)V

    .line 360
    sget v11, Lcom/prolificinteractive/materialcalendarview/R$styleable;->MaterialCalendarView_mcv_weekDayTextAppearance:I

    sget v12, Lcom/prolificinteractive/materialcalendarview/R$style;->TextAppearance_MaterialCalendarWidget_WeekDay:I

    invoke-virtual {v1, v11, v12}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v11

    invoke-virtual {p0, v11}, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;->setWeekDayTextAppearance(I)V

    .line 364
    sget v11, Lcom/prolificinteractive/materialcalendarview/R$styleable;->MaterialCalendarView_mcv_dateTextAppearance:I

    sget v12, Lcom/prolificinteractive/materialcalendarview/R$style;->TextAppearance_MaterialCalendarWidget_Date:I

    invoke-virtual {v1, v11, v12}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v11

    invoke-virtual {p0, v11}, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;->setDateTextAppearance(I)V

    .line 369
    sget v11, Lcom/prolificinteractive/materialcalendarview/R$styleable;->MaterialCalendarView_mcv_showOtherDates:I

    const/4 v12, 0x4

    invoke-virtual {v1, v11, v12}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v11

    invoke-virtual {p0, v11}, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;->setShowOtherDates(I)V

    .line 374
    sget v11, Lcom/prolificinteractive/materialcalendarview/R$styleable;->MaterialCalendarView_mcv_allowClickDaysOutsideCurrentMonth:I

    const/4 v12, 0x1

    invoke-virtual {v1, v11, v12}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v11

    invoke-virtual {p0, v11}, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;->setAllowClickDaysOutsideCurrentMonth(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 381
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 385
    .end local v2    # "array":[Ljava/lang/CharSequence;
    .end local v3    # "calendarModeIndex":I
    .end local v5    # "leftMask":Landroid/graphics/drawable/Drawable;
    .end local v7    # "rightMask":Landroid/graphics/drawable/Drawable;
    .end local v8    # "tileHeight":I
    .end local v9    # "tileSize":I
    .end local v10    # "tileWidth":I
    :goto_1
    iget-object v11, p0, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;->adapter:Lcom/prolificinteractive/materialcalendarview/CalendarPagerAdapter;

    sget-object v12, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;->DEFAULT_TITLE_FORMATTER:Lcom/prolificinteractive/materialcalendarview/format/TitleFormatter;

    invoke-virtual {v11, v12}, Lcom/prolificinteractive/materialcalendarview/CalendarPagerAdapter;->setTitleFormatter(Lcom/prolificinteractive/materialcalendarview/format/TitleFormatter;)V

    .line 386
    invoke-direct {p0}, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;->setupChildren()V

    .line 388
    invoke-static {}, Lcom/prolificinteractive/materialcalendarview/CalendarDay;->today()Lcom/prolificinteractive/materialcalendarview/CalendarDay;

    move-result-object v11

    iput-object v11, p0, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;->currentMonth:Lcom/prolificinteractive/materialcalendarview/CalendarDay;

    .line 389
    iget-object v11, p0, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;->currentMonth:Lcom/prolificinteractive/materialcalendarview/CalendarDay;

    invoke-virtual {p0, v11}, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;->setCurrentDate(Lcom/prolificinteractive/materialcalendarview/CalendarDay;)V

    .line 391
    invoke-virtual {p0}, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;->isInEditMode()Z

    move-result v11

    if-eqz v11, :cond_8

    .line 392
    iget-object v11, p0, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;->pager:Lcom/prolificinteractive/materialcalendarview/CalendarPager;

    invoke-virtual {p0, v11}, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;->removeView(Landroid/view/View;)V

    .line 393
    new-instance v6, Lcom/prolificinteractive/materialcalendarview/MonthView;

    iget-object v11, p0, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;->currentMonth:Lcom/prolificinteractive/materialcalendarview/CalendarDay;

    invoke-virtual {p0}, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;->getFirstDayOfWeek()I

    move-result v12

    invoke-direct {v6, p0, v11, v12}, Lcom/prolificinteractive/materialcalendarview/MonthView;-><init>(Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;Lcom/prolificinteractive/materialcalendarview/CalendarDay;I)V

    .line 394
    .local v6, "monthView":Lcom/prolificinteractive/materialcalendarview/MonthView;
    invoke-virtual {p0}, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;->getSelectionColor()I

    move-result v11

    invoke-virtual {v6, v11}, Lcom/prolificinteractive/materialcalendarview/MonthView;->setSelectionColor(I)V

    .line 395
    iget-object v11, p0, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;->adapter:Lcom/prolificinteractive/materialcalendarview/CalendarPagerAdapter;

    invoke-virtual {v11}, Lcom/prolificinteractive/materialcalendarview/CalendarPagerAdapter;->getDateTextAppearance()I

    move-result v11

    invoke-virtual {v6, v11}, Lcom/prolificinteractive/materialcalendarview/MonthView;->setDateTextAppearance(I)V

    .line 396
    iget-object v11, p0, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;->adapter:Lcom/prolificinteractive/materialcalendarview/CalendarPagerAdapter;

    invoke-virtual {v11}, Lcom/prolificinteractive/materialcalendarview/CalendarPagerAdapter;->getWeekDayTextAppearance()I

    move-result v11

    invoke-virtual {v6, v11}, Lcom/prolificinteractive/materialcalendarview/MonthView;->setWeekDayTextAppearance(I)V

    .line 397
    invoke-virtual {p0}, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;->getShowOtherDates()I

    move-result v11

    invoke-virtual {v6, v11}, Lcom/prolificinteractive/materialcalendarview/MonthView;->setShowOtherDates(I)V

    .line 398
    new-instance v11, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView$LayoutParams;

    iget-object v12, p0, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;->calendarMode:Lcom/prolificinteractive/materialcalendarview/CalendarMode;

    iget v12, v12, Lcom/prolificinteractive/materialcalendarview/CalendarMode;->visibleWeeksCount:I

    add-int/lit8 v12, v12, 0x1

    invoke-direct {v11, v12}, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView$LayoutParams;-><init>(I)V

    invoke-virtual {p0, v6, v11}, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 400
    .end local v6    # "monthView":Lcom/prolificinteractive/materialcalendarview/MonthView;
    :cond_8
    return-void

    .line 253
    .end local v1    # "a":Landroid/content/res/TypedArray;
    :cond_9
    const/4 v11, 0x1

    invoke-virtual {p0, v11}, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;->setClipChildren(Z)V

    .line 254
    const/4 v11, 0x1

    invoke-virtual {p0, v11}, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;->setClipToPadding(Z)V

    goto/16 :goto_0

    .line 378
    .restart local v1    # "a":Landroid/content/res/TypedArray;
    :catch_0
    move-exception v4

    .line 379
    .local v4, "e":Ljava/lang/Exception;
    :try_start_1
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 381
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    goto :goto_1

    .end local v4    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v11

    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    throw v11
.end method

.method static synthetic access$000(Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;)Lcom/prolificinteractive/materialcalendarview/DirectionButton;
    .locals 1
    .param p0, "x0"    # Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;

    .prologue
    .line 67
    iget-object v0, p0, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;->buttonFuture:Lcom/prolificinteractive/materialcalendarview/DirectionButton;

    return-object v0
.end method

.method static synthetic access$100(Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;)Lcom/prolificinteractive/materialcalendarview/CalendarPager;
    .locals 1
    .param p0, "x0"    # Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;

    .prologue
    .line 67
    iget-object v0, p0, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;->pager:Lcom/prolificinteractive/materialcalendarview/CalendarPager;

    return-object v0
.end method

.method static synthetic access$200(Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;)Lcom/prolificinteractive/materialcalendarview/DirectionButton;
    .locals 1
    .param p0, "x0"    # Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;

    .prologue
    .line 67
    iget-object v0, p0, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;->buttonPast:Lcom/prolificinteractive/materialcalendarview/DirectionButton;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView$State;)V
    .locals 0
    .param p0, "x0"    # Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;
    .param p1, "x1"    # Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView$State;

    .prologue
    .line 67
    invoke-direct {p0, p1}, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;->commit(Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView$State;)V

    return-void
.end method

.method static synthetic access$300(Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;)Lcom/prolificinteractive/materialcalendarview/CalendarDay;
    .locals 1
    .param p0, "x0"    # Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;

    .prologue
    .line 67
    iget-object v0, p0, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;->currentMonth:Lcom/prolificinteractive/materialcalendarview/CalendarDay;

    return-object v0
.end method

.method static synthetic access$302(Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;Lcom/prolificinteractive/materialcalendarview/CalendarDay;)Lcom/prolificinteractive/materialcalendarview/CalendarDay;
    .locals 0
    .param p0, "x0"    # Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;
    .param p1, "x1"    # Lcom/prolificinteractive/materialcalendarview/CalendarDay;

    .prologue
    .line 67
    iput-object p1, p0, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;->currentMonth:Lcom/prolificinteractive/materialcalendarview/CalendarDay;

    return-object p1
.end method

.method static synthetic access$400(Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;)Lcom/prolificinteractive/materialcalendarview/TitleChanger;
    .locals 1
    .param p0, "x0"    # Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;

    .prologue
    .line 67
    iget-object v0, p0, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;->titleChanger:Lcom/prolificinteractive/materialcalendarview/TitleChanger;

    return-object v0
.end method

.method static synthetic access$500(Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;)Lcom/prolificinteractive/materialcalendarview/CalendarPagerAdapter;
    .locals 1
    .param p0, "x0"    # Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;

    .prologue
    .line 67
    iget-object v0, p0, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;->adapter:Lcom/prolificinteractive/materialcalendarview/CalendarPagerAdapter;

    return-object v0
.end method

.method static synthetic access$600(Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;)V
    .locals 0
    .param p0, "x0"    # Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;

    .prologue
    .line 67
    invoke-direct {p0}, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;->updateUi()V

    return-void
.end method

.method private static clampSize(II)I
    .locals 2
    .param p0, "size"    # I
    .param p1, "spec"    # I

    .prologue
    .line 1675
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    .line 1676
    .local v0, "specMode":I
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    .line 1677
    .local v1, "specSize":I
    sparse-switch v0, :sswitch_data_0

    move v1, p0

    .line 1686
    .end local v1    # "specSize":I
    :goto_0
    :sswitch_0
    return v1

    .line 1682
    .restart local v1    # "specSize":I
    :sswitch_1
    invoke-static {p0, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    goto :goto_0

    .line 1677
    :sswitch_data_0
    .sparse-switch
        -0x80000000 -> :sswitch_1
        0x40000000 -> :sswitch_0
    .end sparse-switch
.end method

.method private commit(Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView$State;)V
    .locals 9
    .param p1, "state"    # Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView$State;

    .prologue
    const/4 v8, 0x1

    .line 1943
    const/4 v0, 0x0

    .line 1944
    .local v0, "calendarDayToShow":Lcom/prolificinteractive/materialcalendarview/CalendarDay;
    iget-object v5, p0, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;->adapter:Lcom/prolificinteractive/materialcalendarview/CalendarPagerAdapter;

    if-eqz v5, :cond_1

    invoke-static {p1}, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView$State;->access$700(Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView$State;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 1945
    iget-object v5, p0, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;->adapter:Lcom/prolificinteractive/materialcalendarview/CalendarPagerAdapter;

    iget-object v6, p0, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;->pager:Lcom/prolificinteractive/materialcalendarview/CalendarPager;

    invoke-virtual {v6}, Lcom/prolificinteractive/materialcalendarview/CalendarPager;->getCurrentItem()I

    move-result v6

    invoke-virtual {v5, v6}, Lcom/prolificinteractive/materialcalendarview/CalendarPagerAdapter;->getItem(I)Lcom/prolificinteractive/materialcalendarview/CalendarDay;

    move-result-object v0

    .line 1946
    iget-object v5, p0, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;->calendarMode:Lcom/prolificinteractive/materialcalendarview/CalendarMode;

    invoke-static {p1}, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView$State;->access$1500(Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView$State;)Lcom/prolificinteractive/materialcalendarview/CalendarMode;

    move-result-object v6

    if-eq v5, v6, :cond_1

    .line 1947
    invoke-virtual {p0}, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;->getSelectedDate()Lcom/prolificinteractive/materialcalendarview/CalendarDay;

    move-result-object v1

    .line 1948
    .local v1, "currentlySelectedDate":Lcom/prolificinteractive/materialcalendarview/CalendarDay;
    iget-object v5, p0, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;->calendarMode:Lcom/prolificinteractive/materialcalendarview/CalendarMode;

    sget-object v6, Lcom/prolificinteractive/materialcalendarview/CalendarMode;->MONTHS:Lcom/prolificinteractive/materialcalendarview/CalendarMode;

    if-ne v5, v6, :cond_2

    if-eqz v1, :cond_2

    .line 1950
    invoke-virtual {v0}, Lcom/prolificinteractive/materialcalendarview/CalendarDay;->getCalendar()Ljava/util/Calendar;

    move-result-object v2

    .line 1951
    .local v2, "lastVisibleCalendar":Ljava/util/Calendar;
    const/4 v5, 0x2

    invoke-virtual {v2, v5, v8}, Ljava/util/Calendar;->add(II)V

    .line 1952
    invoke-static {v2}, Lcom/prolificinteractive/materialcalendarview/CalendarDay;->from(Ljava/util/Calendar;)Lcom/prolificinteractive/materialcalendarview/CalendarDay;

    move-result-object v3

    .line 1953
    .local v3, "lastVisibleCalendarDay":Lcom/prolificinteractive/materialcalendarview/CalendarDay;
    invoke-virtual {v1, v0}, Lcom/prolificinteractive/materialcalendarview/CalendarDay;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 1954
    invoke-virtual {v1, v0}, Lcom/prolificinteractive/materialcalendarview/CalendarDay;->isAfter(Lcom/prolificinteractive/materialcalendarview/CalendarDay;)Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-virtual {v1, v3}, Lcom/prolificinteractive/materialcalendarview/CalendarDay;->isBefore(Lcom/prolificinteractive/materialcalendarview/CalendarDay;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 1956
    :cond_0
    move-object v0, v1

    .line 1975
    .end local v1    # "currentlySelectedDate":Lcom/prolificinteractive/materialcalendarview/CalendarDay;
    .end local v2    # "lastVisibleCalendar":Ljava/util/Calendar;
    .end local v3    # "lastVisibleCalendarDay":Lcom/prolificinteractive/materialcalendarview/CalendarDay;
    :cond_1
    :goto_0
    iput-object p1, p0, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;->state:Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView$State;

    .line 1977
    invoke-static {p1}, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView$State;->access$1500(Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView$State;)Lcom/prolificinteractive/materialcalendarview/CalendarMode;

    move-result-object v5

    iput-object v5, p0, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;->calendarMode:Lcom/prolificinteractive/materialcalendarview/CalendarMode;

    .line 1978
    invoke-static {p1}, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView$State;->access$1600(Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView$State;)I

    move-result v5

    iput v5, p0, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;->firstDayOfWeek:I

    .line 1979
    invoke-static {p1}, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView$State;->access$1700(Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView$State;)Lcom/prolificinteractive/materialcalendarview/CalendarDay;

    move-result-object v5

    iput-object v5, p0, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;->minDate:Lcom/prolificinteractive/materialcalendarview/CalendarDay;

    .line 1980
    invoke-static {p1}, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView$State;->access$1800(Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView$State;)Lcom/prolificinteractive/materialcalendarview/CalendarDay;

    move-result-object v5

    iput-object v5, p0, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;->maxDate:Lcom/prolificinteractive/materialcalendarview/CalendarDay;

    .line 1984
    sget-object v5, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView$4;->$SwitchMap$com$prolificinteractive$materialcalendarview$CalendarMode:[I

    iget-object v6, p0, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;->calendarMode:Lcom/prolificinteractive/materialcalendarview/CalendarMode;

    invoke-virtual {v6}, Lcom/prolificinteractive/materialcalendarview/CalendarMode;->ordinal()I

    move-result v6

    aget v5, v5, v6

    packed-switch v5, :pswitch_data_0

    .line 1992
    new-instance v5, Ljava/lang/IllegalArgumentException;

    const-string v6, "Provided display mode which is not yet implemented"

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 1958
    .restart local v1    # "currentlySelectedDate":Lcom/prolificinteractive/materialcalendarview/CalendarDay;
    :cond_2
    iget-object v5, p0, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;->calendarMode:Lcom/prolificinteractive/materialcalendarview/CalendarMode;

    sget-object v6, Lcom/prolificinteractive/materialcalendarview/CalendarMode;->WEEKS:Lcom/prolificinteractive/materialcalendarview/CalendarMode;

    if-ne v5, v6, :cond_1

    .line 1960
    invoke-virtual {v0}, Lcom/prolificinteractive/materialcalendarview/CalendarDay;->getCalendar()Ljava/util/Calendar;

    move-result-object v2

    .line 1961
    .restart local v2    # "lastVisibleCalendar":Ljava/util/Calendar;
    const/4 v5, 0x7

    const/4 v6, 0x6

    invoke-virtual {v2, v5, v6}, Ljava/util/Calendar;->add(II)V

    .line 1962
    invoke-static {v2}, Lcom/prolificinteractive/materialcalendarview/CalendarDay;->from(Ljava/util/Calendar;)Lcom/prolificinteractive/materialcalendarview/CalendarDay;

    move-result-object v3

    .line 1963
    .restart local v3    # "lastVisibleCalendarDay":Lcom/prolificinteractive/materialcalendarview/CalendarDay;
    if-eqz v1, :cond_4

    .line 1964
    invoke-virtual {v1, v0}, Lcom/prolificinteractive/materialcalendarview/CalendarDay;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3

    invoke-virtual {v1, v3}, Lcom/prolificinteractive/materialcalendarview/CalendarDay;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3

    .line 1965
    invoke-virtual {v1, v0}, Lcom/prolificinteractive/materialcalendarview/CalendarDay;->isAfter(Lcom/prolificinteractive/materialcalendarview/CalendarDay;)Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-virtual {v1, v3}, Lcom/prolificinteractive/materialcalendarview/CalendarDay;->isBefore(Lcom/prolificinteractive/materialcalendarview/CalendarDay;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 1967
    :cond_3
    move-object v0, v1

    goto :goto_0

    .line 1969
    :cond_4
    move-object v0, v3

    goto :goto_0

    .line 1986
    .end local v1    # "currentlySelectedDate":Lcom/prolificinteractive/materialcalendarview/CalendarDay;
    .end local v2    # "lastVisibleCalendar":Ljava/util/Calendar;
    .end local v3    # "lastVisibleCalendarDay":Lcom/prolificinteractive/materialcalendarview/CalendarDay;
    :pswitch_0
    new-instance v4, Lcom/prolificinteractive/materialcalendarview/MonthPagerAdapter;

    invoke-direct {v4, p0}, Lcom/prolificinteractive/materialcalendarview/MonthPagerAdapter;-><init>(Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;)V

    .line 1994
    .local v4, "newAdapter":Lcom/prolificinteractive/materialcalendarview/CalendarPagerAdapter;, "Lcom/prolificinteractive/materialcalendarview/CalendarPagerAdapter<*>;"
    :goto_1
    iget-object v5, p0, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;->adapter:Lcom/prolificinteractive/materialcalendarview/CalendarPagerAdapter;

    if-nez v5, :cond_6

    .line 1995
    iput-object v4, p0, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;->adapter:Lcom/prolificinteractive/materialcalendarview/CalendarPagerAdapter;

    .line 1999
    :goto_2
    iget-object v5, p0, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;->pager:Lcom/prolificinteractive/materialcalendarview/CalendarPager;

    iget-object v6, p0, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;->adapter:Lcom/prolificinteractive/materialcalendarview/CalendarPagerAdapter;

    invoke-virtual {v5, v6}, Lcom/prolificinteractive/materialcalendarview/CalendarPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    .line 2000
    iget-object v5, p0, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;->minDate:Lcom/prolificinteractive/materialcalendarview/CalendarDay;

    iget-object v6, p0, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;->maxDate:Lcom/prolificinteractive/materialcalendarview/CalendarDay;

    invoke-direct {p0, v5, v6}, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;->setRangeDates(Lcom/prolificinteractive/materialcalendarview/CalendarDay;Lcom/prolificinteractive/materialcalendarview/CalendarDay;)V

    .line 2003
    iget-object v5, p0, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;->pager:Lcom/prolificinteractive/materialcalendarview/CalendarPager;

    new-instance v6, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView$LayoutParams;

    iget-object v7, p0, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;->calendarMode:Lcom/prolificinteractive/materialcalendarview/CalendarMode;

    iget v7, v7, Lcom/prolificinteractive/materialcalendarview/CalendarMode;->visibleWeeksCount:I

    add-int/lit8 v7, v7, 0x1

    invoke-direct {v6, v7}, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView$LayoutParams;-><init>(I)V

    invoke-virtual {v5, v6}, Lcom/prolificinteractive/materialcalendarview/CalendarPager;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 2005
    iget v5, p0, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;->selectionMode:I

    if-ne v5, v8, :cond_7

    iget-object v5, p0, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;->adapter:Lcom/prolificinteractive/materialcalendarview/CalendarPagerAdapter;

    .line 2006
    invoke-virtual {v5}, Lcom/prolificinteractive/materialcalendarview/CalendarPagerAdapter;->getSelectedDates()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_7

    iget-object v5, p0, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;->adapter:Lcom/prolificinteractive/materialcalendarview/CalendarPagerAdapter;

    .line 2007
    invoke-virtual {v5}, Lcom/prolificinteractive/materialcalendarview/CalendarPagerAdapter;->getSelectedDates()Ljava/util/List;

    move-result-object v5

    const/4 v6, 0x0

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/prolificinteractive/materialcalendarview/CalendarDay;

    .line 2005
    :goto_3
    invoke-virtual {p0, v5}, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;->setCurrentDate(Lcom/prolificinteractive/materialcalendarview/CalendarDay;)V

    .line 2010
    if-eqz v0, :cond_5

    .line 2011
    iget-object v5, p0, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;->pager:Lcom/prolificinteractive/materialcalendarview/CalendarPager;

    iget-object v6, p0, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;->adapter:Lcom/prolificinteractive/materialcalendarview/CalendarPagerAdapter;

    invoke-virtual {v6, v0}, Lcom/prolificinteractive/materialcalendarview/CalendarPagerAdapter;->getIndexForDay(Lcom/prolificinteractive/materialcalendarview/CalendarDay;)I

    move-result v6

    invoke-virtual {v5, v6}, Lcom/prolificinteractive/materialcalendarview/CalendarPager;->setCurrentItem(I)V

    .line 2014
    :cond_5
    invoke-virtual {p0}, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;->invalidateDecorators()V

    .line 2015
    invoke-direct {p0}, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;->updateUi()V

    .line 2016
    return-void

    .line 1989
    .end local v4    # "newAdapter":Lcom/prolificinteractive/materialcalendarview/CalendarPagerAdapter;, "Lcom/prolificinteractive/materialcalendarview/CalendarPagerAdapter<*>;"
    :pswitch_1
    new-instance v4, Lcom/prolificinteractive/materialcalendarview/WeekPagerAdapter;

    invoke-direct {v4, p0}, Lcom/prolificinteractive/materialcalendarview/WeekPagerAdapter;-><init>(Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;)V

    .line 1990
    .restart local v4    # "newAdapter":Lcom/prolificinteractive/materialcalendarview/CalendarPagerAdapter;, "Lcom/prolificinteractive/materialcalendarview/CalendarPagerAdapter<*>;"
    goto :goto_1

    .line 1997
    :cond_6
    iget-object v5, p0, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;->adapter:Lcom/prolificinteractive/materialcalendarview/CalendarPagerAdapter;

    invoke-virtual {v5, v4}, Lcom/prolificinteractive/materialcalendarview/CalendarPagerAdapter;->migrateStateAndReturn(Lcom/prolificinteractive/materialcalendarview/CalendarPagerAdapter;)Lcom/prolificinteractive/materialcalendarview/CalendarPagerAdapter;

    move-result-object v5

    iput-object v5, p0, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;->adapter:Lcom/prolificinteractive/materialcalendarview/CalendarPagerAdapter;

    goto :goto_2

    .line 2008
    :cond_7
    invoke-static {}, Lcom/prolificinteractive/materialcalendarview/CalendarDay;->today()Lcom/prolificinteractive/materialcalendarview/CalendarDay;

    move-result-object v5

    goto :goto_3

    .line 1984
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private dpToPx(I)I
    .locals 3
    .param p1, "dp"    # I

    .prologue
    .line 595
    const/4 v0, 0x1

    int-to-float v1, p1

    .line 596
    invoke-virtual {p0}, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    .line 595
    invoke-static {v0, v1, v2}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    float-to-int v0, v0

    return v0
.end method

.method private static getThemeAccentColor(Landroid/content/Context;)I
    .locals 6
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 1226
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x15

    if-lt v2, v3, :cond_0

    .line 1227
    const v0, 0x1010435

    .line 1232
    .local v0, "colorAttr":I
    :goto_0
    new-instance v1, Landroid/util/TypedValue;

    invoke-direct {v1}, Landroid/util/TypedValue;-><init>()V

    .line 1233
    .local v1, "outValue":Landroid/util/TypedValue;
    invoke-virtual {p0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v0, v1, v3}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 1234
    iget v2, v1, Landroid/util/TypedValue;->data:I

    return v2

    .line 1230
    .end local v0    # "colorAttr":I
    .end local v1    # "outValue":Landroid/util/TypedValue;
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const-string v3, "colorAccent"

    const-string v4, "attr"

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v3, v4, v5}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .restart local v0    # "colorAttr":I
    goto :goto_0
.end method

.method private getWeekCountBasedOnMode()I
    .locals 6

    .prologue
    const/4 v5, 0x5

    .line 1655
    iget-object v3, p0, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;->calendarMode:Lcom/prolificinteractive/materialcalendarview/CalendarMode;

    iget v2, v3, Lcom/prolificinteractive/materialcalendarview/CalendarMode;->visibleWeeksCount:I

    .line 1656
    .local v2, "weekCount":I
    iget-object v3, p0, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;->calendarMode:Lcom/prolificinteractive/materialcalendarview/CalendarMode;

    sget-object v4, Lcom/prolificinteractive/materialcalendarview/CalendarMode;->MONTHS:Lcom/prolificinteractive/materialcalendarview/CalendarMode;

    invoke-virtual {v3, v4}, Lcom/prolificinteractive/materialcalendarview/CalendarMode;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 1657
    .local v1, "isInMonthsMode":Z
    if-eqz v1, :cond_0

    iget-boolean v3, p0, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;->mDynamicHeightEnabled:Z

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;->adapter:Lcom/prolificinteractive/materialcalendarview/CalendarPagerAdapter;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;->pager:Lcom/prolificinteractive/materialcalendarview/CalendarPager;

    if-eqz v3, :cond_0

    .line 1658
    iget-object v3, p0, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;->adapter:Lcom/prolificinteractive/materialcalendarview/CalendarPagerAdapter;

    iget-object v4, p0, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;->pager:Lcom/prolificinteractive/materialcalendarview/CalendarPager;

    invoke-virtual {v4}, Lcom/prolificinteractive/materialcalendarview/CalendarPager;->getCurrentItem()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/prolificinteractive/materialcalendarview/CalendarPagerAdapter;->getItem(I)Lcom/prolificinteractive/materialcalendarview/CalendarDay;

    move-result-object v3

    invoke-virtual {v3}, Lcom/prolificinteractive/materialcalendarview/CalendarDay;->getCalendar()Ljava/util/Calendar;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Calendar;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Calendar;

    .line 1659
    .local v0, "cal":Ljava/util/Calendar;
    invoke-virtual {v0, v5}, Ljava/util/Calendar;->getActualMaximum(I)I

    move-result v3

    invoke-virtual {v0, v5, v3}, Ljava/util/Calendar;->set(II)V

    .line 1661
    invoke-virtual {p0}, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;->getFirstDayOfWeek()I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/util/Calendar;->setFirstDayOfWeek(I)V

    .line 1662
    const/4 v3, 0x4

    invoke-virtual {v0, v3}, Ljava/util/Calendar;->get(I)I

    move-result v2

    .line 1664
    .end local v0    # "cal":Ljava/util/Calendar;
    :cond_0
    add-int/lit8 v3, v2, 0x1

    return v3
.end method

.method private setRangeDates(Lcom/prolificinteractive/materialcalendarview/CalendarDay;Lcom/prolificinteractive/materialcalendarview/CalendarDay;)V
    .locals 4
    .param p1, "min"    # Lcom/prolificinteractive/materialcalendarview/CalendarDay;
    .param p2, "max"    # Lcom/prolificinteractive/materialcalendarview/CalendarDay;

    .prologue
    .line 1130
    iget-object v0, p0, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;->currentMonth:Lcom/prolificinteractive/materialcalendarview/CalendarDay;

    .line 1131
    .local v0, "c":Lcom/prolificinteractive/materialcalendarview/CalendarDay;
    iget-object v2, p0, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;->adapter:Lcom/prolificinteractive/materialcalendarview/CalendarPagerAdapter;

    invoke-virtual {v2, p1, p2}, Lcom/prolificinteractive/materialcalendarview/CalendarPagerAdapter;->setRangeDates(Lcom/prolificinteractive/materialcalendarview/CalendarDay;Lcom/prolificinteractive/materialcalendarview/CalendarDay;)V

    .line 1132
    iput-object v0, p0, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;->currentMonth:Lcom/prolificinteractive/materialcalendarview/CalendarDay;

    .line 1133
    if-eqz p1, :cond_0

    .line 1134
    iget-object v2, p0, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;->currentMonth:Lcom/prolificinteractive/materialcalendarview/CalendarDay;

    invoke-virtual {p1, v2}, Lcom/prolificinteractive/materialcalendarview/CalendarDay;->isAfter(Lcom/prolificinteractive/materialcalendarview/CalendarDay;)Z

    move-result v2

    if-eqz v2, :cond_1

    .end local p1    # "min":Lcom/prolificinteractive/materialcalendarview/CalendarDay;
    :goto_0
    iput-object p1, p0, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;->currentMonth:Lcom/prolificinteractive/materialcalendarview/CalendarDay;

    .line 1136
    :cond_0
    iget-object v2, p0, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;->adapter:Lcom/prolificinteractive/materialcalendarview/CalendarPagerAdapter;

    invoke-virtual {v2, v0}, Lcom/prolificinteractive/materialcalendarview/CalendarPagerAdapter;->getIndexForDay(Lcom/prolificinteractive/materialcalendarview/CalendarDay;)I

    move-result v1

    .line 1137
    .local v1, "position":I
    iget-object v2, p0, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;->pager:Lcom/prolificinteractive/materialcalendarview/CalendarPager;

    const/4 v3, 0x0

    invoke-virtual {v2, v1, v3}, Lcom/prolificinteractive/materialcalendarview/CalendarPager;->setCurrentItem(IZ)V

    .line 1138
    invoke-direct {p0}, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;->updateUi()V

    .line 1139
    return-void

    .line 1134
    .end local v1    # "position":I
    .restart local p1    # "min":Lcom/prolificinteractive/materialcalendarview/CalendarDay;
    :cond_1
    iget-object p1, p0, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;->currentMonth:Lcom/prolificinteractive/materialcalendarview/CalendarDay;

    goto :goto_0
.end method

.method private setupChildren()V
    .locals 8

    .prologue
    const/4 v7, 0x1

    const/high16 v6, 0x3f800000    # 1.0f

    const/4 v5, -0x1

    const/4 v4, 0x0

    .line 403
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;->topbar:Landroid/widget/LinearLayout;

    .line 404
    iget-object v0, p0, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;->topbar:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 405
    iget-object v0, p0, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;->topbar:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setClipChildren(Z)V

    .line 406
    iget-object v0, p0, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;->topbar:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setClipToPadding(Z)V

    .line 407
    iget-object v0, p0, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;->topbar:Landroid/widget/LinearLayout;

    new-instance v1, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView$LayoutParams;

    invoke-direct {v1, v7}, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView$LayoutParams;-><init>(I)V

    invoke-virtual {p0, v0, v1}, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 409
    iget-object v0, p0, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;->buttonPast:Lcom/prolificinteractive/materialcalendarview/DirectionButton;

    sget-object v1, Landroid/widget/ImageView$ScaleType;->CENTER_INSIDE:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Lcom/prolificinteractive/materialcalendarview/DirectionButton;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 410
    iget-object v0, p0, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;->topbar:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;->buttonPast:Lcom/prolificinteractive/materialcalendarview/DirectionButton;

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v2, v4, v5, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v0, v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 412
    iget-object v0, p0, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;->title:Landroid/widget/TextView;

    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    .line 413
    iget-object v0, p0, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;->topbar:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;->title:Landroid/widget/TextView;

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v3, 0x40a00000    # 5.0f

    invoke-direct {v2, v4, v5, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v0, v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 417
    iget-object v0, p0, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;->buttonFuture:Lcom/prolificinteractive/materialcalendarview/DirectionButton;

    sget-object v1, Landroid/widget/ImageView$ScaleType;->CENTER_INSIDE:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Lcom/prolificinteractive/materialcalendarview/DirectionButton;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 418
    iget-object v0, p0, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;->topbar:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;->buttonFuture:Lcom/prolificinteractive/materialcalendarview/DirectionButton;

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v2, v4, v5, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v0, v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 420
    iget-object v0, p0, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;->pager:Lcom/prolificinteractive/materialcalendarview/CalendarPager;

    sget v1, Lcom/prolificinteractive/materialcalendarview/R$id;->mcv_pager:I

    invoke-virtual {v0, v1}, Lcom/prolificinteractive/materialcalendarview/CalendarPager;->setId(I)V

    .line 421
    iget-object v0, p0, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;->pager:Lcom/prolificinteractive/materialcalendarview/CalendarPager;

    invoke-virtual {v0, v7}, Lcom/prolificinteractive/materialcalendarview/CalendarPager;->setOffscreenPageLimit(I)V

    .line 422
    iget-object v0, p0, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;->pager:Lcom/prolificinteractive/materialcalendarview/CalendarPager;

    new-instance v1, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView$LayoutParams;

    iget-object v2, p0, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;->calendarMode:Lcom/prolificinteractive/materialcalendarview/CalendarMode;

    iget v2, v2, Lcom/prolificinteractive/materialcalendarview/CalendarMode;->visibleWeeksCount:I

    add-int/lit8 v2, v2, 0x1

    invoke-direct {v1, v2}, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView$LayoutParams;-><init>(I)V

    invoke-virtual {p0, v0, v1}, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 423
    return-void
.end method

.method public static showDecoratedDisabled(I)Z
    .locals 1
    .param p0, "showOtherDates"    # I
        .annotation runtime Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView$ShowOtherDates;
        .end annotation
    .end param

    .prologue
    .line 1536
    and-int/lit8 v0, p0, 0x4

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static showOtherMonths(I)Z
    .locals 1
    .param p0, "showOtherDates"    # I
        .annotation runtime Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView$ShowOtherDates;
        .end annotation
    .end param

    .prologue
    .line 1520
    and-int/lit8 v0, p0, 0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static showOutOfRange(I)Z
    .locals 1
    .param p0, "showOtherDates"    # I
        .annotation runtime Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView$ShowOtherDates;
        .end annotation
    .end param

    .prologue
    .line 1528
    and-int/lit8 v0, p0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private updateUi()V
    .locals 2

    .prologue
    .line 426
    iget-object v0, p0, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;->titleChanger:Lcom/prolificinteractive/materialcalendarview/TitleChanger;

    iget-object v1, p0, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;->currentMonth:Lcom/prolificinteractive/materialcalendarview/CalendarDay;

    invoke-virtual {v0, v1}, Lcom/prolificinteractive/materialcalendarview/TitleChanger;->change(Lcom/prolificinteractive/materialcalendarview/CalendarDay;)V

    .line 427
    iget-object v0, p0, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;->buttonPast:Lcom/prolificinteractive/materialcalendarview/DirectionButton;

    invoke-virtual {p0}, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;->canGoBack()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/prolificinteractive/materialcalendarview/DirectionButton;->setEnabled(Z)V

    .line 428
    iget-object v0, p0, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;->buttonFuture:Lcom/prolificinteractive/materialcalendarview/DirectionButton;

    invoke-virtual {p0}, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;->canGoForward()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/prolificinteractive/materialcalendarview/DirectionButton;->setEnabled(Z)V

    .line 429
    return-void
.end method


# virtual methods
.method public addDecorator(Lcom/prolificinteractive/materialcalendarview/DayViewDecorator;)V
    .locals 2
    .param p1, "decorator"    # Lcom/prolificinteractive/materialcalendarview/DayViewDecorator;

    .prologue
    .line 1294
    if-nez p1, :cond_0

    .line 1299
    :goto_0
    return-void

    .line 1297
    :cond_0
    iget-object v0, p0, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;->dayViewDecorators:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1298
    iget-object v0, p0, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;->adapter:Lcom/prolificinteractive/materialcalendarview/CalendarPagerAdapter;

    iget-object v1, p0, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;->dayViewDecorators:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Lcom/prolificinteractive/materialcalendarview/CalendarPagerAdapter;->setDecorators(Ljava/util/List;)V

    goto :goto_0
.end method

.method public addDecorators(Ljava/util/Collection;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<+",
            "Lcom/prolificinteractive/materialcalendarview/DayViewDecorator;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1271
    .local p1, "decorators":Ljava/util/Collection;, "Ljava/util/Collection<+Lcom/prolificinteractive/materialcalendarview/DayViewDecorator;>;"
    if-nez p1, :cond_0

    .line 1277
    :goto_0
    return-void

    .line 1275
    :cond_0
    iget-object v0, p0, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;->dayViewDecorators:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 1276
    iget-object v0, p0, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;->adapter:Lcom/prolificinteractive/materialcalendarview/CalendarPagerAdapter;

    iget-object v1, p0, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;->dayViewDecorators:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Lcom/prolificinteractive/materialcalendarview/CalendarPagerAdapter;->setDecorators(Ljava/util/List;)V

    goto :goto_0
.end method

.method public varargs addDecorators([Lcom/prolificinteractive/materialcalendarview/DayViewDecorator;)V
    .locals 1
    .param p1, "decorators"    # [Lcom/prolificinteractive/materialcalendarview/DayViewDecorator;

    .prologue
    .line 1285
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;->addDecorators(Ljava/util/Collection;)V

    .line 1286
    return-void
.end method

.method public allowClickDaysOutsideCurrentMonth()Z
    .locals 1

    .prologue
    .line 987
    iget-boolean v0, p0, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;->allowClickDaysOutsideCurrentMonth:Z

    return v0
.end method

.method public canGoBack()Z
    .locals 1

    .prologue
    .line 626
    iget-object v0, p0, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;->pager:Lcom/prolificinteractive/materialcalendarview/CalendarPager;

    invoke-virtual {v0}, Lcom/prolificinteractive/materialcalendarview/CalendarPager;->getCurrentItem()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public canGoForward()Z
    .locals 2

    .prologue
    .line 606
    iget-object v0, p0, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;->pager:Lcom/prolificinteractive/materialcalendarview/CalendarPager;

    invoke-virtual {v0}, Lcom/prolificinteractive/materialcalendarview/CalendarPager;->getCurrentItem()I

    move-result v0

    iget-object v1, p0, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;->adapter:Lcom/prolificinteractive/materialcalendarview/CalendarPagerAdapter;

    invoke-virtual {v1}, Lcom/prolificinteractive/materialcalendarview/CalendarPagerAdapter;->getCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .locals 1
    .param p1, "p"    # Landroid/view/ViewGroup$LayoutParams;

    .prologue
    .line 1739
    instance-of v0, p1, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView$LayoutParams;

    return v0
.end method

.method public clearSelection()V
    .locals 4

    .prologue
    .line 786
    invoke-virtual {p0}, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;->getSelectedDates()Ljava/util/List;

    move-result-object v0

    .line 787
    .local v0, "dates":Ljava/util/List;, "Ljava/util/List<Lcom/prolificinteractive/materialcalendarview/CalendarDay;>;"
    iget-object v2, p0, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;->adapter:Lcom/prolificinteractive/materialcalendarview/CalendarPagerAdapter;

    invoke-virtual {v2}, Lcom/prolificinteractive/materialcalendarview/CalendarPagerAdapter;->clearSelections()V

    .line 788
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/prolificinteractive/materialcalendarview/CalendarDay;

    .line 789
    .local v1, "day":Lcom/prolificinteractive/materialcalendarview/CalendarDay;
    const/4 v3, 0x0

    invoke-virtual {p0, v1, v3}, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;->dispatchOnDateSelected(Lcom/prolificinteractive/materialcalendarview/CalendarDay;Z)V

    goto :goto_0

    .line 791
    .end local v1    # "day":Lcom/prolificinteractive/materialcalendarview/CalendarDay;
    :cond_0
    return-void
.end method

.method protected dispatchOnDateSelected(Lcom/prolificinteractive/materialcalendarview/CalendarDay;Z)V
    .locals 1
    .param p1, "day"    # Lcom/prolificinteractive/materialcalendarview/CalendarDay;
    .param p2, "selected"    # Z

    .prologue
    .line 1374
    iget-object v0, p0, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;->listener:Lcom/prolificinteractive/materialcalendarview/OnDateSelectedListener;

    .line 1375
    .local v0, "l":Lcom/prolificinteractive/materialcalendarview/OnDateSelectedListener;
    if-eqz v0, :cond_0

    .line 1376
    invoke-interface {v0, p0, p1, p2}, Lcom/prolificinteractive/materialcalendarview/OnDateSelectedListener;->onDateSelected(Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;Lcom/prolificinteractive/materialcalendarview/CalendarDay;Z)V

    .line 1378
    :cond_0
    return-void
.end method

.method protected dispatchOnMonthChanged(Lcom/prolificinteractive/materialcalendarview/CalendarDay;)V
    .locals 1
    .param p1, "day"    # Lcom/prolificinteractive/materialcalendarview/CalendarDay;

    .prologue
    .line 1414
    iget-object v0, p0, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;->monthListener:Lcom/prolificinteractive/materialcalendarview/OnMonthChangedListener;

    .line 1415
    .local v0, "l":Lcom/prolificinteractive/materialcalendarview/OnMonthChangedListener;
    if-eqz v0, :cond_0

    .line 1416
    invoke-interface {v0, p0, p1}, Lcom/prolificinteractive/materialcalendarview/OnMonthChangedListener;->onMonthChanged(Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;Lcom/prolificinteractive/materialcalendarview/CalendarDay;)V

    .line 1418
    :cond_0
    return-void
.end method

.method protected dispatchOnRangeSelected(Lcom/prolificinteractive/materialcalendarview/CalendarDay;Lcom/prolificinteractive/materialcalendarview/CalendarDay;)V
    .locals 7
    .param p1, "firstDay"    # Lcom/prolificinteractive/materialcalendarview/CalendarDay;
    .param p2, "lastDay"    # Lcom/prolificinteractive/materialcalendarview/CalendarDay;

    .prologue
    const/4 v6, 0x1

    .line 1387
    iget-object v4, p0, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;->rangeListener:Lcom/prolificinteractive/materialcalendarview/OnRangeSelectedListener;

    .line 1388
    .local v4, "listener":Lcom/prolificinteractive/materialcalendarview/OnRangeSelectedListener;
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1390
    .local v2, "days":Ljava/util/List;, "Ljava/util/List<Lcom/prolificinteractive/materialcalendarview/CalendarDay;>;"
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 1391
    .local v0, "counter":Ljava/util/Calendar;
    invoke-virtual {p1}, Lcom/prolificinteractive/materialcalendarview/CalendarDay;->getDate()Ljava/util/Date;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 1393
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v3

    .line 1394
    .local v3, "end":Ljava/util/Calendar;
    invoke-virtual {p2}, Lcom/prolificinteractive/materialcalendarview/CalendarDay;->getDate()Ljava/util/Date;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 1396
    :goto_0
    invoke-virtual {v0, v3}, Ljava/util/Calendar;->before(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    invoke-virtual {v0, v3}, Ljava/util/Calendar;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 1397
    :cond_0
    invoke-static {v0}, Lcom/prolificinteractive/materialcalendarview/CalendarDay;->from(Ljava/util/Calendar;)Lcom/prolificinteractive/materialcalendarview/CalendarDay;

    move-result-object v1

    .line 1398
    .local v1, "current":Lcom/prolificinteractive/materialcalendarview/CalendarDay;
    iget-object v5, p0, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;->adapter:Lcom/prolificinteractive/materialcalendarview/CalendarPagerAdapter;

    invoke-virtual {v5, v1, v6}, Lcom/prolificinteractive/materialcalendarview/CalendarPagerAdapter;->setDateSelected(Lcom/prolificinteractive/materialcalendarview/CalendarDay;Z)V

    .line 1399
    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1400
    const/4 v5, 0x5

    invoke-virtual {v0, v5, v6}, Ljava/util/Calendar;->add(II)V

    goto :goto_0

    .line 1403
    .end local v1    # "current":Lcom/prolificinteractive/materialcalendarview/CalendarDay;
    :cond_1
    if-eqz v4, :cond_2

    .line 1404
    invoke-interface {v4, p0, v2}, Lcom/prolificinteractive/materialcalendarview/OnRangeSelectedListener;->onRangeSelected(Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;Ljava/util/List;)V

    .line 1406
    :cond_2
    return-void
.end method

.method protected dispatchRestoreInstanceState(Landroid/util/SparseArray;)V
    .locals 0
    .param p1    # Landroid/util/SparseArray;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray",
            "<",
            "Landroid/os/Parcelable;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1126
    .local p1, "container":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/os/Parcelable;>;"
    invoke-virtual {p0, p1}, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;->dispatchThawSelfOnly(Landroid/util/SparseArray;)V

    .line 1127
    return-void
.end method

.method protected dispatchSaveInstanceState(Landroid/util/SparseArray;)V
    .locals 0
    .param p1    # Landroid/util/SparseArray;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray",
            "<",
            "Landroid/os/Parcelable;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1121
    .local p1, "container":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/os/Parcelable;>;"
    invoke-virtual {p0, p1}, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;->dispatchFreezeSelfOnly(Landroid/util/SparseArray;)V

    .line 1122
    return-void
.end method

.method protected bridge synthetic generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    .prologue
    .line 67
    invoke-virtual {p0}, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;->generateDefaultLayoutParams()Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method protected generateDefaultLayoutParams()Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView$LayoutParams;
    .locals 2

    .prologue
    .line 1548
    new-instance v0, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView$LayoutParams;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView$LayoutParams;-><init>(I)V

    return-object v0
.end method

.method public bridge synthetic generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    .prologue
    .line 67
    invoke-virtual {p0, p1}, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;->generateLayoutParams(Landroid/util/AttributeSet;)Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method protected generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .locals 2
    .param p1, "p"    # Landroid/view/ViewGroup$LayoutParams;

    .prologue
    .line 1744
    new-instance v0, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView$LayoutParams;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView$LayoutParams;-><init>(I)V

    return-object v0
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView$LayoutParams;
    .locals 2
    .param p1, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 1726
    new-instance v0, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView$LayoutParams;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView$LayoutParams;-><init>(I)V

    return-object v0
.end method

.method public getArrowColor()I
    .locals 1

    .prologue
    .line 656
    iget v0, p0, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;->arrowColor:I

    return v0
.end method

.method public getCalendarContentDescription()Ljava/lang/CharSequence;
    .locals 2

    .prologue
    .line 705
    iget-object v0, p0, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;->calendarContentDescription:Ljava/lang/CharSequence;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;->calendarContentDescription:Ljava/lang/CharSequence;

    .line 707
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/prolificinteractive/materialcalendarview/R$string;->calendar:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getCurrentDate()Lcom/prolificinteractive/materialcalendarview/CalendarDay;
    .locals 2

    .prologue
    .line 862
    iget-object v0, p0, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;->adapter:Lcom/prolificinteractive/materialcalendarview/CalendarPagerAdapter;

    iget-object v1, p0, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;->pager:Lcom/prolificinteractive/materialcalendarview/CalendarPager;

    invoke-virtual {v1}, Lcom/prolificinteractive/materialcalendarview/CalendarPager;->getCurrentItem()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/prolificinteractive/materialcalendarview/CalendarPagerAdapter;->getItem(I)Lcom/prolificinteractive/materialcalendarview/CalendarDay;

    move-result-object v0

    return-object v0
.end method

.method public getFirstDayOfWeek()I
    .locals 1

    .prologue
    .line 1241
    iget v0, p0, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;->firstDayOfWeek:I

    return v0
.end method

.method public getLeftArrowMask()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 714
    iget-object v0, p0, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;->leftArrowMask:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getMaximumDate()Lcom/prolificinteractive/materialcalendarview/CalendarDay;
    .locals 1

    .prologue
    .line 896
    iget-object v0, p0, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;->maxDate:Lcom/prolificinteractive/materialcalendarview/CalendarDay;

    return-object v0
.end method

.method public getMinimumDate()Lcom/prolificinteractive/materialcalendarview/CalendarDay;
    .locals 1

    .prologue
    .line 889
    iget-object v0, p0, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;->minDate:Lcom/prolificinteractive/materialcalendarview/CalendarDay;

    return-object v0
.end method

.method public getRightArrowMask()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 729
    iget-object v0, p0, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;->rightArrowMask:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getSelectedDate()Lcom/prolificinteractive/materialcalendarview/CalendarDay;
    .locals 2

    .prologue
    .line 766
    iget-object v1, p0, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;->adapter:Lcom/prolificinteractive/materialcalendarview/CalendarPagerAdapter;

    invoke-virtual {v1}, Lcom/prolificinteractive/materialcalendarview/CalendarPagerAdapter;->getSelectedDates()Ljava/util/List;

    move-result-object v0

    .line 767
    .local v0, "dates":Ljava/util/List;, "Ljava/util/List<Lcom/prolificinteractive/materialcalendarview/CalendarDay;>;"
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 768
    const/4 v1, 0x0

    .line 770
    :goto_0
    return-object v1

    :cond_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/prolificinteractive/materialcalendarview/CalendarDay;

    goto :goto_0
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
    .line 779
    iget-object v0, p0, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;->adapter:Lcom/prolificinteractive/materialcalendarview/CalendarPagerAdapter;

    invoke-virtual {v0}, Lcom/prolificinteractive/materialcalendarview/CalendarPagerAdapter;->getSelectedDates()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getSelectionColor()I
    .locals 1

    .prologue
    .line 633
    iget v0, p0, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;->accentColor:I

    return v0
.end method

.method public getSelectionMode()I
    .locals 1
    .annotation runtime Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView$SelectionMode;
    .end annotation

    .prologue
    .line 509
    iget v0, p0, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;->selectionMode:I

    return v0
.end method

.method public getShowOtherDates()I
    .locals 1
    .annotation runtime Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView$ShowOtherDates;
    .end annotation

    .prologue
    .line 980
    iget-object v0, p0, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;->adapter:Lcom/prolificinteractive/materialcalendarview/CalendarPagerAdapter;

    invoke-virtual {v0}, Lcom/prolificinteractive/materialcalendarview/CalendarPagerAdapter;->getShowOtherDates()I

    move-result v0

    return v0
.end method

.method public getTileHeight()I
    .locals 1

    .prologue
    .line 548
    iget v0, p0, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;->tileHeight:I

    return v0
.end method

.method public getTileSize()I
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 520
    iget v0, p0, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;->tileHeight:I

    iget v1, p0, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;->tileWidth:I

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0
.end method

.method public getTileWidth()I
    .locals 1

    .prologue
    .line 573
    iget v0, p0, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;->tileWidth:I

    return v0
.end method

.method public getTitleAnimationOrientation()I
    .locals 1

    .prologue
    .line 1043
    iget-object v0, p0, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;->titleChanger:Lcom/prolificinteractive/materialcalendarview/TitleChanger;

    invoke-virtual {v0}, Lcom/prolificinteractive/materialcalendarview/TitleChanger;->getOrientation()I

    move-result v0

    return v0
.end method

.method public getTopbarVisible()Z
    .locals 1

    .prologue
    .line 1062
    iget-object v0, p0, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;->topbar:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public goToNext()V
    .locals 3

    .prologue
    .line 492
    invoke-virtual {p0}, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;->canGoForward()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 493
    iget-object v0, p0, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;->pager:Lcom/prolificinteractive/materialcalendarview/CalendarPager;

    iget-object v1, p0, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;->pager:Lcom/prolificinteractive/materialcalendarview/CalendarPager;

    invoke-virtual {v1}, Lcom/prolificinteractive/materialcalendarview/CalendarPager;->getCurrentItem()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/prolificinteractive/materialcalendarview/CalendarPager;->setCurrentItem(IZ)V

    .line 495
    :cond_0
    return-void
.end method

.method public goToPrevious()V
    .locals 3

    .prologue
    .line 481
    invoke-virtual {p0}, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;->canGoBack()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 482
    iget-object v0, p0, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;->pager:Lcom/prolificinteractive/materialcalendarview/CalendarPager;

    iget-object v1, p0, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;->pager:Lcom/prolificinteractive/materialcalendarview/CalendarPager;

    invoke-virtual {v1}, Lcom/prolificinteractive/materialcalendarview/CalendarPager;->getCurrentItem()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/prolificinteractive/materialcalendarview/CalendarPager;->setCurrentItem(IZ)V

    .line 484
    :cond_0
    return-void
.end method

.method public invalidateDecorators()V
    .locals 1

    .prologue
    .line 1324
    iget-object v0, p0, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;->adapter:Lcom/prolificinteractive/materialcalendarview/CalendarPagerAdapter;

    invoke-virtual {v0}, Lcom/prolificinteractive/materialcalendarview/CalendarPagerAdapter;->invalidateDecorators()V

    .line 1325
    return-void
.end method

.method public isDynamicHeightEnabled()Z
    .locals 1

    .prologue
    .line 1261
    iget-boolean v0, p0, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;->mDynamicHeightEnabled:Z

    return v0
.end method

.method public isPagingEnabled()Z
    .locals 1

    .prologue
    .line 1790
    iget-object v0, p0, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;->pager:Lcom/prolificinteractive/materialcalendarview/CalendarPager;

    invoke-virtual {v0}, Lcom/prolificinteractive/materialcalendarview/CalendarPager;->isPagingEnabled()Z

    move-result v0

    return v0
.end method

.method public newState()Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView$StateBuilder;
    .locals 1

    .prologue
    .line 1804
    new-instance v0, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView$StateBuilder;

    invoke-direct {v0, p0}, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView$StateBuilder;-><init>(Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;)V

    return-object v0
.end method

.method protected onDateClicked(Lcom/prolificinteractive/materialcalendarview/CalendarDay;Z)V
    .locals 5
    .param p1, "date"    # Lcom/prolificinteractive/materialcalendarview/CalendarDay;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "nowSelected"    # Z

    .prologue
    const/4 v2, 0x2

    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 1428
    iget v1, p0, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;->selectionMode:I

    packed-switch v1, :pswitch_data_0

    .line 1455
    iget-object v1, p0, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;->adapter:Lcom/prolificinteractive/materialcalendarview/CalendarPagerAdapter;

    invoke-virtual {v1}, Lcom/prolificinteractive/materialcalendarview/CalendarPagerAdapter;->clearSelections()V

    .line 1456
    iget-object v1, p0, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;->adapter:Lcom/prolificinteractive/materialcalendarview/CalendarPagerAdapter;

    invoke-virtual {v1, p1, v3}, Lcom/prolificinteractive/materialcalendarview/CalendarPagerAdapter;->setDateSelected(Lcom/prolificinteractive/materialcalendarview/CalendarDay;Z)V

    .line 1457
    invoke-virtual {p0, p1, v3}, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;->dispatchOnDateSelected(Lcom/prolificinteractive/materialcalendarview/CalendarDay;Z)V

    .line 1461
    :goto_0
    return-void

    .line 1430
    :pswitch_0
    iget-object v1, p0, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;->adapter:Lcom/prolificinteractive/materialcalendarview/CalendarPagerAdapter;

    invoke-virtual {v1, p1, p2}, Lcom/prolificinteractive/materialcalendarview/CalendarPagerAdapter;->setDateSelected(Lcom/prolificinteractive/materialcalendarview/CalendarDay;Z)V

    .line 1431
    invoke-virtual {p0, p1, p2}, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;->dispatchOnDateSelected(Lcom/prolificinteractive/materialcalendarview/CalendarDay;Z)V

    goto :goto_0

    .line 1435
    :pswitch_1
    iget-object v1, p0, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;->adapter:Lcom/prolificinteractive/materialcalendarview/CalendarPagerAdapter;

    invoke-virtual {v1, p1, p2}, Lcom/prolificinteractive/materialcalendarview/CalendarPagerAdapter;->setDateSelected(Lcom/prolificinteractive/materialcalendarview/CalendarDay;Z)V

    .line 1436
    iget-object v1, p0, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;->adapter:Lcom/prolificinteractive/materialcalendarview/CalendarPagerAdapter;

    invoke-virtual {v1}, Lcom/prolificinteractive/materialcalendarview/CalendarPagerAdapter;->getSelectedDates()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-le v1, v2, :cond_0

    .line 1437
    iget-object v1, p0, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;->adapter:Lcom/prolificinteractive/materialcalendarview/CalendarPagerAdapter;

    invoke-virtual {v1}, Lcom/prolificinteractive/materialcalendarview/CalendarPagerAdapter;->clearSelections()V

    .line 1438
    iget-object v1, p0, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;->adapter:Lcom/prolificinteractive/materialcalendarview/CalendarPagerAdapter;

    invoke-virtual {v1, p1, p2}, Lcom/prolificinteractive/materialcalendarview/CalendarPagerAdapter;->setDateSelected(Lcom/prolificinteractive/materialcalendarview/CalendarDay;Z)V

    .line 1439
    invoke-virtual {p0, p1, p2}, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;->dispatchOnDateSelected(Lcom/prolificinteractive/materialcalendarview/CalendarDay;Z)V

    goto :goto_0

    .line 1440
    :cond_0
    iget-object v1, p0, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;->adapter:Lcom/prolificinteractive/materialcalendarview/CalendarPagerAdapter;

    invoke-virtual {v1}, Lcom/prolificinteractive/materialcalendarview/CalendarPagerAdapter;->getSelectedDates()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ne v1, v2, :cond_2

    .line 1441
    iget-object v1, p0, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;->adapter:Lcom/prolificinteractive/materialcalendarview/CalendarPagerAdapter;

    invoke-virtual {v1}, Lcom/prolificinteractive/materialcalendarview/CalendarPagerAdapter;->getSelectedDates()Ljava/util/List;

    move-result-object v0

    .line 1442
    .local v0, "dates":Ljava/util/List;, "Ljava/util/List<Lcom/prolificinteractive/materialcalendarview/CalendarDay;>;"
    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/prolificinteractive/materialcalendarview/CalendarDay;

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/prolificinteractive/materialcalendarview/CalendarDay;

    invoke-virtual {v1, v2}, Lcom/prolificinteractive/materialcalendarview/CalendarDay;->isAfter(Lcom/prolificinteractive/materialcalendarview/CalendarDay;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1443
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/prolificinteractive/materialcalendarview/CalendarDay;

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/prolificinteractive/materialcalendarview/CalendarDay;

    invoke-virtual {p0, v1, v2}, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;->dispatchOnRangeSelected(Lcom/prolificinteractive/materialcalendarview/CalendarDay;Lcom/prolificinteractive/materialcalendarview/CalendarDay;)V

    goto :goto_0

    .line 1445
    :cond_1
    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/prolificinteractive/materialcalendarview/CalendarDay;

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/prolificinteractive/materialcalendarview/CalendarDay;

    invoke-virtual {p0, v1, v2}, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;->dispatchOnRangeSelected(Lcom/prolificinteractive/materialcalendarview/CalendarDay;Lcom/prolificinteractive/materialcalendarview/CalendarDay;)V

    goto :goto_0

    .line 1448
    .end local v0    # "dates":Ljava/util/List;, "Ljava/util/List<Lcom/prolificinteractive/materialcalendarview/CalendarDay;>;"
    :cond_2
    iget-object v1, p0, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;->adapter:Lcom/prolificinteractive/materialcalendarview/CalendarPagerAdapter;

    invoke-virtual {v1, p1, p2}, Lcom/prolificinteractive/materialcalendarview/CalendarPagerAdapter;->setDateSelected(Lcom/prolificinteractive/materialcalendarview/CalendarDay;Z)V

    .line 1449
    invoke-virtual {p0, p1, p2}, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;->dispatchOnDateSelected(Lcom/prolificinteractive/materialcalendarview/CalendarDay;Z)V

    goto :goto_0

    .line 1428
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected onDateClicked(Lcom/prolificinteractive/materialcalendarview/DayView;)V
    .locals 6
    .param p1, "dayView"    # Lcom/prolificinteractive/materialcalendarview/DayView;

    .prologue
    .line 1484
    invoke-virtual {p0}, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;->getCurrentDate()Lcom/prolificinteractive/materialcalendarview/CalendarDay;

    move-result-object v0

    .line 1485
    .local v0, "currentDate":Lcom/prolificinteractive/materialcalendarview/CalendarDay;
    invoke-virtual {p1}, Lcom/prolificinteractive/materialcalendarview/DayView;->getDate()Lcom/prolificinteractive/materialcalendarview/CalendarDay;

    move-result-object v2

    .line 1486
    .local v2, "selectedDate":Lcom/prolificinteractive/materialcalendarview/CalendarDay;
    invoke-virtual {v0}, Lcom/prolificinteractive/materialcalendarview/CalendarDay;->getMonth()I

    move-result v1

    .line 1487
    .local v1, "currentMonth":I
    invoke-virtual {v2}, Lcom/prolificinteractive/materialcalendarview/CalendarDay;->getMonth()I

    move-result v3

    .line 1489
    .local v3, "selectedMonth":I
    iget-object v4, p0, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;->calendarMode:Lcom/prolificinteractive/materialcalendarview/CalendarMode;

    sget-object v5, Lcom/prolificinteractive/materialcalendarview/CalendarMode;->MONTHS:Lcom/prolificinteractive/materialcalendarview/CalendarMode;

    if-ne v4, v5, :cond_0

    iget-boolean v4, p0, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;->allowClickDaysOutsideCurrentMonth:Z

    if-eqz v4, :cond_0

    if-eq v1, v3, :cond_0

    .line 1492
    invoke-virtual {v0, v2}, Lcom/prolificinteractive/materialcalendarview/CalendarDay;->isAfter(Lcom/prolificinteractive/materialcalendarview/CalendarDay;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1493
    invoke-virtual {p0}, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;->goToPrevious()V

    .line 1498
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/prolificinteractive/materialcalendarview/DayView;->getDate()Lcom/prolificinteractive/materialcalendarview/CalendarDay;

    move-result-object v5

    invoke-virtual {p1}, Lcom/prolificinteractive/materialcalendarview/DayView;->isChecked()Z

    move-result v4

    if-nez v4, :cond_2

    const/4 v4, 0x1

    :goto_1
    invoke-virtual {p0, v5, v4}, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;->onDateClicked(Lcom/prolificinteractive/materialcalendarview/CalendarDay;Z)V

    .line 1500
    return-void

    .line 1494
    :cond_1
    invoke-virtual {v0, v2}, Lcom/prolificinteractive/materialcalendarview/CalendarDay;->isBefore(Lcom/prolificinteractive/materialcalendarview/CalendarDay;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1495
    invoke-virtual {p0}, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;->goToNext()V

    goto :goto_0

    .line 1498
    :cond_2
    const/4 v4, 0x0

    goto :goto_1
.end method

.method protected onDateUnselected(Lcom/prolificinteractive/materialcalendarview/CalendarDay;)V
    .locals 1
    .param p1, "date"    # Lcom/prolificinteractive/materialcalendarview/CalendarDay;

    .prologue
    .line 1508
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;->dispatchOnDateSelected(Lcom/prolificinteractive/materialcalendarview/CalendarDay;Z)V

    .line 1509
    return-void
.end method

.method public onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 1
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 1750
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 1751
    const-class v0, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setClassName(Ljava/lang/CharSequence;)V

    .line 1752
    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 1
    .param p1, "info"    # Landroid/view/accessibility/AccessibilityNodeInfo;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 1756
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 1757
    const-class v0, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    .line 1758
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 12
    .param p1, "changed"    # Z
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    .prologue
    .line 1696
    invoke-virtual {p0}, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;->getChildCount()I

    move-result v3

    .line 1698
    .local v3, "count":I
    invoke-virtual {p0}, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;->getPaddingLeft()I

    move-result v7

    .line 1699
    .local v7, "parentLeft":I
    sub-int v10, p4, p2

    sub-int/2addr v10, v7

    invoke-virtual {p0}, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;->getPaddingRight()I

    move-result v11

    sub-int v8, v10, v11

    .line 1701
    .local v8, "parentWidth":I
    invoke-virtual {p0}, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;->getPaddingTop()I

    move-result v2

    .line 1703
    .local v2, "childTop":I
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_0
    if-ge v6, v3, :cond_1

    .line 1704
    invoke-virtual {p0, v6}, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 1705
    .local v0, "child":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v10

    const/16 v11, 0x8

    if-ne v10, v11, :cond_0

    .line 1703
    :goto_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 1709
    :cond_0
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v9

    .line 1710
    .local v9, "width":I
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v5

    .line 1712
    .local v5, "height":I
    sub-int v10, v8, v9

    div-int/lit8 v4, v10, 0x2

    .line 1713
    .local v4, "delta":I
    add-int v1, v7, v4

    .line 1715
    .local v1, "childLeft":I
    add-int v10, v1, v9

    add-int v11, v2, v5

    invoke-virtual {v0, v1, v2, v10, v11}, Landroid/view/View;->layout(IIII)V

    .line 1717
    add-int/2addr v2, v5

    goto :goto_1

    .line 1719
    .end local v0    # "child":Landroid/view/View;
    .end local v1    # "childLeft":I
    .end local v4    # "delta":I
    .end local v5    # "height":I
    .end local v9    # "width":I
    :cond_1
    return-void
.end method

.method protected onMeasure(II)V
    .locals 26
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 1556
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v21

    .line 1557
    .local v21, "specWidthSize":I
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v20

    .line 1558
    .local v20, "specWidthMode":I
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v19

    .line 1559
    .local v19, "specHeightSize":I
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v18

    .line 1562
    .local v18, "specHeightMode":I
    invoke-virtual/range {p0 .. p0}, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;->getPaddingLeft()I

    move-result v24

    sub-int v24, v21, v24

    invoke-virtual/range {p0 .. p0}, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;->getPaddingRight()I

    move-result v25

    sub-int v10, v24, v25

    .line 1563
    .local v10, "desiredWidth":I
    invoke-virtual/range {p0 .. p0}, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;->getPaddingTop()I

    move-result v24

    sub-int v24, v19, v24

    invoke-virtual/range {p0 .. p0}, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;->getPaddingBottom()I

    move-result v25

    sub-int v7, v24, v25

    .line 1565
    .local v7, "desiredHeight":I
    invoke-direct/range {p0 .. p0}, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;->getWeekCountBasedOnMode()I

    move-result v23

    .line 1567
    .local v23, "weekCount":I
    invoke-virtual/range {p0 .. p0}, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;->getTopbarVisible()Z

    move-result v24

    if-eqz v24, :cond_3

    add-int/lit8 v22, v23, 0x1

    .line 1570
    .local v22, "viewTileHeight":I
    :goto_0
    div-int/lit8 v9, v10, 0x7

    .line 1571
    .local v9, "desiredTileWidth":I
    div-int v8, v7, v22

    .line 1573
    .local v8, "desiredTileHeight":I
    const/4 v13, -0x1

    .line 1574
    .local v13, "measureTileSize":I
    const/4 v14, -0x1

    .line 1575
    .local v14, "measureTileWidth":I
    const/4 v12, -0x1

    .line 1577
    .local v12, "measureTileHeight":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;->tileWidth:I

    move/from16 v24, v0

    const/16 v25, -0xa

    move/from16 v0, v24

    move/from16 v1, v25

    if-ne v0, v1, :cond_0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;->tileHeight:I

    move/from16 v24, v0

    const/16 v25, -0xa

    move/from16 v0, v24

    move/from16 v1, v25

    if-eq v0, v1, :cond_6

    .line 1578
    :cond_0
    move-object/from16 v0, p0

    iget v0, v0, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;->tileWidth:I

    move/from16 v24, v0

    if-lez v24, :cond_4

    .line 1580
    move-object/from16 v0, p0

    iget v14, v0, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;->tileWidth:I

    .line 1584
    :goto_1
    move-object/from16 v0, p0

    iget v0, v0, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;->tileHeight:I

    move/from16 v24, v0

    if-lez v24, :cond_5

    .line 1586
    move-object/from16 v0, p0

    iget v12, v0, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;->tileHeight:I

    .line 1603
    :cond_1
    :goto_2
    if-lez v13, :cond_b

    .line 1605
    move v12, v13

    .line 1606
    move v14, v13

    .line 1619
    :cond_2
    :goto_3
    mul-int/lit8 v16, v14, 0x7

    .line 1620
    .local v16, "measuredWidth":I
    mul-int v15, v12, v22

    .line 1623
    .local v15, "measuredHeight":I
    invoke-virtual/range {p0 .. p0}, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;->getPaddingLeft()I

    move-result v24

    invoke-virtual/range {p0 .. p0}, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;->getPaddingRight()I

    move-result v25

    add-int v24, v24, v25

    add-int v16, v16, v24

    .line 1624
    invoke-virtual/range {p0 .. p0}, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;->getPaddingTop()I

    move-result v24

    invoke-virtual/range {p0 .. p0}, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;->getPaddingBottom()I

    move-result v25

    add-int v24, v24, v25

    add-int v15, v15, v24

    .line 1629
    move/from16 v0, v16

    move/from16 v1, p1

    invoke-static {v0, v1}, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;->clampSize(II)I

    move-result v24

    .line 1630
    move/from16 v0, p2

    invoke-static {v15, v0}, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;->clampSize(II)I

    move-result v25

    .line 1627
    move-object/from16 v0, p0

    move/from16 v1, v24

    move/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;->setMeasuredDimension(II)V

    .line 1633
    invoke-virtual/range {p0 .. p0}, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;->getChildCount()I

    move-result v6

    .line 1635
    .local v6, "count":I
    const/4 v11, 0x0

    .local v11, "i":I
    :goto_4
    if-ge v11, v6, :cond_d

    .line 1636
    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 1638
    .local v3, "child":Landroid/view/View;
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v17

    check-cast v17, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView$LayoutParams;

    .line 1640
    .local v17, "p":Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView$LayoutParams;
    mul-int/lit8 v24, v14, 0x7

    const/high16 v25, 0x40000000    # 2.0f

    invoke-static/range {v24 .. v25}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v5

    .line 1645
    .local v5, "childWidthMeasureSpec":I
    move-object/from16 v0, v17

    iget v0, v0, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView$LayoutParams;->height:I

    move/from16 v24, v0

    mul-int v24, v24, v12

    const/high16 v25, 0x40000000    # 2.0f

    invoke-static/range {v24 .. v25}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    .line 1650
    .local v4, "childHeightMeasureSpec":I
    invoke-virtual {v3, v5, v4}, Landroid/view/View;->measure(II)V

    .line 1635
    add-int/lit8 v11, v11, 0x1

    goto :goto_4

    .end local v3    # "child":Landroid/view/View;
    .end local v4    # "childHeightMeasureSpec":I
    .end local v5    # "childWidthMeasureSpec":I
    .end local v6    # "count":I
    .end local v8    # "desiredTileHeight":I
    .end local v9    # "desiredTileWidth":I
    .end local v11    # "i":I
    .end local v12    # "measureTileHeight":I
    .end local v13    # "measureTileSize":I
    .end local v14    # "measureTileWidth":I
    .end local v15    # "measuredHeight":I
    .end local v16    # "measuredWidth":I
    .end local v17    # "p":Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView$LayoutParams;
    .end local v22    # "viewTileHeight":I
    :cond_3
    move/from16 v22, v23

    .line 1567
    goto/16 :goto_0

    .line 1582
    .restart local v8    # "desiredTileHeight":I
    .restart local v9    # "desiredTileWidth":I
    .restart local v12    # "measureTileHeight":I
    .restart local v13    # "measureTileSize":I
    .restart local v14    # "measureTileWidth":I
    .restart local v22    # "viewTileHeight":I
    :cond_4
    move v14, v9

    goto :goto_1

    .line 1588
    :cond_5
    move v12, v8

    goto :goto_2

    .line 1590
    :cond_6
    const/high16 v24, 0x40000000    # 2.0f

    move/from16 v0, v20

    move/from16 v1, v24

    if-eq v0, v1, :cond_7

    const/high16 v24, -0x80000000

    move/from16 v0, v20

    move/from16 v1, v24

    if-ne v0, v1, :cond_9

    .line 1591
    :cond_7
    const/high16 v24, 0x40000000    # 2.0f

    move/from16 v0, v18

    move/from16 v1, v24

    if-ne v0, v1, :cond_8

    .line 1593
    invoke-static {v9, v8}, Ljava/lang/Math;->min(II)I

    move-result v13

    goto/16 :goto_2

    .line 1596
    :cond_8
    move v13, v9

    goto/16 :goto_2

    .line 1598
    :cond_9
    const/high16 v24, 0x40000000    # 2.0f

    move/from16 v0, v18

    move/from16 v1, v24

    if-eq v0, v1, :cond_a

    const/high16 v24, -0x80000000

    move/from16 v0, v18

    move/from16 v1, v24

    if-ne v0, v1, :cond_1

    .line 1600
    :cond_a
    move v13, v8

    goto/16 :goto_2

    .line 1607
    :cond_b
    if-gtz v13, :cond_2

    .line 1608
    if-gtz v14, :cond_c

    .line 1610
    const/16 v24, 0x2c

    move-object/from16 v0, p0

    move/from16 v1, v24

    invoke-direct {v0, v1}, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;->dpToPx(I)I

    move-result v14

    .line 1612
    :cond_c
    if-gtz v12, :cond_2

    .line 1614
    const/16 v24, 0x2c

    move-object/from16 v0, p0

    move/from16 v1, v24

    invoke-direct {v0, v1}, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;->dpToPx(I)I

    move-result v12

    goto/16 :goto_3

    .line 1652
    .restart local v6    # "count":I
    .restart local v11    # "i":I
    .restart local v15    # "measuredHeight":I
    .restart local v16    # "measuredWidth":I
    :cond_d
    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 4
    .param p1, "state"    # Landroid/os/Parcelable;

    .prologue
    .line 1091
    move-object v1, p1

    check-cast v1, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView$SavedState;

    .line 1092
    .local v1, "ss":Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView$SavedState;
    invoke-virtual {v1}, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v2

    invoke-super {p0, v2}, Landroid/view/ViewGroup;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 1093
    invoke-virtual {p0}, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;->newState()Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView$StateBuilder;

    move-result-object v2

    iget v3, v1, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView$SavedState;->firstDayOfWeek:I

    .line 1094
    invoke-virtual {v2, v3}, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView$StateBuilder;->setFirstDayOfWeek(I)Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView$StateBuilder;

    move-result-object v2

    iget-object v3, v1, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView$SavedState;->calendarMode:Lcom/prolificinteractive/materialcalendarview/CalendarMode;

    .line 1095
    invoke-virtual {v2, v3}, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView$StateBuilder;->setCalendarDisplayMode(Lcom/prolificinteractive/materialcalendarview/CalendarMode;)Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView$StateBuilder;

    move-result-object v2

    iget-object v3, v1, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView$SavedState;->minDate:Lcom/prolificinteractive/materialcalendarview/CalendarDay;

    .line 1096
    invoke-virtual {v2, v3}, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView$StateBuilder;->setMinimumDate(Lcom/prolificinteractive/materialcalendarview/CalendarDay;)Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView$StateBuilder;

    move-result-object v2

    iget-object v3, v1, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView$SavedState;->maxDate:Lcom/prolificinteractive/materialcalendarview/CalendarDay;

    .line 1097
    invoke-virtual {v2, v3}, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView$StateBuilder;->setMaximumDate(Lcom/prolificinteractive/materialcalendarview/CalendarDay;)Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView$StateBuilder;

    move-result-object v2

    iget-boolean v3, v1, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView$SavedState;->cacheCurrentPosition:Z

    .line 1098
    invoke-virtual {v2, v3}, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView$StateBuilder;->isCacheCalendarPositionEnabled(Z)Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView$StateBuilder;

    move-result-object v2

    .line 1099
    invoke-virtual {v2}, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView$StateBuilder;->commit()V

    .line 1101
    iget v2, v1, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView$SavedState;->color:I

    invoke-virtual {p0, v2}, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;->setSelectionColor(I)V

    .line 1102
    iget v2, v1, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView$SavedState;->dateTextAppearance:I

    invoke-virtual {p0, v2}, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;->setDateTextAppearance(I)V

    .line 1103
    iget v2, v1, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView$SavedState;->weekDayTextAppearance:I

    invoke-virtual {p0, v2}, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;->setWeekDayTextAppearance(I)V

    .line 1104
    iget v2, v1, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView$SavedState;->showOtherDates:I

    invoke-virtual {p0, v2}, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;->setShowOtherDates(I)V

    .line 1105
    iget-boolean v2, v1, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView$SavedState;->allowClickDaysOutsideCurrentMonth:Z

    invoke-virtual {p0, v2}, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;->setAllowClickDaysOutsideCurrentMonth(Z)V

    .line 1106
    invoke-virtual {p0}, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;->clearSelection()V

    .line 1107
    iget-object v2, v1, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView$SavedState;->selectedDates:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/prolificinteractive/materialcalendarview/CalendarDay;

    .line 1108
    .local v0, "calendarDay":Lcom/prolificinteractive/materialcalendarview/CalendarDay;
    const/4 v3, 0x1

    invoke-virtual {p0, v0, v3}, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;->setDateSelected(Lcom/prolificinteractive/materialcalendarview/CalendarDay;Z)V

    goto :goto_0

    .line 1110
    .end local v0    # "calendarDay":Lcom/prolificinteractive/materialcalendarview/CalendarDay;
    :cond_0
    iget v2, v1, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView$SavedState;->orientation:I

    invoke-virtual {p0, v2}, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;->setTitleAnimationOrientation(I)V

    .line 1111
    iget v2, v1, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView$SavedState;->tileWidthPx:I

    invoke-virtual {p0, v2}, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;->setTileWidth(I)V

    .line 1112
    iget v2, v1, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView$SavedState;->tileHeightPx:I

    invoke-virtual {p0, v2}, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;->setTileHeight(I)V

    .line 1113
    iget-boolean v2, v1, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView$SavedState;->topbarVisible:Z

    invoke-virtual {p0, v2}, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;->setTopbarVisible(Z)V

    .line 1114
    iget v2, v1, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView$SavedState;->selectionMode:I

    invoke-virtual {p0, v2}, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;->setSelectionMode(I)V

    .line 1115
    iget-boolean v2, v1, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView$SavedState;->dynamicHeightEnabled:Z

    invoke-virtual {p0, v2}, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;->setDynamicHeightEnabled(Z)V

    .line 1116
    iget-object v2, v1, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView$SavedState;->currentMonth:Lcom/prolificinteractive/materialcalendarview/CalendarDay;

    invoke-virtual {p0, v2}, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;->setCurrentDate(Lcom/prolificinteractive/materialcalendarview/CalendarDay;)V

    .line 1117
    return-void
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 2

    .prologue
    .line 1067
    new-instance v0, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView$SavedState;

    invoke-super {p0}, Landroid/view/ViewGroup;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 1068
    .local v0, "ss":Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView$SavedState;
    invoke-virtual {p0}, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;->getSelectionColor()I

    move-result v1

    iput v1, v0, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView$SavedState;->color:I

    .line 1069
    iget-object v1, p0, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;->adapter:Lcom/prolificinteractive/materialcalendarview/CalendarPagerAdapter;

    invoke-virtual {v1}, Lcom/prolificinteractive/materialcalendarview/CalendarPagerAdapter;->getDateTextAppearance()I

    move-result v1

    iput v1, v0, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView$SavedState;->dateTextAppearance:I

    .line 1070
    iget-object v1, p0, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;->adapter:Lcom/prolificinteractive/materialcalendarview/CalendarPagerAdapter;

    invoke-virtual {v1}, Lcom/prolificinteractive/materialcalendarview/CalendarPagerAdapter;->getWeekDayTextAppearance()I

    move-result v1

    iput v1, v0, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView$SavedState;->weekDayTextAppearance:I

    .line 1071
    invoke-virtual {p0}, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;->getShowOtherDates()I

    move-result v1

    iput v1, v0, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView$SavedState;->showOtherDates:I

    .line 1072
    invoke-virtual {p0}, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;->allowClickDaysOutsideCurrentMonth()Z

    move-result v1

    iput-boolean v1, v0, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView$SavedState;->allowClickDaysOutsideCurrentMonth:Z

    .line 1073
    invoke-virtual {p0}, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;->getMinimumDate()Lcom/prolificinteractive/materialcalendarview/CalendarDay;

    move-result-object v1

    iput-object v1, v0, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView$SavedState;->minDate:Lcom/prolificinteractive/materialcalendarview/CalendarDay;

    .line 1074
    invoke-virtual {p0}, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;->getMaximumDate()Lcom/prolificinteractive/materialcalendarview/CalendarDay;

    move-result-object v1

    iput-object v1, v0, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView$SavedState;->maxDate:Lcom/prolificinteractive/materialcalendarview/CalendarDay;

    .line 1075
    invoke-virtual {p0}, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;->getSelectedDates()Ljava/util/List;

    move-result-object v1

    iput-object v1, v0, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView$SavedState;->selectedDates:Ljava/util/List;

    .line 1076
    invoke-virtual {p0}, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;->getFirstDayOfWeek()I

    move-result v1

    iput v1, v0, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView$SavedState;->firstDayOfWeek:I

    .line 1077
    invoke-virtual {p0}, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;->getTitleAnimationOrientation()I

    move-result v1

    iput v1, v0, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView$SavedState;->orientation:I

    .line 1078
    invoke-virtual {p0}, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;->getSelectionMode()I

    move-result v1

    iput v1, v0, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView$SavedState;->selectionMode:I

    .line 1079
    invoke-virtual {p0}, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;->getTileWidth()I

    move-result v1

    iput v1, v0, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView$SavedState;->tileWidthPx:I

    .line 1080
    invoke-virtual {p0}, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;->getTileHeight()I

    move-result v1

    iput v1, v0, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView$SavedState;->tileHeightPx:I

    .line 1081
    invoke-virtual {p0}, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;->getTopbarVisible()Z

    move-result v1

    iput-boolean v1, v0, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView$SavedState;->topbarVisible:Z

    .line 1082
    iget-object v1, p0, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;->calendarMode:Lcom/prolificinteractive/materialcalendarview/CalendarMode;

    iput-object v1, v0, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView$SavedState;->calendarMode:Lcom/prolificinteractive/materialcalendarview/CalendarMode;

    .line 1083
    iget-boolean v1, p0, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;->mDynamicHeightEnabled:Z

    iput-boolean v1, v0, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView$SavedState;->dynamicHeightEnabled:Z

    .line 1084
    iget-object v1, p0, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;->currentMonth:Lcom/prolificinteractive/materialcalendarview/CalendarDay;

    iput-object v1, v0, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView$SavedState;->currentMonth:Lcom/prolificinteractive/materialcalendarview/CalendarDay;

    .line 1085
    iget-object v1, p0, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;->state:Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView$State;

    invoke-static {v1}, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView$State;->access$700(Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView$State;)Z

    move-result v1

    iput-boolean v1, v0, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView$SavedState;->cacheCurrentPosition:Z

    .line 1086
    return-object v0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 617
    iget-object v0, p0, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;->pager:Lcom/prolificinteractive/materialcalendarview/CalendarPager;

    invoke-virtual {v0, p1}, Lcom/prolificinteractive/materialcalendarview/CalendarPager;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public removeDecorator(Lcom/prolificinteractive/materialcalendarview/DayViewDecorator;)V
    .locals 2
    .param p1, "decorator"    # Lcom/prolificinteractive/materialcalendarview/DayViewDecorator;

    .prologue
    .line 1315
    iget-object v0, p0, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;->dayViewDecorators:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1316
    iget-object v0, p0, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;->adapter:Lcom/prolificinteractive/materialcalendarview/CalendarPagerAdapter;

    iget-object v1, p0, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;->dayViewDecorators:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Lcom/prolificinteractive/materialcalendarview/CalendarPagerAdapter;->setDecorators(Ljava/util/List;)V

    .line 1317
    return-void
.end method

.method public removeDecorators()V
    .locals 2

    .prologue
    .line 1305
    iget-object v0, p0, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;->dayViewDecorators:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 1306
    iget-object v0, p0, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;->adapter:Lcom/prolificinteractive/materialcalendarview/CalendarPagerAdapter;

    iget-object v1, p0, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;->dayViewDecorators:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Lcom/prolificinteractive/materialcalendarview/CalendarPagerAdapter;->setDecorators(Ljava/util/List;)V

    .line 1307
    return-void
.end method

.method public selectRange(Lcom/prolificinteractive/materialcalendarview/CalendarDay;Lcom/prolificinteractive/materialcalendarview/CalendarDay;)V
    .locals 1
    .param p1, "firstDay"    # Lcom/prolificinteractive/materialcalendarview/CalendarDay;
    .param p2, "lastDay"    # Lcom/prolificinteractive/materialcalendarview/CalendarDay;

    .prologue
    .line 1470
    invoke-virtual {p0}, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;->clearSelection()V

    .line 1471
    invoke-virtual {p1, p2}, Lcom/prolificinteractive/materialcalendarview/CalendarDay;->isAfter(Lcom/prolificinteractive/materialcalendarview/CalendarDay;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1472
    invoke-virtual {p0, p2, p1}, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;->dispatchOnRangeSelected(Lcom/prolificinteractive/materialcalendarview/CalendarDay;Lcom/prolificinteractive/materialcalendarview/CalendarDay;)V

    .line 1476
    :goto_0
    return-void

    .line 1474
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;->dispatchOnRangeSelected(Lcom/prolificinteractive/materialcalendarview/CalendarDay;Lcom/prolificinteractive/materialcalendarview/CalendarDay;)V

    goto :goto_0
.end method

.method public setAllowClickDaysOutsideCurrentMonth(Z)V
    .locals 0
    .param p1, "enabled"    # Z

    .prologue
    .line 924
    iput-boolean p1, p0, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;->allowClickDaysOutsideCurrentMonth:Z

    .line 925
    return-void
.end method

.method public setArrowColor(I)V
    .locals 1
    .param p1, "color"    # I

    .prologue
    .line 663
    if-nez p1, :cond_0

    .line 670
    :goto_0
    return-void

    .line 666
    :cond_0
    iput p1, p0, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;->arrowColor:I

    .line 667
    iget-object v0, p0, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;->buttonPast:Lcom/prolificinteractive/materialcalendarview/DirectionButton;

    invoke-virtual {v0, p1}, Lcom/prolificinteractive/materialcalendarview/DirectionButton;->setColor(I)V

    .line 668
    iget-object v0, p0, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;->buttonFuture:Lcom/prolificinteractive/materialcalendarview/DirectionButton;

    invoke-virtual {v0, p1}, Lcom/prolificinteractive/materialcalendarview/DirectionButton;->setColor(I)V

    .line 669
    invoke-virtual {p0}, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;->invalidate()V

    goto :goto_0
.end method

.method public setContentDescriptionArrowFuture(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "description"    # Ljava/lang/CharSequence;

    .prologue
    .line 687
    iget-object v0, p0, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;->buttonFuture:Lcom/prolificinteractive/materialcalendarview/DirectionButton;

    invoke-virtual {v0, p1}, Lcom/prolificinteractive/materialcalendarview/DirectionButton;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 688
    return-void
.end method

.method public setContentDescriptionArrowPast(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "description"    # Ljava/lang/CharSequence;

    .prologue
    .line 678
    iget-object v0, p0, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;->buttonPast:Lcom/prolificinteractive/materialcalendarview/DirectionButton;

    invoke-virtual {v0, p1}, Lcom/prolificinteractive/materialcalendarview/DirectionButton;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 679
    return-void
.end method

.method public setContentDescriptionCalendar(Ljava/lang/CharSequence;)V
    .locals 0
    .param p1, "description"    # Ljava/lang/CharSequence;

    .prologue
    .line 696
    iput-object p1, p0, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;->calendarContentDescription:Ljava/lang/CharSequence;

    .line 697
    return-void
.end method

.method public setCurrentDate(Lcom/prolificinteractive/materialcalendarview/CalendarDay;)V
    .locals 1
    .param p1, "day"    # Lcom/prolificinteractive/materialcalendarview/CalendarDay;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 869
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;->setCurrentDate(Lcom/prolificinteractive/materialcalendarview/CalendarDay;Z)V

    .line 870
    return-void
.end method

.method public setCurrentDate(Lcom/prolificinteractive/materialcalendarview/CalendarDay;Z)V
    .locals 2
    .param p1, "day"    # Lcom/prolificinteractive/materialcalendarview/CalendarDay;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p2, "useSmoothScroll"    # Z

    .prologue
    .line 877
    if-nez p1, :cond_0

    .line 883
    :goto_0
    return-void

    .line 880
    :cond_0
    iget-object v1, p0, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;->adapter:Lcom/prolificinteractive/materialcalendarview/CalendarPagerAdapter;

    invoke-virtual {v1, p1}, Lcom/prolificinteractive/materialcalendarview/CalendarPagerAdapter;->getIndexForDay(Lcom/prolificinteractive/materialcalendarview/CalendarDay;)I

    move-result v0

    .line 881
    .local v0, "index":I
    iget-object v1, p0, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;->pager:Lcom/prolificinteractive/materialcalendarview/CalendarPager;

    invoke-virtual {v1, v0, p2}, Lcom/prolificinteractive/materialcalendarview/CalendarPager;->setCurrentItem(IZ)V

    .line 882
    invoke-direct {p0}, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;->updateUi()V

    goto :goto_0
.end method

.method public setCurrentDate(Ljava/util/Calendar;)V
    .locals 1
    .param p1, "calendar"    # Ljava/util/Calendar;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 848
    invoke-static {p1}, Lcom/prolificinteractive/materialcalendarview/CalendarDay;->from(Ljava/util/Calendar;)Lcom/prolificinteractive/materialcalendarview/CalendarDay;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;->setCurrentDate(Lcom/prolificinteractive/materialcalendarview/CalendarDay;)V

    .line 849
    return-void
.end method

.method public setCurrentDate(Ljava/util/Date;)V
    .locals 1
    .param p1, "date"    # Ljava/util/Date;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 855
    invoke-static {p1}, Lcom/prolificinteractive/materialcalendarview/CalendarDay;->from(Ljava/util/Date;)Lcom/prolificinteractive/materialcalendarview/CalendarDay;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;->setCurrentDate(Lcom/prolificinteractive/materialcalendarview/CalendarDay;)V

    .line 856
    return-void
.end method

.method public setDateSelected(Lcom/prolificinteractive/materialcalendarview/CalendarDay;Z)V
    .locals 1
    .param p1, "day"    # Lcom/prolificinteractive/materialcalendarview/CalendarDay;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p2, "selected"    # Z

    .prologue
    .line 838
    if-nez p1, :cond_0

    .line 842
    :goto_0
    return-void

    .line 841
    :cond_0
    iget-object v0, p0, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;->adapter:Lcom/prolificinteractive/materialcalendarview/CalendarPagerAdapter;

    invoke-virtual {v0, p1, p2}, Lcom/prolificinteractive/materialcalendarview/CalendarPagerAdapter;->setDateSelected(Lcom/prolificinteractive/materialcalendarview/CalendarDay;Z)V

    goto :goto_0
.end method

.method public setDateSelected(Ljava/util/Calendar;Z)V
    .locals 1
    .param p1, "calendar"    # Ljava/util/Calendar;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p2, "selected"    # Z

    .prologue
    .line 822
    invoke-static {p1}, Lcom/prolificinteractive/materialcalendarview/CalendarDay;->from(Ljava/util/Calendar;)Lcom/prolificinteractive/materialcalendarview/CalendarDay;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;->setDateSelected(Lcom/prolificinteractive/materialcalendarview/CalendarDay;Z)V

    .line 823
    return-void
.end method

.method public setDateSelected(Ljava/util/Date;Z)V
    .locals 1
    .param p1, "date"    # Ljava/util/Date;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p2, "selected"    # Z

    .prologue
    .line 830
    invoke-static {p1}, Lcom/prolificinteractive/materialcalendarview/CalendarDay;->from(Ljava/util/Date;)Lcom/prolificinteractive/materialcalendarview/CalendarDay;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;->setDateSelected(Lcom/prolificinteractive/materialcalendarview/CalendarDay;Z)V

    .line 831
    return-void
.end method

.method public setDateTextAppearance(I)V
    .locals 1
    .param p1, "resourceId"    # I

    .prologue
    .line 751
    iget-object v0, p0, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;->adapter:Lcom/prolificinteractive/materialcalendarview/CalendarPagerAdapter;

    invoke-virtual {v0, p1}, Lcom/prolificinteractive/materialcalendarview/CalendarPagerAdapter;->setDateTextAppearance(I)V

    .line 752
    return-void
.end method

.method public setDayFormatter(Lcom/prolificinteractive/materialcalendarview/format/DayFormatter;)V
    .locals 1
    .param p1, "formatter"    # Lcom/prolificinteractive/materialcalendarview/format/DayFormatter;

    .prologue
    .line 942
    iget-object v0, p0, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;->adapter:Lcom/prolificinteractive/materialcalendarview/CalendarPagerAdapter;

    if-nez p1, :cond_0

    sget-object p1, Lcom/prolificinteractive/materialcalendarview/format/DayFormatter;->DEFAULT:Lcom/prolificinteractive/materialcalendarview/format/DayFormatter;

    .end local p1    # "formatter":Lcom/prolificinteractive/materialcalendarview/format/DayFormatter;
    :cond_0
    invoke-virtual {v0, p1}, Lcom/prolificinteractive/materialcalendarview/CalendarPagerAdapter;->setDayFormatter(Lcom/prolificinteractive/materialcalendarview/format/DayFormatter;)V

    .line 943
    return-void
.end method

.method public setDynamicHeightEnabled(Z)V
    .locals 0
    .param p1, "useDynamicHeight"    # Z

    .prologue
    .line 1254
    iput-boolean p1, p0, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;->mDynamicHeightEnabled:Z

    .line 1255
    return-void
.end method

.method public setHeaderTextAppearance(I)V
    .locals 2
    .param p1, "resourceId"    # I

    .prologue
    .line 744
    iget-object v0, p0, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;->title:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 745
    return-void
.end method

.method public setLeftArrowMask(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "icon"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 721
    iput-object p1, p0, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;->leftArrowMask:Landroid/graphics/drawable/Drawable;

    .line 722
    iget-object v0, p0, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;->buttonPast:Lcom/prolificinteractive/materialcalendarview/DirectionButton;

    invoke-virtual {v0, p1}, Lcom/prolificinteractive/materialcalendarview/DirectionButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 723
    return-void
.end method

.method public setOnDateChangedListener(Lcom/prolificinteractive/materialcalendarview/OnDateSelectedListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/prolificinteractive/materialcalendarview/OnDateSelectedListener;

    .prologue
    .line 1337
    iput-object p1, p0, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;->listener:Lcom/prolificinteractive/materialcalendarview/OnDateSelectedListener;

    .line 1338
    return-void
.end method

.method public setOnMonthChangedListener(Lcom/prolificinteractive/materialcalendarview/OnMonthChangedListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/prolificinteractive/materialcalendarview/OnMonthChangedListener;

    .prologue
    .line 1346
    iput-object p1, p0, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;->monthListener:Lcom/prolificinteractive/materialcalendarview/OnMonthChangedListener;

    .line 1347
    return-void
.end method

.method public setOnRangeSelectedListener(Lcom/prolificinteractive/materialcalendarview/OnRangeSelectedListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/prolificinteractive/materialcalendarview/OnRangeSelectedListener;

    .prologue
    .line 1355
    iput-object p1, p0, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;->rangeListener:Lcom/prolificinteractive/materialcalendarview/OnRangeSelectedListener;

    .line 1356
    return-void
.end method

.method public setOnTitleClickListener(Landroid/view/View$OnClickListener;)V
    .locals 1
    .param p1, "listener"    # Landroid/view/View$OnClickListener;

    .prologue
    .line 1364
    iget-object v0, p0, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;->title:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1365
    return-void
.end method

.method public setPagingEnabled(Z)V
    .locals 1
    .param p1, "pagingEnabled"    # Z

    .prologue
    .line 1782
    iget-object v0, p0, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;->pager:Lcom/prolificinteractive/materialcalendarview/CalendarPager;

    invoke-virtual {v0, p1}, Lcom/prolificinteractive/materialcalendarview/CalendarPager;->setPagingEnabled(Z)V

    .line 1783
    invoke-direct {p0}, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;->updateUi()V

    .line 1784
    return-void
.end method

.method public setRightArrowMask(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "icon"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 736
    iput-object p1, p0, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;->rightArrowMask:Landroid/graphics/drawable/Drawable;

    .line 737
    iget-object v0, p0, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;->buttonFuture:Lcom/prolificinteractive/materialcalendarview/DirectionButton;

    invoke-virtual {v0, p1}, Lcom/prolificinteractive/materialcalendarview/DirectionButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 738
    return-void
.end method

.method public setSelectedDate(Lcom/prolificinteractive/materialcalendarview/CalendarDay;)V
    .locals 1
    .param p1, "date"    # Lcom/prolificinteractive/materialcalendarview/CalendarDay;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 811
    invoke-virtual {p0}, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;->clearSelection()V

    .line 812
    if-eqz p1, :cond_0

    .line 813
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;->setDateSelected(Lcom/prolificinteractive/materialcalendarview/CalendarDay;Z)V

    .line 815
    :cond_0
    return-void
.end method

.method public setSelectedDate(Ljava/util/Calendar;)V
    .locals 1
    .param p1, "calendar"    # Ljava/util/Calendar;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 797
    invoke-static {p1}, Lcom/prolificinteractive/materialcalendarview/CalendarDay;->from(Ljava/util/Calendar;)Lcom/prolificinteractive/materialcalendarview/CalendarDay;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;->setSelectedDate(Lcom/prolificinteractive/materialcalendarview/CalendarDay;)V

    .line 798
    return-void
.end method

.method public setSelectedDate(Ljava/util/Date;)V
    .locals 1
    .param p1, "date"    # Ljava/util/Date;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 804
    invoke-static {p1}, Lcom/prolificinteractive/materialcalendarview/CalendarDay;->from(Ljava/util/Date;)Lcom/prolificinteractive/materialcalendarview/CalendarDay;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;->setSelectedDate(Lcom/prolificinteractive/materialcalendarview/CalendarDay;)V

    .line 805
    return-void
.end method

.method public setSelectionColor(I)V
    .locals 1
    .param p1, "color"    # I

    .prologue
    .line 640
    if-nez p1, :cond_1

    .line 641
    invoke-virtual {p0}, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;->isInEditMode()Z

    move-result v0

    if-nez v0, :cond_0

    .line 650
    :goto_0
    return-void

    .line 644
    :cond_0
    const p1, -0x777778

    .line 647
    :cond_1
    iput p1, p0, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;->accentColor:I

    .line 648
    iget-object v0, p0, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;->adapter:Lcom/prolificinteractive/materialcalendarview/CalendarPagerAdapter;

    invoke-virtual {v0, p1}, Lcom/prolificinteractive/materialcalendarview/CalendarPagerAdapter;->setSelectionColor(I)V

    .line 649
    invoke-virtual {p0}, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;->invalidate()V

    goto :goto_0
.end method

.method public setSelectionMode(I)V
    .locals 5
    .param p1, "mode"    # I
        .annotation runtime Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView$SelectionMode;
        .end annotation
    .end param

    .prologue
    const/4 v2, 0x0

    .line 445
    iget v1, p0, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;->selectionMode:I

    .line 446
    .local v1, "oldMode":I
    iput p1, p0, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;->selectionMode:I

    .line 447
    packed-switch p1, :pswitch_data_0

    .line 464
    iput v2, p0, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;->selectionMode:I

    .line 465
    if-eqz v1, :cond_0

    .line 467
    invoke-virtual {p0}, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;->clearSelection()V

    .line 472
    :cond_0
    :goto_0
    :pswitch_0
    iget-object v3, p0, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;->adapter:Lcom/prolificinteractive/materialcalendarview/CalendarPagerAdapter;

    iget v4, p0, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;->selectionMode:I

    if-eqz v4, :cond_1

    const/4 v2, 0x1

    :cond_1
    invoke-virtual {v3, v2}, Lcom/prolificinteractive/materialcalendarview/CalendarPagerAdapter;->setSelectionEnabled(Z)V

    .line 473
    return-void

    .line 449
    :pswitch_1
    invoke-virtual {p0}, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;->clearSelection()V

    goto :goto_0

    .line 454
    :pswitch_2
    const/4 v3, 0x2

    if-eq v1, v3, :cond_2

    const/4 v3, 0x3

    if-ne v1, v3, :cond_0

    .line 456
    :cond_2
    invoke-virtual {p0}, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;->getSelectedDates()Ljava/util/List;

    move-result-object v0

    .line 457
    .local v0, "dates":Ljava/util/List;, "Ljava/util/List<Lcom/prolificinteractive/materialcalendarview/CalendarDay;>;"
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    .line 458
    invoke-virtual {p0}, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;->getSelectedDate()Lcom/prolificinteractive/materialcalendarview/CalendarDay;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;->setSelectedDate(Lcom/prolificinteractive/materialcalendarview/CalendarDay;)V

    goto :goto_0

    .line 447
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public setShowOtherDates(I)V
    .locals 1
    .param p1, "showOtherDates"    # I
        .annotation runtime Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView$ShowOtherDates;
        .end annotation
    .end param

    .prologue
    .line 912
    iget-object v0, p0, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;->adapter:Lcom/prolificinteractive/materialcalendarview/CalendarPagerAdapter;

    invoke-virtual {v0, p1}, Lcom/prolificinteractive/materialcalendarview/CalendarPagerAdapter;->setShowOtherDates(I)V

    .line 913
    return-void
.end method

.method public setTileHeight(I)V
    .locals 0
    .param p1, "height"    # I

    .prologue
    .line 557
    iput p1, p0, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;->tileHeight:I

    .line 558
    invoke-virtual {p0}, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;->requestLayout()V

    .line 559
    return-void
.end method

.method public setTileHeightDp(I)V
    .locals 1
    .param p1, "tileHeightDp"    # I

    .prologue
    .line 566
    invoke-direct {p0, p1}, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;->dpToPx(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;->setTileHeight(I)V

    .line 567
    return-void
.end method

.method public setTileSize(I)V
    .locals 0
    .param p1, "size"    # I

    .prologue
    .line 531
    iput p1, p0, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;->tileWidth:I

    .line 532
    iput p1, p0, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;->tileHeight:I

    .line 533
    invoke-virtual {p0}, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;->requestLayout()V

    .line 534
    return-void
.end method

.method public setTileSizeDp(I)V
    .locals 1
    .param p1, "tileSizeDp"    # I

    .prologue
    .line 541
    invoke-direct {p0, p1}, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;->dpToPx(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;->setTileSize(I)V

    .line 542
    return-void
.end method

.method public setTileWidth(I)V
    .locals 0
    .param p1, "width"    # I

    .prologue
    .line 582
    iput p1, p0, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;->tileWidth:I

    .line 583
    invoke-virtual {p0}, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;->requestLayout()V

    .line 584
    return-void
.end method

.method public setTileWidthDp(I)V
    .locals 1
    .param p1, "tileWidthDp"    # I

    .prologue
    .line 591
    invoke-direct {p0, p1}, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;->dpToPx(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;->setTileWidth(I)V

    .line 592
    return-void
.end method

.method public setTitleAnimationOrientation(I)V
    .locals 1
    .param p1, "orientation"    # I

    .prologue
    .line 1034
    iget-object v0, p0, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;->titleChanger:Lcom/prolificinteractive/materialcalendarview/TitleChanger;

    invoke-virtual {v0, p1}, Lcom/prolificinteractive/materialcalendarview/TitleChanger;->setOrientation(I)V

    .line 1035
    return-void
.end method

.method public setTitleFormatter(Lcom/prolificinteractive/materialcalendarview/format/TitleFormatter;)V
    .locals 1
    .param p1, "titleFormatter"    # Lcom/prolificinteractive/materialcalendarview/format/TitleFormatter;

    .prologue
    .line 996
    if-nez p1, :cond_0

    .line 997
    sget-object p1, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;->DEFAULT_TITLE_FORMATTER:Lcom/prolificinteractive/materialcalendarview/format/TitleFormatter;

    .line 999
    :cond_0
    iget-object v0, p0, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;->titleChanger:Lcom/prolificinteractive/materialcalendarview/TitleChanger;

    invoke-virtual {v0, p1}, Lcom/prolificinteractive/materialcalendarview/TitleChanger;->setTitleFormatter(Lcom/prolificinteractive/materialcalendarview/format/TitleFormatter;)V

    .line 1000
    iget-object v0, p0, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;->adapter:Lcom/prolificinteractive/materialcalendarview/CalendarPagerAdapter;

    invoke-virtual {v0, p1}, Lcom/prolificinteractive/materialcalendarview/CalendarPagerAdapter;->setTitleFormatter(Lcom/prolificinteractive/materialcalendarview/format/TitleFormatter;)V

    .line 1001
    invoke-direct {p0}, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;->updateUi()V

    .line 1002
    return-void
.end method

.method public setTitleMonths(I)V
    .locals 1
    .param p1, "arrayRes"    # I
        .annotation build Landroid/support/annotation/ArrayRes;
        .end annotation
    .end param

    .prologue
    .line 1025
    invoke-virtual {p0}, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;->setTitleMonths([Ljava/lang/CharSequence;)V

    .line 1026
    return-void
.end method

.method public setTitleMonths([Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "monthLabels"    # [Ljava/lang/CharSequence;

    .prologue
    .line 1013
    new-instance v0, Lcom/prolificinteractive/materialcalendarview/format/MonthArrayTitleFormatter;

    invoke-direct {v0, p1}, Lcom/prolificinteractive/materialcalendarview/format/MonthArrayTitleFormatter;-><init>([Ljava/lang/CharSequence;)V

    invoke-virtual {p0, v0}, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;->setTitleFormatter(Lcom/prolificinteractive/materialcalendarview/format/TitleFormatter;)V

    .line 1014
    return-void
.end method

.method public setTopbarVisible(Z)V
    .locals 2
    .param p1, "visible"    # Z

    .prologue
    .line 1054
    iget-object v1, p0, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;->topbar:Landroid/widget/LinearLayout;

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1055
    invoke-virtual {p0}, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;->requestLayout()V

    .line 1056
    return-void

    .line 1054
    :cond_0
    const/16 v0, 0x8

    goto :goto_0
.end method

.method public setWeekDayFormatter(Lcom/prolificinteractive/materialcalendarview/format/WeekDayFormatter;)V
    .locals 1
    .param p1, "formatter"    # Lcom/prolificinteractive/materialcalendarview/format/WeekDayFormatter;

    .prologue
    .line 933
    iget-object v0, p0, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;->adapter:Lcom/prolificinteractive/materialcalendarview/CalendarPagerAdapter;

    if-nez p1, :cond_0

    sget-object p1, Lcom/prolificinteractive/materialcalendarview/format/WeekDayFormatter;->DEFAULT:Lcom/prolificinteractive/materialcalendarview/format/WeekDayFormatter;

    .end local p1    # "formatter":Lcom/prolificinteractive/materialcalendarview/format/WeekDayFormatter;
    :cond_0
    invoke-virtual {v0, p1}, Lcom/prolificinteractive/materialcalendarview/CalendarPagerAdapter;->setWeekDayFormatter(Lcom/prolificinteractive/materialcalendarview/format/WeekDayFormatter;)V

    .line 934
    return-void
.end method

.method public setWeekDayLabels(I)V
    .locals 1
    .param p1, "arrayRes"    # I
        .annotation build Landroid/support/annotation/ArrayRes;
        .end annotation
    .end param

    .prologue
    .line 966
    invoke-virtual {p0}, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;->setWeekDayLabels([Ljava/lang/CharSequence;)V

    .line 967
    return-void
.end method

.method public setWeekDayLabels([Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "weekDayLabels"    # [Ljava/lang/CharSequence;

    .prologue
    .line 954
    new-instance v0, Lcom/prolificinteractive/materialcalendarview/format/ArrayWeekDayFormatter;

    invoke-direct {v0, p1}, Lcom/prolificinteractive/materialcalendarview/format/ArrayWeekDayFormatter;-><init>([Ljava/lang/CharSequence;)V

    invoke-virtual {p0, v0}, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;->setWeekDayFormatter(Lcom/prolificinteractive/materialcalendarview/format/WeekDayFormatter;)V

    .line 955
    return-void
.end method

.method public setWeekDayTextAppearance(I)V
    .locals 1
    .param p1, "resourceId"    # I

    .prologue
    .line 758
    iget-object v0, p0, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;->adapter:Lcom/prolificinteractive/materialcalendarview/CalendarPagerAdapter;

    invoke-virtual {v0, p1}, Lcom/prolificinteractive/materialcalendarview/CalendarPagerAdapter;->setWeekDayTextAppearance(I)V

    .line 759
    return-void
.end method

.method public shouldDelayChildPressedState()Z
    .locals 1

    .prologue
    .line 1731
    const/4 v0, 0x0

    return v0
.end method

.method public state()Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView$State;
    .locals 1

    .prologue
    .line 1797
    iget-object v0, p0, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;->state:Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView$State;

    return-object v0
.end method
