.class public Lcom/github/mikephil/charting/renderer/LegendRenderer;
.super Lcom/github/mikephil/charting/renderer/Renderer;
.source "LegendRenderer.java"


# instance fields
.field protected computedEntries:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/github/mikephil/charting/components/LegendEntry;",
            ">;"
        }
    .end annotation
.end field

.field protected legendFontMetrics:Landroid/graphics/Paint$FontMetrics;

.field protected mLegend:Lcom/github/mikephil/charting/components/Legend;

.field protected mLegendFormPaint:Landroid/graphics/Paint;

.field protected mLegendLabelPaint:Landroid/graphics/Paint;

.field private mLineFormPath:Landroid/graphics/Path;


# direct methods
.method public constructor <init>(Lcom/github/mikephil/charting/utils/ViewPortHandler;Lcom/github/mikephil/charting/components/Legend;)V
    .locals 3
    .param p1, "viewPortHandler"    # Lcom/github/mikephil/charting/utils/ViewPortHandler;
    .param p2, "legend"    # Lcom/github/mikephil/charting/components/Legend;

    .prologue
    const/4 v2, 0x1

    .line 45
    invoke-direct {p0, p1}, Lcom/github/mikephil/charting/renderer/Renderer;-><init>(Lcom/github/mikephil/charting/utils/ViewPortHandler;)V

    .line 76
    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0x10

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/github/mikephil/charting/renderer/LegendRenderer;->computedEntries:Ljava/util/List;

    .line 223
    new-instance v0, Landroid/graphics/Paint$FontMetrics;

    invoke-direct {v0}, Landroid/graphics/Paint$FontMetrics;-><init>()V

    iput-object v0, p0, Lcom/github/mikephil/charting/renderer/LegendRenderer;->legendFontMetrics:Landroid/graphics/Paint$FontMetrics;

    .line 468
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/github/mikephil/charting/renderer/LegendRenderer;->mLineFormPath:Landroid/graphics/Path;

    .line 47
    iput-object p2, p0, Lcom/github/mikephil/charting/renderer/LegendRenderer;->mLegend:Lcom/github/mikephil/charting/components/Legend;

    .line 49
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/github/mikephil/charting/renderer/LegendRenderer;->mLegendLabelPaint:Landroid/graphics/Paint;

    .line 50
    iget-object v0, p0, Lcom/github/mikephil/charting/renderer/LegendRenderer;->mLegendLabelPaint:Landroid/graphics/Paint;

    const/high16 v1, 0x41100000    # 9.0f

    invoke-static {v1}, Lcom/github/mikephil/charting/utils/Utils;->convertDpToPixel(F)F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 51
    iget-object v0, p0, Lcom/github/mikephil/charting/renderer/LegendRenderer;->mLegendLabelPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 53
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/github/mikephil/charting/renderer/LegendRenderer;->mLegendFormPaint:Landroid/graphics/Paint;

    .line 54
    iget-object v0, p0, Lcom/github/mikephil/charting/renderer/LegendRenderer;->mLegendFormPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 55
    return-void
.end method


# virtual methods
.method public computeLegend(Lcom/github/mikephil/charting/data/ChartData;)V
    .locals 32
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/github/mikephil/charting/data/ChartData",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 85
    .local p1, "data":Lcom/github/mikephil/charting/data/ChartData;, "Lcom/github/mikephil/charting/data/ChartData<*>;"
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/github/mikephil/charting/renderer/LegendRenderer;->mLegend:Lcom/github/mikephil/charting/components/Legend;

    invoke-virtual {v2}, Lcom/github/mikephil/charting/components/Legend;->isLegendCustom()Z

    move-result v2

    if-nez v2, :cond_9

    .line 87
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/github/mikephil/charting/renderer/LegendRenderer;->computedEntries:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 90
    const/16 v27, 0x0

    .local v27, "i":I
    :goto_0
    invoke-virtual/range {p1 .. p1}, Lcom/github/mikephil/charting/data/ChartData;->getDataSetCount()I

    move-result v2

    move/from16 v0, v27

    if-ge v0, v2, :cond_7

    .line 92
    move-object/from16 v0, p1

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/github/mikephil/charting/data/ChartData;->getDataSetByIndex(I)Lcom/github/mikephil/charting/interfaces/datasets/IDataSet;

    move-result-object v25

    .line 94
    .local v25, "dataSet":Lcom/github/mikephil/charting/interfaces/datasets/IDataSet;
    invoke-interface/range {v25 .. v25}, Lcom/github/mikephil/charting/interfaces/datasets/IDataSet;->getColors()Ljava/util/List;

    move-result-object v24

    .line 95
    .local v24, "clrs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    invoke-interface/range {v25 .. v25}, Lcom/github/mikephil/charting/interfaces/datasets/IDataSet;->getEntryCount()I

    move-result v26

    .line 98
    .local v26, "entryCount":I
    move-object/from16 v0, v25

    instance-of v2, v0, Lcom/github/mikephil/charting/interfaces/datasets/IBarDataSet;

    if-eqz v2, :cond_2

    move-object/from16 v2, v25

    check-cast v2, Lcom/github/mikephil/charting/interfaces/datasets/IBarDataSet;

    invoke-interface {v2}, Lcom/github/mikephil/charting/interfaces/datasets/IBarDataSet;->isStacked()Z

    move-result v2

    if-eqz v2, :cond_2

    move-object/from16 v23, v25

    .line 100
    check-cast v23, Lcom/github/mikephil/charting/interfaces/datasets/IBarDataSet;

    .line 101
    .local v23, "bds":Lcom/github/mikephil/charting/interfaces/datasets/IBarDataSet;
    invoke-interface/range {v23 .. v23}, Lcom/github/mikephil/charting/interfaces/datasets/IBarDataSet;->getStackLabels()[Ljava/lang/String;

    move-result-object v30

    .line 103
    .local v30, "sLabels":[Ljava/lang/String;
    const/16 v28, 0x0

    .local v28, "j":I
    :goto_1
    invoke-interface/range {v24 .. v24}, Ljava/util/List;->size()I

    move-result v2

    move/from16 v0, v28

    if-ge v0, v2, :cond_0

    invoke-interface/range {v23 .. v23}, Lcom/github/mikephil/charting/interfaces/datasets/IBarDataSet;->getStackSize()I

    move-result v2

    move/from16 v0, v28

    if-ge v0, v2, :cond_0

    .line 105
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/github/mikephil/charting/renderer/LegendRenderer;->computedEntries:Ljava/util/List;

    new-instance v2, Lcom/github/mikephil/charting/components/LegendEntry;

    move-object/from16 v0, v30

    array-length v3, v0

    rem-int v3, v28, v3

    aget-object v3, v30, v3

    .line 107
    invoke-interface/range {v25 .. v25}, Lcom/github/mikephil/charting/interfaces/datasets/IDataSet;->getForm()Lcom/github/mikephil/charting/components/Legend$LegendForm;

    move-result-object v4

    .line 108
    invoke-interface/range {v25 .. v25}, Lcom/github/mikephil/charting/interfaces/datasets/IDataSet;->getFormSize()F

    move-result v5

    .line 109
    invoke-interface/range {v25 .. v25}, Lcom/github/mikephil/charting/interfaces/datasets/IDataSet;->getFormLineWidth()F

    move-result v6

    .line 110
    invoke-interface/range {v25 .. v25}, Lcom/github/mikephil/charting/interfaces/datasets/IDataSet;->getFormLineDashEffect()Landroid/graphics/DashPathEffect;

    move-result-object v7

    .line 111
    move-object/from16 v0, v24

    move/from16 v1, v28

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-direct/range {v2 .. v8}, Lcom/github/mikephil/charting/components/LegendEntry;-><init>(Ljava/lang/String;Lcom/github/mikephil/charting/components/Legend$LegendForm;FFLandroid/graphics/DashPathEffect;I)V

    .line 105
    invoke-interface {v10, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 103
    add-int/lit8 v28, v28, 0x1

    goto :goto_1

    .line 115
    :cond_0
    invoke-interface/range {v23 .. v23}, Lcom/github/mikephil/charting/interfaces/datasets/IBarDataSet;->getLabel()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 117
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/github/mikephil/charting/renderer/LegendRenderer;->computedEntries:Ljava/util/List;

    new-instance v2, Lcom/github/mikephil/charting/components/LegendEntry;

    .line 118
    invoke-interface/range {v25 .. v25}, Lcom/github/mikephil/charting/interfaces/datasets/IDataSet;->getLabel()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/github/mikephil/charting/components/Legend$LegendForm;->NONE:Lcom/github/mikephil/charting/components/Legend$LegendForm;

    const/high16 v5, 0x7fc00000    # NaNf

    const/high16 v6, 0x7fc00000    # NaNf

    const/4 v7, 0x0

    const v8, 0x112233

    invoke-direct/range {v2 .. v8}, Lcom/github/mikephil/charting/components/LegendEntry;-><init>(Ljava/lang/String;Lcom/github/mikephil/charting/components/Legend$LegendForm;FFLandroid/graphics/DashPathEffect;I)V

    .line 117
    invoke-interface {v9, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 90
    .end local v23    # "bds":Lcom/github/mikephil/charting/interfaces/datasets/IBarDataSet;
    .end local v28    # "j":I
    .end local v30    # "sLabels":[Ljava/lang/String;
    :cond_1
    :goto_2
    add-int/lit8 v27, v27, 0x1

    goto/16 :goto_0

    .line 127
    :cond_2
    move-object/from16 v0, v25

    instance-of v2, v0, Lcom/github/mikephil/charting/interfaces/datasets/IPieDataSet;

    if-eqz v2, :cond_4

    move-object/from16 v29, v25

    .line 129
    check-cast v29, Lcom/github/mikephil/charting/interfaces/datasets/IPieDataSet;

    .line 131
    .local v29, "pds":Lcom/github/mikephil/charting/interfaces/datasets/IPieDataSet;
    const/16 v28, 0x0

    .restart local v28    # "j":I
    :goto_3
    invoke-interface/range {v24 .. v24}, Ljava/util/List;->size()I

    move-result v2

    move/from16 v0, v28

    if-ge v0, v2, :cond_3

    move/from16 v0, v28

    move/from16 v1, v26

    if-ge v0, v1, :cond_3

    .line 133
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/github/mikephil/charting/renderer/LegendRenderer;->computedEntries:Ljava/util/List;

    new-instance v2, Lcom/github/mikephil/charting/components/LegendEntry;

    .line 134
    move-object/from16 v0, v29

    move/from16 v1, v28

    invoke-interface {v0, v1}, Lcom/github/mikephil/charting/interfaces/datasets/IPieDataSet;->getEntryForIndex(I)Lcom/github/mikephil/charting/data/Entry;

    move-result-object v3

    check-cast v3, Lcom/github/mikephil/charting/data/PieEntry;

    invoke-virtual {v3}, Lcom/github/mikephil/charting/data/PieEntry;->getLabel()Ljava/lang/String;

    move-result-object v3

    .line 135
    invoke-interface/range {v25 .. v25}, Lcom/github/mikephil/charting/interfaces/datasets/IDataSet;->getForm()Lcom/github/mikephil/charting/components/Legend$LegendForm;

    move-result-object v4

    .line 136
    invoke-interface/range {v25 .. v25}, Lcom/github/mikephil/charting/interfaces/datasets/IDataSet;->getFormSize()F

    move-result v5

    .line 137
    invoke-interface/range {v25 .. v25}, Lcom/github/mikephil/charting/interfaces/datasets/IDataSet;->getFormLineWidth()F

    move-result v6

    .line 138
    invoke-interface/range {v25 .. v25}, Lcom/github/mikephil/charting/interfaces/datasets/IDataSet;->getFormLineDashEffect()Landroid/graphics/DashPathEffect;

    move-result-object v7

    .line 139
    move-object/from16 v0, v24

    move/from16 v1, v28

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-direct/range {v2 .. v8}, Lcom/github/mikephil/charting/components/LegendEntry;-><init>(Ljava/lang/String;Lcom/github/mikephil/charting/components/Legend$LegendForm;FFLandroid/graphics/DashPathEffect;I)V

    .line 133
    invoke-interface {v10, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 131
    add-int/lit8 v28, v28, 0x1

    goto :goto_3

    .line 143
    :cond_3
    invoke-interface/range {v29 .. v29}, Lcom/github/mikephil/charting/interfaces/datasets/IPieDataSet;->getLabel()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 145
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/github/mikephil/charting/renderer/LegendRenderer;->computedEntries:Ljava/util/List;

    new-instance v2, Lcom/github/mikephil/charting/components/LegendEntry;

    .line 146
    invoke-interface/range {v25 .. v25}, Lcom/github/mikephil/charting/interfaces/datasets/IDataSet;->getLabel()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/github/mikephil/charting/components/Legend$LegendForm;->NONE:Lcom/github/mikephil/charting/components/Legend$LegendForm;

    const/high16 v5, 0x7fc00000    # NaNf

    const/high16 v6, 0x7fc00000    # NaNf

    const/4 v7, 0x0

    const v8, 0x112233

    invoke-direct/range {v2 .. v8}, Lcom/github/mikephil/charting/components/LegendEntry;-><init>(Ljava/lang/String;Lcom/github/mikephil/charting/components/Legend$LegendForm;FFLandroid/graphics/DashPathEffect;I)V

    .line 145
    invoke-interface {v9, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 155
    .end local v28    # "j":I
    .end local v29    # "pds":Lcom/github/mikephil/charting/interfaces/datasets/IPieDataSet;
    :cond_4
    move-object/from16 v0, v25

    instance-of v2, v0, Lcom/github/mikephil/charting/interfaces/datasets/ICandleDataSet;

    if-eqz v2, :cond_5

    move-object/from16 v2, v25

    check-cast v2, Lcom/github/mikephil/charting/interfaces/datasets/ICandleDataSet;

    invoke-interface {v2}, Lcom/github/mikephil/charting/interfaces/datasets/ICandleDataSet;->getDecreasingColor()I

    move-result v2

    const v3, 0x112233

    if-eq v2, v3, :cond_5

    move-object/from16 v2, v25

    .line 158
    check-cast v2, Lcom/github/mikephil/charting/interfaces/datasets/ICandleDataSet;

    invoke-interface {v2}, Lcom/github/mikephil/charting/interfaces/datasets/ICandleDataSet;->getDecreasingColor()I

    move-result v8

    .local v8, "decreasingColor":I
    move-object/from16 v2, v25

    .line 159
    check-cast v2, Lcom/github/mikephil/charting/interfaces/datasets/ICandleDataSet;

    invoke-interface {v2}, Lcom/github/mikephil/charting/interfaces/datasets/ICandleDataSet;->getIncreasingColor()I

    move-result v15

    .line 161
    .local v15, "increasingColor":I
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/github/mikephil/charting/renderer/LegendRenderer;->computedEntries:Ljava/util/List;

    new-instance v2, Lcom/github/mikephil/charting/components/LegendEntry;

    const/4 v3, 0x0

    .line 163
    invoke-interface/range {v25 .. v25}, Lcom/github/mikephil/charting/interfaces/datasets/IDataSet;->getForm()Lcom/github/mikephil/charting/components/Legend$LegendForm;

    move-result-object v4

    .line 164
    invoke-interface/range {v25 .. v25}, Lcom/github/mikephil/charting/interfaces/datasets/IDataSet;->getFormSize()F

    move-result v5

    .line 165
    invoke-interface/range {v25 .. v25}, Lcom/github/mikephil/charting/interfaces/datasets/IDataSet;->getFormLineWidth()F

    move-result v6

    .line 166
    invoke-interface/range {v25 .. v25}, Lcom/github/mikephil/charting/interfaces/datasets/IDataSet;->getFormLineDashEffect()Landroid/graphics/DashPathEffect;

    move-result-object v7

    invoke-direct/range {v2 .. v8}, Lcom/github/mikephil/charting/components/LegendEntry;-><init>(Ljava/lang/String;Lcom/github/mikephil/charting/components/Legend$LegendForm;FFLandroid/graphics/DashPathEffect;I)V

    .line 161
    invoke-interface {v9, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 170
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/github/mikephil/charting/renderer/LegendRenderer;->computedEntries:Ljava/util/List;

    new-instance v9, Lcom/github/mikephil/charting/components/LegendEntry;

    .line 171
    invoke-interface/range {v25 .. v25}, Lcom/github/mikephil/charting/interfaces/datasets/IDataSet;->getLabel()Ljava/lang/String;

    move-result-object v10

    .line 172
    invoke-interface/range {v25 .. v25}, Lcom/github/mikephil/charting/interfaces/datasets/IDataSet;->getForm()Lcom/github/mikephil/charting/components/Legend$LegendForm;

    move-result-object v11

    .line 173
    invoke-interface/range {v25 .. v25}, Lcom/github/mikephil/charting/interfaces/datasets/IDataSet;->getFormSize()F

    move-result v12

    .line 174
    invoke-interface/range {v25 .. v25}, Lcom/github/mikephil/charting/interfaces/datasets/IDataSet;->getFormLineWidth()F

    move-result v13

    .line 175
    invoke-interface/range {v25 .. v25}, Lcom/github/mikephil/charting/interfaces/datasets/IDataSet;->getFormLineDashEffect()Landroid/graphics/DashPathEffect;

    move-result-object v14

    invoke-direct/range {v9 .. v15}, Lcom/github/mikephil/charting/components/LegendEntry;-><init>(Ljava/lang/String;Lcom/github/mikephil/charting/components/Legend$LegendForm;FFLandroid/graphics/DashPathEffect;I)V

    .line 170
    invoke-interface {v2, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    .line 181
    .end local v8    # "decreasingColor":I
    .end local v15    # "increasingColor":I
    :cond_5
    const/16 v28, 0x0

    .restart local v28    # "j":I
    :goto_4
    invoke-interface/range {v24 .. v24}, Ljava/util/List;->size()I

    move-result v2

    move/from16 v0, v28

    if-ge v0, v2, :cond_1

    move/from16 v0, v28

    move/from16 v1, v26

    if-ge v0, v1, :cond_1

    .line 186
    invoke-interface/range {v24 .. v24}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    move/from16 v0, v28

    if-ge v0, v2, :cond_6

    add-int/lit8 v2, v26, -0x1

    move/from16 v0, v28

    if-ge v0, v2, :cond_6

    .line 187
    const/16 v17, 0x0

    .line 192
    .local v17, "label":Ljava/lang/String;
    :goto_5
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/github/mikephil/charting/renderer/LegendRenderer;->computedEntries:Ljava/util/List;

    new-instance v16, Lcom/github/mikephil/charting/components/LegendEntry;

    .line 194
    invoke-interface/range {v25 .. v25}, Lcom/github/mikephil/charting/interfaces/datasets/IDataSet;->getForm()Lcom/github/mikephil/charting/components/Legend$LegendForm;

    move-result-object v18

    .line 195
    invoke-interface/range {v25 .. v25}, Lcom/github/mikephil/charting/interfaces/datasets/IDataSet;->getFormSize()F

    move-result v19

    .line 196
    invoke-interface/range {v25 .. v25}, Lcom/github/mikephil/charting/interfaces/datasets/IDataSet;->getFormLineWidth()F

    move-result v20

    .line 197
    invoke-interface/range {v25 .. v25}, Lcom/github/mikephil/charting/interfaces/datasets/IDataSet;->getFormLineDashEffect()Landroid/graphics/DashPathEffect;

    move-result-object v21

    .line 198
    move-object/from16 v0, v24

    move/from16 v1, v28

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v22

    invoke-direct/range {v16 .. v22}, Lcom/github/mikephil/charting/components/LegendEntry;-><init>(Ljava/lang/String;Lcom/github/mikephil/charting/components/Legend$LegendForm;FFLandroid/graphics/DashPathEffect;I)V

    .line 192
    move-object/from16 v0, v16

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 181
    add-int/lit8 v28, v28, 0x1

    goto :goto_4

    .line 189
    .end local v17    # "label":Ljava/lang/String;
    :cond_6
    move-object/from16 v0, p1

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/github/mikephil/charting/data/ChartData;->getDataSetByIndex(I)Lcom/github/mikephil/charting/interfaces/datasets/IDataSet;

    move-result-object v2

    invoke-interface {v2}, Lcom/github/mikephil/charting/interfaces/datasets/IDataSet;->getLabel()Ljava/lang/String;

    move-result-object v17

    .restart local v17    # "label":Ljava/lang/String;
    goto :goto_5

    .line 204
    .end local v17    # "label":Ljava/lang/String;
    .end local v24    # "clrs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .end local v25    # "dataSet":Lcom/github/mikephil/charting/interfaces/datasets/IDataSet;
    .end local v26    # "entryCount":I
    .end local v28    # "j":I
    :cond_7
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/github/mikephil/charting/renderer/LegendRenderer;->mLegend:Lcom/github/mikephil/charting/components/Legend;

    invoke-virtual {v2}, Lcom/github/mikephil/charting/components/Legend;->getExtraEntries()[Lcom/github/mikephil/charting/components/LegendEntry;

    move-result-object v2

    if-eqz v2, :cond_8

    .line 205
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/github/mikephil/charting/renderer/LegendRenderer;->computedEntries:Ljava/util/List;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/github/mikephil/charting/renderer/LegendRenderer;->mLegend:Lcom/github/mikephil/charting/components/Legend;

    invoke-virtual {v3}, Lcom/github/mikephil/charting/components/Legend;->getExtraEntries()[Lcom/github/mikephil/charting/components/LegendEntry;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 208
    :cond_8
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/github/mikephil/charting/renderer/LegendRenderer;->mLegend:Lcom/github/mikephil/charting/components/Legend;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/github/mikephil/charting/renderer/LegendRenderer;->computedEntries:Ljava/util/List;

    invoke-virtual {v2, v3}, Lcom/github/mikephil/charting/components/Legend;->setEntries(Ljava/util/List;)V

    .line 211
    .end local v27    # "i":I
    :cond_9
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/github/mikephil/charting/renderer/LegendRenderer;->mLegend:Lcom/github/mikephil/charting/components/Legend;

    invoke-virtual {v2}, Lcom/github/mikephil/charting/components/Legend;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v31

    .line 213
    .local v31, "tf":Landroid/graphics/Typeface;
    if-eqz v31, :cond_a

    .line 214
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/github/mikephil/charting/renderer/LegendRenderer;->mLegendLabelPaint:Landroid/graphics/Paint;

    move-object/from16 v0, v31

    invoke-virtual {v2, v0}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 216
    :cond_a
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/github/mikephil/charting/renderer/LegendRenderer;->mLegendLabelPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/github/mikephil/charting/renderer/LegendRenderer;->mLegend:Lcom/github/mikephil/charting/components/Legend;

    invoke-virtual {v3}, Lcom/github/mikephil/charting/components/Legend;->getTextSize()F

    move-result v3

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 217
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/github/mikephil/charting/renderer/LegendRenderer;->mLegendLabelPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/github/mikephil/charting/renderer/LegendRenderer;->mLegend:Lcom/github/mikephil/charting/components/Legend;

    invoke-virtual {v3}, Lcom/github/mikephil/charting/components/Legend;->getTextColor()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 220
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/github/mikephil/charting/renderer/LegendRenderer;->mLegend:Lcom/github/mikephil/charting/components/Legend;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/github/mikephil/charting/renderer/LegendRenderer;->mLegendLabelPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/github/mikephil/charting/renderer/LegendRenderer;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    invoke-virtual {v2, v3, v4}, Lcom/github/mikephil/charting/components/Legend;->calculateDimensions(Landroid/graphics/Paint;Lcom/github/mikephil/charting/utils/ViewPortHandler;)V

    .line 221
    return-void
.end method

.method protected drawForm(Landroid/graphics/Canvas;FFLcom/github/mikephil/charting/components/LegendEntry;Lcom/github/mikephil/charting/components/Legend;)V
    .locals 13
    .param p1, "c"    # Landroid/graphics/Canvas;
    .param p2, "x"    # F
    .param p3, "y"    # F
    .param p4, "entry"    # Lcom/github/mikephil/charting/components/LegendEntry;
    .param p5, "legend"    # Lcom/github/mikephil/charting/components/Legend;

    .prologue
    .line 486
    move-object/from16 v0, p4

    iget v1, v0, Lcom/github/mikephil/charting/components/LegendEntry;->formColor:I

    const v2, 0x112234

    if-eq v1, v2, :cond_0

    move-object/from16 v0, p4

    iget v1, v0, Lcom/github/mikephil/charting/components/LegendEntry;->formColor:I

    const v2, 0x112233

    if-eq v1, v2, :cond_0

    move-object/from16 v0, p4

    iget v1, v0, Lcom/github/mikephil/charting/components/LegendEntry;->formColor:I

    if-nez v1, :cond_1

    .line 547
    :cond_0
    :goto_0
    return-void

    .line 491
    :cond_1
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v12

    .line 493
    .local v12, "restoreCount":I
    move-object/from16 v0, p4

    iget-object v7, v0, Lcom/github/mikephil/charting/components/LegendEntry;->form:Lcom/github/mikephil/charting/components/Legend$LegendForm;

    .line 494
    .local v7, "form":Lcom/github/mikephil/charting/components/Legend$LegendForm;
    sget-object v1, Lcom/github/mikephil/charting/components/Legend$LegendForm;->DEFAULT:Lcom/github/mikephil/charting/components/Legend$LegendForm;

    if-ne v7, v1, :cond_2

    .line 495
    invoke-virtual/range {p5 .. p5}, Lcom/github/mikephil/charting/components/Legend;->getForm()Lcom/github/mikephil/charting/components/Legend$LegendForm;

    move-result-object v7

    .line 497
    :cond_2
    iget-object v1, p0, Lcom/github/mikephil/charting/renderer/LegendRenderer;->mLegendFormPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p4

    iget v2, v0, Lcom/github/mikephil/charting/components/LegendEntry;->formColor:I

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 499
    move-object/from16 v0, p4

    iget v1, v0, Lcom/github/mikephil/charting/components/LegendEntry;->formSize:F

    .line 500
    invoke-static {v1}, Ljava/lang/Float;->isNaN(F)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 501
    invoke-virtual/range {p5 .. p5}, Lcom/github/mikephil/charting/components/Legend;->getFormSize()F

    move-result v1

    .line 499
    :goto_1
    invoke-static {v1}, Lcom/github/mikephil/charting/utils/Utils;->convertDpToPixel(F)F

    move-result v10

    .line 503
    .local v10, "formSize":F
    const/high16 v1, 0x40000000    # 2.0f

    div-float v11, v10, v1

    .line 505
    .local v11, "half":F
    sget-object v1, Lcom/github/mikephil/charting/renderer/LegendRenderer$1;->$SwitchMap$com$github$mikephil$charting$components$Legend$LegendForm:[I

    invoke-virtual {v7}, Lcom/github/mikephil/charting/components/Legend$LegendForm;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 546
    :goto_2
    :pswitch_0
    invoke-virtual {p1, v12}, Landroid/graphics/Canvas;->restoreToCount(I)V

    goto :goto_0

    .line 501
    .end local v10    # "formSize":F
    .end local v11    # "half":F
    :cond_3
    move-object/from16 v0, p4

    iget v1, v0, Lcom/github/mikephil/charting/components/LegendEntry;->formSize:F

    goto :goto_1

    .line 516
    .restart local v10    # "formSize":F
    .restart local v11    # "half":F
    :pswitch_1
    iget-object v1, p0, Lcom/github/mikephil/charting/renderer/LegendRenderer;->mLegendFormPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 517
    add-float v1, p2, v11

    iget-object v2, p0, Lcom/github/mikephil/charting/renderer/LegendRenderer;->mLegendFormPaint:Landroid/graphics/Paint;

    move/from16 v0, p3

    invoke-virtual {p1, v1, v0, v11, v2}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    goto :goto_2

    .line 521
    :pswitch_2
    iget-object v1, p0, Lcom/github/mikephil/charting/renderer/LegendRenderer;->mLegendFormPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 522
    sub-float v3, p3, v11

    add-float v4, p2, v10

    add-float v5, p3, v11

    iget-object v6, p0, Lcom/github/mikephil/charting/renderer/LegendRenderer;->mLegendFormPaint:Landroid/graphics/Paint;

    move-object v1, p1

    move v2, p2

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    goto :goto_2

    .line 527
    :pswitch_3
    move-object/from16 v0, p4

    iget v1, v0, Lcom/github/mikephil/charting/components/LegendEntry;->formLineWidth:F

    .line 528
    invoke-static {v1}, Ljava/lang/Float;->isNaN(F)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 529
    invoke-virtual/range {p5 .. p5}, Lcom/github/mikephil/charting/components/Legend;->getFormLineWidth()F

    move-result v1

    .line 527
    :goto_3
    invoke-static {v1}, Lcom/github/mikephil/charting/utils/Utils;->convertDpToPixel(F)F

    move-result v9

    .line 531
    .local v9, "formLineWidth":F
    move-object/from16 v0, p4

    iget-object v1, v0, Lcom/github/mikephil/charting/components/LegendEntry;->formLineDashEffect:Landroid/graphics/DashPathEffect;

    if-nez v1, :cond_5

    .line 532
    invoke-virtual/range {p5 .. p5}, Lcom/github/mikephil/charting/components/Legend;->getFormLineDashEffect()Landroid/graphics/DashPathEffect;

    move-result-object v8

    .line 534
    .local v8, "formLineDashEffect":Landroid/graphics/DashPathEffect;
    :goto_4
    iget-object v1, p0, Lcom/github/mikephil/charting/renderer/LegendRenderer;->mLegendFormPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 535
    iget-object v1, p0, Lcom/github/mikephil/charting/renderer/LegendRenderer;->mLegendFormPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v9}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 536
    iget-object v1, p0, Lcom/github/mikephil/charting/renderer/LegendRenderer;->mLegendFormPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v8}, Landroid/graphics/Paint;->setPathEffect(Landroid/graphics/PathEffect;)Landroid/graphics/PathEffect;

    .line 538
    iget-object v1, p0, Lcom/github/mikephil/charting/renderer/LegendRenderer;->mLineFormPath:Landroid/graphics/Path;

    invoke-virtual {v1}, Landroid/graphics/Path;->reset()V

    .line 539
    iget-object v1, p0, Lcom/github/mikephil/charting/renderer/LegendRenderer;->mLineFormPath:Landroid/graphics/Path;

    move/from16 v0, p3

    invoke-virtual {v1, p2, v0}, Landroid/graphics/Path;->moveTo(FF)V

    .line 540
    iget-object v1, p0, Lcom/github/mikephil/charting/renderer/LegendRenderer;->mLineFormPath:Landroid/graphics/Path;

    add-float v2, p2, v10

    move/from16 v0, p3

    invoke-virtual {v1, v2, v0}, Landroid/graphics/Path;->lineTo(FF)V

    .line 541
    iget-object v1, p0, Lcom/github/mikephil/charting/renderer/LegendRenderer;->mLineFormPath:Landroid/graphics/Path;

    iget-object v2, p0, Lcom/github/mikephil/charting/renderer/LegendRenderer;->mLegendFormPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    goto :goto_2

    .line 529
    .end local v8    # "formLineDashEffect":Landroid/graphics/DashPathEffect;
    .end local v9    # "formLineWidth":F
    :cond_4
    move-object/from16 v0, p4

    iget v1, v0, Lcom/github/mikephil/charting/components/LegendEntry;->formLineWidth:F

    goto :goto_3

    .line 532
    .restart local v9    # "formLineWidth":F
    :cond_5
    move-object/from16 v0, p4

    iget-object v8, v0, Lcom/github/mikephil/charting/components/LegendEntry;->formLineDashEffect:Landroid/graphics/DashPathEffect;

    goto :goto_4

    .line 505
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method protected drawLabel(Landroid/graphics/Canvas;FFLjava/lang/String;)V
    .locals 1
    .param p1, "c"    # Landroid/graphics/Canvas;
    .param p2, "x"    # F
    .param p3, "y"    # F
    .param p4, "label"    # Ljava/lang/String;

    .prologue
    .line 558
    iget-object v0, p0, Lcom/github/mikephil/charting/renderer/LegendRenderer;->mLegendLabelPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, p4, p2, p3, v0}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 559
    return-void
.end method

.method public getFormPaint()Landroid/graphics/Paint;
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lcom/github/mikephil/charting/renderer/LegendRenderer;->mLegendFormPaint:Landroid/graphics/Paint;

    return-object v0
.end method

.method public getLabelPaint()Landroid/graphics/Paint;
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lcom/github/mikephil/charting/renderer/LegendRenderer;->mLegendLabelPaint:Landroid/graphics/Paint;

    return-object v0
.end method

.method public renderLegend(Landroid/graphics/Canvas;)V
    .locals 40
    .param p1, "c"    # Landroid/graphics/Canvas;

    .prologue
    .line 227
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/github/mikephil/charting/renderer/LegendRenderer;->mLegend:Lcom/github/mikephil/charting/components/Legend;

    invoke-virtual {v2}, Lcom/github/mikephil/charting/components/Legend;->isEnabled()Z

    move-result v2

    if-nez v2, :cond_1

    .line 466
    :cond_0
    :goto_0
    return-void

    .line 230
    :cond_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/github/mikephil/charting/renderer/LegendRenderer;->mLegend:Lcom/github/mikephil/charting/components/Legend;

    invoke-virtual {v2}, Lcom/github/mikephil/charting/components/Legend;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v30

    .line 232
    .local v30, "tf":Landroid/graphics/Typeface;
    if-eqz v30, :cond_2

    .line 233
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/github/mikephil/charting/renderer/LegendRenderer;->mLegendLabelPaint:Landroid/graphics/Paint;

    move-object/from16 v0, v30

    invoke-virtual {v2, v0}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 235
    :cond_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/github/mikephil/charting/renderer/LegendRenderer;->mLegendLabelPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/github/mikephil/charting/renderer/LegendRenderer;->mLegend:Lcom/github/mikephil/charting/components/Legend;

    invoke-virtual {v3}, Lcom/github/mikephil/charting/components/Legend;->getTextSize()F

    move-result v3

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 236
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/github/mikephil/charting/renderer/LegendRenderer;->mLegendLabelPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/github/mikephil/charting/renderer/LegendRenderer;->mLegend:Lcom/github/mikephil/charting/components/Legend;

    invoke-virtual {v3}, Lcom/github/mikephil/charting/components/Legend;->getTextColor()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 238
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/github/mikephil/charting/renderer/LegendRenderer;->mLegendLabelPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/github/mikephil/charting/renderer/LegendRenderer;->legendFontMetrics:Landroid/graphics/Paint$FontMetrics;

    invoke-static {v2, v3}, Lcom/github/mikephil/charting/utils/Utils;->getLineHeight(Landroid/graphics/Paint;Landroid/graphics/Paint$FontMetrics;)F

    move-result v22

    .line 239
    .local v22, "labelLineHeight":F
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/github/mikephil/charting/renderer/LegendRenderer;->mLegendLabelPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/github/mikephil/charting/renderer/LegendRenderer;->legendFontMetrics:Landroid/graphics/Paint$FontMetrics;

    invoke-static {v2, v3}, Lcom/github/mikephil/charting/utils/Utils;->getLineSpacing(Landroid/graphics/Paint;Landroid/graphics/Paint$FontMetrics;)F

    move-result v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/github/mikephil/charting/renderer/LegendRenderer;->mLegend:Lcom/github/mikephil/charting/components/Legend;

    .line 240
    invoke-virtual {v3}, Lcom/github/mikephil/charting/components/Legend;->getYEntrySpace()F

    move-result v3

    invoke-static {v3}, Lcom/github/mikephil/charting/utils/Utils;->convertDpToPixel(F)F

    move-result v3

    add-float v23, v2, v3

    .line 241
    .local v23, "labelLineSpacing":F
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/github/mikephil/charting/renderer/LegendRenderer;->mLegendLabelPaint:Landroid/graphics/Paint;

    const-string v3, "ABC"

    invoke-static {v2, v3}, Lcom/github/mikephil/charting/utils/Utils;->calcTextHeight(Landroid/graphics/Paint;Ljava/lang/String;)I

    move-result v2

    int-to-float v2, v2

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    sub-float v18, v22, v2

    .line 243
    .local v18, "formYOffset":F
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/github/mikephil/charting/renderer/LegendRenderer;->mLegend:Lcom/github/mikephil/charting/components/Legend;

    invoke-virtual {v2}, Lcom/github/mikephil/charting/components/Legend;->getEntries()[Lcom/github/mikephil/charting/components/LegendEntry;

    move-result-object v15

    .line 245
    .local v15, "entries":[Lcom/github/mikephil/charting/components/LegendEntry;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/github/mikephil/charting/renderer/LegendRenderer;->mLegend:Lcom/github/mikephil/charting/components/Legend;

    invoke-virtual {v2}, Lcom/github/mikephil/charting/components/Legend;->getFormToTextSpace()F

    move-result v2

    invoke-static {v2}, Lcom/github/mikephil/charting/utils/Utils;->convertDpToPixel(F)F

    move-result v17

    .line 246
    .local v17, "formToTextSpace":F
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/github/mikephil/charting/renderer/LegendRenderer;->mLegend:Lcom/github/mikephil/charting/components/Legend;

    invoke-virtual {v2}, Lcom/github/mikephil/charting/components/Legend;->getXEntrySpace()F

    move-result v2

    invoke-static {v2}, Lcom/github/mikephil/charting/utils/Utils;->convertDpToPixel(F)F

    move-result v33

    .line 247
    .local v33, "xEntrySpace":F
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/github/mikephil/charting/renderer/LegendRenderer;->mLegend:Lcom/github/mikephil/charting/components/Legend;

    invoke-virtual {v2}, Lcom/github/mikephil/charting/components/Legend;->getOrientation()Lcom/github/mikephil/charting/components/Legend$LegendOrientation;

    move-result-object v25

    .line 248
    .local v25, "orientation":Lcom/github/mikephil/charting/components/Legend$LegendOrientation;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/github/mikephil/charting/renderer/LegendRenderer;->mLegend:Lcom/github/mikephil/charting/components/Legend;

    invoke-virtual {v2}, Lcom/github/mikephil/charting/components/Legend;->getHorizontalAlignment()Lcom/github/mikephil/charting/components/Legend$LegendHorizontalAlignment;

    move-result-object v19

    .line 249
    .local v19, "horizontalAlignment":Lcom/github/mikephil/charting/components/Legend$LegendHorizontalAlignment;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/github/mikephil/charting/renderer/LegendRenderer;->mLegend:Lcom/github/mikephil/charting/components/Legend;

    invoke-virtual {v2}, Lcom/github/mikephil/charting/components/Legend;->getVerticalAlignment()Lcom/github/mikephil/charting/components/Legend$LegendVerticalAlignment;

    move-result-object v31

    .line 250
    .local v31, "verticalAlignment":Lcom/github/mikephil/charting/components/Legend$LegendVerticalAlignment;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/github/mikephil/charting/renderer/LegendRenderer;->mLegend:Lcom/github/mikephil/charting/components/Legend;

    invoke-virtual {v2}, Lcom/github/mikephil/charting/components/Legend;->getDirection()Lcom/github/mikephil/charting/components/Legend$LegendDirection;

    move-result-object v13

    .line 251
    .local v13, "direction":Lcom/github/mikephil/charting/components/Legend$LegendDirection;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/github/mikephil/charting/renderer/LegendRenderer;->mLegend:Lcom/github/mikephil/charting/components/Legend;

    invoke-virtual {v2}, Lcom/github/mikephil/charting/components/Legend;->getFormSize()F

    move-result v2

    invoke-static {v2}, Lcom/github/mikephil/charting/utils/Utils;->convertDpToPixel(F)F

    move-result v12

    .line 254
    .local v12, "defaultFormSize":F
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/github/mikephil/charting/renderer/LegendRenderer;->mLegend:Lcom/github/mikephil/charting/components/Legend;

    invoke-virtual {v2}, Lcom/github/mikephil/charting/components/Legend;->getStackSpace()F

    move-result v2

    invoke-static {v2}, Lcom/github/mikephil/charting/utils/Utils;->convertDpToPixel(F)F

    move-result v29

    .line 256
    .local v29, "stackSpace":F
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/github/mikephil/charting/renderer/LegendRenderer;->mLegend:Lcom/github/mikephil/charting/components/Legend;

    invoke-virtual {v2}, Lcom/github/mikephil/charting/components/Legend;->getYOffset()F

    move-result v35

    .line 257
    .local v35, "yoffset":F
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/github/mikephil/charting/renderer/LegendRenderer;->mLegend:Lcom/github/mikephil/charting/components/Legend;

    invoke-virtual {v2}, Lcom/github/mikephil/charting/components/Legend;->getXOffset()F

    move-result v34

    .line 258
    .local v34, "xoffset":F
    const/16 v26, 0x0

    .line 260
    .local v26, "originPosX":F
    sget-object v2, Lcom/github/mikephil/charting/renderer/LegendRenderer$1;->$SwitchMap$com$github$mikephil$charting$components$Legend$LegendHorizontalAlignment:[I

    invoke-virtual/range {v19 .. v19}, Lcom/github/mikephil/charting/components/Legend$LegendHorizontalAlignment;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    .line 308
    :cond_3
    :goto_1
    sget-object v2, Lcom/github/mikephil/charting/renderer/LegendRenderer$1;->$SwitchMap$com$github$mikephil$charting$components$Legend$LegendOrientation:[I

    invoke-virtual/range {v25 .. v25}, Lcom/github/mikephil/charting/components/Legend$LegendOrientation;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_1

    goto/16 :goto_0

    .line 311
    :pswitch_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/github/mikephil/charting/renderer/LegendRenderer;->mLegend:Lcom/github/mikephil/charting/components/Legend;

    invoke-virtual {v2}, Lcom/github/mikephil/charting/components/Legend;->getCalculatedLineSizes()Ljava/util/List;

    move-result-object v10

    .line 312
    .local v10, "calculatedLineSizes":Ljava/util/List;, "Ljava/util/List<Lcom/github/mikephil/charting/utils/FSize;>;"
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/github/mikephil/charting/renderer/LegendRenderer;->mLegend:Lcom/github/mikephil/charting/components/Legend;

    invoke-virtual {v2}, Lcom/github/mikephil/charting/components/Legend;->getCalculatedLabelSizes()Ljava/util/List;

    move-result-object v9

    .line 313
    .local v9, "calculatedLabelSizes":Ljava/util/List;, "Ljava/util/List<Lcom/github/mikephil/charting/utils/FSize;>;"
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/github/mikephil/charting/renderer/LegendRenderer;->mLegend:Lcom/github/mikephil/charting/components/Legend;

    invoke-virtual {v2}, Lcom/github/mikephil/charting/components/Legend;->getCalculatedLabelBreakPoints()Ljava/util/List;

    move-result-object v8

    .line 315
    .local v8, "calculatedLabelBreakPoints":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Boolean;>;"
    move/from16 v4, v26

    .line 316
    .local v4, "posX":F
    const/16 v27, 0x0

    .line 318
    .local v27, "posY":F
    sget-object v2, Lcom/github/mikephil/charting/renderer/LegendRenderer$1;->$SwitchMap$com$github$mikephil$charting$components$Legend$LegendVerticalAlignment:[I

    invoke-virtual/range {v31 .. v31}, Lcom/github/mikephil/charting/components/Legend$LegendVerticalAlignment;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_2

    .line 332
    :goto_2
    const/16 v24, 0x0

    .line 334
    .local v24, "lineIndex":I
    const/16 v20, 0x0

    .local v20, "i":I
    array-length v11, v15

    .local v11, "count":I
    :goto_3
    move/from16 v0, v20

    if-ge v0, v11, :cond_0

    .line 336
    aget-object v6, v15, v20

    .line 337
    .local v6, "e":Lcom/github/mikephil/charting/components/LegendEntry;
    iget-object v2, v6, Lcom/github/mikephil/charting/components/LegendEntry;->form:Lcom/github/mikephil/charting/components/Legend$LegendForm;

    sget-object v3, Lcom/github/mikephil/charting/components/Legend$LegendForm;->NONE:Lcom/github/mikephil/charting/components/Legend$LegendForm;

    if-eq v2, v3, :cond_10

    const/4 v14, 0x1

    .line 338
    .local v14, "drawingForm":Z
    :goto_4
    iget v2, v6, Lcom/github/mikephil/charting/components/LegendEntry;->formSize:F

    invoke-static {v2}, Ljava/lang/Float;->isNaN(F)Z

    move-result v2

    if-eqz v2, :cond_11

    move/from16 v16, v12

    .line 340
    .local v16, "formSize":F
    :goto_5
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v2

    move/from16 v0, v20

    if-ge v0, v2, :cond_4

    move/from16 v0, v20

    invoke-interface {v8, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 341
    move/from16 v4, v26

    .line 342
    add-float v2, v22, v23

    add-float v27, v27, v2

    .line 345
    :cond_4
    cmpl-float v2, v4, v26

    if-nez v2, :cond_5

    sget-object v2, Lcom/github/mikephil/charting/components/Legend$LegendHorizontalAlignment;->CENTER:Lcom/github/mikephil/charting/components/Legend$LegendHorizontalAlignment;

    move-object/from16 v0, v19

    if-ne v0, v2, :cond_5

    .line 347
    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v2

    move/from16 v0, v24

    if-ge v0, v2, :cond_5

    .line 348
    sget-object v2, Lcom/github/mikephil/charting/components/Legend$LegendDirection;->RIGHT_TO_LEFT:Lcom/github/mikephil/charting/components/Legend$LegendDirection;

    if-ne v13, v2, :cond_12

    .line 349
    move/from16 v0, v24

    invoke-interface {v10, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/github/mikephil/charting/utils/FSize;

    iget v2, v2, Lcom/github/mikephil/charting/utils/FSize;->width:F

    .line 350
    :goto_6
    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    add-float/2addr v4, v2

    .line 351
    add-int/lit8 v24, v24, 0x1

    .line 354
    :cond_5
    iget-object v2, v6, Lcom/github/mikephil/charting/components/LegendEntry;->label:Ljava/lang/String;

    if-nez v2, :cond_13

    const/16 v21, 0x1

    .line 356
    .local v21, "isStacked":Z
    :goto_7
    if-eqz v14, :cond_7

    .line 357
    sget-object v2, Lcom/github/mikephil/charting/components/Legend$LegendDirection;->RIGHT_TO_LEFT:Lcom/github/mikephil/charting/components/Legend$LegendDirection;

    if-ne v13, v2, :cond_6

    .line 358
    sub-float v4, v4, v16

    .line 360
    :cond_6
    add-float v5, v27, v18

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/github/mikephil/charting/renderer/LegendRenderer;->mLegend:Lcom/github/mikephil/charting/components/Legend;

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    invoke-virtual/range {v2 .. v7}, Lcom/github/mikephil/charting/renderer/LegendRenderer;->drawForm(Landroid/graphics/Canvas;FFLcom/github/mikephil/charting/components/LegendEntry;Lcom/github/mikephil/charting/components/Legend;)V

    .line 362
    sget-object v2, Lcom/github/mikephil/charting/components/Legend$LegendDirection;->LEFT_TO_RIGHT:Lcom/github/mikephil/charting/components/Legend$LegendDirection;

    if-ne v13, v2, :cond_7

    .line 363
    add-float v4, v4, v16

    .line 366
    :cond_7
    if-nez v21, :cond_16

    .line 367
    if-eqz v14, :cond_8

    .line 368
    sget-object v2, Lcom/github/mikephil/charting/components/Legend$LegendDirection;->RIGHT_TO_LEFT:Lcom/github/mikephil/charting/components/Legend$LegendDirection;

    if-ne v13, v2, :cond_14

    move/from16 v0, v17

    neg-float v2, v0

    :goto_8
    add-float/2addr v4, v2

    .line 371
    :cond_8
    sget-object v2, Lcom/github/mikephil/charting/components/Legend$LegendDirection;->RIGHT_TO_LEFT:Lcom/github/mikephil/charting/components/Legend$LegendDirection;

    if-ne v13, v2, :cond_9

    .line 372
    move/from16 v0, v20

    invoke-interface {v9, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/github/mikephil/charting/utils/FSize;

    iget v2, v2, Lcom/github/mikephil/charting/utils/FSize;->width:F

    sub-float/2addr v4, v2

    .line 374
    :cond_9
    add-float v2, v27, v22

    iget-object v3, v6, Lcom/github/mikephil/charting/components/LegendEntry;->label:Ljava/lang/String;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v4, v2, v3}, Lcom/github/mikephil/charting/renderer/LegendRenderer;->drawLabel(Landroid/graphics/Canvas;FFLjava/lang/String;)V

    .line 376
    sget-object v2, Lcom/github/mikephil/charting/components/Legend$LegendDirection;->LEFT_TO_RIGHT:Lcom/github/mikephil/charting/components/Legend$LegendDirection;

    if-ne v13, v2, :cond_a

    .line 377
    move/from16 v0, v20

    invoke-interface {v9, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/github/mikephil/charting/utils/FSize;

    iget v2, v2, Lcom/github/mikephil/charting/utils/FSize;->width:F

    add-float/2addr v4, v2

    .line 379
    :cond_a
    sget-object v2, Lcom/github/mikephil/charting/components/Legend$LegendDirection;->RIGHT_TO_LEFT:Lcom/github/mikephil/charting/components/Legend$LegendDirection;

    if-ne v13, v2, :cond_15

    move/from16 v0, v33

    neg-float v2, v0

    :goto_9
    add-float/2addr v4, v2

    .line 334
    :goto_a
    add-int/lit8 v20, v20, 0x1

    goto/16 :goto_3

    .line 263
    .end local v4    # "posX":F
    .end local v6    # "e":Lcom/github/mikephil/charting/components/LegendEntry;
    .end local v8    # "calculatedLabelBreakPoints":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Boolean;>;"
    .end local v9    # "calculatedLabelSizes":Ljava/util/List;, "Ljava/util/List<Lcom/github/mikephil/charting/utils/FSize;>;"
    .end local v10    # "calculatedLineSizes":Ljava/util/List;, "Ljava/util/List<Lcom/github/mikephil/charting/utils/FSize;>;"
    .end local v11    # "count":I
    .end local v14    # "drawingForm":Z
    .end local v16    # "formSize":F
    .end local v20    # "i":I
    .end local v21    # "isStacked":Z
    .end local v24    # "lineIndex":I
    .end local v27    # "posY":F
    :pswitch_1
    sget-object v2, Lcom/github/mikephil/charting/components/Legend$LegendOrientation;->VERTICAL:Lcom/github/mikephil/charting/components/Legend$LegendOrientation;

    move-object/from16 v0, v25

    if-ne v0, v2, :cond_b

    .line 264
    move/from16 v26, v34

    .line 268
    :goto_b
    sget-object v2, Lcom/github/mikephil/charting/components/Legend$LegendDirection;->RIGHT_TO_LEFT:Lcom/github/mikephil/charting/components/Legend$LegendDirection;

    if-ne v13, v2, :cond_3

    .line 269
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/github/mikephil/charting/renderer/LegendRenderer;->mLegend:Lcom/github/mikephil/charting/components/Legend;

    iget v2, v2, Lcom/github/mikephil/charting/components/Legend;->mNeededWidth:F

    add-float v26, v26, v2

    goto/16 :goto_1

    .line 266
    :cond_b
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/github/mikephil/charting/renderer/LegendRenderer;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    invoke-virtual {v2}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->contentLeft()F

    move-result v2

    add-float v26, v2, v34

    goto :goto_b

    .line 275
    :pswitch_2
    sget-object v2, Lcom/github/mikephil/charting/components/Legend$LegendOrientation;->VERTICAL:Lcom/github/mikephil/charting/components/Legend$LegendOrientation;

    move-object/from16 v0, v25

    if-ne v0, v2, :cond_c

    .line 276
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/github/mikephil/charting/renderer/LegendRenderer;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    invoke-virtual {v2}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->getChartWidth()F

    move-result v2

    sub-float v26, v2, v34

    .line 280
    :goto_c
    sget-object v2, Lcom/github/mikephil/charting/components/Legend$LegendDirection;->LEFT_TO_RIGHT:Lcom/github/mikephil/charting/components/Legend$LegendDirection;

    if-ne v13, v2, :cond_3

    .line 281
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/github/mikephil/charting/renderer/LegendRenderer;->mLegend:Lcom/github/mikephil/charting/components/Legend;

    iget v2, v2, Lcom/github/mikephil/charting/components/Legend;->mNeededWidth:F

    sub-float v26, v26, v2

    goto/16 :goto_1

    .line 278
    :cond_c
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/github/mikephil/charting/renderer/LegendRenderer;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    invoke-virtual {v2}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->contentRight()F

    move-result v2

    sub-float v26, v2, v34

    goto :goto_c

    .line 287
    :pswitch_3
    sget-object v2, Lcom/github/mikephil/charting/components/Legend$LegendOrientation;->VERTICAL:Lcom/github/mikephil/charting/components/Legend$LegendOrientation;

    move-object/from16 v0, v25

    if-ne v0, v2, :cond_d

    .line 288
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/github/mikephil/charting/renderer/LegendRenderer;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    invoke-virtual {v2}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->getChartWidth()F

    move-result v2

    const/high16 v3, 0x40000000    # 2.0f

    div-float v26, v2, v3

    .line 293
    :goto_d
    sget-object v2, Lcom/github/mikephil/charting/components/Legend$LegendDirection;->LEFT_TO_RIGHT:Lcom/github/mikephil/charting/components/Legend$LegendDirection;

    if-ne v13, v2, :cond_e

    move/from16 v2, v34

    :goto_e
    add-float v26, v26, v2

    .line 299
    sget-object v2, Lcom/github/mikephil/charting/components/Legend$LegendOrientation;->VERTICAL:Lcom/github/mikephil/charting/components/Legend$LegendOrientation;

    move-object/from16 v0, v25

    if-ne v0, v2, :cond_3

    .line 300
    move/from16 v0, v26

    float-to-double v0, v0

    move-wide/from16 v36, v0

    sget-object v2, Lcom/github/mikephil/charting/components/Legend$LegendDirection;->LEFT_TO_RIGHT:Lcom/github/mikephil/charting/components/Legend$LegendDirection;

    if-ne v13, v2, :cond_f

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/github/mikephil/charting/renderer/LegendRenderer;->mLegend:Lcom/github/mikephil/charting/components/Legend;

    iget v2, v2, Lcom/github/mikephil/charting/components/Legend;->mNeededWidth:F

    neg-float v2, v2

    float-to-double v2, v2

    const-wide/high16 v38, 0x4000000000000000L    # 2.0

    div-double v2, v2, v38

    move/from16 v0, v34

    float-to-double v0, v0

    move-wide/from16 v38, v0

    add-double v2, v2, v38

    :goto_f
    add-double v2, v2, v36

    double-to-float v0, v2

    move/from16 v26, v0

    goto/16 :goto_1

    .line 290
    :cond_d
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/github/mikephil/charting/renderer/LegendRenderer;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    invoke-virtual {v2}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->contentLeft()F

    move-result v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/github/mikephil/charting/renderer/LegendRenderer;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    .line 291
    invoke-virtual {v3}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->contentWidth()F

    move-result v3

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v3, v5

    add-float v26, v2, v3

    goto :goto_d

    .line 293
    :cond_e
    move/from16 v0, v34

    neg-float v2, v0

    goto :goto_e

    .line 300
    :cond_f
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/github/mikephil/charting/renderer/LegendRenderer;->mLegend:Lcom/github/mikephil/charting/components/Legend;

    iget v2, v2, Lcom/github/mikephil/charting/components/Legend;->mNeededWidth:F

    float-to-double v2, v2

    const-wide/high16 v38, 0x4000000000000000L    # 2.0

    div-double v2, v2, v38

    move/from16 v0, v34

    float-to-double v0, v0

    move-wide/from16 v38, v0

    sub-double v2, v2, v38

    goto :goto_f

    .line 320
    .restart local v4    # "posX":F
    .restart local v8    # "calculatedLabelBreakPoints":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Boolean;>;"
    .restart local v9    # "calculatedLabelSizes":Ljava/util/List;, "Ljava/util/List<Lcom/github/mikephil/charting/utils/FSize;>;"
    .restart local v10    # "calculatedLineSizes":Ljava/util/List;, "Ljava/util/List<Lcom/github/mikephil/charting/utils/FSize;>;"
    .restart local v27    # "posY":F
    :pswitch_4
    move/from16 v27, v35

    .line 321
    goto/16 :goto_2

    .line 324
    :pswitch_5
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/github/mikephil/charting/renderer/LegendRenderer;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    invoke-virtual {v2}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->getChartHeight()F

    move-result v2

    sub-float v2, v2, v35

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/github/mikephil/charting/renderer/LegendRenderer;->mLegend:Lcom/github/mikephil/charting/components/Legend;

    iget v3, v3, Lcom/github/mikephil/charting/components/Legend;->mNeededHeight:F

    sub-float v27, v2, v3

    .line 325
    goto/16 :goto_2

    .line 328
    :pswitch_6
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/github/mikephil/charting/renderer/LegendRenderer;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    invoke-virtual {v2}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->getChartHeight()F

    move-result v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/github/mikephil/charting/renderer/LegendRenderer;->mLegend:Lcom/github/mikephil/charting/components/Legend;

    iget v3, v3, Lcom/github/mikephil/charting/components/Legend;->mNeededHeight:F

    sub-float/2addr v2, v3

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    add-float v27, v2, v35

    goto/16 :goto_2

    .line 337
    .restart local v6    # "e":Lcom/github/mikephil/charting/components/LegendEntry;
    .restart local v11    # "count":I
    .restart local v20    # "i":I
    .restart local v24    # "lineIndex":I
    :cond_10
    const/4 v14, 0x0

    goto/16 :goto_4

    .line 338
    .restart local v14    # "drawingForm":Z
    :cond_11
    iget v2, v6, Lcom/github/mikephil/charting/components/LegendEntry;->formSize:F

    invoke-static {v2}, Lcom/github/mikephil/charting/utils/Utils;->convertDpToPixel(F)F

    move-result v16

    goto/16 :goto_5

    .line 350
    .restart local v16    # "formSize":F
    :cond_12
    move/from16 v0, v24

    invoke-interface {v10, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/github/mikephil/charting/utils/FSize;

    iget v2, v2, Lcom/github/mikephil/charting/utils/FSize;->width:F

    neg-float v2, v2

    goto/16 :goto_6

    .line 354
    :cond_13
    const/16 v21, 0x0

    goto/16 :goto_7

    .restart local v21    # "isStacked":Z
    :cond_14
    move/from16 v2, v17

    .line 368
    goto/16 :goto_8

    :cond_15
    move/from16 v2, v33

    .line 379
    goto/16 :goto_9

    .line 381
    :cond_16
    sget-object v2, Lcom/github/mikephil/charting/components/Legend$LegendDirection;->RIGHT_TO_LEFT:Lcom/github/mikephil/charting/components/Legend$LegendDirection;

    if-ne v13, v2, :cond_17

    move/from16 v0, v29

    neg-float v2, v0

    :goto_10
    add-float/2addr v4, v2

    goto/16 :goto_a

    :cond_17
    move/from16 v2, v29

    goto :goto_10

    .line 389
    .end local v4    # "posX":F
    .end local v6    # "e":Lcom/github/mikephil/charting/components/LegendEntry;
    .end local v8    # "calculatedLabelBreakPoints":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Boolean;>;"
    .end local v9    # "calculatedLabelSizes":Ljava/util/List;, "Ljava/util/List<Lcom/github/mikephil/charting/utils/FSize;>;"
    .end local v10    # "calculatedLineSizes":Ljava/util/List;, "Ljava/util/List<Lcom/github/mikephil/charting/utils/FSize;>;"
    .end local v11    # "count":I
    .end local v14    # "drawingForm":Z
    .end local v16    # "formSize":F
    .end local v20    # "i":I
    .end local v21    # "isStacked":Z
    .end local v24    # "lineIndex":I
    .end local v27    # "posY":F
    :pswitch_7
    const/16 v28, 0x0

    .line 390
    .local v28, "stack":F
    const/16 v32, 0x0

    .line 391
    .local v32, "wasStacked":Z
    const/16 v27, 0x0

    .line 393
    .restart local v27    # "posY":F
    sget-object v2, Lcom/github/mikephil/charting/renderer/LegendRenderer$1;->$SwitchMap$com$github$mikephil$charting$components$Legend$LegendVerticalAlignment:[I

    invoke-virtual/range {v31 .. v31}, Lcom/github/mikephil/charting/components/Legend$LegendVerticalAlignment;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_3

    .line 415
    :goto_11
    const/16 v20, 0x0

    .restart local v20    # "i":I
    :goto_12
    array-length v2, v15

    move/from16 v0, v20

    if-ge v0, v2, :cond_0

    .line 417
    aget-object v6, v15, v20

    .line 418
    .restart local v6    # "e":Lcom/github/mikephil/charting/components/LegendEntry;
    iget-object v2, v6, Lcom/github/mikephil/charting/components/LegendEntry;->form:Lcom/github/mikephil/charting/components/Legend$LegendForm;

    sget-object v3, Lcom/github/mikephil/charting/components/Legend$LegendForm;->NONE:Lcom/github/mikephil/charting/components/Legend$LegendForm;

    if-eq v2, v3, :cond_1d

    const/4 v14, 0x1

    .line 419
    .restart local v14    # "drawingForm":Z
    :goto_13
    iget v2, v6, Lcom/github/mikephil/charting/components/LegendEntry;->formSize:F

    invoke-static {v2}, Ljava/lang/Float;->isNaN(F)Z

    move-result v2

    if-eqz v2, :cond_1e

    move/from16 v16, v12

    .line 421
    .restart local v16    # "formSize":F
    :goto_14
    move/from16 v4, v26

    .line 423
    .restart local v4    # "posX":F
    if-eqz v14, :cond_18

    .line 424
    sget-object v2, Lcom/github/mikephil/charting/components/Legend$LegendDirection;->LEFT_TO_RIGHT:Lcom/github/mikephil/charting/components/Legend$LegendDirection;

    if-ne v13, v2, :cond_1f

    .line 425
    add-float v4, v4, v28

    .line 429
    :goto_15
    add-float v5, v27, v18

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/github/mikephil/charting/renderer/LegendRenderer;->mLegend:Lcom/github/mikephil/charting/components/Legend;

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    invoke-virtual/range {v2 .. v7}, Lcom/github/mikephil/charting/renderer/LegendRenderer;->drawForm(Landroid/graphics/Canvas;FFLcom/github/mikephil/charting/components/LegendEntry;Lcom/github/mikephil/charting/components/Legend;)V

    .line 431
    sget-object v2, Lcom/github/mikephil/charting/components/Legend$LegendDirection;->LEFT_TO_RIGHT:Lcom/github/mikephil/charting/components/Legend$LegendDirection;

    if-ne v13, v2, :cond_18

    .line 432
    add-float v4, v4, v16

    .line 435
    :cond_18
    iget-object v2, v6, Lcom/github/mikephil/charting/components/LegendEntry;->label:Ljava/lang/String;

    if-eqz v2, :cond_23

    .line 437
    if-eqz v14, :cond_21

    if-nez v32, :cond_21

    .line 438
    sget-object v2, Lcom/github/mikephil/charting/components/Legend$LegendDirection;->LEFT_TO_RIGHT:Lcom/github/mikephil/charting/components/Legend$LegendDirection;

    if-ne v13, v2, :cond_20

    move/from16 v2, v17

    :goto_16
    add-float/2addr v4, v2

    .line 443
    :cond_19
    :goto_17
    sget-object v2, Lcom/github/mikephil/charting/components/Legend$LegendDirection;->RIGHT_TO_LEFT:Lcom/github/mikephil/charting/components/Legend$LegendDirection;

    if-ne v13, v2, :cond_1a

    .line 444
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/github/mikephil/charting/renderer/LegendRenderer;->mLegendLabelPaint:Landroid/graphics/Paint;

    iget-object v3, v6, Lcom/github/mikephil/charting/components/LegendEntry;->label:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/github/mikephil/charting/utils/Utils;->calcTextWidth(Landroid/graphics/Paint;Ljava/lang/String;)I

    move-result v2

    int-to-float v2, v2

    sub-float/2addr v4, v2

    .line 446
    :cond_1a
    if-nez v32, :cond_22

    .line 447
    add-float v2, v27, v22

    iget-object v3, v6, Lcom/github/mikephil/charting/components/LegendEntry;->label:Ljava/lang/String;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v4, v2, v3}, Lcom/github/mikephil/charting/renderer/LegendRenderer;->drawLabel(Landroid/graphics/Canvas;FFLjava/lang/String;)V

    .line 454
    :goto_18
    add-float v2, v22, v23

    add-float v27, v27, v2

    .line 455
    const/16 v28, 0x0

    .line 415
    :goto_19
    add-int/lit8 v20, v20, 0x1

    goto :goto_12

    .line 395
    .end local v4    # "posX":F
    .end local v6    # "e":Lcom/github/mikephil/charting/components/LegendEntry;
    .end local v14    # "drawingForm":Z
    .end local v16    # "formSize":F
    .end local v20    # "i":I
    :pswitch_8
    sget-object v2, Lcom/github/mikephil/charting/components/Legend$LegendHorizontalAlignment;->CENTER:Lcom/github/mikephil/charting/components/Legend$LegendHorizontalAlignment;

    move-object/from16 v0, v19

    if-ne v0, v2, :cond_1b

    const/16 v27, 0x0

    .line 398
    :goto_1a
    add-float v27, v27, v35

    .line 399
    goto :goto_11

    .line 395
    :cond_1b
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/github/mikephil/charting/renderer/LegendRenderer;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    .line 397
    invoke-virtual {v2}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->contentTop()F

    move-result v27

    goto :goto_1a

    .line 402
    :pswitch_9
    sget-object v2, Lcom/github/mikephil/charting/components/Legend$LegendHorizontalAlignment;->CENTER:Lcom/github/mikephil/charting/components/Legend$LegendHorizontalAlignment;

    move-object/from16 v0, v19

    if-ne v0, v2, :cond_1c

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/github/mikephil/charting/renderer/LegendRenderer;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    .line 403
    invoke-virtual {v2}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->getChartHeight()F

    move-result v27

    .line 405
    :goto_1b
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/github/mikephil/charting/renderer/LegendRenderer;->mLegend:Lcom/github/mikephil/charting/components/Legend;

    iget v2, v2, Lcom/github/mikephil/charting/components/Legend;->mNeededHeight:F

    add-float v2, v2, v35

    sub-float v27, v27, v2

    .line 406
    goto/16 :goto_11

    .line 403
    :cond_1c
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/github/mikephil/charting/renderer/LegendRenderer;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    .line 404
    invoke-virtual {v2}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->contentBottom()F

    move-result v27

    goto :goto_1b

    .line 409
    :pswitch_a
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/github/mikephil/charting/renderer/LegendRenderer;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    invoke-virtual {v2}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->getChartHeight()F

    move-result v2

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/github/mikephil/charting/renderer/LegendRenderer;->mLegend:Lcom/github/mikephil/charting/components/Legend;

    iget v3, v3, Lcom/github/mikephil/charting/components/Legend;->mNeededHeight:F

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v3, v5

    sub-float/2addr v2, v3

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/github/mikephil/charting/renderer/LegendRenderer;->mLegend:Lcom/github/mikephil/charting/components/Legend;

    .line 411
    invoke-virtual {v3}, Lcom/github/mikephil/charting/components/Legend;->getYOffset()F

    move-result v3

    add-float v27, v2, v3

    goto/16 :goto_11

    .line 418
    .restart local v6    # "e":Lcom/github/mikephil/charting/components/LegendEntry;
    .restart local v20    # "i":I
    :cond_1d
    const/4 v14, 0x0

    goto/16 :goto_13

    .line 419
    .restart local v14    # "drawingForm":Z
    :cond_1e
    iget v2, v6, Lcom/github/mikephil/charting/components/LegendEntry;->formSize:F

    invoke-static {v2}, Lcom/github/mikephil/charting/utils/Utils;->convertDpToPixel(F)F

    move-result v16

    goto/16 :goto_14

    .line 427
    .restart local v4    # "posX":F
    .restart local v16    # "formSize":F
    :cond_1f
    sub-float v2, v16, v28

    sub-float/2addr v4, v2

    goto/16 :goto_15

    .line 438
    :cond_20
    move/from16 v0, v17

    neg-float v2, v0

    goto/16 :goto_16

    .line 440
    :cond_21
    if-eqz v32, :cond_19

    .line 441
    move/from16 v4, v26

    goto/16 :goto_17

    .line 449
    :cond_22
    add-float v2, v22, v23

    add-float v27, v27, v2

    .line 450
    add-float v2, v27, v22

    iget-object v3, v6, Lcom/github/mikephil/charting/components/LegendEntry;->label:Ljava/lang/String;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v4, v2, v3}, Lcom/github/mikephil/charting/renderer/LegendRenderer;->drawLabel(Landroid/graphics/Canvas;FFLjava/lang/String;)V

    goto/16 :goto_18

    .line 457
    :cond_23
    add-float v2, v16, v29

    add-float v28, v28, v2

    .line 458
    const/16 v32, 0x1

    goto/16 :goto_19

    .line 260
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch

    .line 308
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_0
        :pswitch_7
    .end packed-switch

    .line 318
    :pswitch_data_2
    .packed-switch 0x1
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch

    .line 393
    :pswitch_data_3
    .packed-switch 0x1
        :pswitch_8
        :pswitch_9
        :pswitch_a
    .end packed-switch
.end method
