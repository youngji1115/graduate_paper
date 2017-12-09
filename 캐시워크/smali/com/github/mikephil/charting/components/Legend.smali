.class public Lcom/github/mikephil/charting/components/Legend;
.super Lcom/github/mikephil/charting/components/ComponentBase;
.source "Legend.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/github/mikephil/charting/components/Legend$LegendDirection;,
        Lcom/github/mikephil/charting/components/Legend$LegendOrientation;,
        Lcom/github/mikephil/charting/components/Legend$LegendVerticalAlignment;,
        Lcom/github/mikephil/charting/components/Legend$LegendHorizontalAlignment;,
        Lcom/github/mikephil/charting/components/Legend$LegendForm;,
        Lcom/github/mikephil/charting/components/Legend$LegendPosition;
    }
.end annotation


# instance fields
.field private mCalculatedLabelBreakPoints:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private mCalculatedLabelSizes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/github/mikephil/charting/utils/FSize;",
            ">;"
        }
    .end annotation
.end field

.field private mCalculatedLineSizes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/github/mikephil/charting/utils/FSize;",
            ">;"
        }
    .end annotation
.end field

.field private mDirection:Lcom/github/mikephil/charting/components/Legend$LegendDirection;

.field private mDrawInside:Z

.field private mEntries:[Lcom/github/mikephil/charting/components/LegendEntry;

.field private mExtraEntries:[Lcom/github/mikephil/charting/components/LegendEntry;

.field private mFormLineDashEffect:Landroid/graphics/DashPathEffect;

.field private mFormLineWidth:F

.field private mFormSize:F

.field private mFormToTextSpace:F

.field private mHorizontalAlignment:Lcom/github/mikephil/charting/components/Legend$LegendHorizontalAlignment;

.field private mIsLegendCustom:Z

.field private mMaxSizePercent:F

.field public mNeededHeight:F

.field public mNeededWidth:F

.field private mOrientation:Lcom/github/mikephil/charting/components/Legend$LegendOrientation;

.field private mShape:Lcom/github/mikephil/charting/components/Legend$LegendForm;

.field private mStackSpace:F

.field public mTextHeightMax:F

.field public mTextWidthMax:F

.field private mVerticalAlignment:Lcom/github/mikephil/charting/components/Legend$LegendVerticalAlignment;

.field private mWordWrapEnabled:Z

.field private mXEntrySpace:F

.field private mYEntrySpace:F


# direct methods
.method public constructor <init>()V
    .locals 6

    .prologue
    const/high16 v5, 0x40a00000    # 5.0f

    const/16 v4, 0x10

    const/high16 v3, 0x40400000    # 3.0f

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 163
    invoke-direct {p0}, Lcom/github/mikephil/charting/components/ComponentBase;-><init>()V

    .line 89
    new-array v0, v2, [Lcom/github/mikephil/charting/components/LegendEntry;

    iput-object v0, p0, Lcom/github/mikephil/charting/components/Legend;->mEntries:[Lcom/github/mikephil/charting/components/LegendEntry;

    .line 101
    iput-boolean v2, p0, Lcom/github/mikephil/charting/components/Legend;->mIsLegendCustom:Z

    .line 103
    sget-object v0, Lcom/github/mikephil/charting/components/Legend$LegendHorizontalAlignment;->LEFT:Lcom/github/mikephil/charting/components/Legend$LegendHorizontalAlignment;

    iput-object v0, p0, Lcom/github/mikephil/charting/components/Legend;->mHorizontalAlignment:Lcom/github/mikephil/charting/components/Legend$LegendHorizontalAlignment;

    .line 104
    sget-object v0, Lcom/github/mikephil/charting/components/Legend$LegendVerticalAlignment;->BOTTOM:Lcom/github/mikephil/charting/components/Legend$LegendVerticalAlignment;

    iput-object v0, p0, Lcom/github/mikephil/charting/components/Legend;->mVerticalAlignment:Lcom/github/mikephil/charting/components/Legend$LegendVerticalAlignment;

    .line 105
    sget-object v0, Lcom/github/mikephil/charting/components/Legend$LegendOrientation;->HORIZONTAL:Lcom/github/mikephil/charting/components/Legend$LegendOrientation;

    iput-object v0, p0, Lcom/github/mikephil/charting/components/Legend;->mOrientation:Lcom/github/mikephil/charting/components/Legend$LegendOrientation;

    .line 106
    iput-boolean v2, p0, Lcom/github/mikephil/charting/components/Legend;->mDrawInside:Z

    .line 111
    sget-object v0, Lcom/github/mikephil/charting/components/Legend$LegendDirection;->LEFT_TO_RIGHT:Lcom/github/mikephil/charting/components/Legend$LegendDirection;

    iput-object v0, p0, Lcom/github/mikephil/charting/components/Legend;->mDirection:Lcom/github/mikephil/charting/components/Legend$LegendDirection;

    .line 116
    sget-object v0, Lcom/github/mikephil/charting/components/Legend$LegendForm;->SQUARE:Lcom/github/mikephil/charting/components/Legend$LegendForm;

    iput-object v0, p0, Lcom/github/mikephil/charting/components/Legend;->mShape:Lcom/github/mikephil/charting/components/Legend$LegendForm;

    .line 121
    const/high16 v0, 0x41000000    # 8.0f

    iput v0, p0, Lcom/github/mikephil/charting/components/Legend;->mFormSize:F

    .line 126
    iput v3, p0, Lcom/github/mikephil/charting/components/Legend;->mFormLineWidth:F

    .line 131
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/github/mikephil/charting/components/Legend;->mFormLineDashEffect:Landroid/graphics/DashPathEffect;

    .line 136
    const/high16 v0, 0x40c00000    # 6.0f

    iput v0, p0, Lcom/github/mikephil/charting/components/Legend;->mXEntrySpace:F

    .line 141
    iput v1, p0, Lcom/github/mikephil/charting/components/Legend;->mYEntrySpace:F

    .line 148
    iput v5, p0, Lcom/github/mikephil/charting/components/Legend;->mFormToTextSpace:F

    .line 153
    iput v3, p0, Lcom/github/mikephil/charting/components/Legend;->mStackSpace:F

    .line 158
    const v0, 0x3f733333    # 0.95f

    iput v0, p0, Lcom/github/mikephil/charting/components/Legend;->mMaxSizePercent:F

    .line 768
    iput v1, p0, Lcom/github/mikephil/charting/components/Legend;->mNeededWidth:F

    .line 773
    iput v1, p0, Lcom/github/mikephil/charting/components/Legend;->mNeededHeight:F

    .line 775
    iput v1, p0, Lcom/github/mikephil/charting/components/Legend;->mTextHeightMax:F

    .line 777
    iput v1, p0, Lcom/github/mikephil/charting/components/Legend;->mTextWidthMax:F

    .line 782
    iput-boolean v2, p0, Lcom/github/mikephil/charting/components/Legend;->mWordWrapEnabled:Z

    .line 833
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v4}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/github/mikephil/charting/components/Legend;->mCalculatedLabelSizes:Ljava/util/List;

    .line 834
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v4}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/github/mikephil/charting/components/Legend;->mCalculatedLabelBreakPoints:Ljava/util/List;

    .line 835
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v4}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/github/mikephil/charting/components/Legend;->mCalculatedLineSizes:Ljava/util/List;

    .line 165
    const/high16 v0, 0x41200000    # 10.0f

    invoke-static {v0}, Lcom/github/mikephil/charting/utils/Utils;->convertDpToPixel(F)F

    move-result v0

    iput v0, p0, Lcom/github/mikephil/charting/components/Legend;->mTextSize:F

    .line 166
    invoke-static {v5}, Lcom/github/mikephil/charting/utils/Utils;->convertDpToPixel(F)F

    move-result v0

    iput v0, p0, Lcom/github/mikephil/charting/components/Legend;->mXOffset:F

    .line 167
    invoke-static {v3}, Lcom/github/mikephil/charting/utils/Utils;->convertDpToPixel(F)F

    move-result v0

    iput v0, p0, Lcom/github/mikephil/charting/components/Legend;->mYOffset:F

    .line 168
    return-void
.end method

.method public constructor <init>(Ljava/util/List;Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 219
    .local p1, "colors":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .local p2, "labels":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {p1}, Lcom/github/mikephil/charting/utils/Utils;->convertIntegers(Ljava/util/List;)[I

    move-result-object v0

    invoke-static {p2}, Lcom/github/mikephil/charting/utils/Utils;->convertStrings(Ljava/util/List;)[Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/github/mikephil/charting/components/Legend;-><init>([I[Ljava/lang/String;)V

    .line 220
    return-void
.end method

.method public constructor <init>([I[Ljava/lang/String;)V
    .locals 5
    .param p1, "colors"    # [I
    .param p2, "labels"    # [Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 187
    invoke-direct {p0}, Lcom/github/mikephil/charting/components/Legend;-><init>()V

    .line 189
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 190
    :cond_0
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "colors array or labels array is NULL"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 193
    :cond_1
    array-length v3, p1

    array-length v4, p2

    if-eq v3, v4, :cond_2

    .line 194
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "colors array and labels array need to be of same size"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 198
    :cond_2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 200
    .local v0, "entries":Ljava/util/List;, "Ljava/util/List<Lcom/github/mikephil/charting/components/LegendEntry;>;"
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v3, p1

    array-length v4, p2

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    if-ge v2, v3, :cond_6

    .line 201
    new-instance v1, Lcom/github/mikephil/charting/components/LegendEntry;

    invoke-direct {v1}, Lcom/github/mikephil/charting/components/LegendEntry;-><init>()V

    .line 202
    .local v1, "entry":Lcom/github/mikephil/charting/components/LegendEntry;
    aget v3, p1, v2

    iput v3, v1, Lcom/github/mikephil/charting/components/LegendEntry;->formColor:I

    .line 203
    aget-object v3, p2, v2

    iput-object v3, v1, Lcom/github/mikephil/charting/components/LegendEntry;->label:Ljava/lang/String;

    .line 205
    iget v3, v1, Lcom/github/mikephil/charting/components/LegendEntry;->formColor:I

    const v4, 0x112234

    if-ne v3, v4, :cond_4

    .line 206
    sget-object v3, Lcom/github/mikephil/charting/components/Legend$LegendForm;->NONE:Lcom/github/mikephil/charting/components/Legend$LegendForm;

    iput-object v3, v1, Lcom/github/mikephil/charting/components/LegendEntry;->form:Lcom/github/mikephil/charting/components/Legend$LegendForm;

    .line 211
    :cond_3
    :goto_1
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 200
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 207
    :cond_4
    iget v3, v1, Lcom/github/mikephil/charting/components/LegendEntry;->formColor:I

    const v4, 0x112233

    if-eq v3, v4, :cond_5

    iget v3, v1, Lcom/github/mikephil/charting/components/LegendEntry;->formColor:I

    if-nez v3, :cond_3

    .line 209
    :cond_5
    sget-object v3, Lcom/github/mikephil/charting/components/Legend$LegendForm;->EMPTY:Lcom/github/mikephil/charting/components/Legend$LegendForm;

    iput-object v3, v1, Lcom/github/mikephil/charting/components/LegendEntry;->form:Lcom/github/mikephil/charting/components/Legend$LegendForm;

    goto :goto_1

    .line 214
    .end local v1    # "entry":Lcom/github/mikephil/charting/components/LegendEntry;
    :cond_6
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    new-array v3, v3, [Lcom/github/mikephil/charting/components/LegendEntry;

    invoke-interface {v0, v3}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Lcom/github/mikephil/charting/components/LegendEntry;

    iput-object v3, p0, Lcom/github/mikephil/charting/components/Legend;->mEntries:[Lcom/github/mikephil/charting/components/LegendEntry;

    .line 215
    return-void
.end method

.method public constructor <init>([Lcom/github/mikephil/charting/components/LegendEntry;)V
    .locals 2
    .param p1, "entries"    # [Lcom/github/mikephil/charting/components/LegendEntry;

    .prologue
    .line 176
    invoke-direct {p0}, Lcom/github/mikephil/charting/components/Legend;-><init>()V

    .line 178
    if-nez p1, :cond_0

    .line 179
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "entries array is NULL"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 182
    :cond_0
    iput-object p1, p0, Lcom/github/mikephil/charting/components/Legend;->mEntries:[Lcom/github/mikephil/charting/components/LegendEntry;

    .line 183
    return-void
.end method


# virtual methods
.method public calculateDimensions(Landroid/graphics/Paint;Lcom/github/mikephil/charting/utils/ViewPortHandler;)V
    .locals 31
    .param p1, "labelpaint"    # Landroid/graphics/Paint;
    .param p2, "viewPortHandler"    # Lcom/github/mikephil/charting/utils/ViewPortHandler;

    .prologue
    .line 858
    move-object/from16 v0, p0

    iget v0, v0, Lcom/github/mikephil/charting/components/Legend;->mFormSize:F

    move/from16 v28, v0

    invoke-static/range {v28 .. v28}, Lcom/github/mikephil/charting/utils/Utils;->convertDpToPixel(F)F

    move-result v5

    .line 859
    .local v5, "defaultFormSize":F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/github/mikephil/charting/components/Legend;->mStackSpace:F

    move/from16 v28, v0

    invoke-static/range {v28 .. v28}, Lcom/github/mikephil/charting/utils/Utils;->convertDpToPixel(F)F

    move-result v21

    .line 860
    .local v21, "stackSpace":F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/github/mikephil/charting/components/Legend;->mFormToTextSpace:F

    move/from16 v28, v0

    invoke-static/range {v28 .. v28}, Lcom/github/mikephil/charting/utils/Utils;->convertDpToPixel(F)F

    move-result v11

    .line 861
    .local v11, "formToTextSpace":F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/github/mikephil/charting/components/Legend;->mXEntrySpace:F

    move/from16 v28, v0

    invoke-static/range {v28 .. v28}, Lcom/github/mikephil/charting/utils/Utils;->convertDpToPixel(F)F

    move-result v26

    .line 862
    .local v26, "xEntrySpace":F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/github/mikephil/charting/components/Legend;->mYEntrySpace:F

    move/from16 v28, v0

    invoke-static/range {v28 .. v28}, Lcom/github/mikephil/charting/utils/Utils;->convertDpToPixel(F)F

    move-result v27

    .line 863
    .local v27, "yEntrySpace":F
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/github/mikephil/charting/components/Legend;->mWordWrapEnabled:Z

    move/from16 v25, v0

    .line 864
    .local v25, "wordWrapEnabled":Z
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/github/mikephil/charting/components/Legend;->mEntries:[Lcom/github/mikephil/charting/components/LegendEntry;

    .line 865
    .local v8, "entries":[Lcom/github/mikephil/charting/components/LegendEntry;
    array-length v9, v8

    .line 867
    .local v9, "entryCount":I
    invoke-virtual/range {p0 .. p1}, Lcom/github/mikephil/charting/components/Legend;->getMaximumEntryWidth(Landroid/graphics/Paint;)F

    move-result v28

    move/from16 v0, v28

    move-object/from16 v1, p0

    iput v0, v1, Lcom/github/mikephil/charting/components/Legend;->mTextWidthMax:F

    .line 868
    invoke-virtual/range {p0 .. p1}, Lcom/github/mikephil/charting/components/Legend;->getMaximumEntryHeight(Landroid/graphics/Paint;)F

    move-result v28

    move/from16 v0, v28

    move-object/from16 v1, p0

    iput v0, v1, Lcom/github/mikephil/charting/components/Legend;->mTextHeightMax:F

    .line 870
    sget-object v28, Lcom/github/mikephil/charting/components/Legend$1;->$SwitchMap$com$github$mikephil$charting$components$Legend$LegendOrientation:[I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/github/mikephil/charting/components/Legend;->mOrientation:Lcom/github/mikephil/charting/components/Legend$LegendOrientation;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Lcom/github/mikephil/charting/components/Legend$LegendOrientation;->ordinal()I

    move-result v29

    aget v28, v28, v29

    packed-switch v28, :pswitch_data_0

    .line 1027
    :goto_0
    move-object/from16 v0, p0

    iget v0, v0, Lcom/github/mikephil/charting/components/Legend;->mNeededHeight:F

    move/from16 v28, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/github/mikephil/charting/components/Legend;->mYOffset:F

    move/from16 v29, v0

    add-float v28, v28, v29

    move/from16 v0, v28

    move-object/from16 v1, p0

    iput v0, v1, Lcom/github/mikephil/charting/components/Legend;->mNeededHeight:F

    .line 1028
    move-object/from16 v0, p0

    iget v0, v0, Lcom/github/mikephil/charting/components/Legend;->mNeededWidth:F

    move/from16 v28, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/github/mikephil/charting/components/Legend;->mXOffset:F

    move/from16 v29, v0

    add-float v28, v28, v29

    move/from16 v0, v28

    move-object/from16 v1, p0

    iput v0, v1, Lcom/github/mikephil/charting/components/Legend;->mNeededWidth:F

    .line 1029
    return-void

    .line 873
    :pswitch_0
    const/16 v18, 0x0

    .local v18, "maxWidth":F
    const/16 v16, 0x0

    .local v16, "maxHeight":F
    const/16 v24, 0x0

    .line 874
    .local v24, "width":F
    invoke-static/range {p1 .. p1}, Lcom/github/mikephil/charting/utils/Utils;->getLineHeight(Landroid/graphics/Paint;)F

    move-result v14

    .line 875
    .local v14, "labelLineHeight":F
    const/16 v23, 0x0

    .line 877
    .local v23, "wasStacked":Z
    const/4 v12, 0x0

    .local v12, "i":I
    :goto_1
    if-ge v12, v9, :cond_9

    .line 879
    aget-object v7, v8, v12

    .line 880
    .local v7, "e":Lcom/github/mikephil/charting/components/LegendEntry;
    iget-object v0, v7, Lcom/github/mikephil/charting/components/LegendEntry;->form:Lcom/github/mikephil/charting/components/Legend$LegendForm;

    move-object/from16 v28, v0

    sget-object v29, Lcom/github/mikephil/charting/components/Legend$LegendForm;->NONE:Lcom/github/mikephil/charting/components/Legend$LegendForm;

    move-object/from16 v0, v28

    move-object/from16 v1, v29

    if-eq v0, v1, :cond_5

    const/4 v6, 0x1

    .line 881
    .local v6, "drawingForm":Z
    :goto_2
    iget v0, v7, Lcom/github/mikephil/charting/components/LegendEntry;->formSize:F

    move/from16 v28, v0

    invoke-static/range {v28 .. v28}, Ljava/lang/Float;->isNaN(F)Z

    move-result v28

    if-eqz v28, :cond_6

    move v10, v5

    .line 884
    .local v10, "formSize":F
    :goto_3
    iget-object v13, v7, Lcom/github/mikephil/charting/components/LegendEntry;->label:Ljava/lang/String;

    .line 886
    .local v13, "label":Ljava/lang/String;
    if-nez v23, :cond_0

    .line 887
    const/16 v24, 0x0

    .line 889
    :cond_0
    if-eqz v6, :cond_2

    .line 890
    if-eqz v23, :cond_1

    .line 891
    add-float v24, v24, v21

    .line 892
    :cond_1
    add-float v24, v24, v10

    .line 896
    :cond_2
    if-eqz v13, :cond_8

    .line 899
    if-eqz v6, :cond_7

    if-nez v23, :cond_7

    .line 900
    add-float v24, v24, v11

    .line 908
    :cond_3
    :goto_4
    move-object/from16 v0, p1

    invoke-static {v0, v13}, Lcom/github/mikephil/charting/utils/Utils;->calcTextWidth(Landroid/graphics/Paint;Ljava/lang/String;)I

    move-result v28

    move/from16 v0, v28

    int-to-float v0, v0

    move/from16 v28, v0

    add-float v24, v24, v28

    .line 910
    add-int/lit8 v28, v9, -0x1

    move/from16 v0, v28

    if-ge v12, v0, :cond_4

    .line 911
    add-float v28, v14, v27

    add-float v16, v16, v28

    .line 919
    :cond_4
    :goto_5
    move/from16 v0, v18

    move/from16 v1, v24

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v18

    .line 877
    add-int/lit8 v12, v12, 0x1

    goto :goto_1

    .line 880
    .end local v6    # "drawingForm":Z
    .end local v10    # "formSize":F
    .end local v13    # "label":Ljava/lang/String;
    :cond_5
    const/4 v6, 0x0

    goto :goto_2

    .line 881
    .restart local v6    # "drawingForm":Z
    :cond_6
    iget v0, v7, Lcom/github/mikephil/charting/components/LegendEntry;->formSize:F

    move/from16 v28, v0

    .line 883
    invoke-static/range {v28 .. v28}, Lcom/github/mikephil/charting/utils/Utils;->convertDpToPixel(F)F

    move-result v10

    goto :goto_3

    .line 901
    .restart local v10    # "formSize":F
    .restart local v13    # "label":Ljava/lang/String;
    :cond_7
    if-eqz v23, :cond_3

    .line 902
    move/from16 v0, v18

    move/from16 v1, v24

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v18

    .line 903
    add-float v28, v14, v27

    add-float v16, v16, v28

    .line 904
    const/16 v24, 0x0

    .line 905
    const/16 v23, 0x0

    goto :goto_4

    .line 913
    :cond_8
    const/16 v23, 0x1

    .line 914
    add-float v24, v24, v10

    .line 915
    add-int/lit8 v28, v9, -0x1

    move/from16 v0, v28

    if-ge v12, v0, :cond_4

    .line 916
    add-float v24, v24, v21

    goto :goto_5

    .line 922
    .end local v6    # "drawingForm":Z
    .end local v7    # "e":Lcom/github/mikephil/charting/components/LegendEntry;
    .end local v10    # "formSize":F
    .end local v13    # "label":Ljava/lang/String;
    :cond_9
    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/github/mikephil/charting/components/Legend;->mNeededWidth:F

    .line 923
    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Lcom/github/mikephil/charting/components/Legend;->mNeededHeight:F

    goto/16 :goto_0

    .line 929
    .end local v12    # "i":I
    .end local v14    # "labelLineHeight":F
    .end local v16    # "maxHeight":F
    .end local v18    # "maxWidth":F
    .end local v23    # "wasStacked":Z
    .end local v24    # "width":F
    :pswitch_1
    invoke-static/range {p1 .. p1}, Lcom/github/mikephil/charting/utils/Utils;->getLineHeight(Landroid/graphics/Paint;)F

    move-result v14

    .line 930
    .restart local v14    # "labelLineHeight":F
    invoke-static/range {p1 .. p1}, Lcom/github/mikephil/charting/utils/Utils;->getLineSpacing(Landroid/graphics/Paint;)F

    move-result v28

    add-float v15, v28, v27

    .line 931
    .local v15, "labelLineSpacing":F
    invoke-virtual/range {p2 .. p2}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->contentWidth()F

    move-result v28

    move-object/from16 v0, p0

    iget v0, v0, Lcom/github/mikephil/charting/components/Legend;->mMaxSizePercent:F

    move/from16 v29, v0

    mul-float v3, v28, v29

    .line 934
    .local v3, "contentWidth":F
    const/16 v17, 0x0

    .line 935
    .local v17, "maxLineWidth":F
    const/4 v4, 0x0

    .line 936
    .local v4, "currentLineWidth":F
    const/16 v20, 0x0

    .line 937
    .local v20, "requiredWidth":F
    const/16 v22, -0x1

    .line 939
    .local v22, "stackedStartIndex":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/github/mikephil/charting/components/Legend;->mCalculatedLabelBreakPoints:Ljava/util/List;

    move-object/from16 v28, v0

    invoke-interface/range {v28 .. v28}, Ljava/util/List;->clear()V

    .line 940
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/github/mikephil/charting/components/Legend;->mCalculatedLabelSizes:Ljava/util/List;

    move-object/from16 v28, v0

    invoke-interface/range {v28 .. v28}, Ljava/util/List;->clear()V

    .line 941
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/github/mikephil/charting/components/Legend;->mCalculatedLineSizes:Ljava/util/List;

    move-object/from16 v28, v0

    invoke-interface/range {v28 .. v28}, Ljava/util/List;->clear()V

    .line 943
    const/4 v12, 0x0

    .restart local v12    # "i":I
    :goto_6
    if-ge v12, v9, :cond_18

    .line 945
    aget-object v7, v8, v12

    .line 946
    .restart local v7    # "e":Lcom/github/mikephil/charting/components/LegendEntry;
    iget-object v0, v7, Lcom/github/mikephil/charting/components/LegendEntry;->form:Lcom/github/mikephil/charting/components/Legend$LegendForm;

    move-object/from16 v28, v0

    sget-object v29, Lcom/github/mikephil/charting/components/Legend$LegendForm;->NONE:Lcom/github/mikephil/charting/components/Legend$LegendForm;

    move-object/from16 v0, v28

    move-object/from16 v1, v29

    if-eq v0, v1, :cond_f

    const/4 v6, 0x1

    .line 947
    .restart local v6    # "drawingForm":Z
    :goto_7
    iget v0, v7, Lcom/github/mikephil/charting/components/LegendEntry;->formSize:F

    move/from16 v28, v0

    invoke-static/range {v28 .. v28}, Ljava/lang/Float;->isNaN(F)Z

    move-result v28

    if-eqz v28, :cond_10

    move v10, v5

    .line 950
    .restart local v10    # "formSize":F
    :goto_8
    iget-object v13, v7, Lcom/github/mikephil/charting/components/LegendEntry;->label:Ljava/lang/String;

    .line 952
    .restart local v13    # "label":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/github/mikephil/charting/components/Legend;->mCalculatedLabelBreakPoints:Ljava/util/List;

    move-object/from16 v28, v0

    const/16 v29, 0x0

    invoke-static/range {v29 .. v29}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v29

    invoke-interface/range {v28 .. v29}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 954
    const/16 v28, -0x1

    move/from16 v0, v22

    move/from16 v1, v28

    if-ne v0, v1, :cond_11

    .line 957
    const/16 v20, 0x0

    .line 964
    :goto_9
    if-eqz v13, :cond_13

    .line 966
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/github/mikephil/charting/components/Legend;->mCalculatedLabelSizes:Ljava/util/List;

    move-object/from16 v28, v0

    move-object/from16 v0, p1

    invoke-static {v0, v13}, Lcom/github/mikephil/charting/utils/Utils;->calcTextSize(Landroid/graphics/Paint;Ljava/lang/String;)Lcom/github/mikephil/charting/utils/FSize;

    move-result-object v29

    invoke-interface/range {v28 .. v29}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 967
    if-eqz v6, :cond_12

    add-float v28, v11, v10

    :goto_a
    add-float v20, v20, v28

    .line 968
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/github/mikephil/charting/components/Legend;->mCalculatedLabelSizes:Ljava/util/List;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    invoke-interface {v0, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v28

    check-cast v28, Lcom/github/mikephil/charting/utils/FSize;

    move-object/from16 v0, v28

    iget v0, v0, Lcom/github/mikephil/charting/utils/FSize;->width:F

    move/from16 v28, v0

    add-float v20, v20, v28

    .line 980
    .end local v10    # "formSize":F
    :cond_a
    :goto_b
    if-nez v13, :cond_b

    add-int/lit8 v28, v9, -0x1

    move/from16 v0, v28

    if-ne v12, v0, :cond_d

    .line 982
    :cond_b
    const/16 v28, 0x0

    cmpl-float v28, v4, v28

    if-nez v28, :cond_15

    const/16 v19, 0x0

    .line 984
    .local v19, "requiredSpacing":F
    :goto_c
    if-eqz v25, :cond_c

    const/16 v28, 0x0

    cmpl-float v28, v4, v28

    if-eqz v28, :cond_c

    sub-float v28, v3, v4

    add-float v29, v19, v20

    cmpl-float v28, v28, v29

    if-ltz v28, :cond_16

    .line 991
    :cond_c
    add-float v28, v19, v20

    add-float v4, v4, v28

    .line 1005
    :goto_d
    add-int/lit8 v28, v9, -0x1

    move/from16 v0, v28

    if-ne v12, v0, :cond_d

    .line 1007
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/github/mikephil/charting/components/Legend;->mCalculatedLineSizes:Ljava/util/List;

    move-object/from16 v28, v0

    invoke-static {v4, v14}, Lcom/github/mikephil/charting/utils/FSize;->getInstance(FF)Lcom/github/mikephil/charting/utils/FSize;

    move-result-object v29

    invoke-interface/range {v28 .. v29}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1008
    move/from16 v0, v17

    invoke-static {v0, v4}, Ljava/lang/Math;->max(FF)F

    move-result v17

    .line 1012
    .end local v19    # "requiredSpacing":F
    :cond_d
    if-eqz v13, :cond_e

    const/16 v22, -0x1

    .line 943
    :cond_e
    add-int/lit8 v12, v12, 0x1

    goto/16 :goto_6

    .line 946
    .end local v6    # "drawingForm":Z
    .end local v13    # "label":Ljava/lang/String;
    :cond_f
    const/4 v6, 0x0

    goto/16 :goto_7

    .line 947
    .restart local v6    # "drawingForm":Z
    :cond_10
    iget v0, v7, Lcom/github/mikephil/charting/components/LegendEntry;->formSize:F

    move/from16 v28, v0

    .line 949
    invoke-static/range {v28 .. v28}, Lcom/github/mikephil/charting/utils/Utils;->convertDpToPixel(F)F

    move-result v10

    goto/16 :goto_8

    .line 960
    .restart local v10    # "formSize":F
    .restart local v13    # "label":Ljava/lang/String;
    :cond_11
    add-float v20, v20, v21

    goto/16 :goto_9

    .line 967
    :cond_12
    const/16 v28, 0x0

    goto :goto_a

    .line 971
    :cond_13
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/github/mikephil/charting/components/Legend;->mCalculatedLabelSizes:Ljava/util/List;

    move-object/from16 v28, v0

    const/16 v29, 0x0

    const/16 v30, 0x0

    invoke-static/range {v29 .. v30}, Lcom/github/mikephil/charting/utils/FSize;->getInstance(FF)Lcom/github/mikephil/charting/utils/FSize;

    move-result-object v29

    invoke-interface/range {v28 .. v29}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 972
    if-eqz v6, :cond_14

    .end local v10    # "formSize":F
    :goto_e
    add-float v20, v20, v10

    .line 974
    const/16 v28, -0x1

    move/from16 v0, v22

    move/from16 v1, v28

    if-ne v0, v1, :cond_a

    .line 976
    move/from16 v22, v12

    goto :goto_b

    .line 972
    .restart local v10    # "formSize":F
    :cond_14
    const/4 v10, 0x0

    goto :goto_e

    .end local v10    # "formSize":F
    :cond_15
    move/from16 v19, v26

    .line 982
    goto :goto_c

    .line 995
    .restart local v19    # "requiredSpacing":F
    :cond_16
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/github/mikephil/charting/components/Legend;->mCalculatedLineSizes:Ljava/util/List;

    move-object/from16 v28, v0

    invoke-static {v4, v14}, Lcom/github/mikephil/charting/utils/FSize;->getInstance(FF)Lcom/github/mikephil/charting/utils/FSize;

    move-result-object v29

    invoke-interface/range {v28 .. v29}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 996
    move/from16 v0, v17

    invoke-static {v0, v4}, Ljava/lang/Math;->max(FF)F

    move-result v17

    .line 999
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/github/mikephil/charting/components/Legend;->mCalculatedLabelBreakPoints:Ljava/util/List;

    move-object/from16 v29, v0

    const/16 v28, -0x1

    move/from16 v0, v22

    move/from16 v1, v28

    if-le v0, v1, :cond_17

    move/from16 v28, v22

    :goto_f
    const/16 v30, 0x1

    .line 1001
    invoke-static/range {v30 .. v30}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v30

    .line 999
    move-object/from16 v0, v29

    move/from16 v1, v28

    move-object/from16 v2, v30

    invoke-interface {v0, v1, v2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 1002
    move/from16 v4, v20

    goto/16 :goto_d

    :cond_17
    move/from16 v28, v12

    .line 999
    goto :goto_f

    .line 1015
    .end local v6    # "drawingForm":Z
    .end local v7    # "e":Lcom/github/mikephil/charting/components/LegendEntry;
    .end local v13    # "label":Ljava/lang/String;
    .end local v19    # "requiredSpacing":F
    :cond_18
    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/github/mikephil/charting/components/Legend;->mNeededWidth:F

    .line 1016
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/github/mikephil/charting/components/Legend;->mCalculatedLineSizes:Ljava/util/List;

    move-object/from16 v28, v0

    .line 1017
    invoke-interface/range {v28 .. v28}, Ljava/util/List;->size()I

    move-result v28

    move/from16 v0, v28

    int-to-float v0, v0

    move/from16 v28, v0

    mul-float v29, v14, v28

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/github/mikephil/charting/components/Legend;->mCalculatedLineSizes:Ljava/util/List;

    move-object/from16 v28, v0

    .line 1019
    invoke-interface/range {v28 .. v28}, Ljava/util/List;->size()I

    move-result v28

    if-nez v28, :cond_19

    const/16 v28, 0x0

    .line 1021
    :goto_10
    move/from16 v0, v28

    int-to-float v0, v0

    move/from16 v28, v0

    mul-float v28, v28, v15

    add-float v28, v28, v29

    move/from16 v0, v28

    move-object/from16 v1, p0

    iput v0, v1, Lcom/github/mikephil/charting/components/Legend;->mNeededHeight:F

    goto/16 :goto_0

    .line 1019
    :cond_19
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/github/mikephil/charting/components/Legend;->mCalculatedLineSizes:Ljava/util/List;

    move-object/from16 v28, v0

    .line 1021
    invoke-interface/range {v28 .. v28}, Ljava/util/List;->size()I

    move-result v28

    add-int/lit8 v28, v28, -0x1

    goto :goto_10

    .line 870
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public getCalculatedLabelBreakPoints()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .prologue
    .line 842
    iget-object v0, p0, Lcom/github/mikephil/charting/components/Legend;->mCalculatedLabelBreakPoints:Ljava/util/List;

    return-object v0
.end method

.method public getCalculatedLabelSizes()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/github/mikephil/charting/utils/FSize;",
            ">;"
        }
    .end annotation

    .prologue
    .line 838
    iget-object v0, p0, Lcom/github/mikephil/charting/components/Legend;->mCalculatedLabelSizes:Ljava/util/List;

    return-object v0
.end method

.method public getCalculatedLineSizes()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/github/mikephil/charting/utils/FSize;",
            ">;"
        }
    .end annotation

    .prologue
    .line 846
    iget-object v0, p0, Lcom/github/mikephil/charting/components/Legend;->mCalculatedLineSizes:Ljava/util/List;

    return-object v0
.end method

.method public getColors()[I
    .locals 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 293
    iget-object v2, p0, Lcom/github/mikephil/charting/components/Legend;->mEntries:[Lcom/github/mikephil/charting/components/LegendEntry;

    array-length v2, v2

    new-array v1, v2, [I

    .line 294
    .local v1, "old":[I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lcom/github/mikephil/charting/components/Legend;->mEntries:[Lcom/github/mikephil/charting/components/LegendEntry;

    array-length v2, v2

    if-ge v0, v2, :cond_2

    .line 295
    iget-object v2, p0, Lcom/github/mikephil/charting/components/Legend;->mEntries:[Lcom/github/mikephil/charting/components/LegendEntry;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/github/mikephil/charting/components/LegendEntry;->form:Lcom/github/mikephil/charting/components/Legend$LegendForm;

    sget-object v3, Lcom/github/mikephil/charting/components/Legend$LegendForm;->NONE:Lcom/github/mikephil/charting/components/Legend$LegendForm;

    if-ne v2, v3, :cond_0

    const v2, 0x112234

    :goto_1
    aput v2, v1, v0

    .line 294
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 295
    :cond_0
    iget-object v2, p0, Lcom/github/mikephil/charting/components/Legend;->mEntries:[Lcom/github/mikephil/charting/components/LegendEntry;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/github/mikephil/charting/components/LegendEntry;->form:Lcom/github/mikephil/charting/components/Legend$LegendForm;

    sget-object v3, Lcom/github/mikephil/charting/components/Legend$LegendForm;->EMPTY:Lcom/github/mikephil/charting/components/Legend$LegendForm;

    if-ne v2, v3, :cond_1

    const v2, 0x112233

    goto :goto_1

    :cond_1
    iget-object v2, p0, Lcom/github/mikephil/charting/components/Legend;->mEntries:[Lcom/github/mikephil/charting/components/LegendEntry;

    aget-object v2, v2, v0

    iget v2, v2, Lcom/github/mikephil/charting/components/LegendEntry;->formColor:I

    goto :goto_1

    .line 299
    :cond_2
    return-object v1
.end method

.method public getDirection()Lcom/github/mikephil/charting/components/Legend$LegendDirection;
    .locals 1

    .prologue
    .line 607
    iget-object v0, p0, Lcom/github/mikephil/charting/components/Legend;->mDirection:Lcom/github/mikephil/charting/components/Legend$LegendDirection;

    return-object v0
.end method

.method public getEntries()[Lcom/github/mikephil/charting/components/LegendEntry;
    .locals 1

    .prologue
    .line 232
    iget-object v0, p0, Lcom/github/mikephil/charting/components/Legend;->mEntries:[Lcom/github/mikephil/charting/components/LegendEntry;

    return-object v0
.end method

.method public getExtraColors()[I
    .locals 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 315
    iget-object v2, p0, Lcom/github/mikephil/charting/components/Legend;->mExtraEntries:[Lcom/github/mikephil/charting/components/LegendEntry;

    array-length v2, v2

    new-array v1, v2, [I

    .line 316
    .local v1, "old":[I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lcom/github/mikephil/charting/components/Legend;->mExtraEntries:[Lcom/github/mikephil/charting/components/LegendEntry;

    array-length v2, v2

    if-ge v0, v2, :cond_2

    .line 317
    iget-object v2, p0, Lcom/github/mikephil/charting/components/Legend;->mExtraEntries:[Lcom/github/mikephil/charting/components/LegendEntry;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/github/mikephil/charting/components/LegendEntry;->form:Lcom/github/mikephil/charting/components/Legend$LegendForm;

    sget-object v3, Lcom/github/mikephil/charting/components/Legend$LegendForm;->NONE:Lcom/github/mikephil/charting/components/Legend$LegendForm;

    if-ne v2, v3, :cond_0

    const v2, 0x112234

    :goto_1
    aput v2, v1, v0

    .line 316
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 317
    :cond_0
    iget-object v2, p0, Lcom/github/mikephil/charting/components/Legend;->mExtraEntries:[Lcom/github/mikephil/charting/components/LegendEntry;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/github/mikephil/charting/components/LegendEntry;->form:Lcom/github/mikephil/charting/components/Legend$LegendForm;

    sget-object v3, Lcom/github/mikephil/charting/components/Legend$LegendForm;->EMPTY:Lcom/github/mikephil/charting/components/Legend$LegendForm;

    if-ne v2, v3, :cond_1

    const v2, 0x112233

    goto :goto_1

    :cond_1
    iget-object v2, p0, Lcom/github/mikephil/charting/components/Legend;->mExtraEntries:[Lcom/github/mikephil/charting/components/LegendEntry;

    aget-object v2, v2, v0

    iget v2, v2, Lcom/github/mikephil/charting/components/LegendEntry;->formColor:I

    goto :goto_1

    .line 321
    :cond_2
    return-object v1
.end method

.method public getExtraEntries()[Lcom/github/mikephil/charting/components/LegendEntry;
    .locals 1

    .prologue
    .line 336
    iget-object v0, p0, Lcom/github/mikephil/charting/components/Legend;->mExtraEntries:[Lcom/github/mikephil/charting/components/LegendEntry;

    return-object v0
.end method

.method public getExtraLabels()[Ljava/lang/String;
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 327
    iget-object v2, p0, Lcom/github/mikephil/charting/components/Legend;->mExtraEntries:[Lcom/github/mikephil/charting/components/LegendEntry;

    array-length v2, v2

    new-array v1, v2, [Ljava/lang/String;

    .line 328
    .local v1, "old":[Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lcom/github/mikephil/charting/components/Legend;->mExtraEntries:[Lcom/github/mikephil/charting/components/LegendEntry;

    array-length v2, v2

    if-ge v0, v2, :cond_0

    .line 329
    iget-object v2, p0, Lcom/github/mikephil/charting/components/Legend;->mExtraEntries:[Lcom/github/mikephil/charting/components/LegendEntry;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/github/mikephil/charting/components/LegendEntry;->label:Ljava/lang/String;

    aput-object v2, v1, v0

    .line 328
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 331
    :cond_0
    return-object v1
.end method

.method public getForm()Lcom/github/mikephil/charting/components/Legend$LegendForm;
    .locals 1

    .prologue
    .line 625
    iget-object v0, p0, Lcom/github/mikephil/charting/components/Legend;->mShape:Lcom/github/mikephil/charting/components/Legend$LegendForm;

    return-object v0
.end method

.method public getFormLineDashEffect()Landroid/graphics/DashPathEffect;
    .locals 1

    .prologue
    .line 686
    iget-object v0, p0, Lcom/github/mikephil/charting/components/Legend;->mFormLineDashEffect:Landroid/graphics/DashPathEffect;

    return-object v0
.end method

.method public getFormLineWidth()F
    .locals 1

    .prologue
    .line 670
    iget v0, p0, Lcom/github/mikephil/charting/components/Legend;->mFormLineWidth:F

    return v0
.end method

.method public getFormSize()F
    .locals 1

    .prologue
    .line 652
    iget v0, p0, Lcom/github/mikephil/charting/components/Legend;->mFormSize:F

    return v0
.end method

.method public getFormToTextSpace()F
    .locals 1

    .prologue
    .line 734
    iget v0, p0, Lcom/github/mikephil/charting/components/Legend;->mFormToTextSpace:F

    return v0
.end method

.method public getHorizontalAlignment()Lcom/github/mikephil/charting/components/Legend$LegendHorizontalAlignment;
    .locals 1

    .prologue
    .line 535
    iget-object v0, p0, Lcom/github/mikephil/charting/components/Legend;->mHorizontalAlignment:Lcom/github/mikephil/charting/components/Legend$LegendHorizontalAlignment;

    return-object v0
.end method

.method public getLabels()[Ljava/lang/String;
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 305
    iget-object v2, p0, Lcom/github/mikephil/charting/components/Legend;->mEntries:[Lcom/github/mikephil/charting/components/LegendEntry;

    array-length v2, v2

    new-array v1, v2, [Ljava/lang/String;

    .line 306
    .local v1, "old":[Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lcom/github/mikephil/charting/components/Legend;->mEntries:[Lcom/github/mikephil/charting/components/LegendEntry;

    array-length v2, v2

    if-ge v0, v2, :cond_0

    .line 307
    iget-object v2, p0, Lcom/github/mikephil/charting/components/Legend;->mEntries:[Lcom/github/mikephil/charting/components/LegendEntry;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/github/mikephil/charting/components/LegendEntry;->label:Ljava/lang/String;

    aput-object v2, v1, v0

    .line 306
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 309
    :cond_0
    return-object v1
.end method

.method public getMaxSizePercent()F
    .locals 1

    .prologue
    .line 818
    iget v0, p0, Lcom/github/mikephil/charting/components/Legend;->mMaxSizePercent:F

    return v0
.end method

.method public getMaximumEntryHeight(Landroid/graphics/Paint;)F
    .locals 8
    .param p1, "p"    # Landroid/graphics/Paint;

    .prologue
    .line 275
    const/4 v3, 0x0

    .line 277
    .local v3, "max":F
    iget-object v5, p0, Lcom/github/mikephil/charting/components/Legend;->mEntries:[Lcom/github/mikephil/charting/components/LegendEntry;

    array-length v6, v5

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v6, :cond_2

    aget-object v0, v5, v4

    .line 278
    .local v0, "entry":Lcom/github/mikephil/charting/components/LegendEntry;
    iget-object v1, v0, Lcom/github/mikephil/charting/components/LegendEntry;->label:Ljava/lang/String;

    .line 279
    .local v1, "label":Ljava/lang/String;
    if-nez v1, :cond_1

    .line 277
    :cond_0
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 281
    :cond_1
    invoke-static {p1, v1}, Lcom/github/mikephil/charting/utils/Utils;->calcTextHeight(Landroid/graphics/Paint;Ljava/lang/String;)I

    move-result v7

    int-to-float v2, v7

    .line 283
    .local v2, "length":F
    cmpl-float v7, v2, v3

    if-lez v7, :cond_0

    .line 284
    move v3, v2

    goto :goto_1

    .line 287
    .end local v0    # "entry":Lcom/github/mikephil/charting/components/LegendEntry;
    .end local v1    # "label":Ljava/lang/String;
    .end local v2    # "length":F
    :cond_2
    return v3
.end method

.method public getMaximumEntryWidth(Landroid/graphics/Paint;)F
    .locals 11
    .param p1, "p"    # Landroid/graphics/Paint;

    .prologue
    .line 244
    const/4 v5, 0x0

    .line 245
    .local v5, "max":F
    const/4 v6, 0x0

    .line 246
    .local v6, "maxFormSize":F
    iget v7, p0, Lcom/github/mikephil/charting/components/Legend;->mFormToTextSpace:F

    invoke-static {v7}, Lcom/github/mikephil/charting/utils/Utils;->convertDpToPixel(F)F

    move-result v2

    .line 248
    .local v2, "formToTextSpace":F
    iget-object v9, p0, Lcom/github/mikephil/charting/components/Legend;->mEntries:[Lcom/github/mikephil/charting/components/LegendEntry;

    array-length v10, v9

    const/4 v7, 0x0

    move v8, v7

    :goto_0
    if-ge v8, v10, :cond_4

    aget-object v0, v9, v8

    .line 249
    .local v0, "entry":Lcom/github/mikephil/charting/components/LegendEntry;
    iget v7, v0, Lcom/github/mikephil/charting/components/LegendEntry;->formSize:F

    .line 250
    invoke-static {v7}, Ljava/lang/Float;->isNaN(F)Z

    move-result v7

    if-eqz v7, :cond_2

    iget v7, p0, Lcom/github/mikephil/charting/components/Legend;->mFormSize:F

    .line 249
    :goto_1
    invoke-static {v7}, Lcom/github/mikephil/charting/utils/Utils;->convertDpToPixel(F)F

    move-result v1

    .line 252
    .local v1, "formSize":F
    cmpl-float v7, v1, v6

    if-lez v7, :cond_0

    .line 253
    move v6, v1

    .line 255
    :cond_0
    iget-object v3, v0, Lcom/github/mikephil/charting/components/LegendEntry;->label:Ljava/lang/String;

    .line 256
    .local v3, "label":Ljava/lang/String;
    if-nez v3, :cond_3

    .line 248
    :cond_1
    :goto_2
    add-int/lit8 v7, v8, 0x1

    move v8, v7

    goto :goto_0

    .line 250
    .end local v1    # "formSize":F
    .end local v3    # "label":Ljava/lang/String;
    :cond_2
    iget v7, v0, Lcom/github/mikephil/charting/components/LegendEntry;->formSize:F

    goto :goto_1

    .line 258
    .restart local v1    # "formSize":F
    .restart local v3    # "label":Ljava/lang/String;
    :cond_3
    invoke-static {p1, v3}, Lcom/github/mikephil/charting/utils/Utils;->calcTextWidth(Landroid/graphics/Paint;Ljava/lang/String;)I

    move-result v7

    int-to-float v4, v7

    .line 260
    .local v4, "length":F
    cmpl-float v7, v4, v5

    if-lez v7, :cond_1

    .line 261
    move v5, v4

    goto :goto_2

    .line 264
    .end local v0    # "entry":Lcom/github/mikephil/charting/components/LegendEntry;
    .end local v1    # "formSize":F
    .end local v3    # "label":Ljava/lang/String;
    .end local v4    # "length":F
    :cond_4
    add-float v7, v5, v6

    add-float/2addr v7, v2

    return v7
.end method

.method public getOrientation()Lcom/github/mikephil/charting/components/Legend$LegendOrientation;
    .locals 1

    .prologue
    .line 571
    iget-object v0, p0, Lcom/github/mikephil/charting/components/Legend;->mOrientation:Lcom/github/mikephil/charting/components/Legend$LegendOrientation;

    return-object v0
.end method

.method public getPosition()Lcom/github/mikephil/charting/components/Legend$LegendPosition;
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 433
    iget-object v0, p0, Lcom/github/mikephil/charting/components/Legend;->mOrientation:Lcom/github/mikephil/charting/components/Legend$LegendOrientation;

    sget-object v1, Lcom/github/mikephil/charting/components/Legend$LegendOrientation;->VERTICAL:Lcom/github/mikephil/charting/components/Legend$LegendOrientation;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/github/mikephil/charting/components/Legend;->mHorizontalAlignment:Lcom/github/mikephil/charting/components/Legend$LegendHorizontalAlignment;

    sget-object v1, Lcom/github/mikephil/charting/components/Legend$LegendHorizontalAlignment;->CENTER:Lcom/github/mikephil/charting/components/Legend$LegendHorizontalAlignment;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/github/mikephil/charting/components/Legend;->mVerticalAlignment:Lcom/github/mikephil/charting/components/Legend$LegendVerticalAlignment;

    sget-object v1, Lcom/github/mikephil/charting/components/Legend$LegendVerticalAlignment;->CENTER:Lcom/github/mikephil/charting/components/Legend$LegendVerticalAlignment;

    if-ne v0, v1, :cond_0

    .line 436
    sget-object v0, Lcom/github/mikephil/charting/components/Legend$LegendPosition;->PIECHART_CENTER:Lcom/github/mikephil/charting/components/Legend$LegendPosition;

    .line 458
    :goto_0
    return-object v0

    .line 437
    :cond_0
    iget-object v0, p0, Lcom/github/mikephil/charting/components/Legend;->mOrientation:Lcom/github/mikephil/charting/components/Legend$LegendOrientation;

    sget-object v1, Lcom/github/mikephil/charting/components/Legend$LegendOrientation;->HORIZONTAL:Lcom/github/mikephil/charting/components/Legend$LegendOrientation;

    if-ne v0, v1, :cond_6

    .line 438
    iget-object v0, p0, Lcom/github/mikephil/charting/components/Legend;->mVerticalAlignment:Lcom/github/mikephil/charting/components/Legend$LegendVerticalAlignment;

    sget-object v1, Lcom/github/mikephil/charting/components/Legend$LegendVerticalAlignment;->TOP:Lcom/github/mikephil/charting/components/Legend$LegendVerticalAlignment;

    if-ne v0, v1, :cond_3

    .line 439
    iget-object v0, p0, Lcom/github/mikephil/charting/components/Legend;->mHorizontalAlignment:Lcom/github/mikephil/charting/components/Legend$LegendHorizontalAlignment;

    sget-object v1, Lcom/github/mikephil/charting/components/Legend$LegendHorizontalAlignment;->LEFT:Lcom/github/mikephil/charting/components/Legend$LegendHorizontalAlignment;

    if-ne v0, v1, :cond_1

    sget-object v0, Lcom/github/mikephil/charting/components/Legend$LegendPosition;->ABOVE_CHART_LEFT:Lcom/github/mikephil/charting/components/Legend$LegendPosition;

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/github/mikephil/charting/components/Legend;->mHorizontalAlignment:Lcom/github/mikephil/charting/components/Legend$LegendHorizontalAlignment;

    sget-object v1, Lcom/github/mikephil/charting/components/Legend$LegendHorizontalAlignment;->RIGHT:Lcom/github/mikephil/charting/components/Legend$LegendHorizontalAlignment;

    if-ne v0, v1, :cond_2

    sget-object v0, Lcom/github/mikephil/charting/components/Legend$LegendPosition;->ABOVE_CHART_RIGHT:Lcom/github/mikephil/charting/components/Legend$LegendPosition;

    goto :goto_0

    :cond_2
    sget-object v0, Lcom/github/mikephil/charting/components/Legend$LegendPosition;->ABOVE_CHART_CENTER:Lcom/github/mikephil/charting/components/Legend$LegendPosition;

    goto :goto_0

    .line 445
    :cond_3
    iget-object v0, p0, Lcom/github/mikephil/charting/components/Legend;->mHorizontalAlignment:Lcom/github/mikephil/charting/components/Legend$LegendHorizontalAlignment;

    sget-object v1, Lcom/github/mikephil/charting/components/Legend$LegendHorizontalAlignment;->LEFT:Lcom/github/mikephil/charting/components/Legend$LegendHorizontalAlignment;

    if-ne v0, v1, :cond_4

    sget-object v0, Lcom/github/mikephil/charting/components/Legend$LegendPosition;->BELOW_CHART_LEFT:Lcom/github/mikephil/charting/components/Legend$LegendPosition;

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lcom/github/mikephil/charting/components/Legend;->mHorizontalAlignment:Lcom/github/mikephil/charting/components/Legend$LegendHorizontalAlignment;

    sget-object v1, Lcom/github/mikephil/charting/components/Legend$LegendHorizontalAlignment;->RIGHT:Lcom/github/mikephil/charting/components/Legend$LegendHorizontalAlignment;

    if-ne v0, v1, :cond_5

    sget-object v0, Lcom/github/mikephil/charting/components/Legend$LegendPosition;->BELOW_CHART_RIGHT:Lcom/github/mikephil/charting/components/Legend$LegendPosition;

    goto :goto_0

    :cond_5
    sget-object v0, Lcom/github/mikephil/charting/components/Legend$LegendPosition;->BELOW_CHART_CENTER:Lcom/github/mikephil/charting/components/Legend$LegendPosition;

    goto :goto_0

    .line 451
    :cond_6
    iget-object v0, p0, Lcom/github/mikephil/charting/components/Legend;->mHorizontalAlignment:Lcom/github/mikephil/charting/components/Legend$LegendHorizontalAlignment;

    sget-object v1, Lcom/github/mikephil/charting/components/Legend$LegendHorizontalAlignment;->LEFT:Lcom/github/mikephil/charting/components/Legend$LegendHorizontalAlignment;

    if-ne v0, v1, :cond_9

    .line 452
    iget-object v0, p0, Lcom/github/mikephil/charting/components/Legend;->mVerticalAlignment:Lcom/github/mikephil/charting/components/Legend$LegendVerticalAlignment;

    sget-object v1, Lcom/github/mikephil/charting/components/Legend$LegendVerticalAlignment;->TOP:Lcom/github/mikephil/charting/components/Legend$LegendVerticalAlignment;

    if-ne v0, v1, :cond_7

    iget-boolean v0, p0, Lcom/github/mikephil/charting/components/Legend;->mDrawInside:Z

    if-eqz v0, :cond_7

    sget-object v0, Lcom/github/mikephil/charting/components/Legend$LegendPosition;->LEFT_OF_CHART_INSIDE:Lcom/github/mikephil/charting/components/Legend$LegendPosition;

    goto :goto_0

    :cond_7
    iget-object v0, p0, Lcom/github/mikephil/charting/components/Legend;->mVerticalAlignment:Lcom/github/mikephil/charting/components/Legend$LegendVerticalAlignment;

    sget-object v1, Lcom/github/mikephil/charting/components/Legend$LegendVerticalAlignment;->CENTER:Lcom/github/mikephil/charting/components/Legend$LegendVerticalAlignment;

    if-ne v0, v1, :cond_8

    sget-object v0, Lcom/github/mikephil/charting/components/Legend$LegendPosition;->LEFT_OF_CHART_CENTER:Lcom/github/mikephil/charting/components/Legend$LegendPosition;

    goto :goto_0

    :cond_8
    sget-object v0, Lcom/github/mikephil/charting/components/Legend$LegendPosition;->LEFT_OF_CHART:Lcom/github/mikephil/charting/components/Legend$LegendPosition;

    goto :goto_0

    .line 458
    :cond_9
    iget-object v0, p0, Lcom/github/mikephil/charting/components/Legend;->mVerticalAlignment:Lcom/github/mikephil/charting/components/Legend$LegendVerticalAlignment;

    sget-object v1, Lcom/github/mikephil/charting/components/Legend$LegendVerticalAlignment;->TOP:Lcom/github/mikephil/charting/components/Legend$LegendVerticalAlignment;

    if-ne v0, v1, :cond_a

    iget-boolean v0, p0, Lcom/github/mikephil/charting/components/Legend;->mDrawInside:Z

    if-eqz v0, :cond_a

    sget-object v0, Lcom/github/mikephil/charting/components/Legend$LegendPosition;->RIGHT_OF_CHART_INSIDE:Lcom/github/mikephil/charting/components/Legend$LegendPosition;

    goto :goto_0

    :cond_a
    iget-object v0, p0, Lcom/github/mikephil/charting/components/Legend;->mVerticalAlignment:Lcom/github/mikephil/charting/components/Legend$LegendVerticalAlignment;

    sget-object v1, Lcom/github/mikephil/charting/components/Legend$LegendVerticalAlignment;->CENTER:Lcom/github/mikephil/charting/components/Legend$LegendVerticalAlignment;

    if-ne v0, v1, :cond_b

    sget-object v0, Lcom/github/mikephil/charting/components/Legend$LegendPosition;->RIGHT_OF_CHART_CENTER:Lcom/github/mikephil/charting/components/Legend$LegendPosition;

    goto :goto_0

    :cond_b
    sget-object v0, Lcom/github/mikephil/charting/components/Legend$LegendPosition;->RIGHT_OF_CHART:Lcom/github/mikephil/charting/components/Legend$LegendPosition;

    goto :goto_0
.end method

.method public getStackSpace()F
    .locals 1

    .prologue
    .line 753
    iget v0, p0, Lcom/github/mikephil/charting/components/Legend;->mStackSpace:F

    return v0
.end method

.method public getVerticalAlignment()Lcom/github/mikephil/charting/components/Legend$LegendVerticalAlignment;
    .locals 1

    .prologue
    .line 553
    iget-object v0, p0, Lcom/github/mikephil/charting/components/Legend;->mVerticalAlignment:Lcom/github/mikephil/charting/components/Legend$LegendVerticalAlignment;

    return-object v0
.end method

.method public getXEntrySpace()F
    .locals 1

    .prologue
    .line 696
    iget v0, p0, Lcom/github/mikephil/charting/components/Legend;->mXEntrySpace:F

    return v0
.end method

.method public getYEntrySpace()F
    .locals 1

    .prologue
    .line 715
    iget v0, p0, Lcom/github/mikephil/charting/components/Legend;->mYEntrySpace:F

    return v0
.end method

.method public isDrawInsideEnabled()Z
    .locals 1

    .prologue
    .line 589
    iget-boolean v0, p0, Lcom/github/mikephil/charting/components/Legend;->mDrawInside:Z

    return v0
.end method

.method public isLegendCustom()Z
    .locals 1

    .prologue
    .line 423
    iget-boolean v0, p0, Lcom/github/mikephil/charting/components/Legend;->mIsLegendCustom:Z

    return v0
.end method

.method public isWordWrapEnabled()Z
    .locals 1

    .prologue
    .line 804
    iget-boolean v0, p0, Lcom/github/mikephil/charting/components/Legend;->mWordWrapEnabled:Z

    return v0
.end method

.method public resetCustom()V
    .locals 1

    .prologue
    .line 415
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/github/mikephil/charting/components/Legend;->mIsLegendCustom:Z

    .line 416
    return-void
.end method

.method public setCustom(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/github/mikephil/charting/components/LegendEntry;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 405
    .local p1, "entries":Ljava/util/List;, "Ljava/util/List<Lcom/github/mikephil/charting/components/LegendEntry;>;"
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Lcom/github/mikephil/charting/components/LegendEntry;

    invoke-interface {p1, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/github/mikephil/charting/components/LegendEntry;

    iput-object v0, p0, Lcom/github/mikephil/charting/components/Legend;->mEntries:[Lcom/github/mikephil/charting/components/LegendEntry;

    .line 406
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/github/mikephil/charting/components/Legend;->mIsLegendCustom:Z

    .line 407
    return-void
.end method

.method public setCustom([Lcom/github/mikephil/charting/components/LegendEntry;)V
    .locals 1
    .param p1, "entries"    # [Lcom/github/mikephil/charting/components/LegendEntry;

    .prologue
    .line 391
    iput-object p1, p0, Lcom/github/mikephil/charting/components/Legend;->mEntries:[Lcom/github/mikephil/charting/components/LegendEntry;

    .line 392
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/github/mikephil/charting/components/Legend;->mIsLegendCustom:Z

    .line 393
    return-void
.end method

.method public setDirection(Lcom/github/mikephil/charting/components/Legend$LegendDirection;)V
    .locals 0
    .param p1, "pos"    # Lcom/github/mikephil/charting/components/Legend$LegendDirection;

    .prologue
    .line 616
    iput-object p1, p0, Lcom/github/mikephil/charting/components/Legend;->mDirection:Lcom/github/mikephil/charting/components/Legend$LegendDirection;

    .line 617
    return-void
.end method

.method public setDrawInside(Z)V
    .locals 0
    .param p1, "value"    # Z

    .prologue
    .line 598
    iput-boolean p1, p0, Lcom/github/mikephil/charting/components/Legend;->mDrawInside:Z

    .line 599
    return-void
.end method

.method public setEntries(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/github/mikephil/charting/components/LegendEntry;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 228
    .local p1, "entries":Ljava/util/List;, "Ljava/util/List<Lcom/github/mikephil/charting/components/LegendEntry;>;"
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Lcom/github/mikephil/charting/components/LegendEntry;

    invoke-interface {p1, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/github/mikephil/charting/components/LegendEntry;

    iput-object v0, p0, Lcom/github/mikephil/charting/components/Legend;->mEntries:[Lcom/github/mikephil/charting/components/LegendEntry;

    .line 229
    return-void
.end method

.method public setExtra(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/github/mikephil/charting/components/LegendEntry;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 340
    .local p1, "entries":Ljava/util/List;, "Ljava/util/List<Lcom/github/mikephil/charting/components/LegendEntry;>;"
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Lcom/github/mikephil/charting/components/LegendEntry;

    invoke-interface {p1, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/github/mikephil/charting/components/LegendEntry;

    iput-object v0, p0, Lcom/github/mikephil/charting/components/Legend;->mExtraEntries:[Lcom/github/mikephil/charting/components/LegendEntry;

    .line 341
    return-void
.end method

.method public setExtra(Ljava/util/List;Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 351
    .local p1, "colors":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .local p2, "labels":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {p1}, Lcom/github/mikephil/charting/utils/Utils;->convertIntegers(Ljava/util/List;)[I

    move-result-object v0

    invoke-static {p2}, Lcom/github/mikephil/charting/utils/Utils;->convertStrings(Ljava/util/List;)[Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/github/mikephil/charting/components/Legend;->setExtra([I[Ljava/lang/String;)V

    .line 352
    return-void
.end method

.method public setExtra([I[Ljava/lang/String;)V
    .locals 5
    .param p1, "colors"    # [I
    .param p2, "labels"    # [Ljava/lang/String;

    .prologue
    .line 362
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 364
    .local v0, "entries":Ljava/util/List;, "Ljava/util/List<Lcom/github/mikephil/charting/components/LegendEntry;>;"
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v3, p1

    array-length v4, p2

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    if-ge v2, v3, :cond_3

    .line 365
    new-instance v1, Lcom/github/mikephil/charting/components/LegendEntry;

    invoke-direct {v1}, Lcom/github/mikephil/charting/components/LegendEntry;-><init>()V

    .line 366
    .local v1, "entry":Lcom/github/mikephil/charting/components/LegendEntry;
    aget v3, p1, v2

    iput v3, v1, Lcom/github/mikephil/charting/components/LegendEntry;->formColor:I

    .line 367
    aget-object v3, p2, v2

    iput-object v3, v1, Lcom/github/mikephil/charting/components/LegendEntry;->label:Ljava/lang/String;

    .line 369
    iget v3, v1, Lcom/github/mikephil/charting/components/LegendEntry;->formColor:I

    const v4, 0x112234

    if-eq v3, v4, :cond_0

    iget v3, v1, Lcom/github/mikephil/charting/components/LegendEntry;->formColor:I

    if-nez v3, :cond_2

    .line 371
    :cond_0
    sget-object v3, Lcom/github/mikephil/charting/components/Legend$LegendForm;->NONE:Lcom/github/mikephil/charting/components/Legend$LegendForm;

    iput-object v3, v1, Lcom/github/mikephil/charting/components/LegendEntry;->form:Lcom/github/mikephil/charting/components/Legend$LegendForm;

    .line 375
    :cond_1
    :goto_1
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 364
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 372
    :cond_2
    iget v3, v1, Lcom/github/mikephil/charting/components/LegendEntry;->formColor:I

    const v4, 0x112233

    if-ne v3, v4, :cond_1

    .line 373
    sget-object v3, Lcom/github/mikephil/charting/components/Legend$LegendForm;->EMPTY:Lcom/github/mikephil/charting/components/Legend$LegendForm;

    iput-object v3, v1, Lcom/github/mikephil/charting/components/LegendEntry;->form:Lcom/github/mikephil/charting/components/Legend$LegendForm;

    goto :goto_1

    .line 378
    .end local v1    # "entry":Lcom/github/mikephil/charting/components/LegendEntry;
    :cond_3
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    new-array v3, v3, [Lcom/github/mikephil/charting/components/LegendEntry;

    invoke-interface {v0, v3}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Lcom/github/mikephil/charting/components/LegendEntry;

    iput-object v3, p0, Lcom/github/mikephil/charting/components/Legend;->mExtraEntries:[Lcom/github/mikephil/charting/components/LegendEntry;

    .line 379
    return-void
.end method

.method public setExtra([Lcom/github/mikephil/charting/components/LegendEntry;)V
    .locals 1
    .param p1, "entries"    # [Lcom/github/mikephil/charting/components/LegendEntry;

    .prologue
    .line 344
    if-nez p1, :cond_0

    .line 345
    const/4 v0, 0x0

    new-array p1, v0, [Lcom/github/mikephil/charting/components/LegendEntry;

    .line 346
    :cond_0
    iput-object p1, p0, Lcom/github/mikephil/charting/components/Legend;->mExtraEntries:[Lcom/github/mikephil/charting/components/LegendEntry;

    .line 347
    return-void
.end method

.method public setForm(Lcom/github/mikephil/charting/components/Legend$LegendForm;)V
    .locals 0
    .param p1, "shape"    # Lcom/github/mikephil/charting/components/Legend$LegendForm;

    .prologue
    .line 634
    iput-object p1, p0, Lcom/github/mikephil/charting/components/Legend;->mShape:Lcom/github/mikephil/charting/components/Legend$LegendForm;

    .line 635
    return-void
.end method

.method public setFormLineDashEffect(Landroid/graphics/DashPathEffect;)V
    .locals 0
    .param p1, "dashPathEffect"    # Landroid/graphics/DashPathEffect;

    .prologue
    .line 679
    iput-object p1, p0, Lcom/github/mikephil/charting/components/Legend;->mFormLineDashEffect:Landroid/graphics/DashPathEffect;

    .line 680
    return-void
.end method

.method public setFormLineWidth(F)V
    .locals 0
    .param p1, "size"    # F

    .prologue
    .line 661
    iput p1, p0, Lcom/github/mikephil/charting/components/Legend;->mFormLineWidth:F

    .line 662
    return-void
.end method

.method public setFormSize(F)V
    .locals 0
    .param p1, "size"    # F

    .prologue
    .line 643
    iput p1, p0, Lcom/github/mikephil/charting/components/Legend;->mFormSize:F

    .line 644
    return-void
.end method

.method public setFormToTextSpace(F)V
    .locals 0
    .param p1, "space"    # F

    .prologue
    .line 744
    iput p1, p0, Lcom/github/mikephil/charting/components/Legend;->mFormToTextSpace:F

    .line 745
    return-void
.end method

.method public setHorizontalAlignment(Lcom/github/mikephil/charting/components/Legend$LegendHorizontalAlignment;)V
    .locals 0
    .param p1, "value"    # Lcom/github/mikephil/charting/components/Legend$LegendHorizontalAlignment;

    .prologue
    .line 544
    iput-object p1, p0, Lcom/github/mikephil/charting/components/Legend;->mHorizontalAlignment:Lcom/github/mikephil/charting/components/Legend$LegendHorizontalAlignment;

    .line 545
    return-void
.end method

.method public setMaxSizePercent(F)V
    .locals 0
    .param p1, "maxSize"    # F

    .prologue
    .line 830
    iput p1, p0, Lcom/github/mikephil/charting/components/Legend;->mMaxSizePercent:F

    .line 831
    return-void
.end method

.method public setOrientation(Lcom/github/mikephil/charting/components/Legend$LegendOrientation;)V
    .locals 0
    .param p1, "value"    # Lcom/github/mikephil/charting/components/Legend$LegendOrientation;

    .prologue
    .line 580
    iput-object p1, p0, Lcom/github/mikephil/charting/components/Legend;->mOrientation:Lcom/github/mikephil/charting/components/Legend$LegendOrientation;

    .line 581
    return-void
.end method

.method public setPosition(Lcom/github/mikephil/charting/components/Legend$LegendPosition;)V
    .locals 2
    .param p1, "newValue"    # Lcom/github/mikephil/charting/components/Legend$LegendPosition;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 473
    sget-object v0, Lcom/github/mikephil/charting/components/Legend$1;->$SwitchMap$com$github$mikephil$charting$components$Legend$LegendPosition:[I

    invoke-virtual {p1}, Lcom/github/mikephil/charting/components/Legend$LegendPosition;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 525
    :goto_0
    sget-object v0, Lcom/github/mikephil/charting/components/Legend$LegendPosition;->LEFT_OF_CHART_INSIDE:Lcom/github/mikephil/charting/components/Legend$LegendPosition;

    if-eq p1, v0, :cond_0

    sget-object v0, Lcom/github/mikephil/charting/components/Legend$LegendPosition;->RIGHT_OF_CHART_INSIDE:Lcom/github/mikephil/charting/components/Legend$LegendPosition;

    if-ne p1, v0, :cond_7

    :cond_0
    const/4 v0, 0x1

    :goto_1
    iput-boolean v0, p0, Lcom/github/mikephil/charting/components/Legend;->mDrawInside:Z

    .line 527
    return-void

    .line 477
    :pswitch_0
    sget-object v0, Lcom/github/mikephil/charting/components/Legend$LegendHorizontalAlignment;->LEFT:Lcom/github/mikephil/charting/components/Legend$LegendHorizontalAlignment;

    iput-object v0, p0, Lcom/github/mikephil/charting/components/Legend;->mHorizontalAlignment:Lcom/github/mikephil/charting/components/Legend$LegendHorizontalAlignment;

    .line 478
    sget-object v0, Lcom/github/mikephil/charting/components/Legend$LegendPosition;->LEFT_OF_CHART_CENTER:Lcom/github/mikephil/charting/components/Legend$LegendPosition;

    if-ne p1, v0, :cond_1

    sget-object v0, Lcom/github/mikephil/charting/components/Legend$LegendVerticalAlignment;->CENTER:Lcom/github/mikephil/charting/components/Legend$LegendVerticalAlignment;

    :goto_2
    iput-object v0, p0, Lcom/github/mikephil/charting/components/Legend;->mVerticalAlignment:Lcom/github/mikephil/charting/components/Legend$LegendVerticalAlignment;

    .line 481
    sget-object v0, Lcom/github/mikephil/charting/components/Legend$LegendOrientation;->VERTICAL:Lcom/github/mikephil/charting/components/Legend$LegendOrientation;

    iput-object v0, p0, Lcom/github/mikephil/charting/components/Legend;->mOrientation:Lcom/github/mikephil/charting/components/Legend$LegendOrientation;

    goto :goto_0

    .line 478
    :cond_1
    sget-object v0, Lcom/github/mikephil/charting/components/Legend$LegendVerticalAlignment;->TOP:Lcom/github/mikephil/charting/components/Legend$LegendVerticalAlignment;

    goto :goto_2

    .line 487
    :pswitch_1
    sget-object v0, Lcom/github/mikephil/charting/components/Legend$LegendHorizontalAlignment;->RIGHT:Lcom/github/mikephil/charting/components/Legend$LegendHorizontalAlignment;

    iput-object v0, p0, Lcom/github/mikephil/charting/components/Legend;->mHorizontalAlignment:Lcom/github/mikephil/charting/components/Legend$LegendHorizontalAlignment;

    .line 488
    sget-object v0, Lcom/github/mikephil/charting/components/Legend$LegendPosition;->RIGHT_OF_CHART_CENTER:Lcom/github/mikephil/charting/components/Legend$LegendPosition;

    if-ne p1, v0, :cond_2

    sget-object v0, Lcom/github/mikephil/charting/components/Legend$LegendVerticalAlignment;->CENTER:Lcom/github/mikephil/charting/components/Legend$LegendVerticalAlignment;

    :goto_3
    iput-object v0, p0, Lcom/github/mikephil/charting/components/Legend;->mVerticalAlignment:Lcom/github/mikephil/charting/components/Legend$LegendVerticalAlignment;

    .line 491
    sget-object v0, Lcom/github/mikephil/charting/components/Legend$LegendOrientation;->VERTICAL:Lcom/github/mikephil/charting/components/Legend$LegendOrientation;

    iput-object v0, p0, Lcom/github/mikephil/charting/components/Legend;->mOrientation:Lcom/github/mikephil/charting/components/Legend$LegendOrientation;

    goto :goto_0

    .line 488
    :cond_2
    sget-object v0, Lcom/github/mikephil/charting/components/Legend$LegendVerticalAlignment;->TOP:Lcom/github/mikephil/charting/components/Legend$LegendVerticalAlignment;

    goto :goto_3

    .line 497
    :pswitch_2
    sget-object v0, Lcom/github/mikephil/charting/components/Legend$LegendPosition;->ABOVE_CHART_LEFT:Lcom/github/mikephil/charting/components/Legend$LegendPosition;

    if-ne p1, v0, :cond_3

    sget-object v0, Lcom/github/mikephil/charting/components/Legend$LegendHorizontalAlignment;->LEFT:Lcom/github/mikephil/charting/components/Legend$LegendHorizontalAlignment;

    :goto_4
    iput-object v0, p0, Lcom/github/mikephil/charting/components/Legend;->mHorizontalAlignment:Lcom/github/mikephil/charting/components/Legend$LegendHorizontalAlignment;

    .line 502
    sget-object v0, Lcom/github/mikephil/charting/components/Legend$LegendVerticalAlignment;->TOP:Lcom/github/mikephil/charting/components/Legend$LegendVerticalAlignment;

    iput-object v0, p0, Lcom/github/mikephil/charting/components/Legend;->mVerticalAlignment:Lcom/github/mikephil/charting/components/Legend$LegendVerticalAlignment;

    .line 503
    sget-object v0, Lcom/github/mikephil/charting/components/Legend$LegendOrientation;->HORIZONTAL:Lcom/github/mikephil/charting/components/Legend$LegendOrientation;

    iput-object v0, p0, Lcom/github/mikephil/charting/components/Legend;->mOrientation:Lcom/github/mikephil/charting/components/Legend$LegendOrientation;

    goto :goto_0

    .line 497
    :cond_3
    sget-object v0, Lcom/github/mikephil/charting/components/Legend$LegendPosition;->ABOVE_CHART_RIGHT:Lcom/github/mikephil/charting/components/Legend$LegendPosition;

    if-ne p1, v0, :cond_4

    sget-object v0, Lcom/github/mikephil/charting/components/Legend$LegendHorizontalAlignment;->RIGHT:Lcom/github/mikephil/charting/components/Legend$LegendHorizontalAlignment;

    goto :goto_4

    :cond_4
    sget-object v0, Lcom/github/mikephil/charting/components/Legend$LegendHorizontalAlignment;->CENTER:Lcom/github/mikephil/charting/components/Legend$LegendHorizontalAlignment;

    goto :goto_4

    .line 509
    :pswitch_3
    sget-object v0, Lcom/github/mikephil/charting/components/Legend$LegendPosition;->BELOW_CHART_LEFT:Lcom/github/mikephil/charting/components/Legend$LegendPosition;

    if-ne p1, v0, :cond_5

    sget-object v0, Lcom/github/mikephil/charting/components/Legend$LegendHorizontalAlignment;->LEFT:Lcom/github/mikephil/charting/components/Legend$LegendHorizontalAlignment;

    :goto_5
    iput-object v0, p0, Lcom/github/mikephil/charting/components/Legend;->mHorizontalAlignment:Lcom/github/mikephil/charting/components/Legend$LegendHorizontalAlignment;

    .line 514
    sget-object v0, Lcom/github/mikephil/charting/components/Legend$LegendVerticalAlignment;->BOTTOM:Lcom/github/mikephil/charting/components/Legend$LegendVerticalAlignment;

    iput-object v0, p0, Lcom/github/mikephil/charting/components/Legend;->mVerticalAlignment:Lcom/github/mikephil/charting/components/Legend$LegendVerticalAlignment;

    .line 515
    sget-object v0, Lcom/github/mikephil/charting/components/Legend$LegendOrientation;->HORIZONTAL:Lcom/github/mikephil/charting/components/Legend$LegendOrientation;

    iput-object v0, p0, Lcom/github/mikephil/charting/components/Legend;->mOrientation:Lcom/github/mikephil/charting/components/Legend$LegendOrientation;

    goto :goto_0

    .line 509
    :cond_5
    sget-object v0, Lcom/github/mikephil/charting/components/Legend$LegendPosition;->BELOW_CHART_RIGHT:Lcom/github/mikephil/charting/components/Legend$LegendPosition;

    if-ne p1, v0, :cond_6

    sget-object v0, Lcom/github/mikephil/charting/components/Legend$LegendHorizontalAlignment;->RIGHT:Lcom/github/mikephil/charting/components/Legend$LegendHorizontalAlignment;

    goto :goto_5

    :cond_6
    sget-object v0, Lcom/github/mikephil/charting/components/Legend$LegendHorizontalAlignment;->CENTER:Lcom/github/mikephil/charting/components/Legend$LegendHorizontalAlignment;

    goto :goto_5

    .line 519
    :pswitch_4
    sget-object v0, Lcom/github/mikephil/charting/components/Legend$LegendHorizontalAlignment;->CENTER:Lcom/github/mikephil/charting/components/Legend$LegendHorizontalAlignment;

    iput-object v0, p0, Lcom/github/mikephil/charting/components/Legend;->mHorizontalAlignment:Lcom/github/mikephil/charting/components/Legend$LegendHorizontalAlignment;

    .line 520
    sget-object v0, Lcom/github/mikephil/charting/components/Legend$LegendVerticalAlignment;->CENTER:Lcom/github/mikephil/charting/components/Legend$LegendVerticalAlignment;

    iput-object v0, p0, Lcom/github/mikephil/charting/components/Legend;->mVerticalAlignment:Lcom/github/mikephil/charting/components/Legend$LegendVerticalAlignment;

    .line 521
    sget-object v0, Lcom/github/mikephil/charting/components/Legend$LegendOrientation;->VERTICAL:Lcom/github/mikephil/charting/components/Legend$LegendOrientation;

    iput-object v0, p0, Lcom/github/mikephil/charting/components/Legend;->mOrientation:Lcom/github/mikephil/charting/components/Legend$LegendOrientation;

    goto :goto_0

    .line 525
    :cond_7
    const/4 v0, 0x0

    goto :goto_1

    .line 473
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public setStackSpace(F)V
    .locals 0
    .param p1, "space"    # F

    .prologue
    .line 762
    iput p1, p0, Lcom/github/mikephil/charting/components/Legend;->mStackSpace:F

    .line 763
    return-void
.end method

.method public setVerticalAlignment(Lcom/github/mikephil/charting/components/Legend$LegendVerticalAlignment;)V
    .locals 0
    .param p1, "value"    # Lcom/github/mikephil/charting/components/Legend$LegendVerticalAlignment;

    .prologue
    .line 562
    iput-object p1, p0, Lcom/github/mikephil/charting/components/Legend;->mVerticalAlignment:Lcom/github/mikephil/charting/components/Legend$LegendVerticalAlignment;

    .line 563
    return-void
.end method

.method public setWordWrapEnabled(Z)V
    .locals 0
    .param p1, "enabled"    # Z

    .prologue
    .line 794
    iput-boolean p1, p0, Lcom/github/mikephil/charting/components/Legend;->mWordWrapEnabled:Z

    .line 795
    return-void
.end method

.method public setXEntrySpace(F)V
    .locals 0
    .param p1, "space"    # F

    .prologue
    .line 706
    iput p1, p0, Lcom/github/mikephil/charting/components/Legend;->mXEntrySpace:F

    .line 707
    return-void
.end method

.method public setYEntrySpace(F)V
    .locals 0
    .param p1, "space"    # F

    .prologue
    .line 725
    iput p1, p0, Lcom/github/mikephil/charting/components/Legend;->mYEntrySpace:F

    .line 726
    return-void
.end method
