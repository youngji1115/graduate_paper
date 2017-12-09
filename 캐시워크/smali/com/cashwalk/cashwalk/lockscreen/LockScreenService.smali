.class public Lcom/cashwalk/cashwalk/lockscreen/LockScreenService;
.super Landroid/app/Service;
.source "LockScreenService.java"

# interfaces
.implements Landroid/hardware/SensorEventListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cashwalk/cashwalk/lockscreen/LockScreenService$LockScreenReceiver;,
        Lcom/cashwalk/cashwalk/lockscreen/LockScreenService$PhoneStateReceiver;
    }
.end annotation


# static fields
.field public static lastMillis:J

.field public static lastScreenOff:J

.field private static mStepsDBHelper:Lcom/cashwalk/cashwalk/util/StepsDBHelper;

.field public static screenOffOnDiff:J

.field public static stepDiff:I

.field public static steps:I


# instance fields
.field private callState:Z

.field private hasStepSensor:Z

.field private height:I

.field private lastSensorMillis:J

.field private mLastDiff:[F

.field private mLastDirections:[F

.field private mLastExtremes:[[F

.field private mLastMatch:I

.field private mLastValues:[F

.field private mLimit:F

.field private mScale:[F

.field private mYOffset:F

.field private phoneStateReceiver:Landroid/content/BroadcastReceiver;

.field private pref:Landroid/content/SharedPreferences;

.field private screenReceiver:Landroid/content/BroadcastReceiver;

.field private sm:Landroid/hardware/SensorManager;

.field private stepCounterSensor:Landroid/hardware/Sensor;

.field private tm:Landroid/telephony/TelephonyManager;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    .line 53
    const/4 v0, 0x0

    sput v0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenService;->stepDiff:I

    .line 54
    sput-wide v2, Lcom/cashwalk/cashwalk/lockscreen/LockScreenService;->lastMillis:J

    .line 56
    sput-wide v2, Lcom/cashwalk/cashwalk/lockscreen/LockScreenService;->lastScreenOff:J

    .line 57
    sput-wide v2, Lcom/cashwalk/cashwalk/lockscreen/LockScreenService;->screenOffOnDiff:J

    .line 71
    const/4 v0, 0x0

    sput-object v0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenService;->mStepsDBHelper:Lcom/cashwalk/cashwalk/util/StepsDBHelper;

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .prologue
    const/4 v1, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x6

    .line 43
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 49
    iput-boolean v2, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenService;->callState:Z

    .line 55
    iput v2, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenService;->height:I

    .line 59
    iput-boolean v2, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenService;->hasStepSensor:Z

    .line 60
    const/high16 v0, 0x40c00000    # 6.0f

    iput v0, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenService;->mLimit:F

    .line 61
    new-array v0, v3, [F

    iput-object v0, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenService;->mLastValues:[F

    .line 62
    new-array v0, v1, [F

    iput-object v0, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenService;->mScale:[F

    .line 65
    new-array v0, v3, [F

    iput-object v0, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenService;->mLastDirections:[F

    .line 66
    new-array v0, v1, [[F

    new-array v1, v3, [F

    aput-object v1, v0, v2

    const/4 v1, 0x1

    new-array v2, v3, [F

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenService;->mLastExtremes:[[F

    .line 67
    new-array v0, v3, [F

    iput-object v0, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenService;->mLastDiff:[F

    .line 68
    const/4 v0, -0x1

    iput v0, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenService;->mLastMatch:I

    .line 69
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenService;->lastSensorMillis:J

    .line 471
    return-void
.end method

.method static synthetic access$200(Lcom/cashwalk/cashwalk/lockscreen/LockScreenService;)Z
    .locals 1
    .param p0, "x0"    # Lcom/cashwalk/cashwalk/lockscreen/LockScreenService;

    .prologue
    .line 43
    iget-boolean v0, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenService;->callState:Z

    return v0
.end method

.method static synthetic access$202(Lcom/cashwalk/cashwalk/lockscreen/LockScreenService;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/cashwalk/cashwalk/lockscreen/LockScreenService;
    .param p1, "x1"    # Z

    .prologue
    .line 43
    iput-boolean p1, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenService;->callState:Z

    return p1
.end method

.method static synthetic access$300(Lcom/cashwalk/cashwalk/lockscreen/LockScreenService;)Landroid/content/SharedPreferences;
    .locals 1
    .param p0, "x0"    # Lcom/cashwalk/cashwalk/lockscreen/LockScreenService;

    .prologue
    .line 43
    iget-object v0, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenService;->pref:Landroid/content/SharedPreferences;

    return-object v0
.end method

.method private buildNotification(I)Landroid/app/Notification;
    .locals 26
    .param p1, "steps"    # I

    .prologue
    .line 146
    new-instance v13, Landroid/content/Intent;

    const-class v19, Lcom/cashwalk/cashwalk/MainActivity;

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v13, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 147
    .local v13, "notificationIntent":Landroid/content/Intent;
    const/16 v19, 0x0

    const/high16 v20, 0x8000000

    move-object/from16 v0, p0

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-static {v0, v1, v13, v2}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v5

    .line 149
    .local v5, "contentIntent":Landroid/app/PendingIntent;
    new-instance v19, Landroid/support/v4/app/NotificationCompat$Builder;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/support/v4/app/NotificationCompat$Builder;-><init>(Landroid/content/Context;)V

    const v20, 0x7f02018f

    .line 150
    invoke-virtual/range {v19 .. v20}, Landroid/support/v4/app/NotificationCompat$Builder;->setSmallIcon(I)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v19

    const/16 v20, 0x1

    .line 151
    invoke-virtual/range {v19 .. v20}, Landroid/support/v4/app/NotificationCompat$Builder;->setAutoCancel(Z)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v19

    const v20, 0x7f0900aa

    .line 152
    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/cashwalk/cashwalk/lockscreen/LockScreenService;->getString(I)Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v19

    const-wide/16 v20, 0x0

    .line 153
    invoke-virtual/range {v19 .. v21}, Landroid/support/v4/app/NotificationCompat$Builder;->setWhen(J)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v19

    .line 154
    move-object/from16 v0, v19

    invoke-virtual {v0, v5}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v19

    const/16 v20, 0x2

    .line 155
    invoke-virtual/range {v19 .. v20}, Landroid/support/v4/app/NotificationCompat$Builder;->setPriority(I)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v4

    .line 157
    .local v4, "builder":Landroid/support/v4/app/NotificationCompat$Builder;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenService;->pref:Landroid/content/SharedPreferences;

    move-object/from16 v19, v0

    const-string v20, "HEIGHT"

    const/16 v21, 0x0

    invoke-interface/range {v19 .. v21}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v19

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lcom/cashwalk/cashwalk/lockscreen/LockScreenService;->height:I

    .line 159
    div-int/lit8 v8, p1, 0x1e

    .line 160
    .local v8, "kcal":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenService;->height:I

    move/from16 v19, v0

    add-int/lit8 v19, v19, -0x64

    mul-int v19, v19, p1

    div-int/lit8 v9, v19, 0x64

    .line 161
    .local v9, "meter":I
    int-to-double v0, v9

    move-wide/from16 v20, v0

    const-wide v22, 0x40af400000000000L    # 4000.0

    div-double v20, v20, v22

    const-wide/high16 v22, 0x404e000000000000L    # 60.0

    mul-double v20, v20, v22

    move-wide/from16 v0, v20

    double-to-int v12, v0

    .line 162
    .local v12, "min":I
    move/from16 v0, p1

    int-to-double v0, v0

    move-wide/from16 v20, v0

    const-wide v22, 0x40c3880000000000L    # 10000.0

    div-double v20, v20, v22

    const-wide/high16 v22, 0x4059000000000000L    # 100.0

    mul-double v20, v20, v22

    move-wide/from16 v0, v20

    double-to-int v15, v0

    .line 164
    .local v15, "percent":I
    const/4 v10, 0x0

    .line 165
    .local v10, "meterText":Ljava/lang/String;
    const/4 v11, 0x0

    .line 167
    .local v11, "meterUnit":Ljava/lang/String;
    if-lez v9, :cond_0

    .line 168
    const/16 v19, 0x3e8

    move/from16 v0, v19

    if-ge v9, v0, :cond_3

    .line 169
    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v10

    .line 170
    const-string v11, "m"

    .line 177
    :cond_0
    :goto_0
    new-instance v6, Landroid/widget/RemoteViews;

    invoke-virtual/range {p0 .. p0}, Lcom/cashwalk/cashwalk/lockscreen/LockScreenService;->getPackageName()Ljava/lang/String;

    move-result-object v19

    const v20, 0x7f04006a

    move-object/from16 v0, v19

    move/from16 v1, v20

    invoke-direct {v6, v0, v1}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 179
    .local v6, "contentView":Landroid/widget/RemoteViews;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenService;->pref:Landroid/content/SharedPreferences;

    move-object/from16 v19, v0

    const-string v20, "USER_ID"

    const/16 v21, 0x0

    invoke-interface/range {v19 .. v21}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    if-eqz v19, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenService;->pref:Landroid/content/SharedPreferences;

    move-object/from16 v19, v0

    const-string v20, "NICKNAME"

    const/16 v21, 0x0

    invoke-interface/range {v19 .. v21}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    if-nez v19, :cond_4

    .line 180
    :cond_1
    const v19, 0x7f10034c

    const v20, 0x7f0901e1

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/cashwalk/cashwalk/lockscreen/LockScreenService;->getString(I)Ljava/lang/String;

    move-result-object v20

    move/from16 v0, v19

    move-object/from16 v1, v20

    invoke-virtual {v6, v0, v1}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 182
    new-instance v7, Landroid/content/Intent;

    const-class v19, Lcom/cashwalk/cashwalk/activity/SplashActivity;

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v7, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 183
    .local v7, "feedbackIntent":Landroid/content/Intent;
    const/16 v19, 0x1

    const/16 v20, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-static {v0, v1, v7, v2}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v17

    .line 184
    .local v17, "pit":Landroid/app/PendingIntent;
    const v19, 0x7f10034c

    move/from16 v0, v19

    move-object/from16 v1, v17

    invoke-virtual {v6, v0, v1}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 194
    .end local v7    # "feedbackIntent":Landroid/content/Intent;
    .end local v17    # "pit":Landroid/app/PendingIntent;
    :goto_1
    const v19, 0x7f10034c

    const v20, -0xa1afb0

    move/from16 v0, v19

    move/from16 v1, v20

    invoke-virtual {v6, v0, v1}, Landroid/widget/RemoteViews;->setTextColor(II)V

    .line 195
    if-lez v9, :cond_f

    .line 196
    const v19, 0x7f10028d

    const/16 v20, 0x0

    move/from16 v0, v19

    move/from16 v1, v20

    invoke-virtual {v6, v0, v1}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 197
    const v19, 0x7f10034a

    const/16 v20, 0x8

    move/from16 v0, v19

    move/from16 v1, v20

    invoke-virtual {v6, v0, v1}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 198
    const v19, 0x7f10030f

    invoke-static/range {p1 .. p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v20

    move/from16 v0, v19

    move-object/from16 v1, v20

    invoke-virtual {v6, v0, v1}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 199
    const v19, 0x7f100214

    move/from16 v0, v19

    invoke-virtual {v6, v0, v10}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 200
    const v19, 0x7f10034b

    move/from16 v0, v19

    invoke-virtual {v6, v0, v11}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 201
    const v19, 0x7f100349

    const/16 v20, 0x0

    move/from16 v0, v19

    move/from16 v1, v20

    invoke-virtual {v6, v0, v1}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 202
    const v19, 0x7f100349

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v15}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, "%"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    move/from16 v0, v19

    move-object/from16 v1, v20

    invoke-virtual {v6, v0, v1}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 203
    const v19, 0x7f100212

    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v20

    move/from16 v0, v19

    move-object/from16 v1, v20

    invoke-virtual {v6, v0, v1}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 204
    const v19, 0x7f100213

    invoke-static {v12}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v20

    move/from16 v0, v19

    move-object/from16 v1, v20

    invoke-virtual {v6, v0, v1}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 206
    const/16 v19, 0x5

    move/from16 v0, v19

    if-ge v15, v0, :cond_5

    .line 207
    const v19, 0x7f10020f

    const v20, 0x7f020261

    move/from16 v0, v19

    move/from16 v1, v20

    invoke-virtual {v6, v0, v1}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    .line 243
    :cond_2
    :goto_2
    invoke-virtual {v4, v6}, Landroid/support/v4/app/NotificationCompat$Builder;->setCustomContentView(Landroid/widget/RemoteViews;)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 245
    invoke-virtual {v4, v5}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Landroid/support/v4/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object v19

    return-object v19

    .line 172
    .end local v6    # "contentView":Landroid/widget/RemoteViews;
    :cond_3
    const-string v19, "%.1f"

    const/16 v20, 0x1

    move/from16 v0, v20

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    int-to-double v0, v9

    move-wide/from16 v22, v0

    const-wide v24, 0x408f400000000000L    # 1000.0

    div-double v22, v22, v24

    invoke-static/range {v22 .. v23}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v22

    aput-object v22, v20, v21

    invoke-static/range {v19 .. v20}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    .line 173
    const-string v11, "km"

    goto/16 :goto_0

    .line 187
    .restart local v6    # "contentView":Landroid/widget/RemoteViews;
    :cond_4
    const v19, 0x7f10034c

    const v20, 0x7f090153

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/cashwalk/cashwalk/lockscreen/LockScreenService;->getString(I)Ljava/lang/String;

    move-result-object v20

    move/from16 v0, v19

    move-object/from16 v1, v20

    invoke-virtual {v6, v0, v1}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 188
    new-instance v18, Landroid/content/Intent;

    const-class v19, Lcom/cashwalk/cashwalk/util/FeedbackDialog;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    move-object/from16 v2, v19

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 189
    .local v18, "popupIntent":Landroid/content/Intent;
    const/high16 v19, 0x10000000

    invoke-virtual/range {v18 .. v19}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 190
    const/16 v19, 0x0

    const/high16 v20, 0x40000000    # 2.0f

    move-object/from16 v0, p0

    move/from16 v1, v19

    move-object/from16 v2, v18

    move/from16 v3, v20

    invoke-static {v0, v1, v2, v3}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v16

    .line 191
    .local v16, "pi":Landroid/app/PendingIntent;
    const v19, 0x7f10034c

    move/from16 v0, v19

    move-object/from16 v1, v16

    invoke-virtual {v6, v0, v1}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    goto/16 :goto_1

    .line 208
    .end local v16    # "pi":Landroid/app/PendingIntent;
    .end local v18    # "popupIntent":Landroid/content/Intent;
    :cond_5
    const/16 v19, 0x5

    move/from16 v0, v19

    if-lt v15, v0, :cond_6

    const/16 v19, 0xf

    move/from16 v0, v19

    if-ge v15, v0, :cond_6

    .line 209
    const v19, 0x7f10020f

    const v20, 0x7f020262

    move/from16 v0, v19

    move/from16 v1, v20

    invoke-virtual {v6, v0, v1}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    goto/16 :goto_2

    .line 210
    :cond_6
    const/16 v19, 0xf

    move/from16 v0, v19

    if-lt v15, v0, :cond_7

    const/16 v19, 0x19

    move/from16 v0, v19

    if-ge v15, v0, :cond_7

    .line 211
    const v19, 0x7f10020f

    const v20, 0x7f020264

    move/from16 v0, v19

    move/from16 v1, v20

    invoke-virtual {v6, v0, v1}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    goto/16 :goto_2

    .line 212
    :cond_7
    const/16 v19, 0x19

    move/from16 v0, v19

    if-lt v15, v0, :cond_8

    const/16 v19, 0x23

    move/from16 v0, v19

    if-ge v15, v0, :cond_8

    .line 213
    const v19, 0x7f10020f

    const v20, 0x7f020265

    move/from16 v0, v19

    move/from16 v1, v20

    invoke-virtual {v6, v0, v1}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    goto/16 :goto_2

    .line 214
    :cond_8
    const/16 v19, 0x23

    move/from16 v0, v19

    if-lt v15, v0, :cond_9

    const/16 v19, 0x2d

    move/from16 v0, v19

    if-ge v15, v0, :cond_9

    .line 215
    const v19, 0x7f10020f

    const v20, 0x7f020266

    move/from16 v0, v19

    move/from16 v1, v20

    invoke-virtual {v6, v0, v1}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    goto/16 :goto_2

    .line 216
    :cond_9
    const/16 v19, 0x2d

    move/from16 v0, v19

    if-lt v15, v0, :cond_a

    const/16 v19, 0x37

    move/from16 v0, v19

    if-ge v15, v0, :cond_a

    .line 217
    const v19, 0x7f10020f

    const v20, 0x7f020267

    move/from16 v0, v19

    move/from16 v1, v20

    invoke-virtual {v6, v0, v1}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    goto/16 :goto_2

    .line 218
    :cond_a
    const/16 v19, 0x37

    move/from16 v0, v19

    if-lt v15, v0, :cond_b

    const/16 v19, 0x41

    move/from16 v0, v19

    if-ge v15, v0, :cond_b

    .line 219
    const v19, 0x7f10020f

    const v20, 0x7f020268

    move/from16 v0, v19

    move/from16 v1, v20

    invoke-virtual {v6, v0, v1}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    goto/16 :goto_2

    .line 220
    :cond_b
    const/16 v19, 0x41

    move/from16 v0, v19

    if-lt v15, v0, :cond_c

    const/16 v19, 0x4b

    move/from16 v0, v19

    if-ge v15, v0, :cond_c

    .line 221
    const v19, 0x7f10020f

    const v20, 0x7f020269

    move/from16 v0, v19

    move/from16 v1, v20

    invoke-virtual {v6, v0, v1}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    goto/16 :goto_2

    .line 222
    :cond_c
    const/16 v19, 0x4b

    move/from16 v0, v19

    if-lt v15, v0, :cond_d

    const/16 v19, 0x55

    move/from16 v0, v19

    if-ge v15, v0, :cond_d

    .line 223
    const v19, 0x7f10020f

    const v20, 0x7f02026a

    move/from16 v0, v19

    move/from16 v1, v20

    invoke-virtual {v6, v0, v1}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    goto/16 :goto_2

    .line 224
    :cond_d
    const/16 v19, 0x55

    move/from16 v0, v19

    if-lt v15, v0, :cond_e

    const/16 v19, 0x63

    move/from16 v0, v19

    if-ge v15, v0, :cond_e

    .line 225
    const v19, 0x7f10020f

    const v20, 0x7f02026b

    move/from16 v0, v19

    move/from16 v1, v20

    invoke-virtual {v6, v0, v1}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    goto/16 :goto_2

    .line 226
    :cond_e
    const/16 v19, 0x64

    move/from16 v0, v19

    if-lt v15, v0, :cond_2

    .line 227
    const v19, 0x7f10020f

    const v20, 0x7f020263

    move/from16 v0, v19

    move/from16 v1, v20

    invoke-virtual {v6, v0, v1}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    goto/16 :goto_2

    .line 230
    :cond_f
    const v19, 0x7f10028d

    const/16 v20, 0x8

    move/from16 v0, v19

    move/from16 v1, v20

    invoke-virtual {v6, v0, v1}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 231
    const v19, 0x7f10034a

    const/16 v20, 0x0

    move/from16 v0, v19

    move/from16 v1, v20

    invoke-virtual {v6, v0, v1}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 232
    const v19, 0x7f100349

    const/16 v20, 0x8

    move/from16 v0, v19

    move/from16 v1, v20

    invoke-virtual {v6, v0, v1}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 234
    new-instance v14, Lorg/joda/time/DateTime;

    invoke-direct {v14}, Lorg/joda/time/DateTime;-><init>()V

    .line 235
    .local v14, "now":Lorg/joda/time/DateTime;
    const/16 v19, 0x4

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    move/from16 v0, v19

    move/from16 v1, v20

    move/from16 v2, v21

    move/from16 v3, v22

    invoke-virtual {v14, v0, v1, v2, v3}, Lorg/joda/time/DateTime;->withTime(IIII)Lorg/joda/time/DateTime;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v14, v0}, Lorg/joda/time/DateTime;->isAfter(Lorg/joda/time/ReadableInstant;)Z

    move-result v19

    if-eqz v19, :cond_10

    const/16 v19, 0xa

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    move/from16 v0, v19

    move/from16 v1, v20

    move/from16 v2, v21

    move/from16 v3, v22

    invoke-virtual {v14, v0, v1, v2, v3}, Lorg/joda/time/DateTime;->withTime(IIII)Lorg/joda/time/DateTime;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v14, v0}, Lorg/joda/time/DateTime;->isBefore(Lorg/joda/time/ReadableInstant;)Z

    move-result v19

    if-eqz v19, :cond_10

    .line 236
    const v19, 0x7f10034a

    const v20, 0x7f0902cf

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/cashwalk/cashwalk/lockscreen/LockScreenService;->getString(I)Ljava/lang/String;

    move-result-object v20

    move/from16 v0, v19

    move-object/from16 v1, v20

    invoke-virtual {v6, v0, v1}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 240
    :goto_3
    const v19, 0x7f10020f

    const v20, 0x7f02017b

    move/from16 v0, v19

    move/from16 v1, v20

    invoke-virtual {v6, v0, v1}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    goto/16 :goto_2

    .line 238
    :cond_10
    const v19, 0x7f10034a

    const v20, 0x7f0902cf

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/cashwalk/cashwalk/lockscreen/LockScreenService;->getString(I)Ljava/lang/String;

    move-result-object v20

    move/from16 v0, v19

    move-object/from16 v1, v20

    invoke-virtual {v6, v0, v1}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    goto :goto_3
.end method

.method private updateNotification(I)V
    .locals 4
    .param p1, "steps"    # I

    .prologue
    .line 252
    :try_start_0
    const-string v2, "notification"

    invoke-virtual {p0, v2}, Lcom/cashwalk/cashwalk/lockscreen/LockScreenService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/NotificationManager;

    .line 253
    .local v1, "mNotificationManager":Landroid/app/NotificationManager;
    const/4 v2, 0x2

    invoke-direct {p0, p1}, Lcom/cashwalk/cashwalk/lockscreen/LockScreenService;->buildNotification(I)Landroid/app/Notification;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 257
    .end local v1    # "mNotificationManager":Landroid/app/NotificationManager;
    :goto_0
    return-void

    .line 254
    :catch_0
    move-exception v0

    .line 255
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private uploadSteps(I)V
    .locals 7
    .param p1, "stepsTotal"    # I

    .prologue
    const/4 v6, 0x0

    .line 416
    iget-object v3, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenService;->pref:Landroid/content/SharedPreferences;

    const-string v4, "LOCKSCREEN_UNLOCK_DATE"

    const/4 v5, 0x0

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 417
    .local v2, "unlockDate":Ljava/lang/String;
    new-instance v3, Lorg/joda/time/DateTime;

    invoke-direct {v3}, Lorg/joda/time/DateTime;-><init>()V

    const-string/jumbo v4, "yyyyMMdd"

    invoke-virtual {v3, v4}, Lorg/joda/time/DateTime;->toString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 419
    .local v1, "today":Ljava/lang/String;
    if-eqz v2, :cond_1

    .line 420
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 421
    const/4 v3, 0x1

    invoke-direct {p0, p1, v3}, Lcom/cashwalk/cashwalk/lockscreen/LockScreenService;->uploadStepsReal(IZ)V

    .line 423
    iget-object v3, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenService;->pref:Landroid/content/SharedPreferences;

    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 424
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v3, "LOCKSCREEN_HARVESTED_STEPS"

    invoke-interface {v0, v3, v6}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 425
    const-string/jumbo v3, "steps"

    invoke-interface {v0, v3, v6}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 426
    const-string v3, "LOCKSCREEN_UNLOCK_DATE"

    invoke-interface {v0, v3, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 427
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 429
    invoke-direct {p0, v6}, Lcom/cashwalk/cashwalk/lockscreen/LockScreenService;->updateNotification(I)V

    .line 431
    sput v6, Lcom/cashwalk/cashwalk/lockscreen/LockScreenService;->steps:I

    .line 439
    .end local v0    # "editor":Landroid/content/SharedPreferences$Editor;
    :goto_0
    return-void

    .line 433
    :cond_0
    invoke-direct {p0, p1, v6}, Lcom/cashwalk/cashwalk/lockscreen/LockScreenService;->uploadStepsReal(IZ)V

    goto :goto_0

    .line 436
    :cond_1
    iget-object v3, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenService;->pref:Landroid/content/SharedPreferences;

    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    const-string v4, "LOCKSCREEN_UNLOCK_DATE"

    invoke-interface {v3, v4, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 437
    invoke-direct {p0, p1, v6}, Lcom/cashwalk/cashwalk/lockscreen/LockScreenService;->uploadStepsReal(IZ)V

    goto :goto_0
.end method

.method private uploadStepsReal(IZ)V
    .locals 2
    .param p1, "stepsTotal"    # I
    .param p2, "afterMidnight"    # Z

    .prologue
    .line 399
    if-ltz p1, :cond_0

    const v1, 0x61a80

    if-le p1, v1, :cond_1

    .line 413
    :cond_0
    :goto_0
    return-void

    .line 403
    :cond_1
    new-instance v1, Lcom/cashwalk/cashwalk/lockscreen/LockScreenService$1;

    invoke-direct {v1, p0}, Lcom/cashwalk/cashwalk/lockscreen/LockScreenService$1;-><init>(Lcom/cashwalk/cashwalk/lockscreen/LockScreenService;)V

    invoke-static {p1, p2, v1}, Lcom/cashwalk/cashwalk/util/network/RestClient;->updateSteps(IZLcom/cashwalk/cashwalk/util/network/ResponseHandler;)Lcom/android/volley/toolbox/JsonObjectRequest;

    move-result-object v0

    .line 412
    .local v0, "request":Lcom/android/volley/toolbox/JsonObjectRequest;
    invoke-virtual {p0}, Lcom/cashwalk/cashwalk/lockscreen/LockScreenService;->getApplication()Landroid/app/Application;

    move-result-object v1

    check-cast v1, Lcom/cashwalk/cashwalk/CashWalkApp;

    invoke-virtual {v1}, Lcom/cashwalk/cashwalk/CashWalkApp;->requestQueue()Lcom/android/volley/RequestQueue;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/volley/RequestQueue;->add(Lcom/android/volley/Request;)Lcom/android/volley/Request;

    goto :goto_0
.end method


# virtual methods
.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0
    .param p1, "sensor"    # Landroid/hardware/Sensor;
    .param p2, "i"    # I

    .prologue
    .line 444
    return-void
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 119
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()V
    .locals 13

    .prologue
    const/4 v12, 0x0

    const/4 v11, 0x1

    const/16 v8, 0x13

    const/4 v10, 0x0

    const/high16 v9, 0x3f000000    # 0.5f

    .line 75
    invoke-virtual {p0}, Lcom/cashwalk/cashwalk/lockscreen/LockScreenService;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v6

    iput-object v6, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenService;->pref:Landroid/content/SharedPreferences;

    .line 76
    new-instance v1, Landroid/content/IntentFilter;

    const-string v6, "android.intent.action.SCREEN_ON"

    invoke-direct {v1, v6}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 77
    .local v1, "filter":Landroid/content/IntentFilter;
    const-string v6, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v1, v6}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 78
    new-instance v6, Lcom/cashwalk/cashwalk/lockscreen/LockScreenService$LockScreenReceiver;

    invoke-direct {v6, p0, v12}, Lcom/cashwalk/cashwalk/lockscreen/LockScreenService$LockScreenReceiver;-><init>(Lcom/cashwalk/cashwalk/lockscreen/LockScreenService;Lcom/cashwalk/cashwalk/lockscreen/LockScreenService$1;)V

    iput-object v6, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenService;->screenReceiver:Landroid/content/BroadcastReceiver;

    .line 79
    iget-object v6, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenService;->screenReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v6, v1}, Lcom/cashwalk/cashwalk/lockscreen/LockScreenService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 81
    invoke-virtual {p0}, Lcom/cashwalk/cashwalk/lockscreen/LockScreenService;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    .line 82
    .local v5, "pm":Landroid/content/pm/PackageManager;
    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v6, v8, :cond_0

    .line 83
    const-string v6, "android.hardware.sensor.stepcounter"

    invoke-virtual {v5, v6}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v6

    iput-boolean v6, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenService;->hasStepSensor:Z

    .line 87
    :cond_0
    :try_start_0
    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    .line 88
    .local v4, "params":Landroid/os/Bundle;
    iget-boolean v6, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenService;->hasStepSensor:Z

    if-eqz v6, :cond_1

    .line 89
    invoke-static {p0}, Lcom/google/firebase/analytics/FirebaseAnalytics;->getInstance(Landroid/content/Context;)Lcom/google/firebase/analytics/FirebaseAnalytics;

    move-result-object v6

    const-string/jumbo v7, "step_sensor_new"

    invoke-virtual {v6, v7, v4}, Lcom/google/firebase/analytics/FirebaseAnalytics;->logEvent(Ljava/lang/String;Landroid/os/Bundle;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 97
    .end local v4    # "params":Landroid/os/Bundle;
    :goto_0
    const-string v6, "sensor"

    invoke-virtual {p0, v6}, Lcom/cashwalk/cashwalk/lockscreen/LockScreenService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/hardware/SensorManager;

    iput-object v6, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenService;->sm:Landroid/hardware/SensorManager;

    .line 99
    iget-boolean v6, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenService;->hasStepSensor:Z

    if-eqz v6, :cond_2

    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v6, v8, :cond_2

    .line 100
    iget-object v6, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenService;->sm:Landroid/hardware/SensorManager;

    invoke-virtual {v6, v8}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v6

    iput-object v6, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenService;->stepCounterSensor:Landroid/hardware/Sensor;

    .line 101
    iget-object v6, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenService;->sm:Landroid/hardware/SensorManager;

    iget-object v7, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenService;->stepCounterSensor:Landroid/hardware/Sensor;

    invoke-virtual {v6, p0, v7, v10}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    .line 112
    :goto_1
    new-instance v6, Lcom/cashwalk/cashwalk/lockscreen/LockScreenService$PhoneStateReceiver;

    invoke-direct {v6, p0, v12}, Lcom/cashwalk/cashwalk/lockscreen/LockScreenService$PhoneStateReceiver;-><init>(Lcom/cashwalk/cashwalk/lockscreen/LockScreenService;Lcom/cashwalk/cashwalk/lockscreen/LockScreenService$1;)V

    iput-object v6, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenService;->phoneStateReceiver:Landroid/content/BroadcastReceiver;

    .line 113
    new-instance v2, Landroid/content/IntentFilter;

    const-string v6, "android.intent.action.PHONE_STATE"

    invoke-direct {v2, v6}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 114
    .local v2, "filterPhone":Landroid/content/IntentFilter;
    iget-object v6, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenService;->phoneStateReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v6, v2}, Lcom/cashwalk/cashwalk/lockscreen/LockScreenService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 115
    return-void

    .line 91
    .end local v2    # "filterPhone":Landroid/content/IntentFilter;
    .restart local v4    # "params":Landroid/os/Bundle;
    :cond_1
    :try_start_1
    invoke-static {p0}, Lcom/google/firebase/analytics/FirebaseAnalytics;->getInstance(Landroid/content/Context;)Lcom/google/firebase/analytics/FirebaseAnalytics;

    move-result-object v6

    const-string/jumbo v7, "step_sensor_old"

    invoke-virtual {v6, v7, v4}, Lcom/google/firebase/analytics/FirebaseAnalytics;->logEvent(Ljava/lang/String;Landroid/os/Bundle;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 93
    .end local v4    # "params":Landroid/os/Bundle;
    :catch_0
    move-exception v0

    .line 94
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 103
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_2
    iget-object v6, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenService;->sm:Landroid/hardware/SensorManager;

    invoke-virtual {v6, v11}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v6

    iput-object v6, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenService;->stepCounterSensor:Landroid/hardware/Sensor;

    .line 104
    iget-object v6, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenService;->sm:Landroid/hardware/SensorManager;

    iget-object v7, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenService;->stepCounterSensor:Landroid/hardware/Sensor;

    invoke-virtual {v6, p0, v7, v10}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    .line 106
    const/16 v3, 0x1e0

    .line 107
    .local v3, "h":I
    int-to-float v6, v3

    mul-float/2addr v6, v9

    iput v6, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenService;->mYOffset:F

    .line 108
    iget-object v6, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenService;->mScale:[F

    int-to-float v7, v3

    mul-float/2addr v7, v9

    const v8, 0x3d50d67f

    mul-float/2addr v7, v8

    neg-float v7, v7

    aput v7, v6, v10

    .line 109
    iget-object v6, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenService;->mScale:[F

    int-to-float v7, v3

    mul-float/2addr v7, v9

    const v8, 0x3c888889

    mul-float/2addr v7, v8

    neg-float v7, v7

    aput v7, v6, v11

    goto :goto_1
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 261
    iget-object v0, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenService;->screenReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_0

    .line 262
    iget-object v0, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenService;->screenReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/cashwalk/cashwalk/lockscreen/LockScreenService;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 265
    :cond_0
    iget-object v0, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenService;->phoneStateReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_1

    .line 266
    iget-object v0, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenService;->phoneStateReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/cashwalk/cashwalk/lockscreen/LockScreenService;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 269
    :cond_1
    iget-object v0, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenService;->stepCounterSensor:Landroid/hardware/Sensor;

    if-eqz v0, :cond_2

    .line 270
    iget-object v0, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenService;->sm:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenService;->stepCounterSensor:Landroid/hardware/Sensor;

    invoke-virtual {v0, p0, v1}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;)V

    .line 272
    :cond_2
    return-void
.end method

.method public declared-synchronized onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 35
    .param p1, "event"    # Landroid/hardware/SensorEvent;

    .prologue
    .line 276
    monitor-enter p0

    :try_start_0
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    move-object/from16 v19, v0

    .line 277
    .local v19, "sensor":Landroid/hardware/Sensor;
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/hardware/SensorEvent;->values:[F

    move-object/from16 v29, v0

    .line 279
    .local v29, "values":[F
    invoke-virtual/range {v19 .. v19}, Landroid/hardware/Sensor;->getType()I

    move-result v25

    .line 280
    .local v25, "type":I
    sget-object v30, Lcom/cashwalk/cashwalk/CashWalkApp;->StepsDBHelper:Lcom/cashwalk/cashwalk/util/StepsDBHelper;

    if-nez v30, :cond_0

    .line 281
    new-instance v30, Lcom/cashwalk/cashwalk/util/StepsDBHelper;

    const/16 v31, 0x0

    move-object/from16 v0, v30

    move-object/from16 v1, p0

    move-object/from16 v2, v31

    invoke-direct {v0, v1, v2}, Lcom/cashwalk/cashwalk/util/StepsDBHelper;-><init>(Landroid/content/Context;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;)V

    sput-object v30, Lcom/cashwalk/cashwalk/CashWalkApp;->StepsDBHelper:Lcom/cashwalk/cashwalk/util/StepsDBHelper;

    .line 283
    :cond_0
    sget-object v30, Lcom/cashwalk/cashwalk/CashWalkApp;->StepsDBHelper:Lcom/cashwalk/cashwalk/util/StepsDBHelper;

    sput-object v30, Lcom/cashwalk/cashwalk/lockscreen/LockScreenService;->mStepsDBHelper:Lcom/cashwalk/cashwalk/util/StepsDBHelper;

    .line 286
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenService;->pref:Landroid/content/SharedPreferences;

    move-object/from16 v30, v0

    const-string/jumbo v31, "steps"

    const/16 v32, 0x0

    invoke-interface/range {v30 .. v32}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v23

    .line 287
    .local v23, "tempSteps":I
    const/16 v30, 0x5a

    move/from16 v0, v23

    move/from16 v1, v30

    if-ge v0, v1, :cond_1

    .line 288
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenService;->pref:Landroid/content/SharedPreferences;

    move-object/from16 v30, v0

    const-string v31, "LOCKSCREEN_HARVESTED_STEPS"

    const/16 v32, 0x0

    invoke-interface/range {v30 .. v32}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v13

    .line 289
    .local v13, "harvestedSteps":I
    const/16 v30, 0x64

    move/from16 v0, v30

    if-lt v13, v0, :cond_1

    .line 290
    const-string v30, "#### harvestedSteps \ucd08\uae30\ud654"

    invoke-static/range {v30 .. v30}, Lcom/cashwalk/cashwalk/util/Utils;->LOG(Ljava/lang/String;)V

    .line 291
    new-instance v30, Lorg/joda/time/DateTime;

    invoke-direct/range {v30 .. v30}, Lorg/joda/time/DateTime;-><init>()V

    const-string/jumbo v31, "yyyyMMdd"

    invoke-virtual/range {v30 .. v31}, Lorg/joda/time/DateTime;->toString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    .line 292
    .local v24, "today":Ljava/lang/String;
    const-string v30, "LockScreenCenterFragment harvestedSteps reset!!!"

    invoke-static/range {v30 .. v30}, Lcom/crashlytics/android/Crashlytics;->log(Ljava/lang/String;)V

    .line 294
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenService;->pref:Landroid/content/SharedPreferences;

    move-object/from16 v30, v0

    invoke-interface/range {v30 .. v30}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v11

    .line 295
    .local v11, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v30, "LOCKSCREEN_HARVESTED_STEPS"

    const/16 v31, 0x0

    move-object/from16 v0, v30

    move/from16 v1, v31

    invoke-interface {v11, v0, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 296
    const-string v30, "LOCKSCREEN_UNLOCK_DATE"

    move-object/from16 v0, v30

    move-object/from16 v1, v24

    invoke-interface {v11, v0, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 297
    invoke-interface {v11}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 301
    .end local v11    # "editor":Landroid/content/SharedPreferences$Editor;
    .end local v13    # "harvestedSteps":I
    .end local v24    # "today":Ljava/lang/String;
    :cond_1
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenService;->hasStepSensor:Z

    move/from16 v30, v0

    if-eqz v30, :cond_8

    .line 302
    const/16 v30, 0x13

    move/from16 v0, v25

    move/from16 v1, v30

    if-ne v0, v1, :cond_6

    .line 303
    const/16 v28, -0x1

    .line 304
    .local v28, "value":I
    move-object/from16 v0, v29

    array-length v0, v0

    move/from16 v30, v0

    if-lez v30, :cond_2

    .line 305
    const/16 v30, 0x0

    aget v30, v29, v30

    move/from16 v0, v30

    float-to-int v0, v0

    move/from16 v28, v0

    .line 308
    :cond_2
    sget v30, Lcom/cashwalk/cashwalk/lockscreen/LockScreenService;->steps:I

    if-nez v30, :cond_3

    .line 309
    sput v28, Lcom/cashwalk/cashwalk/lockscreen/LockScreenService;->steps:I

    .line 312
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenService;->pref:Landroid/content/SharedPreferences;

    move-object/from16 v30, v0

    const-string/jumbo v31, "steps"

    const/16 v32, 0x0

    invoke-interface/range {v30 .. v32}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v21

    .line 313
    .local v21, "stepsBefore":I
    sget v30, Lcom/cashwalk/cashwalk/lockscreen/LockScreenService;->steps:I

    sub-int v20, v28, v30

    .line 314
    .local v20, "stepGap":I
    sput v28, Lcom/cashwalk/cashwalk/lockscreen/LockScreenService;->steps:I

    .line 316
    add-int v22, v21, v20

    .line 318
    .local v22, "stepsTotal":I
    const/16 v30, 0x1

    move/from16 v0, v20

    move/from16 v1, v30

    if-lt v0, v1, :cond_4

    .line 319
    sget-object v30, Lcom/cashwalk/cashwalk/lockscreen/LockScreenService;->mStepsDBHelper:Lcom/cashwalk/cashwalk/util/StepsDBHelper;

    const/16 v31, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenService;->pref:Landroid/content/SharedPreferences;

    move-object/from16 v32, v0

    move-object/from16 v0, v30

    move/from16 v1, v20

    move/from16 v2, v31

    move/from16 v3, v22

    move-object/from16 v4, v32

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/cashwalk/cashwalk/util/StepsDBHelper;->updateLocalDbStep(IIILandroid/content/SharedPreferences;)V

    .line 322
    :cond_4
    sget v30, Lcom/cashwalk/cashwalk/lockscreen/LockScreenService;->stepDiff:I

    add-int v30, v30, v20

    sput v30, Lcom/cashwalk/cashwalk/lockscreen/LockScreenService;->stepDiff:I

    .line 324
    sget v30, Lcom/cashwalk/cashwalk/lockscreen/LockScreenService;->stepDiff:I

    const/16 v31, 0x3e8

    move/from16 v0, v30

    move/from16 v1, v31

    if-lt v0, v1, :cond_7

    .line 325
    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-direct {v0, v1}, Lcom/cashwalk/cashwalk/lockscreen/LockScreenService;->uploadSteps(I)V

    .line 332
    :cond_5
    :goto_0
    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-direct {v0, v1}, Lcom/cashwalk/cashwalk/lockscreen/LockScreenService;->updateNotification(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 391
    .end local v20    # "stepGap":I
    .end local v21    # "stepsBefore":I
    .end local v22    # "stepsTotal":I
    .end local v28    # "value":I
    :cond_6
    :goto_1
    :try_start_1
    sget v30, Lcom/cashwalk/cashwalk/lockscreen/LockScreenService;->steps:I

    move/from16 v0, v30

    int-to-long v0, v0

    move-wide/from16 v30, v0

    invoke-static/range {v30 .. v31}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v30

    sput-object v30, Lcom/cashwalk/cashwalk/CashWalkApp;->TEMP_STEP_COUNT:Ljava/lang/Long;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 396
    :goto_2
    monitor-exit p0

    return-void

    .line 326
    .restart local v20    # "stepGap":I
    .restart local v21    # "stepsBefore":I
    .restart local v22    # "stepsTotal":I
    .restart local v28    # "value":I
    :cond_7
    :try_start_2
    sget v30, Lcom/cashwalk/cashwalk/lockscreen/LockScreenService;->stepDiff:I

    if-lez v30, :cond_5

    .line 327
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v30

    sget-wide v32, Lcom/cashwalk/cashwalk/lockscreen/LockScreenService;->lastMillis:J

    sub-long v30, v30, v32

    const-wide/32 v32, 0x36ee80

    cmp-long v30, v30, v32

    if-lez v30, :cond_5

    .line 328
    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-direct {v0, v1}, Lcom/cashwalk/cashwalk/lockscreen/LockScreenService;->uploadSteps(I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 276
    .end local v19    # "sensor":Landroid/hardware/Sensor;
    .end local v20    # "stepGap":I
    .end local v21    # "stepsBefore":I
    .end local v22    # "stepsTotal":I
    .end local v23    # "tempSteps":I
    .end local v25    # "type":I
    .end local v28    # "value":I
    .end local v29    # "values":[F
    :catchall_0
    move-exception v30

    monitor-exit p0

    throw v30

    .line 334
    .restart local v19    # "sensor":Landroid/hardware/Sensor;
    .restart local v23    # "tempSteps":I
    .restart local v25    # "type":I
    .restart local v29    # "values":[F
    :cond_8
    const/16 v30, 0x1

    move/from16 v0, v25

    move/from16 v1, v30

    if-ne v0, v1, :cond_6

    .line 335
    const/16 v27, 0x0

    .line 336
    .local v27, "vSum":F
    const/4 v14, 0x0

    .local v14, "i":I
    :goto_3
    const/16 v30, 0x3

    move/from16 v0, v30

    if-ge v14, v0, :cond_9

    .line 337
    :try_start_3
    move-object/from16 v0, p0

    iget v0, v0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenService;->mYOffset:F

    move/from16 v30, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/hardware/SensorEvent;->values:[F

    move-object/from16 v31, v0

    aget v31, v31, v14

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenService;->mScale:[F

    move-object/from16 v32, v0

    const/16 v33, 0x1

    aget v32, v32, v33

    mul-float v31, v31, v32

    add-float v26, v30, v31

    .line 338
    .local v26, "v":F
    add-float v27, v27, v26

    .line 336
    add-int/lit8 v14, v14, 0x1

    goto :goto_3

    .line 340
    .end local v26    # "v":F
    :cond_9
    const/16 v18, 0x0

    .line 341
    .local v18, "k":I
    const/high16 v30, 0x40400000    # 3.0f

    div-float v26, v27, v30

    .line 343
    .restart local v26    # "v":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenService;->mLastValues:[F

    move-object/from16 v30, v0

    aget v30, v30, v18

    cmpl-float v30, v26, v30

    if-lez v30, :cond_e

    const/16 v30, 0x1

    :goto_4
    move/from16 v0, v30

    int-to-float v9, v0

    .line 344
    .local v9, "direction":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenService;->mLastDirections:[F

    move-object/from16 v30, v0

    aget v30, v30, v18

    move/from16 v0, v30

    neg-float v0, v0

    move/from16 v30, v0

    cmpl-float v30, v9, v30

    if-nez v30, :cond_d

    .line 346
    const/16 v30, 0x0

    cmpl-float v30, v9, v30

    if-lez v30, :cond_10

    const/4 v12, 0x0

    .line 347
    .local v12, "extType":I
    :goto_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenService;->mLastExtremes:[[F

    move-object/from16 v30, v0

    aget-object v30, v30, v12

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenService;->mLastValues:[F

    move-object/from16 v31, v0

    aget v31, v31, v18

    aput v31, v30, v18

    .line 348
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenService;->mLastExtremes:[[F

    move-object/from16 v30, v0

    aget-object v30, v30, v12

    aget v30, v30, v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenService;->mLastExtremes:[[F

    move-object/from16 v31, v0

    rsub-int/lit8 v32, v12, 0x1

    aget-object v31, v31, v32

    aget v31, v31, v18

    sub-float v30, v30, v31

    invoke-static/range {v30 .. v30}, Ljava/lang/Math;->abs(F)F

    move-result v8

    .line 350
    .local v8, "diff":F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenService;->mLimit:F

    move/from16 v30, v0

    cmpl-float v30, v8, v30

    if-lez v30, :cond_c

    .line 352
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenService;->mLastDiff:[F

    move-object/from16 v30, v0

    aget v30, v30, v18

    const/high16 v31, 0x40000000    # 2.0f

    mul-float v30, v30, v31

    const/high16 v31, 0x40400000    # 3.0f

    div-float v30, v30, v31

    cmpl-float v30, v8, v30

    if-lez v30, :cond_11

    const/4 v15, 0x1

    .line 353
    .local v15, "isAlmostAsLargeAsPrevious":Z
    :goto_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenService;->mLastDiff:[F

    move-object/from16 v30, v0

    aget v30, v30, v18

    const/high16 v31, 0x40400000    # 3.0f

    div-float v31, v8, v31

    cmpl-float v30, v30, v31

    if-lez v30, :cond_12

    const/16 v17, 0x1

    .line 354
    .local v17, "isPreviousLargeEnough":Z
    :goto_7
    move-object/from16 v0, p0

    iget v0, v0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenService;->mLastMatch:I

    move/from16 v30, v0

    rsub-int/lit8 v31, v12, 0x1

    move/from16 v0, v30

    move/from16 v1, v31

    if-eq v0, v1, :cond_13

    const/16 v16, 0x1

    .line 356
    .local v16, "isNotContra":Z
    :goto_8
    if-eqz v15, :cond_15

    if-eqz v17, :cond_15

    if-eqz v16, :cond_15

    .line 357
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .line 359
    .local v6, "currentMillis":J
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenService;->lastSensorMillis:J

    move-wide/from16 v30, v0

    sub-long v30, v6, v30

    const-wide/16 v32, 0x12c

    cmp-long v30, v30, v32

    if-lez v30, :cond_b

    .line 360
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenService;->pref:Landroid/content/SharedPreferences;

    move-object/from16 v30, v0

    const-string/jumbo v31, "steps"

    const/16 v32, 0x0

    invoke-interface/range {v30 .. v32}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v30

    sput v30, Lcom/cashwalk/cashwalk/lockscreen/LockScreenService;->steps:I

    .line 361
    sget v30, Lcom/cashwalk/cashwalk/lockscreen/LockScreenService;->steps:I

    add-int/lit8 v30, v30, 0x1

    sput v30, Lcom/cashwalk/cashwalk/lockscreen/LockScreenService;->steps:I

    .line 364
    sget-object v30, Lcom/cashwalk/cashwalk/lockscreen/LockScreenService;->mStepsDBHelper:Lcom/cashwalk/cashwalk/util/StepsDBHelper;

    const/16 v31, 0x1

    const/16 v32, 0x2

    sget v33, Lcom/cashwalk/cashwalk/lockscreen/LockScreenService;->steps:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenService;->pref:Landroid/content/SharedPreferences;

    move-object/from16 v34, v0

    invoke-virtual/range {v30 .. v34}, Lcom/cashwalk/cashwalk/util/StepsDBHelper;->updateLocalDbStep(IIILandroid/content/SharedPreferences;)V

    .line 365
    sget v30, Lcom/cashwalk/cashwalk/lockscreen/LockScreenService;->stepDiff:I

    add-int/lit8 v30, v30, 0x1

    sput v30, Lcom/cashwalk/cashwalk/lockscreen/LockScreenService;->stepDiff:I

    .line 367
    sget v30, Lcom/cashwalk/cashwalk/lockscreen/LockScreenService;->stepDiff:I

    const/16 v31, 0x3e8

    move/from16 v0, v30

    move/from16 v1, v31

    if-lt v0, v1, :cond_14

    .line 368
    sget v30, Lcom/cashwalk/cashwalk/lockscreen/LockScreenService;->steps:I

    move-object/from16 v0, p0

    move/from16 v1, v30

    invoke-direct {v0, v1}, Lcom/cashwalk/cashwalk/lockscreen/LockScreenService;->uploadSteps(I)V

    .line 375
    :cond_a
    :goto_9
    sget v30, Lcom/cashwalk/cashwalk/lockscreen/LockScreenService;->steps:I

    move-object/from16 v0, p0

    move/from16 v1, v30

    invoke-direct {v0, v1}, Lcom/cashwalk/cashwalk/lockscreen/LockScreenService;->updateNotification(I)V

    .line 376
    move-object/from16 v0, p0

    iput-wide v6, v0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenService;->lastSensorMillis:J

    .line 379
    :cond_b
    move-object/from16 v0, p0

    iput v12, v0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenService;->mLastMatch:I

    .line 384
    .end local v6    # "currentMillis":J
    .end local v15    # "isAlmostAsLargeAsPrevious":Z
    .end local v16    # "isNotContra":Z
    .end local v17    # "isPreviousLargeEnough":Z
    :cond_c
    :goto_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenService;->mLastDiff:[F

    move-object/from16 v30, v0

    aput v8, v30, v18

    .line 386
    .end local v8    # "diff":F
    .end local v12    # "extType":I
    :cond_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenService;->mLastDirections:[F

    move-object/from16 v30, v0

    aput v9, v30, v18

    .line 387
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenService;->mLastValues:[F

    move-object/from16 v30, v0

    aput v26, v30, v18

    goto/16 :goto_1

    .line 343
    .end local v9    # "direction":F
    :cond_e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenService;->mLastValues:[F

    move-object/from16 v30, v0

    aget v30, v30, v18

    cmpg-float v30, v26, v30

    if-gez v30, :cond_f

    const/16 v30, -0x1

    goto/16 :goto_4

    :cond_f
    const/16 v30, 0x0

    goto/16 :goto_4

    .line 346
    .restart local v9    # "direction":F
    :cond_10
    const/4 v12, 0x1

    goto/16 :goto_5

    .line 352
    .restart local v8    # "diff":F
    .restart local v12    # "extType":I
    :cond_11
    const/4 v15, 0x0

    goto/16 :goto_6

    .line 353
    .restart local v15    # "isAlmostAsLargeAsPrevious":Z
    :cond_12
    const/16 v17, 0x0

    goto/16 :goto_7

    .line 354
    .restart local v17    # "isPreviousLargeEnough":Z
    :cond_13
    const/16 v16, 0x0

    goto/16 :goto_8

    .line 369
    .restart local v6    # "currentMillis":J
    .restart local v16    # "isNotContra":Z
    :cond_14
    sget v30, Lcom/cashwalk/cashwalk/lockscreen/LockScreenService;->stepDiff:I

    if-lez v30, :cond_a

    .line 370
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v30

    sget-wide v32, Lcom/cashwalk/cashwalk/lockscreen/LockScreenService;->lastMillis:J

    sub-long v30, v30, v32

    const-wide/32 v32, 0x36ee80

    cmp-long v30, v30, v32

    if-lez v30, :cond_a

    .line 371
    sget v30, Lcom/cashwalk/cashwalk/lockscreen/LockScreenService;->steps:I

    move-object/from16 v0, p0

    move/from16 v1, v30

    invoke-direct {v0, v1}, Lcom/cashwalk/cashwalk/lockscreen/LockScreenService;->uploadSteps(I)V

    goto :goto_9

    .line 381
    .end local v6    # "currentMillis":J
    :cond_15
    const/16 v30, -0x1

    move/from16 v0, v30

    move-object/from16 v1, p0

    iput v0, v1, Lcom/cashwalk/cashwalk/lockscreen/LockScreenService;->mLastMatch:I

    goto :goto_a

    .line 392
    .end local v8    # "diff":F
    .end local v9    # "direction":F
    .end local v12    # "extType":I
    .end local v14    # "i":I
    .end local v15    # "isAlmostAsLargeAsPrevious":Z
    .end local v16    # "isNotContra":Z
    .end local v17    # "isPreviousLargeEnough":Z
    .end local v18    # "k":I
    .end local v26    # "v":F
    .end local v27    # "vSum":F
    :catch_0
    move-exception v10

    .line 393
    .local v10, "e":Ljava/lang/Exception;
    invoke-virtual {v10}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_2
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 4
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "flags"    # I
    .param p3, "startId"    # I

    .prologue
    const/4 v3, 0x0

    .line 124
    invoke-virtual {p0}, Lcom/cashwalk/cashwalk/lockscreen/LockScreenService;->startFg()V

    .line 126
    if-nez p1, :cond_0

    .line 127
    new-instance v0, Landroid/content/IntentFilter;

    const-string v2, "android.intent.action.SCREEN_ON"

    invoke-direct {v0, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 128
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v2, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 129
    new-instance v2, Lcom/cashwalk/cashwalk/lockscreen/LockScreenService$LockScreenReceiver;

    invoke-direct {v2, p0, v3}, Lcom/cashwalk/cashwalk/lockscreen/LockScreenService$LockScreenReceiver;-><init>(Lcom/cashwalk/cashwalk/lockscreen/LockScreenService;Lcom/cashwalk/cashwalk/lockscreen/LockScreenService$1;)V

    iput-object v2, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenService;->screenReceiver:Landroid/content/BroadcastReceiver;

    .line 130
    iget-object v2, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenService;->screenReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v2, v0}, Lcom/cashwalk/cashwalk/lockscreen/LockScreenService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 132
    new-instance v2, Lcom/cashwalk/cashwalk/lockscreen/LockScreenService$PhoneStateReceiver;

    invoke-direct {v2, p0, v3}, Lcom/cashwalk/cashwalk/lockscreen/LockScreenService$PhoneStateReceiver;-><init>(Lcom/cashwalk/cashwalk/lockscreen/LockScreenService;Lcom/cashwalk/cashwalk/lockscreen/LockScreenService$1;)V

    iput-object v2, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenService;->phoneStateReceiver:Landroid/content/BroadcastReceiver;

    .line 133
    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "android.intent.action.PHONE_STATE"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 134
    .local v1, "filterPhone":Landroid/content/IntentFilter;
    iget-object v2, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenService;->phoneStateReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v2, v1}, Lcom/cashwalk/cashwalk/lockscreen/LockScreenService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 137
    .end local v0    # "filter":Landroid/content/IntentFilter;
    .end local v1    # "filterPhone":Landroid/content/IntentFilter;
    :cond_0
    const/4 v2, 0x1

    return v2
.end method

.method public startFg()V
    .locals 4

    .prologue
    .line 141
    iget-object v1, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenService;->pref:Landroid/content/SharedPreferences;

    const-string/jumbo v2, "steps"

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 142
    .local v0, "steps":I
    const/4 v1, 0x2

    invoke-direct {p0, v0}, Lcom/cashwalk/cashwalk/lockscreen/LockScreenService;->buildNotification(I)Landroid/app/Notification;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/cashwalk/cashwalk/lockscreen/LockScreenService;->startForeground(ILandroid/app/Notification;)V

    .line 143
    return-void
.end method
