.class final synthetic Lat/grabner/circleprogress/CircleProgressView$1;
.super Ljava/lang/Object;
.source "CircleProgressView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lat/grabner/circleprogress/CircleProgressView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$at$grabner$circleprogress$BarStartEndLine:[I

.field static final synthetic $SwitchMap$at$grabner$circleprogress$TextMode:[I

.field static final synthetic $SwitchMap$at$grabner$circleprogress$UnitPosition:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 1682
    invoke-static {}, Lat/grabner/circleprogress/TextMode;->values()[Lat/grabner/circleprogress/TextMode;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lat/grabner/circleprogress/CircleProgressView$1;->$SwitchMap$at$grabner$circleprogress$TextMode:[I

    :try_start_0
    sget-object v0, Lat/grabner/circleprogress/CircleProgressView$1;->$SwitchMap$at$grabner$circleprogress$TextMode:[I

    sget-object v1, Lat/grabner/circleprogress/TextMode;->TEXT:Lat/grabner/circleprogress/TextMode;

    invoke-virtual {v1}, Lat/grabner/circleprogress/TextMode;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_b

    :goto_0
    :try_start_1
    sget-object v0, Lat/grabner/circleprogress/CircleProgressView$1;->$SwitchMap$at$grabner$circleprogress$TextMode:[I

    sget-object v1, Lat/grabner/circleprogress/TextMode;->PERCENT:Lat/grabner/circleprogress/TextMode;

    invoke-virtual {v1}, Lat/grabner/circleprogress/TextMode;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_a

    :goto_1
    :try_start_2
    sget-object v0, Lat/grabner/circleprogress/CircleProgressView$1;->$SwitchMap$at$grabner$circleprogress$TextMode:[I

    sget-object v1, Lat/grabner/circleprogress/TextMode;->VALUE:Lat/grabner/circleprogress/TextMode;

    invoke-virtual {v1}, Lat/grabner/circleprogress/TextMode;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_9

    .line 1595
    :goto_2
    invoke-static {}, Lat/grabner/circleprogress/BarStartEndLine;->values()[Lat/grabner/circleprogress/BarStartEndLine;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lat/grabner/circleprogress/CircleProgressView$1;->$SwitchMap$at$grabner$circleprogress$BarStartEndLine:[I

    :try_start_3
    sget-object v0, Lat/grabner/circleprogress/CircleProgressView$1;->$SwitchMap$at$grabner$circleprogress$BarStartEndLine:[I

    sget-object v1, Lat/grabner/circleprogress/BarStartEndLine;->START:Lat/grabner/circleprogress/BarStartEndLine;

    invoke-virtual {v1}, Lat/grabner/circleprogress/BarStartEndLine;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_8

    :goto_3
    :try_start_4
    sget-object v0, Lat/grabner/circleprogress/CircleProgressView$1;->$SwitchMap$at$grabner$circleprogress$BarStartEndLine:[I

    sget-object v1, Lat/grabner/circleprogress/BarStartEndLine;->END:Lat/grabner/circleprogress/BarStartEndLine;

    invoke-virtual {v1}, Lat/grabner/circleprogress/BarStartEndLine;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_7

    :goto_4
    :try_start_5
    sget-object v0, Lat/grabner/circleprogress/CircleProgressView$1;->$SwitchMap$at$grabner$circleprogress$BarStartEndLine:[I

    sget-object v1, Lat/grabner/circleprogress/BarStartEndLine;->BOTH:Lat/grabner/circleprogress/BarStartEndLine;

    invoke-virtual {v1}, Lat/grabner/circleprogress/BarStartEndLine;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_6

    .line 1150
    :goto_5
    invoke-static {}, Lat/grabner/circleprogress/UnitPosition;->values()[Lat/grabner/circleprogress/UnitPosition;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lat/grabner/circleprogress/CircleProgressView$1;->$SwitchMap$at$grabner$circleprogress$UnitPosition:[I

    :try_start_6
    sget-object v0, Lat/grabner/circleprogress/CircleProgressView$1;->$SwitchMap$at$grabner$circleprogress$UnitPosition:[I

    sget-object v1, Lat/grabner/circleprogress/UnitPosition;->TOP:Lat/grabner/circleprogress/UnitPosition;

    invoke-virtual {v1}, Lat/grabner/circleprogress/UnitPosition;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6 .. :try_end_6} :catch_5

    :goto_6
    :try_start_7
    sget-object v0, Lat/grabner/circleprogress/CircleProgressView$1;->$SwitchMap$at$grabner$circleprogress$UnitPosition:[I

    sget-object v1, Lat/grabner/circleprogress/UnitPosition;->BOTTOM:Lat/grabner/circleprogress/UnitPosition;

    invoke-virtual {v1}, Lat/grabner/circleprogress/UnitPosition;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_7
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7 .. :try_end_7} :catch_4

    :goto_7
    :try_start_8
    sget-object v0, Lat/grabner/circleprogress/CircleProgressView$1;->$SwitchMap$at$grabner$circleprogress$UnitPosition:[I

    sget-object v1, Lat/grabner/circleprogress/UnitPosition;->LEFT_TOP:Lat/grabner/circleprogress/UnitPosition;

    invoke-virtual {v1}, Lat/grabner/circleprogress/UnitPosition;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_8
    .catch Ljava/lang/NoSuchFieldError; {:try_start_8 .. :try_end_8} :catch_3

    :goto_8
    :try_start_9
    sget-object v0, Lat/grabner/circleprogress/CircleProgressView$1;->$SwitchMap$at$grabner$circleprogress$UnitPosition:[I

    sget-object v1, Lat/grabner/circleprogress/UnitPosition;->RIGHT_TOP:Lat/grabner/circleprogress/UnitPosition;

    invoke-virtual {v1}, Lat/grabner/circleprogress/UnitPosition;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_9
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_9} :catch_2

    :goto_9
    :try_start_a
    sget-object v0, Lat/grabner/circleprogress/CircleProgressView$1;->$SwitchMap$at$grabner$circleprogress$UnitPosition:[I

    sget-object v1, Lat/grabner/circleprogress/UnitPosition;->LEFT_BOTTOM:Lat/grabner/circleprogress/UnitPosition;

    invoke-virtual {v1}, Lat/grabner/circleprogress/UnitPosition;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_a .. :try_end_a} :catch_1

    :goto_a
    :try_start_b
    sget-object v0, Lat/grabner/circleprogress/CircleProgressView$1;->$SwitchMap$at$grabner$circleprogress$UnitPosition:[I

    sget-object v1, Lat/grabner/circleprogress/UnitPosition;->RIGHT_BOTTOM:Lat/grabner/circleprogress/UnitPosition;

    invoke-virtual {v1}, Lat/grabner/circleprogress/UnitPosition;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_b .. :try_end_b} :catch_0

    :goto_b
    return-void

    :catch_0
    move-exception v0

    goto :goto_b

    :catch_1
    move-exception v0

    goto :goto_a

    :catch_2
    move-exception v0

    goto :goto_9

    :catch_3
    move-exception v0

    goto :goto_8

    :catch_4
    move-exception v0

    goto :goto_7

    :catch_5
    move-exception v0

    goto :goto_6

    :catch_6
    move-exception v0

    goto :goto_5

    :catch_7
    move-exception v0

    goto :goto_4

    :catch_8
    move-exception v0

    goto :goto_3

    :catch_9
    move-exception v0

    goto/16 :goto_2

    :catch_a
    move-exception v0

    goto/16 :goto_1

    :catch_b
    move-exception v0

    goto/16 :goto_0
.end method
