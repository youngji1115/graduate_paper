.class public Lcom/cashwalk/cashwalk/cashband/util/SleepDataManager;
.super Ljava/lang/Object;
.source "SleepDataManager.java"


# static fields
.field public static final DEEP_SLEEP:I = 0x3

.field public static final GET_UP:I = 0x2

.field public static final LIGHT_SLEEP:I = 0x4


# instance fields
.field private mResultSleep:Lcom/cashwalk/cashwalk/model/BandSleepGraph;


# direct methods
.method public constructor <init>(Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/cashwalk/cashwalk/model/BandSleep;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 25
    .local p1, "sleepData":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/cashwalk/cashwalk/model/BandSleep;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-eqz v0, :cond_0

    .line 27
    invoke-direct {p0, p1}, Lcom/cashwalk/cashwalk/cashband/util/SleepDataManager;->setSleepData(Ljava/util/ArrayList;)V

    .line 29
    :cond_0
    return-void
.end method

.method public static convertDrawData(Ljava/util/List;)Ljava/util/ArrayList;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;)",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 192
    .local p0, "records":Ljava/util/List;, "Ljava/util/List<Ljava/util/List<Ljava/lang/String;>;>;"
    if-nez p0, :cond_1

    .line 193
    const/4 v3, 0x0

    .line 208
    :cond_0
    return-object v3

    .line 196
    :cond_1
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 198
    .local v3, "results":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    .line 200
    .local v2, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v4, 0x1

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    div-int/lit8 v0, v4, 0xa

    .line 202
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "j":I
    :goto_0
    if-ge v1, v0, :cond_2

    .line 203
    const/4 v4, 0x0

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 202
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public static convertDrawData(Lorg/json/JSONArray;)Ljava/util/ArrayList;
    .locals 7
    .param p0, "records"    # Lorg/json/JSONArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONArray;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 162
    if-nez p0, :cond_1

    .line 163
    const/4 v5, 0x0

    .line 184
    :cond_0
    :goto_0
    return-object v5

    .line 166
    :cond_1
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 170
    .local v5, "results":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    :try_start_0
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v6

    if-ge v3, v6, :cond_0

    .line 172
    invoke-virtual {p0, v3}, Lorg/json/JSONArray;->getJSONArray(I)Lorg/json/JSONArray;

    move-result-object v0

    .line 173
    .local v0, "arr":Lorg/json/JSONArray;
    const/4 v6, 0x1

    invoke-virtual {v0, v6}, Lorg/json/JSONArray;->getInt(I)I

    move-result v6

    div-int/lit8 v1, v6, 0xa

    .line 175
    .local v1, "count":I
    const/4 v4, 0x0

    .local v4, "j":I
    :goto_2
    if-ge v4, v1, :cond_2

    .line 176
    const/4 v6, 0x0

    invoke-virtual {v0, v6}, Lorg/json/JSONArray;->getInt(I)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 175
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 170
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 180
    .end local v0    # "arr":Lorg/json/JSONArray;
    .end local v1    # "count":I
    .end local v4    # "j":I
    :catch_0
    move-exception v2

    .line 181
    .local v2, "e":Lorg/json/JSONException;
    invoke-virtual {v2}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method

.method private setSleepData(Ljava/util/ArrayList;)V
    .locals 25
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/cashwalk/cashwalk/model/BandSleep;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 40
    .local p1, "dbData":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/cashwalk/cashwalk/model/BandSleep;>;"
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 42
    .local v8, "mSleepTodayList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/cashwalk/cashwalk/model/BandSleep;>;"
    const/16 v22, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Lcom/cashwalk/cashwalk/model/BandSleep;

    move-object/from16 v0, v22

    iget v14, v0, Lcom/cashwalk/cashwalk/model/BandSleep;->startTime:I

    .line 43
    .local v14, "startTimeCode":I
    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->size()I

    move-result v22

    add-int/lit8 v22, v22, -0x1

    move-object/from16 v0, p1

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Lcom/cashwalk/cashwalk/model/BandSleep;

    move-object/from16 v0, v22

    iget v4, v0, Lcom/cashwalk/cashwalk/model/BandSleep;->endTime:I

    .line 44
    .local v4, "endTimeCode":I
    const/16 v18, 0x0

    .line 51
    .local v18, "timeCnt":I
    const/16 v22, 0x438

    move/from16 v0, v22

    if-lt v14, v0, :cond_5

    .line 52
    rsub-int v5, v14, 0x5a0

    .line 53
    .local v5, "evening":I
    move v10, v4

    .line 55
    .local v10, "morning":I
    add-int v22, v5, v10

    div-int/lit8 v18, v22, 0xa

    .line 61
    .end local v5    # "evening":I
    .end local v10    # "morning":I
    :goto_0
    move/from16 v19, v14

    .line 62
    .local v19, "timeCodeIdx":I
    const/4 v2, 0x4

    .line 63
    .local v2, "beforeSleepType":I
    const/4 v7, 0x0

    .line 65
    .local v7, "isAdd":Z
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_1
    add-int/lit8 v22, v18, 0x1

    move/from16 v0, v22

    if-ge v6, v0, :cond_6

    .line 66
    new-instance v13, Lcom/cashwalk/cashwalk/model/BandSleep;

    invoke-direct {v13}, Lcom/cashwalk/cashwalk/model/BandSleep;-><init>()V

    .line 67
    .local v13, "sleepToday":Lcom/cashwalk/cashwalk/model/BandSleep;
    move/from16 v0, v19

    iput v0, v13, Lcom/cashwalk/cashwalk/model/BandSleep;->timeCode:I

    .line 69
    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v22

    :cond_0
    invoke-interface/range {v22 .. v22}, Ljava/util/Iterator;->hasNext()Z

    move-result v23

    if-eqz v23, :cond_2

    invoke-interface/range {v22 .. v22}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/cashwalk/cashwalk/model/BandSleep;

    .line 70
    .local v3, "data":Lcom/cashwalk/cashwalk/model/BandSleep;
    iget v0, v3, Lcom/cashwalk/cashwalk/model/BandSleep;->startTime:I

    move/from16 v23, v0

    iget v0, v3, Lcom/cashwalk/cashwalk/model/BandSleep;->endTime:I

    move/from16 v24, v0

    move/from16 v0, v23

    move/from16 v1, v24

    if-eq v0, v1, :cond_0

    .line 74
    iget v0, v3, Lcom/cashwalk/cashwalk/model/BandSleep;->sleepType:I

    move/from16 v23, v0

    const/16 v24, 0x3

    move/from16 v0, v23

    move/from16 v1, v24

    if-eq v0, v1, :cond_1

    iget v0, v3, Lcom/cashwalk/cashwalk/model/BandSleep;->sleepType:I

    move/from16 v23, v0

    const/16 v24, 0x4

    move/from16 v0, v23

    move/from16 v1, v24

    if-eq v0, v1, :cond_1

    .line 75
    const/16 v23, 0x4

    move/from16 v0, v23

    iput v0, v3, Lcom/cashwalk/cashwalk/model/BandSleep;->sleepType:I

    .line 78
    :cond_1
    iget v0, v3, Lcom/cashwalk/cashwalk/model/BandSleep;->startTime:I

    move/from16 v23, v0

    move/from16 v0, v19

    move/from16 v1, v23

    if-ne v0, v1, :cond_0

    .line 79
    iget v0, v3, Lcom/cashwalk/cashwalk/model/BandSleep;->sleepType:I

    move/from16 v22, v0

    move/from16 v0, v22

    iput v0, v13, Lcom/cashwalk/cashwalk/model/BandSleep;->sleepType:I

    .line 80
    invoke-virtual {v8, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 81
    const/4 v7, 0x1

    .line 82
    iget v2, v3, Lcom/cashwalk/cashwalk/model/BandSleep;->sleepType:I

    .line 88
    .end local v3    # "data":Lcom/cashwalk/cashwalk/model/BandSleep;
    :cond_2
    if-nez v7, :cond_3

    .line 89
    iput v2, v13, Lcom/cashwalk/cashwalk/model/BandSleep;->sleepType:I

    .line 90
    invoke-virtual {v8, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 93
    :cond_3
    const/4 v7, 0x0

    .line 94
    add-int/lit8 v19, v19, 0xa

    .line 96
    const/16 v22, 0x5a0

    move/from16 v0, v19

    move/from16 v1, v22

    if-ne v0, v1, :cond_4

    .line 97
    const/16 v19, 0x0

    .line 65
    :cond_4
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 58
    .end local v2    # "beforeSleepType":I
    .end local v6    # "i":I
    .end local v7    # "isAdd":Z
    .end local v13    # "sleepToday":Lcom/cashwalk/cashwalk/model/BandSleep;
    .end local v19    # "timeCodeIdx":I
    :cond_5
    sub-int v22, v4, v14

    div-int/lit8 v18, v22, 0xa

    goto/16 :goto_0

    .line 102
    .restart local v2    # "beforeSleepType":I
    .restart local v6    # "i":I
    .restart local v7    # "isAdd":Z
    .restart local v19    # "timeCodeIdx":I
    :cond_6
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v22

    if-eqz v22, :cond_d

    .line 103
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v22

    add-int/lit8 v22, v22, -0x1

    mul-int/lit8 v17, v22, 0xa

    .line 104
    .local v17, "tempTotalSleep":I
    const/4 v15, 0x0

    .line 105
    .local v15, "tempTotalDeepSleep":I
    const/16 v16, 0x0

    .line 107
    .local v16, "tempTotalLightSleep":I
    const/4 v12, 0x0

    .line 108
    .local v12, "saveValue":I
    const/4 v9, 0x0

    .line 110
    .local v9, "middleType":I
    new-instance v11, Lorg/json/JSONArray;

    invoke-direct {v11}, Lorg/json/JSONArray;-><init>()V

    .line 113
    .local v11, "recordArr":Lorg/json/JSONArray;
    const/4 v6, 0x0

    :goto_2
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v22

    add-int/lit8 v22, v22, -0x1

    move/from16 v0, v22

    if-ge v6, v0, :cond_c

    .line 114
    invoke-virtual {v8, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Lcom/cashwalk/cashwalk/model/BandSleep;

    move-object/from16 v0, v22

    iget v0, v0, Lcom/cashwalk/cashwalk/model/BandSleep;->sleepType:I

    move/from16 v20, v0

    .line 116
    .local v20, "type":I
    if-nez v6, :cond_7

    .line 117
    move/from16 v9, v20

    .line 120
    :cond_7
    move/from16 v0, v20

    if-eq v0, v9, :cond_8

    .line 121
    new-instance v21, Lorg/json/JSONArray;

    invoke-direct/range {v21 .. v21}, Lorg/json/JSONArray;-><init>()V

    .line 122
    .local v21, "typeAndCntArr":Lorg/json/JSONArray;
    move-object/from16 v0, v21

    invoke-virtual {v0, v9}, Lorg/json/JSONArray;->put(I)Lorg/json/JSONArray;

    .line 123
    move-object/from16 v0, v21

    invoke-virtual {v0, v12}, Lorg/json/JSONArray;->put(I)Lorg/json/JSONArray;

    .line 124
    move-object/from16 v0, v21

    invoke-virtual {v11, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 125
    const/4 v12, 0x0

    .line 126
    move/from16 v9, v20

    .line 129
    .end local v21    # "typeAndCntArr":Lorg/json/JSONArray;
    :cond_8
    add-int/lit8 v12, v12, 0xa

    .line 131
    const/16 v22, 0x3

    move/from16 v0, v20

    move/from16 v1, v22

    if-ne v0, v1, :cond_b

    .line 132
    add-int/lit8 v15, v15, 0xa

    .line 138
    :cond_9
    :goto_3
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v22

    add-int/lit8 v22, v22, -0x2

    move/from16 v0, v22

    if-ne v6, v0, :cond_a

    .line 139
    new-instance v21, Lorg/json/JSONArray;

    invoke-direct/range {v21 .. v21}, Lorg/json/JSONArray;-><init>()V

    .line 140
    .restart local v21    # "typeAndCntArr":Lorg/json/JSONArray;
    move-object/from16 v0, v21

    invoke-virtual {v0, v9}, Lorg/json/JSONArray;->put(I)Lorg/json/JSONArray;

    .line 141
    move-object/from16 v0, v21

    invoke-virtual {v0, v12}, Lorg/json/JSONArray;->put(I)Lorg/json/JSONArray;

    .line 142
    move-object/from16 v0, v21

    invoke-virtual {v11, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 113
    .end local v21    # "typeAndCntArr":Lorg/json/JSONArray;
    :cond_a
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 133
    :cond_b
    const/16 v22, 0x4

    move/from16 v0, v20

    move/from16 v1, v22

    if-ne v0, v1, :cond_9

    .line 134
    add-int/lit8 v16, v16, 0xa

    goto :goto_3

    .line 146
    .end local v20    # "type":I
    :cond_c
    new-instance v22, Lcom/cashwalk/cashwalk/model/BandSleepGraph;

    invoke-direct/range {v22 .. v22}, Lcom/cashwalk/cashwalk/model/BandSleepGraph;-><init>()V

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/cashwalk/cashwalk/cashband/util/SleepDataManager;->mResultSleep:Lcom/cashwalk/cashwalk/model/BandSleepGraph;

    .line 147
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cashwalk/cashwalk/cashband/util/SleepDataManager;->mResultSleep:Lcom/cashwalk/cashwalk/model/BandSleepGraph;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iput-object v11, v0, Lcom/cashwalk/cashwalk/model/BandSleepGraph;->record:Lorg/json/JSONArray;

    .line 148
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cashwalk/cashwalk/cashband/util/SleepDataManager;->mResultSleep:Lcom/cashwalk/cashwalk/model/BandSleepGraph;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iput v14, v0, Lcom/cashwalk/cashwalk/model/BandSleepGraph;->sleepTimeStart:I

    .line 149
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cashwalk/cashwalk/cashband/util/SleepDataManager;->mResultSleep:Lcom/cashwalk/cashwalk/model/BandSleepGraph;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iput v4, v0, Lcom/cashwalk/cashwalk/model/BandSleepGraph;->sleepTimeEnd:I

    .line 150
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cashwalk/cashwalk/cashband/util/SleepDataManager;->mResultSleep:Lcom/cashwalk/cashwalk/model/BandSleepGraph;

    move-object/from16 v22, v0

    move/from16 v0, v17

    move-object/from16 v1, v22

    iput v0, v1, Lcom/cashwalk/cashwalk/model/BandSleepGraph;->sleepTimeAll:I

    .line 151
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cashwalk/cashwalk/cashband/util/SleepDataManager;->mResultSleep:Lcom/cashwalk/cashwalk/model/BandSleepGraph;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iput v15, v0, Lcom/cashwalk/cashwalk/model/BandSleepGraph;->sleepTimeHigh:I

    .line 152
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cashwalk/cashwalk/cashband/util/SleepDataManager;->mResultSleep:Lcom/cashwalk/cashwalk/model/BandSleepGraph;

    move-object/from16 v22, v0

    move/from16 v0, v16

    move-object/from16 v1, v22

    iput v0, v1, Lcom/cashwalk/cashwalk/model/BandSleepGraph;->sleepTimeLow:I

    .line 153
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cashwalk/cashwalk/cashband/util/SleepDataManager;->mResultSleep:Lcom/cashwalk/cashwalk/model/BandSleepGraph;

    move-object/from16 v23, v0

    const/16 v22, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Lcom/cashwalk/cashwalk/model/BandSleep;

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/cashwalk/cashwalk/model/BandSleep;->saveTime:Ljava/lang/String;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    iput-object v0, v1, Lcom/cashwalk/cashwalk/model/BandSleepGraph;->date:Ljava/lang/String;

    .line 155
    .end local v9    # "middleType":I
    .end local v11    # "recordArr":Lorg/json/JSONArray;
    .end local v12    # "saveValue":I
    .end local v15    # "tempTotalDeepSleep":I
    .end local v16    # "tempTotalLightSleep":I
    .end local v17    # "tempTotalSleep":I
    :cond_d
    return-void
.end method


# virtual methods
.method public getGraphData()Lcom/cashwalk/cashwalk/model/BandSleepGraph;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 33
    iget-object v0, p0, Lcom/cashwalk/cashwalk/cashband/util/SleepDataManager;->mResultSleep:Lcom/cashwalk/cashwalk/model/BandSleepGraph;

    return-object v0
.end method
