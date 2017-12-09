.class Lcom/cashwalk/cashwalk/fragment/StepBetStatFragment$2;
.super Lcom/cashwalk/cashwalk/util/network/ResponseHandler;
.source "StepBetStatFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cashwalk/cashwalk/fragment/StepBetStatFragment;->refreshStat()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cashwalk/cashwalk/fragment/StepBetStatFragment;


# direct methods
.method constructor <init>(Lcom/cashwalk/cashwalk/fragment/StepBetStatFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/cashwalk/cashwalk/fragment/StepBetStatFragment;

    .prologue
    .line 111
    iput-object p1, p0, Lcom/cashwalk/cashwalk/fragment/StepBetStatFragment$2;->this$0:Lcom/cashwalk/cashwalk/fragment/StepBetStatFragment;

    invoke-direct {p0}, Lcom/cashwalk/cashwalk/util/network/ResponseHandler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleResponse(Lorg/json/JSONObject;)V
    .locals 36
    .param p1, "jo"    # Lorg/json/JSONObject;

    .prologue
    .line 115
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cashwalk/cashwalk/fragment/StepBetStatFragment$2;->this$0:Lcom/cashwalk/cashwalk/fragment/StepBetStatFragment;

    move-object/from16 v30, v0

    const-string v31, "result"

    move-object/from16 v0, p1

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v31

    invoke-static/range {v31 .. v31}, Lcom/cashwalk/cashwalk/util/network/ResponseParser;->parseStepBetStat(Lorg/json/JSONObject;)Lcom/cashwalk/cashwalk/util/network/model/StepBetStat;

    move-result-object v31

    invoke-static/range {v30 .. v31}, Lcom/cashwalk/cashwalk/fragment/StepBetStatFragment;->access$102(Lcom/cashwalk/cashwalk/fragment/StepBetStatFragment;Lcom/cashwalk/cashwalk/util/network/model/StepBetStat;)Lcom/cashwalk/cashwalk/util/network/model/StepBetStat;

    .line 117
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cashwalk/cashwalk/fragment/StepBetStatFragment$2;->this$0:Lcom/cashwalk/cashwalk/fragment/StepBetStatFragment;

    move-object/from16 v30, v0

    invoke-static/range {v30 .. v30}, Lcom/cashwalk/cashwalk/fragment/StepBetStatFragment;->access$200(Lcom/cashwalk/cashwalk/fragment/StepBetStatFragment;)Landroid/content/SharedPreferences;

    move-result-object v30

    const-string/jumbo v31, "steps"

    const/16 v32, 0x0

    invoke-interface/range {v30 .. v32}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v21

    .line 118
    .local v21, "mySteps":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cashwalk/cashwalk/fragment/StepBetStatFragment$2;->this$0:Lcom/cashwalk/cashwalk/fragment/StepBetStatFragment;

    move-object/from16 v30, v0

    invoke-static/range {v30 .. v30}, Lcom/cashwalk/cashwalk/fragment/StepBetStatFragment;->access$100(Lcom/cashwalk/cashwalk/fragment/StepBetStatFragment;)Lcom/cashwalk/cashwalk/util/network/model/StepBetStat;

    move-result-object v30

    move-object/from16 v0, v30

    iget v0, v0, Lcom/cashwalk/cashwalk/util/network/model/StepBetStat;->avgSteps:I

    move/from16 v24, v0

    .line 119
    .local v24, "otherSteps":I
    new-instance v30, Lorg/joda/time/DateTime;

    invoke-direct/range {v30 .. v30}, Lorg/joda/time/DateTime;-><init>()V

    invoke-virtual/range {v30 .. v30}, Lorg/joda/time/DateTime;->getDayOfWeek()I

    move-result v15

    .line 121
    .local v15, "dayOfWeek":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cashwalk/cashwalk/fragment/StepBetStatFragment$2;->this$0:Lcom/cashwalk/cashwalk/fragment/StepBetStatFragment;

    move-object/from16 v30, v0

    invoke-static/range {v30 .. v30}, Lcom/cashwalk/cashwalk/fragment/StepBetStatFragment;->access$300(Lcom/cashwalk/cashwalk/fragment/StepBetStatFragment;)Lat/grabner/circleprogress/CircleProgressView;

    move-result-object v30

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v31, v0

    invoke-virtual/range {v30 .. v31}, Lat/grabner/circleprogress/CircleProgressView;->setValueAnimated(F)V

    .line 122
    move/from16 v0, v21

    move/from16 v1, v24

    if-le v0, v1, :cond_0

    .line 123
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cashwalk/cashwalk/fragment/StepBetStatFragment$2;->this$0:Lcom/cashwalk/cashwalk/fragment/StepBetStatFragment;

    move-object/from16 v30, v0

    invoke-static/range {v30 .. v30}, Lcom/cashwalk/cashwalk/fragment/StepBetStatFragment;->access$300(Lcom/cashwalk/cashwalk/fragment/StepBetStatFragment;)Lat/grabner/circleprogress/CircleProgressView;

    move-result-object v30

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cashwalk/cashwalk/fragment/StepBetStatFragment$2;->this$0:Lcom/cashwalk/cashwalk/fragment/StepBetStatFragment;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Lcom/cashwalk/cashwalk/fragment/StepBetStatFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v31

    const v32, 0x7f0f0063

    invoke-virtual/range {v31 .. v32}, Landroid/content/res/Resources;->getColor(I)I

    move-result v31

    invoke-virtual/range {v30 .. v31}, Lat/grabner/circleprogress/CircleProgressView;->setRimColor(I)V

    .line 124
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cashwalk/cashwalk/fragment/StepBetStatFragment$2;->this$0:Lcom/cashwalk/cashwalk/fragment/StepBetStatFragment;

    move-object/from16 v30, v0

    invoke-static/range {v30 .. v30}, Lcom/cashwalk/cashwalk/fragment/StepBetStatFragment;->access$300(Lcom/cashwalk/cashwalk/fragment/StepBetStatFragment;)Lat/grabner/circleprogress/CircleProgressView;

    move-result-object v30

    const/16 v31, 0x10

    invoke-static/range {v31 .. v31}, Lcom/cashwalk/cashwalk/util/Utils;->dpToPx(I)I

    move-result v31

    invoke-virtual/range {v30 .. v31}, Lat/grabner/circleprogress/CircleProgressView;->setRimWidth(I)V

    .line 125
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cashwalk/cashwalk/fragment/StepBetStatFragment$2;->this$0:Lcom/cashwalk/cashwalk/fragment/StepBetStatFragment;

    move-object/from16 v30, v0

    invoke-static/range {v30 .. v30}, Lcom/cashwalk/cashwalk/fragment/StepBetStatFragment;->access$400(Lcom/cashwalk/cashwalk/fragment/StepBetStatFragment;)Lat/grabner/circleprogress/CircleProgressView;

    move-result-object v30

    const/16 v31, 0x0

    invoke-virtual/range {v30 .. v31}, Lat/grabner/circleprogress/CircleProgressView;->setVisibility(I)V

    .line 126
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cashwalk/cashwalk/fragment/StepBetStatFragment$2;->this$0:Lcom/cashwalk/cashwalk/fragment/StepBetStatFragment;

    move-object/from16 v30, v0

    invoke-static/range {v30 .. v30}, Lcom/cashwalk/cashwalk/fragment/StepBetStatFragment;->access$500(Lcom/cashwalk/cashwalk/fragment/StepBetStatFragment;)Lat/grabner/circleprogress/CircleProgressView;

    move-result-object v30

    const/16 v31, 0x8

    invoke-virtual/range {v30 .. v31}, Lat/grabner/circleprogress/CircleProgressView;->setVisibility(I)V

    .line 127
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cashwalk/cashwalk/fragment/StepBetStatFragment$2;->this$0:Lcom/cashwalk/cashwalk/fragment/StepBetStatFragment;

    move-object/from16 v30, v0

    invoke-static/range {v30 .. v30}, Lcom/cashwalk/cashwalk/fragment/StepBetStatFragment;->access$400(Lcom/cashwalk/cashwalk/fragment/StepBetStatFragment;)Lat/grabner/circleprogress/CircleProgressView;

    move-result-object v30

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cashwalk/cashwalk/fragment/StepBetStatFragment$2;->this$0:Lcom/cashwalk/cashwalk/fragment/StepBetStatFragment;

    move-object/from16 v31, v0

    invoke-static/range {v31 .. v31}, Lcom/cashwalk/cashwalk/fragment/StepBetStatFragment;->access$100(Lcom/cashwalk/cashwalk/fragment/StepBetStatFragment;)Lcom/cashwalk/cashwalk/util/network/model/StepBetStat;

    move-result-object v31

    move-object/from16 v0, v31

    iget v0, v0, Lcom/cashwalk/cashwalk/util/network/model/StepBetStat;->avgSteps:I

    move/from16 v31, v0

    move/from16 v0, v31

    int-to-float v0, v0

    move/from16 v31, v0

    invoke-virtual/range {v30 .. v31}, Lat/grabner/circleprogress/CircleProgressView;->setValueAnimated(F)V

    .line 136
    :goto_0
    const/16 v20, 0x0

    .local v20, "i":I
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cashwalk/cashwalk/fragment/StepBetStatFragment$2;->this$0:Lcom/cashwalk/cashwalk/fragment/StepBetStatFragment;

    move-object/from16 v30, v0

    invoke-static/range {v30 .. v30}, Lcom/cashwalk/cashwalk/fragment/StepBetStatFragment;->access$100(Lcom/cashwalk/cashwalk/fragment/StepBetStatFragment;)Lcom/cashwalk/cashwalk/util/network/model/StepBetStat;

    move-result-object v30

    move-object/from16 v0, v30

    iget-object v0, v0, Lcom/cashwalk/cashwalk/util/network/model/StepBetStat;->pass:[I

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    array-length v0, v0

    move/from16 v30, v0

    move/from16 v0, v20

    move/from16 v1, v30

    if-ge v0, v1, :cond_2

    .line 137
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cashwalk/cashwalk/fragment/StepBetStatFragment$2;->this$0:Lcom/cashwalk/cashwalk/fragment/StepBetStatFragment;

    move-object/from16 v30, v0

    invoke-static/range {v30 .. v30}, Lcom/cashwalk/cashwalk/fragment/StepBetStatFragment;->access$100(Lcom/cashwalk/cashwalk/fragment/StepBetStatFragment;)Lcom/cashwalk/cashwalk/util/network/model/StepBetStat;

    move-result-object v30

    move-object/from16 v0, v30

    iget-object v0, v0, Lcom/cashwalk/cashwalk/util/network/model/StepBetStat;->pass:[I

    move-object/from16 v30, v0

    aget v30, v30, v20

    packed-switch v30, :pswitch_data_0

    .line 136
    :goto_2
    add-int/lit8 v20, v20, 0x1

    goto :goto_1

    .line 129
    .end local v20    # "i":I
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cashwalk/cashwalk/fragment/StepBetStatFragment$2;->this$0:Lcom/cashwalk/cashwalk/fragment/StepBetStatFragment;

    move-object/from16 v30, v0

    invoke-static/range {v30 .. v30}, Lcom/cashwalk/cashwalk/fragment/StepBetStatFragment;->access$300(Lcom/cashwalk/cashwalk/fragment/StepBetStatFragment;)Lat/grabner/circleprogress/CircleProgressView;

    move-result-object v30

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cashwalk/cashwalk/fragment/StepBetStatFragment$2;->this$0:Lcom/cashwalk/cashwalk/fragment/StepBetStatFragment;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Lcom/cashwalk/cashwalk/fragment/StepBetStatFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v31

    const v32, 0x7f0f0094

    invoke-virtual/range {v31 .. v32}, Landroid/content/res/Resources;->getColor(I)I

    move-result v31

    invoke-virtual/range {v30 .. v31}, Lat/grabner/circleprogress/CircleProgressView;->setRimColor(I)V

    .line 130
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cashwalk/cashwalk/fragment/StepBetStatFragment$2;->this$0:Lcom/cashwalk/cashwalk/fragment/StepBetStatFragment;

    move-object/from16 v30, v0

    invoke-static/range {v30 .. v30}, Lcom/cashwalk/cashwalk/fragment/StepBetStatFragment;->access$300(Lcom/cashwalk/cashwalk/fragment/StepBetStatFragment;)Lat/grabner/circleprogress/CircleProgressView;

    move-result-object v30

    const/16 v31, 0x0

    invoke-virtual/range {v30 .. v31}, Lat/grabner/circleprogress/CircleProgressView;->setRimWidth(I)V

    .line 131
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cashwalk/cashwalk/fragment/StepBetStatFragment$2;->this$0:Lcom/cashwalk/cashwalk/fragment/StepBetStatFragment;

    move-object/from16 v30, v0

    invoke-static/range {v30 .. v30}, Lcom/cashwalk/cashwalk/fragment/StepBetStatFragment;->access$400(Lcom/cashwalk/cashwalk/fragment/StepBetStatFragment;)Lat/grabner/circleprogress/CircleProgressView;

    move-result-object v30

    const/16 v31, 0x8

    invoke-virtual/range {v30 .. v31}, Lat/grabner/circleprogress/CircleProgressView;->setVisibility(I)V

    .line 132
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cashwalk/cashwalk/fragment/StepBetStatFragment$2;->this$0:Lcom/cashwalk/cashwalk/fragment/StepBetStatFragment;

    move-object/from16 v30, v0

    invoke-static/range {v30 .. v30}, Lcom/cashwalk/cashwalk/fragment/StepBetStatFragment;->access$500(Lcom/cashwalk/cashwalk/fragment/StepBetStatFragment;)Lat/grabner/circleprogress/CircleProgressView;

    move-result-object v30

    const/16 v31, 0x0

    invoke-virtual/range {v30 .. v31}, Lat/grabner/circleprogress/CircleProgressView;->setVisibility(I)V

    .line 133
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cashwalk/cashwalk/fragment/StepBetStatFragment$2;->this$0:Lcom/cashwalk/cashwalk/fragment/StepBetStatFragment;

    move-object/from16 v30, v0

    invoke-static/range {v30 .. v30}, Lcom/cashwalk/cashwalk/fragment/StepBetStatFragment;->access$500(Lcom/cashwalk/cashwalk/fragment/StepBetStatFragment;)Lat/grabner/circleprogress/CircleProgressView;

    move-result-object v30

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cashwalk/cashwalk/fragment/StepBetStatFragment$2;->this$0:Lcom/cashwalk/cashwalk/fragment/StepBetStatFragment;

    move-object/from16 v31, v0

    invoke-static/range {v31 .. v31}, Lcom/cashwalk/cashwalk/fragment/StepBetStatFragment;->access$100(Lcom/cashwalk/cashwalk/fragment/StepBetStatFragment;)Lcom/cashwalk/cashwalk/util/network/model/StepBetStat;

    move-result-object v31

    move-object/from16 v0, v31

    iget v0, v0, Lcom/cashwalk/cashwalk/util/network/model/StepBetStat;->avgSteps:I

    move/from16 v31, v0

    move/from16 v0, v31

    int-to-float v0, v0

    move/from16 v31, v0

    invoke-virtual/range {v30 .. v31}, Lat/grabner/circleprogress/CircleProgressView;->setValueAnimated(F)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 282
    .end local v15    # "dayOfWeek":I
    .end local v21    # "mySteps":I
    .end local v24    # "otherSteps":I
    :catch_0
    move-exception v19

    .line 283
    .local v19, "e":Ljava/lang/Exception;
    invoke-virtual/range {v19 .. v19}, Ljava/lang/Exception;->printStackTrace()V

    .line 285
    .end local v19    # "e":Ljava/lang/Exception;
    :goto_3
    return-void

    .line 139
    .restart local v15    # "dayOfWeek":I
    .restart local v20    # "i":I
    .restart local v21    # "mySteps":I
    .restart local v24    # "otherSteps":I
    :pswitch_0
    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cashwalk/cashwalk/fragment/StepBetStatFragment$2;->this$0:Lcom/cashwalk/cashwalk/fragment/StepBetStatFragment;

    move-object/from16 v30, v0

    invoke-static/range {v30 .. v30}, Lcom/cashwalk/cashwalk/fragment/StepBetStatFragment;->access$100(Lcom/cashwalk/cashwalk/fragment/StepBetStatFragment;)Lcom/cashwalk/cashwalk/util/network/model/StepBetStat;

    move-result-object v30

    move-object/from16 v0, v30

    iget-object v0, v0, Lcom/cashwalk/cashwalk/util/network/model/StepBetStat;->steps:[I

    move-object/from16 v30, v0

    aget v30, v30, v20

    if-eqz v30, :cond_1

    .line 140
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cashwalk/cashwalk/fragment/StepBetStatFragment$2;->this$0:Lcom/cashwalk/cashwalk/fragment/StepBetStatFragment;

    move-object/from16 v30, v0

    invoke-static/range {v30 .. v30}, Lcom/cashwalk/cashwalk/fragment/StepBetStatFragment;->access$600(Lcom/cashwalk/cashwalk/fragment/StepBetStatFragment;)[Landroid/widget/TextView;

    move-result-object v30

    aget-object v30, v30, v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cashwalk/cashwalk/fragment/StepBetStatFragment$2;->this$0:Lcom/cashwalk/cashwalk/fragment/StepBetStatFragment;

    move-object/from16 v31, v0

    invoke-static/range {v31 .. v31}, Lcom/cashwalk/cashwalk/fragment/StepBetStatFragment;->access$100(Lcom/cashwalk/cashwalk/fragment/StepBetStatFragment;)Lcom/cashwalk/cashwalk/util/network/model/StepBetStat;

    move-result-object v31

    move-object/from16 v0, v31

    iget-object v0, v0, Lcom/cashwalk/cashwalk/util/network/model/StepBetStat;->steps:[I

    move-object/from16 v31, v0

    aget v31, v31, v20

    invoke-static/range {v31 .. v31}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v31

    invoke-virtual/range {v30 .. v31}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 141
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cashwalk/cashwalk/fragment/StepBetStatFragment$2;->this$0:Lcom/cashwalk/cashwalk/fragment/StepBetStatFragment;

    move-object/from16 v30, v0

    invoke-static/range {v30 .. v30}, Lcom/cashwalk/cashwalk/fragment/StepBetStatFragment;->access$600(Lcom/cashwalk/cashwalk/fragment/StepBetStatFragment;)[Landroid/widget/TextView;

    move-result-object v30

    aget-object v30, v30, v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cashwalk/cashwalk/fragment/StepBetStatFragment$2;->this$0:Lcom/cashwalk/cashwalk/fragment/StepBetStatFragment;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Lcom/cashwalk/cashwalk/fragment/StepBetStatFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v31

    const v32, 0x7f020066

    invoke-virtual/range {v31 .. v32}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v31

    invoke-virtual/range {v30 .. v31}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_2

    .line 143
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cashwalk/cashwalk/fragment/StepBetStatFragment$2;->this$0:Lcom/cashwalk/cashwalk/fragment/StepBetStatFragment;

    move-object/from16 v30, v0

    invoke-static/range {v30 .. v30}, Lcom/cashwalk/cashwalk/fragment/StepBetStatFragment;->access$600(Lcom/cashwalk/cashwalk/fragment/StepBetStatFragment;)[Landroid/widget/TextView;

    move-result-object v30

    aget-object v30, v30, v20

    const-string v31, "-"

    invoke-virtual/range {v30 .. v31}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 144
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cashwalk/cashwalk/fragment/StepBetStatFragment$2;->this$0:Lcom/cashwalk/cashwalk/fragment/StepBetStatFragment;

    move-object/from16 v30, v0

    invoke-static/range {v30 .. v30}, Lcom/cashwalk/cashwalk/fragment/StepBetStatFragment;->access$600(Lcom/cashwalk/cashwalk/fragment/StepBetStatFragment;)[Landroid/widget/TextView;

    move-result-object v30

    aget-object v30, v30, v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cashwalk/cashwalk/fragment/StepBetStatFragment$2;->this$0:Lcom/cashwalk/cashwalk/fragment/StepBetStatFragment;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Lcom/cashwalk/cashwalk/fragment/StepBetStatFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v31

    const v32, 0x7f020060

    invoke-virtual/range {v31 .. v32}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v31

    invoke-virtual/range {v30 .. v31}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_2

    .line 148
    :pswitch_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cashwalk/cashwalk/fragment/StepBetStatFragment$2;->this$0:Lcom/cashwalk/cashwalk/fragment/StepBetStatFragment;

    move-object/from16 v30, v0

    invoke-static/range {v30 .. v30}, Lcom/cashwalk/cashwalk/fragment/StepBetStatFragment;->access$600(Lcom/cashwalk/cashwalk/fragment/StepBetStatFragment;)[Landroid/widget/TextView;

    move-result-object v30

    aget-object v30, v30, v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cashwalk/cashwalk/fragment/StepBetStatFragment$2;->this$0:Lcom/cashwalk/cashwalk/fragment/StepBetStatFragment;

    move-object/from16 v31, v0

    invoke-static/range {v31 .. v31}, Lcom/cashwalk/cashwalk/fragment/StepBetStatFragment;->access$100(Lcom/cashwalk/cashwalk/fragment/StepBetStatFragment;)Lcom/cashwalk/cashwalk/util/network/model/StepBetStat;

    move-result-object v31

    move-object/from16 v0, v31

    iget-object v0, v0, Lcom/cashwalk/cashwalk/util/network/model/StepBetStat;->steps:[I

    move-object/from16 v31, v0

    aget v31, v31, v20

    invoke-static/range {v31 .. v31}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v31

    invoke-virtual/range {v30 .. v31}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 149
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cashwalk/cashwalk/fragment/StepBetStatFragment$2;->this$0:Lcom/cashwalk/cashwalk/fragment/StepBetStatFragment;

    move-object/from16 v30, v0

    invoke-static/range {v30 .. v30}, Lcom/cashwalk/cashwalk/fragment/StepBetStatFragment;->access$600(Lcom/cashwalk/cashwalk/fragment/StepBetStatFragment;)[Landroid/widget/TextView;

    move-result-object v30

    aget-object v30, v30, v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cashwalk/cashwalk/fragment/StepBetStatFragment$2;->this$0:Lcom/cashwalk/cashwalk/fragment/StepBetStatFragment;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Lcom/cashwalk/cashwalk/fragment/StepBetStatFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v31

    const v32, 0x7f020062

    invoke-virtual/range {v31 .. v32}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v31

    invoke-virtual/range {v30 .. v31}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_2

    .line 152
    :pswitch_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cashwalk/cashwalk/fragment/StepBetStatFragment$2;->this$0:Lcom/cashwalk/cashwalk/fragment/StepBetStatFragment;

    move-object/from16 v30, v0

    invoke-static/range {v30 .. v30}, Lcom/cashwalk/cashwalk/fragment/StepBetStatFragment;->access$600(Lcom/cashwalk/cashwalk/fragment/StepBetStatFragment;)[Landroid/widget/TextView;

    move-result-object v30

    aget-object v30, v30, v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cashwalk/cashwalk/fragment/StepBetStatFragment$2;->this$0:Lcom/cashwalk/cashwalk/fragment/StepBetStatFragment;

    move-object/from16 v31, v0

    invoke-static/range {v31 .. v31}, Lcom/cashwalk/cashwalk/fragment/StepBetStatFragment;->access$100(Lcom/cashwalk/cashwalk/fragment/StepBetStatFragment;)Lcom/cashwalk/cashwalk/util/network/model/StepBetStat;

    move-result-object v31

    move-object/from16 v0, v31

    iget-object v0, v0, Lcom/cashwalk/cashwalk/util/network/model/StepBetStat;->steps:[I

    move-object/from16 v31, v0

    aget v31, v31, v20

    invoke-static/range {v31 .. v31}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v31

    invoke-virtual/range {v30 .. v31}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 153
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cashwalk/cashwalk/fragment/StepBetStatFragment$2;->this$0:Lcom/cashwalk/cashwalk/fragment/StepBetStatFragment;

    move-object/from16 v30, v0

    invoke-static/range {v30 .. v30}, Lcom/cashwalk/cashwalk/fragment/StepBetStatFragment;->access$600(Lcom/cashwalk/cashwalk/fragment/StepBetStatFragment;)[Landroid/widget/TextView;

    move-result-object v30

    aget-object v30, v30, v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cashwalk/cashwalk/fragment/StepBetStatFragment$2;->this$0:Lcom/cashwalk/cashwalk/fragment/StepBetStatFragment;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Lcom/cashwalk/cashwalk/fragment/StepBetStatFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v31

    const v32, 0x7f02005e

    invoke-virtual/range {v31 .. v32}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v31

    invoke-virtual/range {v30 .. v31}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_2

    .line 158
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cashwalk/cashwalk/fragment/StepBetStatFragment$2;->this$0:Lcom/cashwalk/cashwalk/fragment/StepBetStatFragment;

    move-object/from16 v30, v0

    invoke-static/range {v30 .. v30}, Lcom/cashwalk/cashwalk/fragment/StepBetStatFragment;->access$100(Lcom/cashwalk/cashwalk/fragment/StepBetStatFragment;)Lcom/cashwalk/cashwalk/util/network/model/StepBetStat;

    move-result-object v30

    move-object/from16 v0, v30

    iget-boolean v0, v0, Lcom/cashwalk/cashwalk/util/network/model/StepBetStat;->dropout:Z

    move/from16 v30, v0

    if-eqz v30, :cond_4

    .line 159
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cashwalk/cashwalk/fragment/StepBetStatFragment$2;->this$0:Lcom/cashwalk/cashwalk/fragment/StepBetStatFragment;

    move-object/from16 v30, v0

    invoke-static/range {v30 .. v30}, Lcom/cashwalk/cashwalk/fragment/StepBetStatFragment;->access$700(Lcom/cashwalk/cashwalk/fragment/StepBetStatFragment;)Landroid/view/LayoutInflater;

    move-result-object v30

    const v31, 0x7f04006b

    const/16 v32, 0x0

    invoke-virtual/range {v30 .. v32}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v28

    .line 161
    .local v28, "v":Landroid/view/View;
    const v30, 0x7f1001f1

    move-object/from16 v0, v28

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v22

    check-cast v22, Landroid/widget/TextView;

    .line 162
    .local v22, "nickname":Landroid/widget/TextView;
    const v30, 0x7f1001f4

    move-object/from16 v0, v28

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v25

    check-cast v25, Landroid/widget/TextView;

    .line 163
    .local v25, "point":Landroid/widget/TextView;
    const v30, 0x7f10034e

    move-object/from16 v0, v28

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v29

    check-cast v29, Landroid/widget/Button;

    .line 164
    .local v29, "yes":Landroid/widget/Button;
    const v30, 0x7f10034d

    move-object/from16 v0, v28

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v23

    check-cast v23, Landroid/widget/Button;

    .line 166
    .local v23, "no":Landroid/widget/Button;
    new-instance v30, Lorg/joda/time/DateTime;

    invoke-direct/range {v30 .. v30}, Lorg/joda/time/DateTime;-><init>()V

    invoke-virtual/range {v30 .. v30}, Lorg/joda/time/DateTime;->getDayOfWeek()I

    move-result v30

    add-int/lit8 v30, v30, -0x1

    mul-int/lit8 v26, v30, 0x64

    .line 167
    .local v26, "retryPopint":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cashwalk/cashwalk/fragment/StepBetStatFragment$2;->this$0:Lcom/cashwalk/cashwalk/fragment/StepBetStatFragment;

    move-object/from16 v30, v0

    const v31, 0x7f0902b2

    invoke-virtual/range {v30 .. v31}, Lcom/cashwalk/cashwalk/fragment/StepBetStatFragment;->getString(I)Ljava/lang/String;

    move-result-object v30

    const-string v31, "%s"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cashwalk/cashwalk/fragment/StepBetStatFragment$2;->this$0:Lcom/cashwalk/cashwalk/fragment/StepBetStatFragment;

    move-object/from16 v32, v0

    invoke-static/range {v32 .. v32}, Lcom/cashwalk/cashwalk/fragment/StepBetStatFragment;->access$200(Lcom/cashwalk/cashwalk/fragment/StepBetStatFragment;)Landroid/content/SharedPreferences;

    move-result-object v32

    const-string v33, "NICKNAME"

    const/16 v34, 0x0

    invoke-interface/range {v32 .. v34}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v32

    invoke-virtual/range {v30 .. v32}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v30

    move-object/from16 v0, v22

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 168
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cashwalk/cashwalk/fragment/StepBetStatFragment$2;->this$0:Lcom/cashwalk/cashwalk/fragment/StepBetStatFragment;

    move-object/from16 v30, v0

    const v31, 0x7f0902b3

    invoke-virtual/range {v30 .. v31}, Lcom/cashwalk/cashwalk/fragment/StepBetStatFragment;->getString(I)Ljava/lang/String;

    move-result-object v30

    const-string v31, "%s"

    invoke-static/range {v26 .. v26}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v32

    invoke-virtual/range {v30 .. v32}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v30

    move-object/from16 v0, v25

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 169
    new-instance v30, Lcom/cashwalk/cashwalk/fragment/StepBetStatFragment$2$1;

    move-object/from16 v0, v30

    move-object/from16 v1, p0

    move/from16 v2, v26

    invoke-direct {v0, v1, v2}, Lcom/cashwalk/cashwalk/fragment/StepBetStatFragment$2$1;-><init>(Lcom/cashwalk/cashwalk/fragment/StepBetStatFragment$2;I)V

    invoke-virtual/range {v29 .. v30}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 184
    new-instance v30, Lcom/cashwalk/cashwalk/fragment/StepBetStatFragment$2$2;

    move-object/from16 v0, v30

    move-object/from16 v1, p0

    move/from16 v2, v26

    invoke-direct {v0, v1, v2}, Lcom/cashwalk/cashwalk/fragment/StepBetStatFragment$2$2;-><init>(Lcom/cashwalk/cashwalk/fragment/StepBetStatFragment$2;I)V

    move-object/from16 v0, v23

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 200
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cashwalk/cashwalk/fragment/StepBetStatFragment$2;->this$0:Lcom/cashwalk/cashwalk/fragment/StepBetStatFragment;

    move-object/from16 v30, v0

    invoke-static/range {v30 .. v30}, Lcom/cashwalk/cashwalk/fragment/StepBetStatFragment;->access$900(Lcom/cashwalk/cashwalk/fragment/StepBetStatFragment;)Landroid/widget/LinearLayout;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 201
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cashwalk/cashwalk/fragment/StepBetStatFragment$2;->this$0:Lcom/cashwalk/cashwalk/fragment/StepBetStatFragment;

    move-object/from16 v30, v0

    invoke-static/range {v30 .. v30}, Lcom/cashwalk/cashwalk/fragment/StepBetStatFragment;->access$900(Lcom/cashwalk/cashwalk/fragment/StepBetStatFragment;)Landroid/widget/LinearLayout;

    move-result-object v30

    move-object/from16 v0, v30

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 206
    .end local v22    # "nickname":Landroid/widget/TextView;
    .end local v23    # "no":Landroid/widget/Button;
    .end local v25    # "point":Landroid/widget/TextView;
    .end local v26    # "retryPopint":I
    .end local v28    # "v":Landroid/view/View;
    .end local v29    # "yes":Landroid/widget/Button;
    :goto_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cashwalk/cashwalk/fragment/StepBetStatFragment$2;->this$0:Lcom/cashwalk/cashwalk/fragment/StepBetStatFragment;

    move-object/from16 v30, v0

    invoke-static/range {v30 .. v30}, Lcom/cashwalk/cashwalk/fragment/StepBetStatFragment;->access$1000(Lcom/cashwalk/cashwalk/fragment/StepBetStatFragment;)Landroid/widget/LinearLayout;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 208
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cashwalk/cashwalk/fragment/StepBetStatFragment$2;->this$0:Lcom/cashwalk/cashwalk/fragment/StepBetStatFragment;

    move-object/from16 v30, v0

    invoke-static/range {v30 .. v30}, Lcom/cashwalk/cashwalk/fragment/StepBetStatFragment;->access$700(Lcom/cashwalk/cashwalk/fragment/StepBetStatFragment;)Landroid/view/LayoutInflater;

    move-result-object v30

    const v31, 0x7f0400b4

    const/16 v32, 0x0

    invoke-virtual/range {v30 .. v32}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    .line 209
    .local v4, "b1":Landroid/view/View;
    const v30, 0x7f10041b

    move/from16 v0, v30

    invoke-virtual {v4, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v16

    check-cast v16, Landroid/widget/ImageView;

    .line 210
    .local v16, "dot1":Landroid/widget/ImageView;
    const v30, 0x7f100268

    move/from16 v0, v30

    invoke-virtual {v4, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    .line 211
    .local v8, "body1":Landroid/widget/TextView;
    const v30, 0x7f1003a2

    move/from16 v0, v30

    invoke-virtual {v4, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/TextView;

    .line 213
    .local v12, "dateTime1":Landroid/widget/TextView;
    const v30, 0x7f0201d3

    move-object/from16 v0, v16

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 214
    const-string/jumbo v30, "\uc774\ubc88 \uc8fc\uc758 \uac77\uae30\uc655 \ub300\ud68c\uac00 \uc2dc\uc791\ub418\uc5c8\uc2b5\ub2c8\ub2e4!"

    move-object/from16 v0, v30

    invoke-virtual {v8, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 215
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cashwalk/cashwalk/fragment/StepBetStatFragment$2;->this$0:Lcom/cashwalk/cashwalk/fragment/StepBetStatFragment;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Lcom/cashwalk/cashwalk/fragment/StepBetStatFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v30

    new-instance v31, Lorg/joda/time/DateTime;

    invoke-direct/range {v31 .. v31}, Lorg/joda/time/DateTime;-><init>()V

    new-instance v32, Lorg/joda/time/DateTime;

    invoke-direct/range {v32 .. v32}, Lorg/joda/time/DateTime;-><init>()V

    invoke-virtual/range {v32 .. v32}, Lorg/joda/time/DateTime;->getDayOfWeek()I

    move-result v32

    add-int/lit8 v32, v32, -0x1

    invoke-virtual/range {v31 .. v32}, Lorg/joda/time/DateTime;->minusDays(I)Lorg/joda/time/DateTime;

    move-result-object v31

    invoke-static/range {v30 .. v31}, Lcom/cashwalk/cashwalk/util/Utils;->getAgoString(Landroid/content/Context;Lorg/joda/time/DateTime;)Ljava/lang/String;

    move-result-object v30

    move-object/from16 v0, v30

    invoke-virtual {v12, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 217
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cashwalk/cashwalk/fragment/StepBetStatFragment$2;->this$0:Lcom/cashwalk/cashwalk/fragment/StepBetStatFragment;

    move-object/from16 v30, v0

    invoke-static/range {v30 .. v30}, Lcom/cashwalk/cashwalk/fragment/StepBetStatFragment;->access$1000(Lcom/cashwalk/cashwalk/fragment/StepBetStatFragment;)Landroid/widget/LinearLayout;

    move-result-object v30

    move-object/from16 v0, v30

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 219
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cashwalk/cashwalk/fragment/StepBetStatFragment$2;->this$0:Lcom/cashwalk/cashwalk/fragment/StepBetStatFragment;

    move-object/from16 v30, v0

    invoke-static/range {v30 .. v30}, Lcom/cashwalk/cashwalk/fragment/StepBetStatFragment;->access$700(Lcom/cashwalk/cashwalk/fragment/StepBetStatFragment;)Landroid/view/LayoutInflater;

    move-result-object v30

    const v31, 0x7f0400b4

    const/16 v32, 0x0

    invoke-virtual/range {v30 .. v32}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v5

    .line 220
    .local v5, "b2":Landroid/view/View;
    const v30, 0x7f10041b

    move/from16 v0, v30

    invoke-virtual {v5, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v17

    check-cast v17, Landroid/widget/ImageView;

    .line 221
    .local v17, "dot2":Landroid/widget/ImageView;
    const v30, 0x7f100268

    move/from16 v0, v30

    invoke-virtual {v5, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/TextView;

    .line 222
    .local v9, "body2":Landroid/widget/TextView;
    const v30, 0x7f1003a2

    move/from16 v0, v30

    invoke-virtual {v5, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/TextView;

    .line 224
    .local v13, "dateTime2":Landroid/widget/TextView;
    const v30, 0x7f0201d3

    move-object/from16 v0, v17

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 225
    new-instance v30, Ljava/lang/StringBuilder;

    invoke-direct/range {v30 .. v30}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v31, "\uc774\ubc88 \uc8fc\ub294 \ucd1d "

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cashwalk/cashwalk/fragment/StepBetStatFragment$2;->this$0:Lcom/cashwalk/cashwalk/fragment/StepBetStatFragment;

    move-object/from16 v31, v0

    invoke-static/range {v31 .. v31}, Lcom/cashwalk/cashwalk/fragment/StepBetStatFragment;->access$100(Lcom/cashwalk/cashwalk/fragment/StepBetStatFragment;)Lcom/cashwalk/cashwalk/util/network/model/StepBetStat;

    move-result-object v31

    move-object/from16 v0, v31

    iget v0, v0, Lcom/cashwalk/cashwalk/util/network/model/StepBetStat;->participants:I

    move/from16 v31, v0

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v30

    const-string/jumbo v31, "\uba85\uc758 \ucc38\uac00\uc790\uac00 \ucc38\uac00\ud588\uc2b5\ub2c8\ub2e4. \ud589\uc6b4\uc744 \ube55\ub2c8\ub2e4!"

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    move-object/from16 v0, v30

    invoke-virtual {v9, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 226
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cashwalk/cashwalk/fragment/StepBetStatFragment$2;->this$0:Lcom/cashwalk/cashwalk/fragment/StepBetStatFragment;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Lcom/cashwalk/cashwalk/fragment/StepBetStatFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v30

    new-instance v31, Lorg/joda/time/DateTime;

    invoke-direct/range {v31 .. v31}, Lorg/joda/time/DateTime;-><init>()V

    new-instance v32, Lorg/joda/time/DateTime;

    invoke-direct/range {v32 .. v32}, Lorg/joda/time/DateTime;-><init>()V

    invoke-virtual/range {v32 .. v32}, Lorg/joda/time/DateTime;->getDayOfWeek()I

    move-result v32

    add-int/lit8 v32, v32, -0x1

    invoke-virtual/range {v31 .. v32}, Lorg/joda/time/DateTime;->minusDays(I)Lorg/joda/time/DateTime;

    move-result-object v31

    invoke-static/range {v30 .. v31}, Lcom/cashwalk/cashwalk/util/Utils;->getAgoString(Landroid/content/Context;Lorg/joda/time/DateTime;)Ljava/lang/String;

    move-result-object v30

    move-object/from16 v0, v30

    invoke-virtual {v13, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 228
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cashwalk/cashwalk/fragment/StepBetStatFragment$2;->this$0:Lcom/cashwalk/cashwalk/fragment/StepBetStatFragment;

    move-object/from16 v30, v0

    invoke-static/range {v30 .. v30}, Lcom/cashwalk/cashwalk/fragment/StepBetStatFragment;->access$1000(Lcom/cashwalk/cashwalk/fragment/StepBetStatFragment;)Landroid/widget/LinearLayout;

    move-result-object v30

    const/16 v31, 0x0

    move-object/from16 v0, v30

    move/from16 v1, v31

    invoke-virtual {v0, v5, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;I)V

    .line 230
    const/16 v20, 0x0

    :goto_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cashwalk/cashwalk/fragment/StepBetStatFragment$2;->this$0:Lcom/cashwalk/cashwalk/fragment/StepBetStatFragment;

    move-object/from16 v30, v0

    invoke-static/range {v30 .. v30}, Lcom/cashwalk/cashwalk/fragment/StepBetStatFragment;->access$100(Lcom/cashwalk/cashwalk/fragment/StepBetStatFragment;)Lcom/cashwalk/cashwalk/util/network/model/StepBetStat;

    move-result-object v30

    move-object/from16 v0, v30

    iget-object v0, v0, Lcom/cashwalk/cashwalk/util/network/model/StepBetStat;->dropouts:[I

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    array-length v0, v0

    move/from16 v30, v0

    move/from16 v0, v20

    move/from16 v1, v30

    if-ge v0, v1, :cond_5

    .line 231
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cashwalk/cashwalk/fragment/StepBetStatFragment$2;->this$0:Lcom/cashwalk/cashwalk/fragment/StepBetStatFragment;

    move-object/from16 v30, v0

    invoke-static/range {v30 .. v30}, Lcom/cashwalk/cashwalk/fragment/StepBetStatFragment;->access$100(Lcom/cashwalk/cashwalk/fragment/StepBetStatFragment;)Lcom/cashwalk/cashwalk/util/network/model/StepBetStat;

    move-result-object v30

    move-object/from16 v0, v30

    iget-object v0, v0, Lcom/cashwalk/cashwalk/util/network/model/StepBetStat;->pass:[I

    move-object/from16 v30, v0

    aget v30, v30, v20

    const/16 v31, -0x1

    move/from16 v0, v30

    move/from16 v1, v31

    if-eq v0, v1, :cond_3

    .line 232
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cashwalk/cashwalk/fragment/StepBetStatFragment$2;->this$0:Lcom/cashwalk/cashwalk/fragment/StepBetStatFragment;

    move-object/from16 v30, v0

    invoke-static/range {v30 .. v30}, Lcom/cashwalk/cashwalk/fragment/StepBetStatFragment;->access$700(Lcom/cashwalk/cashwalk/fragment/StepBetStatFragment;)Landroid/view/LayoutInflater;

    move-result-object v30

    const v31, 0x7f0400b4

    const/16 v32, 0x0

    invoke-virtual/range {v30 .. v32}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .line 233
    .local v3, "b":Landroid/view/View;
    const v30, 0x7f100268

    move/from16 v0, v30

    invoke-virtual {v3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    .line 234
    .local v7, "body":Landroid/widget/TextView;
    const v30, 0x7f1003a2

    move/from16 v0, v30

    invoke-virtual {v3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/TextView;

    .line 236
    .local v11, "dateTime":Landroid/widget/TextView;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cashwalk/cashwalk/fragment/StepBetStatFragment$2;->this$0:Lcom/cashwalk/cashwalk/fragment/StepBetStatFragment;

    move-object/from16 v30, v0

    invoke-static/range {v30 .. v30}, Lcom/cashwalk/cashwalk/fragment/StepBetStatFragment;->access$100(Lcom/cashwalk/cashwalk/fragment/StepBetStatFragment;)Lcom/cashwalk/cashwalk/util/network/model/StepBetStat;

    move-result-object v30

    move-object/from16 v0, v30

    iget-object v0, v0, Lcom/cashwalk/cashwalk/util/network/model/StepBetStat;->steps:[I

    move-object/from16 v30, v0

    aget v30, v30, v20

    if-eqz v30, :cond_3

    .line 237
    packed-switch v20, :pswitch_data_1

    .line 260
    :goto_6
    new-instance v27, Lorg/joda/time/DateTime;

    invoke-direct/range {v27 .. v27}, Lorg/joda/time/DateTime;-><init>()V

    .line 261
    .local v27, "today":Lorg/joda/time/DateTime;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cashwalk/cashwalk/fragment/StepBetStatFragment$2;->this$0:Lcom/cashwalk/cashwalk/fragment/StepBetStatFragment;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Lcom/cashwalk/cashwalk/fragment/StepBetStatFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v30

    invoke-virtual/range {v27 .. v27}, Lorg/joda/time/DateTime;->getDayOfWeek()I

    move-result v31

    sub-int v31, v31, v20

    add-int/lit8 v31, v31, -0x1

    move-object/from16 v0, v27

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Lorg/joda/time/DateTime;->minusDays(I)Lorg/joda/time/DateTime;

    move-result-object v31

    const/16 v32, 0x0

    const/16 v33, 0x0

    const/16 v34, 0x0

    const/16 v35, 0x0

    invoke-virtual/range {v31 .. v35}, Lorg/joda/time/DateTime;->withTime(IIII)Lorg/joda/time/DateTime;

    move-result-object v31

    invoke-static/range {v30 .. v31}, Lcom/cashwalk/cashwalk/util/Utils;->getAgoString(Landroid/content/Context;Lorg/joda/time/DateTime;)Ljava/lang/String;

    move-result-object v30

    move-object/from16 v0, v30

    invoke-virtual {v11, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 262
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cashwalk/cashwalk/fragment/StepBetStatFragment$2;->this$0:Lcom/cashwalk/cashwalk/fragment/StepBetStatFragment;

    move-object/from16 v30, v0

    invoke-static/range {v30 .. v30}, Lcom/cashwalk/cashwalk/fragment/StepBetStatFragment;->access$1000(Lcom/cashwalk/cashwalk/fragment/StepBetStatFragment;)Landroid/widget/LinearLayout;

    move-result-object v30

    const/16 v31, 0x0

    move-object/from16 v0, v30

    move/from16 v1, v31

    invoke-virtual {v0, v3, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;I)V

    .line 230
    .end local v3    # "b":Landroid/view/View;
    .end local v7    # "body":Landroid/widget/TextView;
    .end local v11    # "dateTime":Landroid/widget/TextView;
    .end local v27    # "today":Lorg/joda/time/DateTime;
    :cond_3
    add-int/lit8 v20, v20, 0x1

    goto/16 :goto_5

    .line 203
    .end local v4    # "b1":Landroid/view/View;
    .end local v5    # "b2":Landroid/view/View;
    .end local v8    # "body1":Landroid/widget/TextView;
    .end local v9    # "body2":Landroid/widget/TextView;
    .end local v12    # "dateTime1":Landroid/widget/TextView;
    .end local v13    # "dateTime2":Landroid/widget/TextView;
    .end local v16    # "dot1":Landroid/widget/ImageView;
    .end local v17    # "dot2":Landroid/widget/ImageView;
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cashwalk/cashwalk/fragment/StepBetStatFragment$2;->this$0:Lcom/cashwalk/cashwalk/fragment/StepBetStatFragment;

    move-object/from16 v30, v0

    invoke-static/range {v30 .. v30}, Lcom/cashwalk/cashwalk/fragment/StepBetStatFragment;->access$900(Lcom/cashwalk/cashwalk/fragment/StepBetStatFragment;)Landroid/widget/LinearLayout;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Landroid/widget/LinearLayout;->removeAllViews()V

    goto/16 :goto_4

    .line 239
    .restart local v3    # "b":Landroid/view/View;
    .restart local v4    # "b1":Landroid/view/View;
    .restart local v5    # "b2":Landroid/view/View;
    .restart local v7    # "body":Landroid/widget/TextView;
    .restart local v8    # "body1":Landroid/widget/TextView;
    .restart local v9    # "body2":Landroid/widget/TextView;
    .restart local v11    # "dateTime":Landroid/widget/TextView;
    .restart local v12    # "dateTime1":Landroid/widget/TextView;
    .restart local v13    # "dateTime2":Landroid/widget/TextView;
    .restart local v16    # "dot1":Landroid/widget/ImageView;
    .restart local v17    # "dot2":Landroid/widget/ImageView;
    :pswitch_3
    new-instance v30, Ljava/lang/StringBuilder;

    invoke-direct/range {v30 .. v30}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cashwalk/cashwalk/fragment/StepBetStatFragment$2;->this$0:Lcom/cashwalk/cashwalk/fragment/StepBetStatFragment;

    move-object/from16 v31, v0

    invoke-static/range {v31 .. v31}, Lcom/cashwalk/cashwalk/fragment/StepBetStatFragment;->access$200(Lcom/cashwalk/cashwalk/fragment/StepBetStatFragment;)Landroid/content/SharedPreferences;

    move-result-object v31

    const-string v32, "NICKNAME"

    const/16 v33, 0x0

    invoke-interface/range {v31 .. v33}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v31

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    const-string/jumbo v31, "\ub2d8\uc740 \uc6d4\uc694\uc77c\uc5d0 \ucd1d "

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cashwalk/cashwalk/fragment/StepBetStatFragment$2;->this$0:Lcom/cashwalk/cashwalk/fragment/StepBetStatFragment;

    move-object/from16 v31, v0

    invoke-static/range {v31 .. v31}, Lcom/cashwalk/cashwalk/fragment/StepBetStatFragment;->access$100(Lcom/cashwalk/cashwalk/fragment/StepBetStatFragment;)Lcom/cashwalk/cashwalk/util/network/model/StepBetStat;

    move-result-object v31

    move-object/from16 v0, v31

    iget-object v0, v0, Lcom/cashwalk/cashwalk/util/network/model/StepBetStat;->steps:[I

    move-object/from16 v31, v0

    aget v31, v31, v20

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v30

    const-string/jumbo v31, "\uac78\uc74c\uc744 \uac78\uc5c8\uc2b5\ub2c8\ub2e4."

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    move-object/from16 v0, v30

    invoke-virtual {v7, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_6

    .line 242
    :pswitch_4
    new-instance v30, Ljava/lang/StringBuilder;

    invoke-direct/range {v30 .. v30}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cashwalk/cashwalk/fragment/StepBetStatFragment$2;->this$0:Lcom/cashwalk/cashwalk/fragment/StepBetStatFragment;

    move-object/from16 v31, v0

    invoke-static/range {v31 .. v31}, Lcom/cashwalk/cashwalk/fragment/StepBetStatFragment;->access$200(Lcom/cashwalk/cashwalk/fragment/StepBetStatFragment;)Landroid/content/SharedPreferences;

    move-result-object v31

    const-string v32, "NICKNAME"

    const/16 v33, 0x0

    invoke-interface/range {v31 .. v33}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v31

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    const-string/jumbo v31, "\ub2d8\uc740 \ud654\uc694\uc77c\uc5d0 \ucd1d "

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cashwalk/cashwalk/fragment/StepBetStatFragment$2;->this$0:Lcom/cashwalk/cashwalk/fragment/StepBetStatFragment;

    move-object/from16 v31, v0

    invoke-static/range {v31 .. v31}, Lcom/cashwalk/cashwalk/fragment/StepBetStatFragment;->access$100(Lcom/cashwalk/cashwalk/fragment/StepBetStatFragment;)Lcom/cashwalk/cashwalk/util/network/model/StepBetStat;

    move-result-object v31

    move-object/from16 v0, v31

    iget-object v0, v0, Lcom/cashwalk/cashwalk/util/network/model/StepBetStat;->steps:[I

    move-object/from16 v31, v0

    aget v31, v31, v20

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v30

    const-string/jumbo v31, "\uac78\uc74c\uc744 \uac78\uc5c8\uc2b5\ub2c8\ub2e4."

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    move-object/from16 v0, v30

    invoke-virtual {v7, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_6

    .line 245
    :pswitch_5
    new-instance v30, Ljava/lang/StringBuilder;

    invoke-direct/range {v30 .. v30}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cashwalk/cashwalk/fragment/StepBetStatFragment$2;->this$0:Lcom/cashwalk/cashwalk/fragment/StepBetStatFragment;

    move-object/from16 v31, v0

    invoke-static/range {v31 .. v31}, Lcom/cashwalk/cashwalk/fragment/StepBetStatFragment;->access$200(Lcom/cashwalk/cashwalk/fragment/StepBetStatFragment;)Landroid/content/SharedPreferences;

    move-result-object v31

    const-string v32, "NICKNAME"

    const/16 v33, 0x0

    invoke-interface/range {v31 .. v33}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v31

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    const-string/jumbo v31, "\ub2d8\uc740 \uc218\uc694\uc77c\uc5d0 \ucd1d "

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cashwalk/cashwalk/fragment/StepBetStatFragment$2;->this$0:Lcom/cashwalk/cashwalk/fragment/StepBetStatFragment;

    move-object/from16 v31, v0

    invoke-static/range {v31 .. v31}, Lcom/cashwalk/cashwalk/fragment/StepBetStatFragment;->access$100(Lcom/cashwalk/cashwalk/fragment/StepBetStatFragment;)Lcom/cashwalk/cashwalk/util/network/model/StepBetStat;

    move-result-object v31

    move-object/from16 v0, v31

    iget-object v0, v0, Lcom/cashwalk/cashwalk/util/network/model/StepBetStat;->steps:[I

    move-object/from16 v31, v0

    aget v31, v31, v20

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v30

    const-string/jumbo v31, "\uac78\uc74c\uc744 \uac78\uc5c8\uc2b5\ub2c8\ub2e4."

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    move-object/from16 v0, v30

    invoke-virtual {v7, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_6

    .line 248
    :pswitch_6
    new-instance v30, Ljava/lang/StringBuilder;

    invoke-direct/range {v30 .. v30}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cashwalk/cashwalk/fragment/StepBetStatFragment$2;->this$0:Lcom/cashwalk/cashwalk/fragment/StepBetStatFragment;

    move-object/from16 v31, v0

    invoke-static/range {v31 .. v31}, Lcom/cashwalk/cashwalk/fragment/StepBetStatFragment;->access$200(Lcom/cashwalk/cashwalk/fragment/StepBetStatFragment;)Landroid/content/SharedPreferences;

    move-result-object v31

    const-string v32, "NICKNAME"

    const/16 v33, 0x0

    invoke-interface/range {v31 .. v33}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v31

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    const-string/jumbo v31, "\ub2d8\uc740 \ubaa9\uc694\uc77c\uc5d0 \ucd1d "

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cashwalk/cashwalk/fragment/StepBetStatFragment$2;->this$0:Lcom/cashwalk/cashwalk/fragment/StepBetStatFragment;

    move-object/from16 v31, v0

    invoke-static/range {v31 .. v31}, Lcom/cashwalk/cashwalk/fragment/StepBetStatFragment;->access$100(Lcom/cashwalk/cashwalk/fragment/StepBetStatFragment;)Lcom/cashwalk/cashwalk/util/network/model/StepBetStat;

    move-result-object v31

    move-object/from16 v0, v31

    iget-object v0, v0, Lcom/cashwalk/cashwalk/util/network/model/StepBetStat;->steps:[I

    move-object/from16 v31, v0

    aget v31, v31, v20

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v30

    const-string/jumbo v31, "\uac78\uc74c\uc744 \uac78\uc5c8\uc2b5\ub2c8\ub2e4."

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    move-object/from16 v0, v30

    invoke-virtual {v7, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_6

    .line 251
    :pswitch_7
    new-instance v30, Ljava/lang/StringBuilder;

    invoke-direct/range {v30 .. v30}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cashwalk/cashwalk/fragment/StepBetStatFragment$2;->this$0:Lcom/cashwalk/cashwalk/fragment/StepBetStatFragment;

    move-object/from16 v31, v0

    invoke-static/range {v31 .. v31}, Lcom/cashwalk/cashwalk/fragment/StepBetStatFragment;->access$200(Lcom/cashwalk/cashwalk/fragment/StepBetStatFragment;)Landroid/content/SharedPreferences;

    move-result-object v31

    const-string v32, "NICKNAME"

    const/16 v33, 0x0

    invoke-interface/range {v31 .. v33}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v31

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    const-string/jumbo v31, "\ub2d8\uc740 \uae08\uc694\uc77c\uc5d0 \ucd1d "

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cashwalk/cashwalk/fragment/StepBetStatFragment$2;->this$0:Lcom/cashwalk/cashwalk/fragment/StepBetStatFragment;

    move-object/from16 v31, v0

    invoke-static/range {v31 .. v31}, Lcom/cashwalk/cashwalk/fragment/StepBetStatFragment;->access$100(Lcom/cashwalk/cashwalk/fragment/StepBetStatFragment;)Lcom/cashwalk/cashwalk/util/network/model/StepBetStat;

    move-result-object v31

    move-object/from16 v0, v31

    iget-object v0, v0, Lcom/cashwalk/cashwalk/util/network/model/StepBetStat;->steps:[I

    move-object/from16 v31, v0

    aget v31, v31, v20

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v30

    const-string/jumbo v31, "\uac78\uc74c\uc744 \uac78\uc5c8\uc2b5\ub2c8\ub2e4."

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    move-object/from16 v0, v30

    invoke-virtual {v7, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_6

    .line 254
    :pswitch_8
    new-instance v30, Ljava/lang/StringBuilder;

    invoke-direct/range {v30 .. v30}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cashwalk/cashwalk/fragment/StepBetStatFragment$2;->this$0:Lcom/cashwalk/cashwalk/fragment/StepBetStatFragment;

    move-object/from16 v31, v0

    invoke-static/range {v31 .. v31}, Lcom/cashwalk/cashwalk/fragment/StepBetStatFragment;->access$200(Lcom/cashwalk/cashwalk/fragment/StepBetStatFragment;)Landroid/content/SharedPreferences;

    move-result-object v31

    const-string v32, "NICKNAME"

    const/16 v33, 0x0

    invoke-interface/range {v31 .. v33}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v31

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    const-string/jumbo v31, "\ub2d8\uc740 \ud1a0\uc694\uc77c\uc5d0 \ucd1d "

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cashwalk/cashwalk/fragment/StepBetStatFragment$2;->this$0:Lcom/cashwalk/cashwalk/fragment/StepBetStatFragment;

    move-object/from16 v31, v0

    invoke-static/range {v31 .. v31}, Lcom/cashwalk/cashwalk/fragment/StepBetStatFragment;->access$100(Lcom/cashwalk/cashwalk/fragment/StepBetStatFragment;)Lcom/cashwalk/cashwalk/util/network/model/StepBetStat;

    move-result-object v31

    move-object/from16 v0, v31

    iget-object v0, v0, Lcom/cashwalk/cashwalk/util/network/model/StepBetStat;->steps:[I

    move-object/from16 v31, v0

    aget v31, v31, v20

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v30

    const-string/jumbo v31, "\uac78\uc74c\uc744 \uac78\uc5c8\uc2b5\ub2c8\ub2e4."

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    move-object/from16 v0, v30

    invoke-virtual {v7, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_6

    .line 257
    :pswitch_9
    new-instance v30, Ljava/lang/StringBuilder;

    invoke-direct/range {v30 .. v30}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cashwalk/cashwalk/fragment/StepBetStatFragment$2;->this$0:Lcom/cashwalk/cashwalk/fragment/StepBetStatFragment;

    move-object/from16 v31, v0

    invoke-static/range {v31 .. v31}, Lcom/cashwalk/cashwalk/fragment/StepBetStatFragment;->access$200(Lcom/cashwalk/cashwalk/fragment/StepBetStatFragment;)Landroid/content/SharedPreferences;

    move-result-object v31

    const-string v32, "NICKNAME"

    const/16 v33, 0x0

    invoke-interface/range {v31 .. v33}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v31

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    const-string/jumbo v31, "\ub2d8\uc740 \uc77c\uc694\uc77c\uc5d0 \ucd1d "

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cashwalk/cashwalk/fragment/StepBetStatFragment$2;->this$0:Lcom/cashwalk/cashwalk/fragment/StepBetStatFragment;

    move-object/from16 v31, v0

    invoke-static/range {v31 .. v31}, Lcom/cashwalk/cashwalk/fragment/StepBetStatFragment;->access$100(Lcom/cashwalk/cashwalk/fragment/StepBetStatFragment;)Lcom/cashwalk/cashwalk/util/network/model/StepBetStat;

    move-result-object v31

    move-object/from16 v0, v31

    iget-object v0, v0, Lcom/cashwalk/cashwalk/util/network/model/StepBetStat;->steps:[I

    move-object/from16 v31, v0

    aget v31, v31, v20

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v30

    const-string/jumbo v31, "\uac78\uc74c\uc744 \uac78\uc5c8\uc2b5\ub2c8\ub2e4."

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    move-object/from16 v0, v30

    invoke-virtual {v7, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_6

    .line 267
    .end local v3    # "b":Landroid/view/View;
    .end local v7    # "body":Landroid/widget/TextView;
    .end local v11    # "dateTime":Landroid/widget/TextView;
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cashwalk/cashwalk/fragment/StepBetStatFragment$2;->this$0:Lcom/cashwalk/cashwalk/fragment/StepBetStatFragment;

    move-object/from16 v30, v0

    invoke-static/range {v30 .. v30}, Lcom/cashwalk/cashwalk/fragment/StepBetStatFragment;->access$700(Lcom/cashwalk/cashwalk/fragment/StepBetStatFragment;)Landroid/view/LayoutInflater;

    move-result-object v30

    const v31, 0x7f0400b4

    const/16 v32, 0x0

    invoke-virtual/range {v30 .. v32}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v6

    .line 268
    .local v6, "b3":Landroid/view/View;
    const v30, 0x7f10041b

    move/from16 v0, v30

    invoke-virtual {v6, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v18

    check-cast v18, Landroid/widget/ImageView;

    .line 269
    .local v18, "dot3":Landroid/widget/ImageView;
    const v30, 0x7f100268

    move/from16 v0, v30

    invoke-virtual {v6, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/TextView;

    .line 270
    .local v10, "body3":Landroid/widget/TextView;
    const v30, 0x7f1003a2

    move/from16 v0, v30

    invoke-virtual {v6, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/widget/TextView;

    .line 272
    .local v14, "dateTime3":Landroid/widget/TextView;
    const v30, 0x7f0201d3

    move-object/from16 v0, v18

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 273
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cashwalk/cashwalk/fragment/StepBetStatFragment$2;->this$0:Lcom/cashwalk/cashwalk/fragment/StepBetStatFragment;

    move-object/from16 v30, v0

    invoke-static/range {v30 .. v30}, Lcom/cashwalk/cashwalk/fragment/StepBetStatFragment;->access$100(Lcom/cashwalk/cashwalk/fragment/StepBetStatFragment;)Lcom/cashwalk/cashwalk/util/network/model/StepBetStat;

    move-result-object v30

    move-object/from16 v0, v30

    iget v0, v0, Lcom/cashwalk/cashwalk/util/network/model/StepBetStat;->dropoutsTotal:I

    move/from16 v30, v0

    if-nez v30, :cond_6

    .line 274
    new-instance v30, Ljava/lang/StringBuilder;

    invoke-direct/range {v30 .. v30}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v31, "\ucd1d "

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cashwalk/cashwalk/fragment/StepBetStatFragment$2;->this$0:Lcom/cashwalk/cashwalk/fragment/StepBetStatFragment;

    move-object/from16 v31, v0

    invoke-static/range {v31 .. v31}, Lcom/cashwalk/cashwalk/fragment/StepBetStatFragment;->access$100(Lcom/cashwalk/cashwalk/fragment/StepBetStatFragment;)Lcom/cashwalk/cashwalk/util/network/model/StepBetStat;

    move-result-object v31

    move-object/from16 v0, v31

    iget v0, v0, Lcom/cashwalk/cashwalk/util/network/model/StepBetStat;->participants:I

    move/from16 v31, v0

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v30

    const-string/jumbo v31, "\uba85\uc758 \ucc38\uac00\uc790 \uc804\uc6d0\uc774 \uc0dd\uc874\ud588\uc2b5\ub2c8\ub2e4."

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    move-object/from16 v0, v30

    invoke-virtual {v10, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 278
    :goto_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cashwalk/cashwalk/fragment/StepBetStatFragment$2;->this$0:Lcom/cashwalk/cashwalk/fragment/StepBetStatFragment;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Lcom/cashwalk/cashwalk/fragment/StepBetStatFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v30

    new-instance v31, Lorg/joda/time/DateTime;

    invoke-direct/range {v31 .. v31}, Lorg/joda/time/DateTime;-><init>()V

    const/16 v32, 0x0

    const/16 v33, 0x0

    const/16 v34, 0x0

    const/16 v35, 0x0

    invoke-virtual/range {v31 .. v35}, Lorg/joda/time/DateTime;->withTime(IIII)Lorg/joda/time/DateTime;

    move-result-object v31

    invoke-static/range {v30 .. v31}, Lcom/cashwalk/cashwalk/util/Utils;->getAgoString(Landroid/content/Context;Lorg/joda/time/DateTime;)Ljava/lang/String;

    move-result-object v30

    move-object/from16 v0, v30

    invoke-virtual {v14, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 280
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cashwalk/cashwalk/fragment/StepBetStatFragment$2;->this$0:Lcom/cashwalk/cashwalk/fragment/StepBetStatFragment;

    move-object/from16 v30, v0

    invoke-static/range {v30 .. v30}, Lcom/cashwalk/cashwalk/fragment/StepBetStatFragment;->access$1000(Lcom/cashwalk/cashwalk/fragment/StepBetStatFragment;)Landroid/widget/LinearLayout;

    move-result-object v30

    const/16 v31, 0x0

    move-object/from16 v0, v30

    move/from16 v1, v31

    invoke-virtual {v0, v6, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;I)V

    goto/16 :goto_3

    .line 276
    :cond_6
    new-instance v30, Ljava/lang/StringBuilder;

    invoke-direct/range {v30 .. v30}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v31, "\ucd1d "

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cashwalk/cashwalk/fragment/StepBetStatFragment$2;->this$0:Lcom/cashwalk/cashwalk/fragment/StepBetStatFragment;

    move-object/from16 v31, v0

    invoke-static/range {v31 .. v31}, Lcom/cashwalk/cashwalk/fragment/StepBetStatFragment;->access$100(Lcom/cashwalk/cashwalk/fragment/StepBetStatFragment;)Lcom/cashwalk/cashwalk/util/network/model/StepBetStat;

    move-result-object v31

    move-object/from16 v0, v31

    iget v0, v0, Lcom/cashwalk/cashwalk/util/network/model/StepBetStat;->participants:I

    move/from16 v31, v0

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v30

    const-string/jumbo v31, "\uba85\uc758 \ucc38\uac00\uc790 \uc911 "

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cashwalk/cashwalk/fragment/StepBetStatFragment$2;->this$0:Lcom/cashwalk/cashwalk/fragment/StepBetStatFragment;

    move-object/from16 v31, v0

    invoke-static/range {v31 .. v31}, Lcom/cashwalk/cashwalk/fragment/StepBetStatFragment;->access$100(Lcom/cashwalk/cashwalk/fragment/StepBetStatFragment;)Lcom/cashwalk/cashwalk/util/network/model/StepBetStat;

    move-result-object v31

    move-object/from16 v0, v31

    iget v0, v0, Lcom/cashwalk/cashwalk/util/network/model/StepBetStat;->dropoutsTotal:I

    move/from16 v31, v0

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v30

    const-string/jumbo v31, "\uba85\uc774 \ud0c8\ub77d\ud588\uc2b5\ub2c8\ub2e4."

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    move-object/from16 v0, v30

    invoke-virtual {v10, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_7

    .line 137
    nop

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch

    .line 237
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
    .end packed-switch
.end method
