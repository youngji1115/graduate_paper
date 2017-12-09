.class public Lcom/zeroner/android_zeroner_ble/model/DateUtil;
.super Ljava/lang/Object;
.source "DateUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zeroner/android_zeroner_ble/model/DateUtil$DateFormater;
    }
.end annotation


# static fields
.field private static synthetic $SWITCH_TABLE$com$zeroner$android_zeroner_ble$model$DateUtil$DateFormater:[I

.field private static final dFHHmm:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal",
            "<",
            "Ljava/text/SimpleDateFormat;",
            ">;"
        }
    .end annotation
.end field

.field private static final dFHHmmss:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal",
            "<",
            "Ljava/text/SimpleDateFormat;",
            ">;"
        }
    .end annotation
.end field

.field private static final dFMMdd:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal",
            "<",
            "Ljava/text/SimpleDateFormat;",
            ">;"
        }
    .end annotation
.end field

.field private static final dFMMdd_HHmm:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal",
            "<",
            "Ljava/text/SimpleDateFormat;",
            ">;"
        }
    .end annotation
.end field

.field private static final dFSyyyyMMdd:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal",
            "<",
            "Ljava/text/SimpleDateFormat;",
            ">;"
        }
    .end annotation
.end field

.field private static final dFyyyyMM:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal",
            "<",
            "Ljava/text/SimpleDateFormat;",
            ">;"
        }
    .end annotation
.end field

.field private static final dFyyyyMMdd:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal",
            "<",
            "Ljava/text/SimpleDateFormat;",
            ">;"
        }
    .end annotation
.end field

.field private static final dFyyyyMMdd_HHmm:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal",
            "<",
            "Ljava/text/SimpleDateFormat;",
            ">;"
        }
    .end annotation
.end field

.field private static final dFyyyyMMdd_HHmmss:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal",
            "<",
            "Ljava/text/SimpleDateFormat;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private c:Ljava/util/Calendar;


# direct methods
.method static synthetic $SWITCH_TABLE$com$zeroner$android_zeroner_ble$model$DateUtil$DateFormater()[I
    .locals 3

    .prologue
    .line 15
    sget-object v0, Lcom/zeroner/android_zeroner_ble/model/DateUtil;->$SWITCH_TABLE$com$zeroner$android_zeroner_ble$model$DateUtil$DateFormater:[I

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lcom/zeroner/android_zeroner_ble/model/DateUtil$DateFormater;->values()[Lcom/zeroner/android_zeroner_ble/model/DateUtil$DateFormater;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lcom/zeroner/android_zeroner_ble/model/DateUtil$DateFormater;->HHmm:Lcom/zeroner/android_zeroner_ble/model/DateUtil$DateFormater;

    invoke-virtual {v1}, Lcom/zeroner/android_zeroner_ble/model/DateUtil$DateFormater;->ordinal()I

    move-result v1

    const/4 v2, 0x7

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_9

    :goto_1
    :try_start_1
    sget-object v1, Lcom/zeroner/android_zeroner_ble/model/DateUtil$DateFormater;->HHmmss:Lcom/zeroner/android_zeroner_ble/model/DateUtil$DateFormater;

    invoke-virtual {v1}, Lcom/zeroner/android_zeroner_ble/model/DateUtil$DateFormater;->ordinal()I

    move-result v1

    const/16 v2, 0x8

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_8

    :goto_2
    :try_start_2
    sget-object v1, Lcom/zeroner/android_zeroner_ble/model/DateUtil$DateFormater;->MMdd:Lcom/zeroner/android_zeroner_ble/model/DateUtil$DateFormater;

    invoke-virtual {v1}, Lcom/zeroner/android_zeroner_ble/model/DateUtil$DateFormater;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_7

    :goto_3
    :try_start_3
    sget-object v1, Lcom/zeroner/android_zeroner_ble/model/DateUtil$DateFormater;->MMdd_HHmm:Lcom/zeroner/android_zeroner_ble/model/DateUtil$DateFormater;

    invoke-virtual {v1}, Lcom/zeroner/android_zeroner_ble/model/DateUtil$DateFormater;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_6

    :goto_4
    :try_start_4
    sget-object v1, Lcom/zeroner/android_zeroner_ble/model/DateUtil$DateFormater;->SyyyyMMdd:Lcom/zeroner/android_zeroner_ble/model/DateUtil$DateFormater;

    invoke-virtual {v1}, Lcom/zeroner/android_zeroner_ble/model/DateUtil$DateFormater;->ordinal()I

    move-result v1

    const/16 v2, 0xa

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_5

    :goto_5
    :try_start_5
    sget-object v1, Lcom/zeroner/android_zeroner_ble/model/DateUtil$DateFormater;->yyyyMM:Lcom/zeroner/android_zeroner_ble/model/DateUtil$DateFormater;

    invoke-virtual {v1}, Lcom/zeroner/android_zeroner_ble/model/DateUtil$DateFormater;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_4

    :goto_6
    :try_start_6
    sget-object v1, Lcom/zeroner/android_zeroner_ble/model/DateUtil$DateFormater;->yyyyMMdd:Lcom/zeroner/android_zeroner_ble/model/DateUtil$DateFormater;

    invoke-virtual {v1}, Lcom/zeroner/android_zeroner_ble/model/DateUtil$DateFormater;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6 .. :try_end_6} :catch_3

    :goto_7
    :try_start_7
    sget-object v1, Lcom/zeroner/android_zeroner_ble/model/DateUtil$DateFormater;->yyyyMMddHHmm:Lcom/zeroner/android_zeroner_ble/model/DateUtil$DateFormater;

    invoke-virtual {v1}, Lcom/zeroner/android_zeroner_ble/model/DateUtil$DateFormater;->ordinal()I

    move-result v1

    const/16 v2, 0x9

    aput v2, v0, v1
    :try_end_7
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7 .. :try_end_7} :catch_2

    :goto_8
    :try_start_8
    sget-object v1, Lcom/zeroner/android_zeroner_ble/model/DateUtil$DateFormater;->yyyyMMdd_HHmm:Lcom/zeroner/android_zeroner_ble/model/DateUtil$DateFormater;

    invoke-virtual {v1}, Lcom/zeroner/android_zeroner_ble/model/DateUtil$DateFormater;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_8
    .catch Ljava/lang/NoSuchFieldError; {:try_start_8 .. :try_end_8} :catch_1

    :goto_9
    :try_start_9
    sget-object v1, Lcom/zeroner/android_zeroner_ble/model/DateUtil$DateFormater;->yyyyMMdd_HHmmss:Lcom/zeroner/android_zeroner_ble/model/DateUtil$DateFormater;

    invoke-virtual {v1}, Lcom/zeroner/android_zeroner_ble/model/DateUtil$DateFormater;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_9
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_9} :catch_0

    :goto_a
    sput-object v0, Lcom/zeroner/android_zeroner_ble/model/DateUtil;->$SWITCH_TABLE$com$zeroner$android_zeroner_ble$model$DateUtil$DateFormater:[I

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_a

    :catch_1
    move-exception v1

    goto :goto_9

    :catch_2
    move-exception v1

    goto :goto_8

    :catch_3
    move-exception v1

    goto :goto_7

    :catch_4
    move-exception v1

    goto :goto_6

    :catch_5
    move-exception v1

    goto :goto_5

    :catch_6
    move-exception v1

    goto :goto_4

    :catch_7
    move-exception v1

    goto :goto_3

    :catch_8
    move-exception v1

    goto :goto_2

    :catch_9
    move-exception v1

    goto :goto_1
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 20
    new-instance v0, Lcom/zeroner/android_zeroner_ble/model/DateUtil$1;

    invoke-direct {v0}, Lcom/zeroner/android_zeroner_ble/model/DateUtil$1;-><init>()V

    sput-object v0, Lcom/zeroner/android_zeroner_ble/model/DateUtil;->dFMMdd:Ljava/lang/ThreadLocal;

    .line 27
    new-instance v0, Lcom/zeroner/android_zeroner_ble/model/DateUtil$2;

    invoke-direct {v0}, Lcom/zeroner/android_zeroner_ble/model/DateUtil$2;-><init>()V

    sput-object v0, Lcom/zeroner/android_zeroner_ble/model/DateUtil;->dFMMdd_HHmm:Ljava/lang/ThreadLocal;

    .line 34
    new-instance v0, Lcom/zeroner/android_zeroner_ble/model/DateUtil$3;

    invoke-direct {v0}, Lcom/zeroner/android_zeroner_ble/model/DateUtil$3;-><init>()V

    sput-object v0, Lcom/zeroner/android_zeroner_ble/model/DateUtil;->dFyyyyMM:Ljava/lang/ThreadLocal;

    .line 41
    new-instance v0, Lcom/zeroner/android_zeroner_ble/model/DateUtil$4;

    invoke-direct {v0}, Lcom/zeroner/android_zeroner_ble/model/DateUtil$4;-><init>()V

    sput-object v0, Lcom/zeroner/android_zeroner_ble/model/DateUtil;->dFyyyyMMdd:Ljava/lang/ThreadLocal;

    .line 48
    new-instance v0, Lcom/zeroner/android_zeroner_ble/model/DateUtil$5;

    invoke-direct {v0}, Lcom/zeroner/android_zeroner_ble/model/DateUtil$5;-><init>()V

    sput-object v0, Lcom/zeroner/android_zeroner_ble/model/DateUtil;->dFyyyyMMdd_HHmm:Ljava/lang/ThreadLocal;

    .line 55
    new-instance v0, Lcom/zeroner/android_zeroner_ble/model/DateUtil$6;

    invoke-direct {v0}, Lcom/zeroner/android_zeroner_ble/model/DateUtil$6;-><init>()V

    sput-object v0, Lcom/zeroner/android_zeroner_ble/model/DateUtil;->dFyyyyMMdd_HHmmss:Ljava/lang/ThreadLocal;

    .line 62
    new-instance v0, Lcom/zeroner/android_zeroner_ble/model/DateUtil$7;

    invoke-direct {v0}, Lcom/zeroner/android_zeroner_ble/model/DateUtil$7;-><init>()V

    sput-object v0, Lcom/zeroner/android_zeroner_ble/model/DateUtil;->dFHHmm:Ljava/lang/ThreadLocal;

    .line 69
    new-instance v0, Lcom/zeroner/android_zeroner_ble/model/DateUtil$8;

    invoke-direct {v0}, Lcom/zeroner/android_zeroner_ble/model/DateUtil$8;-><init>()V

    sput-object v0, Lcom/zeroner/android_zeroner_ble/model/DateUtil;->dFHHmmss:Ljava/lang/ThreadLocal;

    .line 76
    new-instance v0, Lcom/zeroner/android_zeroner_ble/model/DateUtil$9;

    invoke-direct {v0}, Lcom/zeroner/android_zeroner_ble/model/DateUtil$9;-><init>()V

    sput-object v0, Lcom/zeroner/android_zeroner_ble/model/DateUtil;->dFSyyyyMMdd:Ljava/lang/ThreadLocal;

    .line 81
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 169
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 170
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    iput-object v0, p0, Lcom/zeroner/android_zeroner_ble/model/DateUtil;->c:Ljava/util/Calendar;

    .line 171
    return-void
.end method

.method public constructor <init>(II)V
    .locals 2
    .param p1, "hour"    # I
    .param p2, "minute"    # I

    .prologue
    .line 205
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 206
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    iput-object v0, p0, Lcom/zeroner/android_zeroner_ble/model/DateUtil;->c:Ljava/util/Calendar;

    .line 207
    iget-object v0, p0, Lcom/zeroner/android_zeroner_ble/model/DateUtil;->c:Ljava/util/Calendar;

    const/16 v1, 0xb

    invoke-virtual {v0, v1, p1}, Ljava/util/Calendar;->set(II)V

    .line 208
    iget-object v0, p0, Lcom/zeroner/android_zeroner_ble/model/DateUtil;->c:Ljava/util/Calendar;

    const/16 v1, 0xc

    invoke-virtual {v0, v1, p2}, Ljava/util/Calendar;->set(II)V

    .line 209
    return-void
.end method

.method public constructor <init>(III)V
    .locals 7
    .param p1, "year"    # I
    .param p2, "month"    # I
    .param p3, "day"    # I

    .prologue
    const/4 v4, 0x0

    .line 188
    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v5, v4

    move v6, v4

    invoke-direct/range {v0 .. v6}, Lcom/zeroner/android_zeroner_ble/model/DateUtil;-><init>(IIIIII)V

    .line 189
    return-void
.end method

.method public constructor <init>(IIIII)V
    .locals 7
    .param p1, "year"    # I
    .param p2, "month"    # I
    .param p3, "day"    # I
    .param p4, "hour"    # I
    .param p5, "minute"    # I

    .prologue
    .line 192
    const/4 v6, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-direct/range {v0 .. v6}, Lcom/zeroner/android_zeroner_ble/model/DateUtil;-><init>(IIIIII)V

    .line 193
    return-void
.end method

.method public constructor <init>(IIIIII)V
    .locals 3
    .param p1, "year"    # I
    .param p2, "month"    # I
    .param p3, "day"    # I
    .param p4, "hour"    # I
    .param p5, "minute"    # I
    .param p6, "second"    # I

    .prologue
    .line 195
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 196
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    iput-object v0, p0, Lcom/zeroner/android_zeroner_ble/model/DateUtil;->c:Ljava/util/Calendar;

    .line 197
    iget-object v0, p0, Lcom/zeroner/android_zeroner_ble/model/DateUtil;->c:Ljava/util/Calendar;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1}, Ljava/util/Calendar;->set(II)V

    .line 198
    iget-object v0, p0, Lcom/zeroner/android_zeroner_ble/model/DateUtil;->c:Ljava/util/Calendar;

    const/4 v1, 0x2

    add-int/lit8 v2, p2, -0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    .line 199
    iget-object v0, p0, Lcom/zeroner/android_zeroner_ble/model/DateUtil;->c:Ljava/util/Calendar;

    const/4 v1, 0x5

    invoke-virtual {v0, v1, p3}, Ljava/util/Calendar;->set(II)V

    .line 200
    iget-object v0, p0, Lcom/zeroner/android_zeroner_ble/model/DateUtil;->c:Ljava/util/Calendar;

    const/16 v1, 0xb

    invoke-virtual {v0, v1, p4}, Ljava/util/Calendar;->set(II)V

    .line 201
    iget-object v0, p0, Lcom/zeroner/android_zeroner_ble/model/DateUtil;->c:Ljava/util/Calendar;

    const/16 v1, 0xc

    invoke-virtual {v0, v1, p5}, Ljava/util/Calendar;->set(II)V

    .line 202
    iget-object v0, p0, Lcom/zeroner/android_zeroner_ble/model/DateUtil;->c:Ljava/util/Calendar;

    const/16 v1, 0xd

    invoke-virtual {v0, v1, p6}, Ljava/util/Calendar;->set(II)V

    .line 203
    return-void
.end method

.method public constructor <init>(JZ)V
    .locals 5
    .param p1, "timestamp"    # J
    .param p3, "isUnix"    # Z

    .prologue
    .line 173
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 174
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    iput-object v0, p0, Lcom/zeroner/android_zeroner_ble/model/DateUtil;->c:Ljava/util/Calendar;

    .line 175
    if-eqz p3, :cond_0

    .line 176
    iget-object v0, p0, Lcom/zeroner/android_zeroner_ble/model/DateUtil;->c:Ljava/util/Calendar;

    const-wide/16 v2, 0x3e8

    mul-long/2addr v2, p1

    invoke-virtual {v0, v2, v3}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 180
    :goto_0
    return-void

    .line 178
    :cond_0
    iget-object v0, p0, Lcom/zeroner/android_zeroner_ble/model/DateUtil;->c:Ljava/util/Calendar;

    invoke-virtual {v0, p1, p2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    goto :goto_0
.end method

.method public constructor <init>(Ljava/util/Date;)V
    .locals 1
    .param p1, "date"    # Ljava/util/Date;

    .prologue
    .line 182
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 183
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    iput-object v0, p0, Lcom/zeroner/android_zeroner_ble/model/DateUtil;->c:Ljava/util/Calendar;

    .line 184
    iget-object v0, p0, Lcom/zeroner/android_zeroner_ble/model/DateUtil;->c:Ljava/util/Calendar;

    invoke-virtual {v0, p1}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 185
    return-void
.end method

.method public static parse(Ljava/lang/String;Lcom/zeroner/android_zeroner_ble/model/DateUtil$DateFormater;)Lcom/zeroner/android_zeroner_ble/model/DateUtil;
    .locals 3
    .param p0, "sdate"    # Ljava/lang/String;
    .param p1, "formater"    # Lcom/zeroner/android_zeroner_ble/model/DateUtil$DateFormater;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .prologue
    .line 137
    const/4 v0, 0x0

    .line 138
    .local v0, "date":Ljava/util/Date;
    invoke-static {}, Lcom/zeroner/android_zeroner_ble/model/DateUtil;->$SWITCH_TABLE$com$zeroner$android_zeroner_ble$model$DateUtil$DateFormater()[I

    move-result-object v1

    invoke-virtual {p1}, Lcom/zeroner/android_zeroner_ble/model/DateUtil$DateFormater;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 164
    :goto_0
    new-instance v1, Lcom/zeroner/android_zeroner_ble/model/DateUtil;

    invoke-direct {v1, v0}, Lcom/zeroner/android_zeroner_ble/model/DateUtil;-><init>(Ljava/util/Date;)V

    return-object v1

    .line 140
    :pswitch_0
    sget-object v1, Lcom/zeroner/android_zeroner_ble/model/DateUtil;->dFMMdd:Ljava/lang/ThreadLocal;

    invoke-virtual {v1}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/text/SimpleDateFormat;

    invoke-virtual {v1, p0}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    .line 141
    goto :goto_0

    .line 143
    :pswitch_1
    sget-object v1, Lcom/zeroner/android_zeroner_ble/model/DateUtil;->dFMMdd_HHmm:Ljava/lang/ThreadLocal;

    invoke-virtual {v1}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/text/SimpleDateFormat;

    invoke-virtual {v1, p0}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    .line 144
    goto :goto_0

    .line 146
    :pswitch_2
    sget-object v1, Lcom/zeroner/android_zeroner_ble/model/DateUtil;->dFyyyyMM:Ljava/lang/ThreadLocal;

    invoke-virtual {v1}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/text/SimpleDateFormat;

    invoke-virtual {v1, p0}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    .line 147
    goto :goto_0

    .line 149
    :pswitch_3
    sget-object v1, Lcom/zeroner/android_zeroner_ble/model/DateUtil;->dFyyyyMMdd:Ljava/lang/ThreadLocal;

    invoke-virtual {v1}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/text/SimpleDateFormat;

    invoke-virtual {v1, p0}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    .line 150
    goto :goto_0

    .line 152
    :pswitch_4
    sget-object v1, Lcom/zeroner/android_zeroner_ble/model/DateUtil;->dFyyyyMMdd_HHmm:Ljava/lang/ThreadLocal;

    invoke-virtual {v1}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/text/SimpleDateFormat;

    invoke-virtual {v1, p0}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    .line 153
    goto :goto_0

    .line 155
    :pswitch_5
    sget-object v1, Lcom/zeroner/android_zeroner_ble/model/DateUtil;->dFyyyyMMdd_HHmmss:Ljava/lang/ThreadLocal;

    invoke-virtual {v1}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/text/SimpleDateFormat;

    invoke-virtual {v1, p0}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    .line 156
    goto :goto_0

    .line 158
    :pswitch_6
    sget-object v1, Lcom/zeroner/android_zeroner_ble/model/DateUtil;->dFHHmm:Ljava/lang/ThreadLocal;

    invoke-virtual {v1}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/text/SimpleDateFormat;

    invoke-virtual {v1, p0}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    .line 159
    goto :goto_0

    .line 161
    :pswitch_7
    sget-object v1, Lcom/zeroner/android_zeroner_ble/model/DateUtil;->dFHHmmss:Ljava/lang/ThreadLocal;

    invoke-virtual {v1}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/text/SimpleDateFormat;

    invoke-virtual {v1, p0}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    goto :goto_0

    .line 138
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/zeroner/android_zeroner_ble/model/DateUtil;
    .locals 11
    .param p0, "sdate"    # Ljava/lang/String;

    .prologue
    .line 84
    const-string v2, "[0-9]{2}-[0-9]{2}"

    .line 85
    .local v2, "MMddFmt":Ljava/lang/String;
    const-string v3, "[0-9]{2}-[0-9]{2} [0-9]{2}:[0-9]{2}"

    .line 87
    .local v3, "MMdd_HHmmFmt":Ljava/lang/String;
    const-string v6, "[0-9]{4}-[0-9]{2}"

    .line 88
    .local v6, "yyyyMMFmt":Ljava/lang/String;
    const-string v7, "[0-9]{4}-[0-9]{2}-[0-9]{2}"

    .line 89
    .local v7, "yyyyMMddFmt":Ljava/lang/String;
    const-string v8, "[0-9]{4}-[0-9]{2}-[0-9]{2} [0-9]{2}:[0-9]{2}"

    .line 91
    .local v8, "yyyyMMdd_HHmmFmt":Ljava/lang/String;
    const-string v9, "[0-9]{4}-[0-9]{2}-[0-9]{2} [0-9]{2}:[0-9]{2}:[0-9]{2}"

    .line 93
    .local v9, "yyyyMMdd_HHmmssFmt":Ljava/lang/String;
    const-string v0, "[0-9]{2}:[0-9]{2}"

    .line 94
    .local v0, "HHmmFmt":Ljava/lang/String;
    const-string v1, "[0-9]{2}:[0-9]{2}:[0-9]{2}"

    .line 95
    .local v1, "HHmmssFmt":Ljava/lang/String;
    invoke-static {v9}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v5

    .line 97
    .local v5, "p":Ljava/util/regex/Pattern;
    :try_start_0
    invoke-static {v2}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v5

    .line 98
    invoke-virtual {v5, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v10

    invoke-virtual {v10}, Ljava/util/regex/Matcher;->matches()Z

    move-result v10

    if-eqz v10, :cond_0

    .line 99
    sget-object v10, Lcom/zeroner/android_zeroner_ble/model/DateUtil$DateFormater;->MMdd:Lcom/zeroner/android_zeroner_ble/model/DateUtil$DateFormater;

    invoke-static {p0, v10}, Lcom/zeroner/android_zeroner_ble/model/DateUtil;->parse(Ljava/lang/String;Lcom/zeroner/android_zeroner_ble/model/DateUtil$DateFormater;)Lcom/zeroner/android_zeroner_ble/model/DateUtil;

    move-result-object v10

    .line 132
    :goto_0
    return-object v10

    .line 101
    :cond_0
    invoke-static {v3}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v5

    .line 102
    invoke-virtual {v5, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v10

    invoke-virtual {v10}, Ljava/util/regex/Matcher;->matches()Z

    move-result v10

    if-eqz v10, :cond_1

    .line 103
    sget-object v10, Lcom/zeroner/android_zeroner_ble/model/DateUtil$DateFormater;->MMdd_HHmm:Lcom/zeroner/android_zeroner_ble/model/DateUtil$DateFormater;

    invoke-static {p0, v10}, Lcom/zeroner/android_zeroner_ble/model/DateUtil;->parse(Ljava/lang/String;Lcom/zeroner/android_zeroner_ble/model/DateUtil$DateFormater;)Lcom/zeroner/android_zeroner_ble/model/DateUtil;

    move-result-object v10

    goto :goto_0

    .line 105
    :cond_1
    invoke-static {v6}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v5

    .line 106
    invoke-virtual {v5, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v10

    invoke-virtual {v10}, Ljava/util/regex/Matcher;->matches()Z

    move-result v10

    if-eqz v10, :cond_2

    .line 107
    sget-object v10, Lcom/zeroner/android_zeroner_ble/model/DateUtil$DateFormater;->yyyyMM:Lcom/zeroner/android_zeroner_ble/model/DateUtil$DateFormater;

    invoke-static {p0, v10}, Lcom/zeroner/android_zeroner_ble/model/DateUtil;->parse(Ljava/lang/String;Lcom/zeroner/android_zeroner_ble/model/DateUtil$DateFormater;)Lcom/zeroner/android_zeroner_ble/model/DateUtil;

    move-result-object v10

    goto :goto_0

    .line 109
    :cond_2
    invoke-static {v7}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v5

    .line 110
    invoke-virtual {v5, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v10

    invoke-virtual {v10}, Ljava/util/regex/Matcher;->matches()Z

    move-result v10

    if-eqz v10, :cond_3

    .line 111
    sget-object v10, Lcom/zeroner/android_zeroner_ble/model/DateUtil$DateFormater;->yyyyMMdd:Lcom/zeroner/android_zeroner_ble/model/DateUtil$DateFormater;

    invoke-static {p0, v10}, Lcom/zeroner/android_zeroner_ble/model/DateUtil;->parse(Ljava/lang/String;Lcom/zeroner/android_zeroner_ble/model/DateUtil$DateFormater;)Lcom/zeroner/android_zeroner_ble/model/DateUtil;

    move-result-object v10

    goto :goto_0

    .line 113
    :cond_3
    invoke-static {v8}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v5

    .line 114
    invoke-virtual {v5, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v10

    invoke-virtual {v10}, Ljava/util/regex/Matcher;->matches()Z

    move-result v10

    if-eqz v10, :cond_4

    .line 115
    sget-object v10, Lcom/zeroner/android_zeroner_ble/model/DateUtil$DateFormater;->yyyyMMdd_HHmm:Lcom/zeroner/android_zeroner_ble/model/DateUtil$DateFormater;

    invoke-static {p0, v10}, Lcom/zeroner/android_zeroner_ble/model/DateUtil;->parse(Ljava/lang/String;Lcom/zeroner/android_zeroner_ble/model/DateUtil$DateFormater;)Lcom/zeroner/android_zeroner_ble/model/DateUtil;

    move-result-object v10

    goto :goto_0

    .line 117
    :cond_4
    invoke-static {v9}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v5

    .line 118
    invoke-virtual {v5, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v10

    invoke-virtual {v10}, Ljava/util/regex/Matcher;->matches()Z

    move-result v10

    if-eqz v10, :cond_5

    .line 119
    sget-object v10, Lcom/zeroner/android_zeroner_ble/model/DateUtil$DateFormater;->yyyyMMdd_HHmmss:Lcom/zeroner/android_zeroner_ble/model/DateUtil$DateFormater;

    invoke-static {p0, v10}, Lcom/zeroner/android_zeroner_ble/model/DateUtil;->parse(Ljava/lang/String;Lcom/zeroner/android_zeroner_ble/model/DateUtil$DateFormater;)Lcom/zeroner/android_zeroner_ble/model/DateUtil;

    move-result-object v10

    goto :goto_0

    .line 121
    :cond_5
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v5

    .line 122
    invoke-virtual {v5, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v10

    invoke-virtual {v10}, Ljava/util/regex/Matcher;->matches()Z

    move-result v10

    if-eqz v10, :cond_6

    .line 123
    sget-object v10, Lcom/zeroner/android_zeroner_ble/model/DateUtil$DateFormater;->HHmm:Lcom/zeroner/android_zeroner_ble/model/DateUtil$DateFormater;

    invoke-static {p0, v10}, Lcom/zeroner/android_zeroner_ble/model/DateUtil;->parse(Ljava/lang/String;Lcom/zeroner/android_zeroner_ble/model/DateUtil$DateFormater;)Lcom/zeroner/android_zeroner_ble/model/DateUtil;

    move-result-object v10

    goto :goto_0

    .line 125
    :cond_6
    invoke-static {v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v5

    .line 126
    invoke-virtual {v5, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v10

    invoke-virtual {v10}, Ljava/util/regex/Matcher;->matches()Z

    move-result v10

    if-eqz v10, :cond_7

    .line 127
    sget-object v10, Lcom/zeroner/android_zeroner_ble/model/DateUtil$DateFormater;->HHmmss:Lcom/zeroner/android_zeroner_ble/model/DateUtil$DateFormater;

    invoke-static {p0, v10}, Lcom/zeroner/android_zeroner_ble/model/DateUtil;->parse(Ljava/lang/String;Lcom/zeroner/android_zeroner_ble/model/DateUtil$DateFormater;)Lcom/zeroner/android_zeroner_ble/model/DateUtil;
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v10

    goto/16 :goto_0

    .line 129
    :catch_0
    move-exception v4

    .line 130
    .local v4, "e":Ljava/text/ParseException;
    invoke-virtual {v4}, Ljava/text/ParseException;->printStackTrace()V

    .line 132
    .end local v4    # "e":Ljava/text/ParseException;
    :cond_7
    const/4 v10, 0x0

    goto/16 :goto_0
.end method


# virtual methods
.method public addDay(I)V
    .locals 2
    .param p1, "day"    # I

    .prologue
    .line 343
    iget-object v0, p0, Lcom/zeroner/android_zeroner_ble/model/DateUtil;->c:Ljava/util/Calendar;

    const/4 v1, 0x5

    invoke-virtual {v0, v1, p1}, Ljava/util/Calendar;->add(II)V

    .line 344
    return-void
.end method

.method public addMonth(I)V
    .locals 2
    .param p1, "month"    # I

    .prologue
    .line 347
    iget-object v0, p0, Lcom/zeroner/android_zeroner_ble/model/DateUtil;->c:Ljava/util/Calendar;

    const/4 v1, 0x2

    invoke-virtual {v0, v1, p1}, Ljava/util/Calendar;->add(II)V

    .line 348
    return-void
.end method

.method public getDay()I
    .locals 2

    .prologue
    .line 335
    iget-object v0, p0, Lcom/zeroner/android_zeroner_ble/model/DateUtil;->c:Ljava/util/Calendar;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    return v0
.end method

.method public getDayOfWeek()I
    .locals 2

    .prologue
    .line 391
    iget-object v0, p0, Lcom/zeroner/android_zeroner_ble/model/DateUtil;->c:Ljava/util/Calendar;

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    return v0
.end method

.method public getHHmmDate()Ljava/lang/String;
    .locals 1

    .prologue
    .line 308
    sget-object v0, Lcom/zeroner/android_zeroner_ble/model/DateUtil$DateFormater;->HHmm:Lcom/zeroner/android_zeroner_ble/model/DateUtil$DateFormater;

    invoke-virtual {p0, v0}, Lcom/zeroner/android_zeroner_ble/model/DateUtil;->toFormatString(Lcom/zeroner/android_zeroner_ble/model/DateUtil$DateFormater;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getHHmmssDate()Ljava/lang/String;
    .locals 1

    .prologue
    .line 312
    sget-object v0, Lcom/zeroner/android_zeroner_ble/model/DateUtil$DateFormater;->HHmmss:Lcom/zeroner/android_zeroner_ble/model/DateUtil$DateFormater;

    invoke-virtual {p0, v0}, Lcom/zeroner/android_zeroner_ble/model/DateUtil;->toFormatString(Lcom/zeroner/android_zeroner_ble/model/DateUtil$DateFormater;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getHour()I
    .locals 2

    .prologue
    .line 351
    iget-object v0, p0, Lcom/zeroner/android_zeroner_ble/model/DateUtil;->c:Ljava/util/Calendar;

    const/16 v1, 0xb

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    return v0
.end method

.method public getMMddDate()Ljava/lang/String;
    .locals 1

    .prologue
    .line 284
    sget-object v0, Lcom/zeroner/android_zeroner_ble/model/DateUtil$DateFormater;->MMdd:Lcom/zeroner/android_zeroner_ble/model/DateUtil$DateFormater;

    invoke-virtual {p0, v0}, Lcom/zeroner/android_zeroner_ble/model/DateUtil;->toFormatString(Lcom/zeroner/android_zeroner_ble/model/DateUtil$DateFormater;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMMdd_HHmmDate()Ljava/lang/String;
    .locals 1

    .prologue
    .line 288
    sget-object v0, Lcom/zeroner/android_zeroner_ble/model/DateUtil$DateFormater;->MMdd_HHmm:Lcom/zeroner/android_zeroner_ble/model/DateUtil$DateFormater;

    invoke-virtual {p0, v0}, Lcom/zeroner/android_zeroner_ble/model/DateUtil;->toFormatString(Lcom/zeroner/android_zeroner_ble/model/DateUtil$DateFormater;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMinute()I
    .locals 2

    .prologue
    .line 359
    iget-object v0, p0, Lcom/zeroner/android_zeroner_ble/model/DateUtil;->c:Ljava/util/Calendar;

    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    return v0
.end method

.method public getMonDate()Ljava/lang/String;
    .locals 5

    .prologue
    .line 400
    invoke-virtual {p0}, Lcom/zeroner/android_zeroner_ble/model/DateUtil;->getDayOfWeek()I

    move-result v0

    .line 401
    .local v0, "day":I
    iget-object v2, p0, Lcom/zeroner/android_zeroner_ble/model/DateUtil;->c:Ljava/util/Calendar;

    const/4 v3, 0x5

    iget-object v4, p0, Lcom/zeroner/android_zeroner_ble/model/DateUtil;->c:Ljava/util/Calendar;

    invoke-virtual {v4}, Ljava/util/Calendar;->getFirstDayOfWeek()I

    move-result v4

    sub-int/2addr v4, v0

    invoke-virtual {v2, v3, v4}, Ljava/util/Calendar;->add(II)V

    .line 402
    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v2, "yyyyMMdd"

    invoke-direct {v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 403
    .local v1, "sdf":Ljava/text/SimpleDateFormat;
    iget-object v2, p0, Lcom/zeroner/android_zeroner_ble/model/DateUtil;->c:Ljava/util/Calendar;

    invoke-virtual {v2}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public getMonth()I
    .locals 2

    .prologue
    .line 327
    iget-object v0, p0, Lcom/zeroner/android_zeroner_ble/model/DateUtil;->c:Ljava/util/Calendar;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public getSecond()I
    .locals 2

    .prologue
    .line 367
    iget-object v0, p0, Lcom/zeroner/android_zeroner_ble/model/DateUtil;->c:Ljava/util/Calendar;

    const/16 v1, 0xd

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    return v0
.end method

.method public getSyyyyMMddDate()Ljava/lang/String;
    .locals 1

    .prologue
    .line 315
    sget-object v0, Lcom/zeroner/android_zeroner_ble/model/DateUtil$DateFormater;->SyyyyMMdd:Lcom/zeroner/android_zeroner_ble/model/DateUtil$DateFormater;

    invoke-virtual {p0, v0}, Lcom/zeroner/android_zeroner_ble/model/DateUtil;->toFormatString(Lcom/zeroner/android_zeroner_ble/model/DateUtil$DateFormater;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTimestamp()J
    .locals 2

    .prologue
    .line 375
    iget-object v0, p0, Lcom/zeroner/android_zeroner_ble/model/DateUtil;->c:Ljava/util/Calendar;

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    return-wide v0
.end method

.method public getUnixTimestamp()J
    .locals 4

    .prologue
    .line 383
    iget-object v0, p0, Lcom/zeroner/android_zeroner_ble/model/DateUtil;->c:Ljava/util/Calendar;

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    return-wide v0
.end method

.method public getWeekOfYear()I
    .locals 2

    .prologue
    .line 395
    iget-object v0, p0, Lcom/zeroner/android_zeroner_ble/model/DateUtil;->c:Ljava/util/Calendar;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    return v0
.end method

.method public getYear()I
    .locals 2

    .prologue
    .line 319
    iget-object v0, p0, Lcom/zeroner/android_zeroner_ble/model/DateUtil;->c:Ljava/util/Calendar;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    return v0
.end method

.method public getYyyyMMDate()Ljava/lang/String;
    .locals 1

    .prologue
    .line 292
    sget-object v0, Lcom/zeroner/android_zeroner_ble/model/DateUtil$DateFormater;->yyyyMM:Lcom/zeroner/android_zeroner_ble/model/DateUtil$DateFormater;

    invoke-virtual {p0, v0}, Lcom/zeroner/android_zeroner_ble/model/DateUtil;->toFormatString(Lcom/zeroner/android_zeroner_ble/model/DateUtil$DateFormater;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getYyyyMMddDate()Ljava/lang/String;
    .locals 1

    .prologue
    .line 296
    sget-object v0, Lcom/zeroner/android_zeroner_ble/model/DateUtil$DateFormater;->yyyyMMdd:Lcom/zeroner/android_zeroner_ble/model/DateUtil$DateFormater;

    invoke-virtual {p0, v0}, Lcom/zeroner/android_zeroner_ble/model/DateUtil;->toFormatString(Lcom/zeroner/android_zeroner_ble/model/DateUtil$DateFormater;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getYyyyMMdd_HHmmDate()Ljava/lang/String;
    .locals 1

    .prologue
    .line 300
    sget-object v0, Lcom/zeroner/android_zeroner_ble/model/DateUtil$DateFormater;->yyyyMMdd_HHmm:Lcom/zeroner/android_zeroner_ble/model/DateUtil$DateFormater;

    invoke-virtual {p0, v0}, Lcom/zeroner/android_zeroner_ble/model/DateUtil;->toFormatString(Lcom/zeroner/android_zeroner_ble/model/DateUtil$DateFormater;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getYyyyMMdd_HHmmssDate()Ljava/lang/String;
    .locals 1

    .prologue
    .line 304
    sget-object v0, Lcom/zeroner/android_zeroner_ble/model/DateUtil$DateFormater;->yyyyMMdd_HHmmss:Lcom/zeroner/android_zeroner_ble/model/DateUtil$DateFormater;

    invoke-virtual {p0, v0}, Lcom/zeroner/android_zeroner_ble/model/DateUtil;->toFormatString(Lcom/zeroner/android_zeroner_ble/model/DateUtil$DateFormater;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isSameMonth(II)Z
    .locals 4
    .param p1, "number"    # I
    .param p2, "year"    # I

    .prologue
    .line 230
    new-instance v0, Lcom/zeroner/android_zeroner_ble/model/DateUtil;

    new-instance v3, Ljava/util/Date;

    invoke-direct {v3}, Ljava/util/Date;-><init>()V

    invoke-direct {v0, v3}, Lcom/zeroner/android_zeroner_ble/model/DateUtil;-><init>(Ljava/util/Date;)V

    .line 231
    .local v0, "date":Lcom/zeroner/android_zeroner_ble/model/DateUtil;
    invoke-virtual {v0}, Lcom/zeroner/android_zeroner_ble/model/DateUtil;->getMonth()I

    move-result v1

    .line 232
    .local v1, "index":I
    invoke-virtual {v0}, Lcom/zeroner/android_zeroner_ble/model/DateUtil;->getYear()I

    move-result v2

    .line 233
    .local v2, "nYear":I
    if-ne p1, v1, :cond_0

    if-ne v2, p2, :cond_0

    .line 234
    const/4 v3, 0x1

    .line 236
    :goto_0
    return v3

    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public isSameWeek(I)Z
    .locals 3
    .param p1, "number"    # I

    .prologue
    .line 221
    new-instance v0, Lcom/zeroner/android_zeroner_ble/model/DateUtil;

    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    invoke-direct {v0, v2}, Lcom/zeroner/android_zeroner_ble/model/DateUtil;-><init>(Ljava/util/Date;)V

    .line 222
    .local v0, "date":Lcom/zeroner/android_zeroner_ble/model/DateUtil;
    invoke-virtual {v0}, Lcom/zeroner/android_zeroner_ble/model/DateUtil;->getWeekOfYear()I

    move-result v1

    .line 223
    .local v1, "index":I
    if-ne p1, v1, :cond_0

    .line 224
    const/4 v2, 0x1

    .line 226
    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public isToday()Z
    .locals 3

    .prologue
    .line 212
    new-instance v0, Lcom/zeroner/android_zeroner_ble/model/DateUtil;

    invoke-direct {v0}, Lcom/zeroner/android_zeroner_ble/model/DateUtil;-><init>()V

    .line 213
    .local v0, "d":Lcom/zeroner/android_zeroner_ble/model/DateUtil;
    invoke-virtual {p0}, Lcom/zeroner/android_zeroner_ble/model/DateUtil;->getYear()I

    move-result v1

    invoke-virtual {v0}, Lcom/zeroner/android_zeroner_ble/model/DateUtil;->getYear()I

    move-result v2

    if-ne v1, v2, :cond_0

    invoke-virtual {p0}, Lcom/zeroner/android_zeroner_ble/model/DateUtil;->getMonth()I

    move-result v1

    invoke-virtual {v0}, Lcom/zeroner/android_zeroner_ble/model/DateUtil;->getMonth()I

    move-result v2

    if-ne v1, v2, :cond_0

    .line 214
    invoke-virtual {p0}, Lcom/zeroner/android_zeroner_ble/model/DateUtil;->getDay()I

    move-result v1

    invoke-virtual {v0}, Lcom/zeroner/android_zeroner_ble/model/DateUtil;->getDay()I

    move-result v2

    if-ne v1, v2, :cond_0

    .line 215
    const/4 v1, 0x1

    .line 217
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setDay(I)V
    .locals 2
    .param p1, "day"    # I

    .prologue
    .line 339
    iget-object v0, p0, Lcom/zeroner/android_zeroner_ble/model/DateUtil;->c:Ljava/util/Calendar;

    const/4 v1, 0x5

    invoke-virtual {v0, v1, p1}, Ljava/util/Calendar;->set(II)V

    .line 340
    return-void
.end method

.method public setHour(I)V
    .locals 2
    .param p1, "hour"    # I

    .prologue
    .line 355
    iget-object v0, p0, Lcom/zeroner/android_zeroner_ble/model/DateUtil;->c:Ljava/util/Calendar;

    const/16 v1, 0xb

    invoke-virtual {v0, v1, p1}, Ljava/util/Calendar;->set(II)V

    .line 356
    return-void
.end method

.method public setMinute(I)V
    .locals 2
    .param p1, "minute"    # I

    .prologue
    .line 363
    iget-object v0, p0, Lcom/zeroner/android_zeroner_ble/model/DateUtil;->c:Ljava/util/Calendar;

    const/16 v1, 0xc

    invoke-virtual {v0, v1, p1}, Ljava/util/Calendar;->set(II)V

    .line 364
    return-void
.end method

.method public setMonth(I)V
    .locals 3
    .param p1, "month"    # I

    .prologue
    .line 331
    iget-object v0, p0, Lcom/zeroner/android_zeroner_ble/model/DateUtil;->c:Ljava/util/Calendar;

    const/4 v1, 0x2

    add-int/lit8 v2, p1, -0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    .line 332
    return-void
.end method

.method public setSecond(I)V
    .locals 2
    .param p1, "second"    # I

    .prologue
    .line 371
    iget-object v0, p0, Lcom/zeroner/android_zeroner_ble/model/DateUtil;->c:Ljava/util/Calendar;

    const/16 v1, 0xd

    invoke-virtual {v0, v1, p1}, Ljava/util/Calendar;->set(II)V

    .line 372
    return-void
.end method

.method public setTimestamp(J)V
    .locals 1
    .param p1, "timestamp"    # J

    .prologue
    .line 379
    iget-object v0, p0, Lcom/zeroner/android_zeroner_ble/model/DateUtil;->c:Ljava/util/Calendar;

    invoke-virtual {v0, p1, p2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 380
    return-void
.end method

.method public setUnixTimestamp(J)V
    .locals 5
    .param p1, "unix_timestamp"    # J

    .prologue
    .line 387
    iget-object v0, p0, Lcom/zeroner/android_zeroner_ble/model/DateUtil;->c:Ljava/util/Calendar;

    const-wide/16 v2, 0x3e8

    mul-long/2addr v2, p1

    invoke-virtual {v0, v2, v3}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 388
    return-void
.end method

.method public setYear(I)V
    .locals 2
    .param p1, "year"    # I

    .prologue
    .line 323
    iget-object v0, p0, Lcom/zeroner/android_zeroner_ble/model/DateUtil;->c:Ljava/util/Calendar;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1}, Ljava/util/Calendar;->set(II)V

    .line 324
    return-void
.end method

.method public toDate()Ljava/util/Date;
    .locals 1

    .prologue
    .line 246
    iget-object v0, p0, Lcom/zeroner/android_zeroner_ble/model/DateUtil;->c:Ljava/util/Calendar;

    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public toFormatString(Lcom/zeroner/android_zeroner_ble/model/DateUtil$DateFormater;)Ljava/lang/String;
    .locals 4
    .param p1, "formater"    # Lcom/zeroner/android_zeroner_ble/model/DateUtil$DateFormater;

    .prologue
    .line 250
    invoke-virtual {p0}, Lcom/zeroner/android_zeroner_ble/model/DateUtil;->toDate()Ljava/util/Date;

    move-result-object v0

    .line 251
    .local v0, "date":Ljava/util/Date;
    const-string v1, "Unknown"

    .line 252
    .local v1, "sdate":Ljava/lang/String;
    invoke-static {}, Lcom/zeroner/android_zeroner_ble/model/DateUtil;->$SWITCH_TABLE$com$zeroner$android_zeroner_ble$model$DateUtil$DateFormater()[I

    move-result-object v2

    invoke-virtual {p1}, Lcom/zeroner/android_zeroner_ble/model/DateUtil$DateFormater;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    .line 280
    :goto_0
    :pswitch_0
    return-object v1

    .line 254
    :pswitch_1
    sget-object v2, Lcom/zeroner/android_zeroner_ble/model/DateUtil;->dFMMdd:Ljava/lang/ThreadLocal;

    invoke-virtual {v2}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/text/SimpleDateFormat;

    invoke-virtual {v2, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    .line 255
    goto :goto_0

    .line 257
    :pswitch_2
    sget-object v2, Lcom/zeroner/android_zeroner_ble/model/DateUtil;->dFMMdd_HHmm:Ljava/lang/ThreadLocal;

    invoke-virtual {v2}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/text/SimpleDateFormat;

    invoke-virtual {v2, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    .line 258
    goto :goto_0

    .line 260
    :pswitch_3
    sget-object v2, Lcom/zeroner/android_zeroner_ble/model/DateUtil;->dFyyyyMM:Ljava/lang/ThreadLocal;

    invoke-virtual {v2}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/text/SimpleDateFormat;

    invoke-virtual {v2, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    .line 261
    goto :goto_0

    .line 263
    :pswitch_4
    sget-object v2, Lcom/zeroner/android_zeroner_ble/model/DateUtil;->dFyyyyMMdd:Ljava/lang/ThreadLocal;

    invoke-virtual {v2}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/text/SimpleDateFormat;

    invoke-virtual {v2, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    .line 264
    goto :goto_0

    .line 266
    :pswitch_5
    sget-object v2, Lcom/zeroner/android_zeroner_ble/model/DateUtil;->dFyyyyMMdd_HHmm:Ljava/lang/ThreadLocal;

    invoke-virtual {v2}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/text/SimpleDateFormat;

    invoke-virtual {v2, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    .line 267
    goto :goto_0

    .line 269
    :pswitch_6
    sget-object v2, Lcom/zeroner/android_zeroner_ble/model/DateUtil;->dFyyyyMMdd_HHmmss:Ljava/lang/ThreadLocal;

    invoke-virtual {v2}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/text/SimpleDateFormat;

    invoke-virtual {v2, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    .line 270
    goto :goto_0

    .line 272
    :pswitch_7
    sget-object v2, Lcom/zeroner/android_zeroner_ble/model/DateUtil;->dFHHmm:Ljava/lang/ThreadLocal;

    invoke-virtual {v2}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/text/SimpleDateFormat;

    invoke-virtual {v2, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    .line 273
    goto :goto_0

    .line 275
    :pswitch_8
    sget-object v2, Lcom/zeroner/android_zeroner_ble/model/DateUtil;->dFHHmmss:Ljava/lang/ThreadLocal;

    invoke-virtual {v2}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/text/SimpleDateFormat;

    invoke-virtual {v2, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    .line 276
    goto :goto_0

    .line 278
    :pswitch_9
    sget-object v2, Lcom/zeroner/android_zeroner_ble/model/DateUtil;->dFSyyyyMMdd:Ljava/lang/ThreadLocal;

    invoke-virtual {v2}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/text/SimpleDateFormat;

    invoke-virtual {v2, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 252
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_0
        :pswitch_9
    .end packed-switch
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 408
    invoke-virtual {p0}, Lcom/zeroner/android_zeroner_ble/model/DateUtil;->getYyyyMMdd_HHmmssDate()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
