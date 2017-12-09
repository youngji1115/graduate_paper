.class public Lcom/cashwalk/cashwalk/MyFirebaseMessagingService;
.super Lcom/google/firebase/messaging/FirebaseMessagingService;
.source "MyFirebaseMessagingService.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "FirebaseMsgService"


# instance fields
.field private pref:Landroid/content/SharedPreferences;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Lcom/google/firebase/messaging/FirebaseMessagingService;-><init>()V

    return-void
.end method

.method private sendNotification(Ljava/lang/String;)V
    .locals 8
    .param p1, "body"    # Ljava/lang/String;

    .prologue
    const/4 v7, 0x0

    .line 84
    new-instance v1, Landroid/content/Intent;

    const-class v5, Lcom/cashwalk/cashwalk/MainActivity;

    invoke-direct {v1, p0, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 85
    .local v1, "intent":Landroid/content/Intent;
    const/high16 v5, 0x4000000

    invoke-virtual {v1, v5}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 86
    const/high16 v5, 0x40000000    # 2.0f

    invoke-static {p0, v7, v1, v5}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v4

    .line 88
    .local v4, "pendingIntent":Landroid/app/PendingIntent;
    const/4 v5, 0x2

    invoke-static {v5}, Landroid/media/RingtoneManager;->getDefaultUri(I)Landroid/net/Uri;

    move-result-object v0

    .line 89
    .local v0, "defaultSoundUri":Landroid/net/Uri;
    new-instance v5, Landroid/support/v4/app/NotificationCompat$Builder;

    invoke-direct {v5, p0}, Landroid/support/v4/app/NotificationCompat$Builder;-><init>(Landroid/content/Context;)V

    const v6, 0x7f020178

    .line 90
    invoke-virtual {v5, v6}, Landroid/support/v4/app/NotificationCompat$Builder;->setSmallIcon(I)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v5

    const v6, 0x7f0900aa

    .line 91
    invoke-virtual {p0, v6}, Lcom/cashwalk/cashwalk/MyFirebaseMessagingService;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v5

    .line 92
    invoke-virtual {v5, p1}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v5

    const/4 v6, 0x1

    .line 93
    invoke-virtual {v5, v6}, Landroid/support/v4/app/NotificationCompat$Builder;->setAutoCancel(Z)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v5

    .line 94
    invoke-virtual {v5, v0}, Landroid/support/v4/app/NotificationCompat$Builder;->setSound(Landroid/net/Uri;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v5

    new-instance v6, Landroid/support/v4/app/NotificationCompat$BigTextStyle;

    invoke-direct {v6}, Landroid/support/v4/app/NotificationCompat$BigTextStyle;-><init>()V

    .line 95
    invoke-virtual {v6, p1}, Landroid/support/v4/app/NotificationCompat$BigTextStyle;->bigText(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$BigTextStyle;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/support/v4/app/NotificationCompat$Builder;->setStyle(Landroid/support/v4/app/NotificationCompat$Style;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v5

    .line 96
    invoke-virtual {v5, v4}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v2

    .line 98
    .local v2, "notificationBuilder":Landroid/support/v4/app/NotificationCompat$Builder;
    const-string v5, "notification"

    invoke-virtual {p0, v5}, Lcom/cashwalk/cashwalk/MyFirebaseMessagingService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/NotificationManager;

    .line 100
    .local v3, "notificationManager":Landroid/app/NotificationManager;
    invoke-virtual {v2}, Landroid/support/v4/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object v5

    invoke-virtual {v3, v7, v5}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 101
    return-void
.end method

.method private sendNotificationAddFriend(Ljava/lang/String;)V
    .locals 15
    .param p1, "nickname"    # Ljava/lang/String;

    .prologue
    .line 285
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    const-wide/16 v12, 0x3e8

    div-long/2addr v10, v12

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    .line 286
    .local v8, "tsLong":Ljava/lang/Long;
    invoke-virtual {v8}, Ljava/lang/Long;->toString()Ljava/lang/String;

    move-result-object v9

    .line 289
    .local v9, "tsString":Ljava/lang/String;
    iget-object v10, p0, Lcom/cashwalk/cashwalk/MyFirebaseMessagingService;->pref:Landroid/content/SharedPreferences;

    const-string v11, "LAST_PUSH_DATETIME"

    const-string v12, "0"

    invoke-interface {v10, v11, v12}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 290
    .local v6, "oldTimeString":Ljava/lang/String;
    invoke-static {v6}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    const-wide/16 v12, 0xe10

    add-long/2addr v10, v12

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    .line 291
    .local v5, "oldTime":Ljava/lang/Long;
    invoke-static {v9}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v12

    cmp-long v10, v10, v12

    if-gez v10, :cond_0

    .line 342
    .end local v5    # "oldTime":Ljava/lang/Long;
    .end local v6    # "oldTimeString":Ljava/lang/String;
    .end local v8    # "tsLong":Ljava/lang/Long;
    .end local v9    # "tsString":Ljava/lang/String;
    :goto_0
    return-void

    .line 294
    .restart local v5    # "oldTime":Ljava/lang/Long;
    .restart local v6    # "oldTimeString":Ljava/lang/String;
    .restart local v8    # "tsLong":Ljava/lang/Long;
    .restart local v9    # "tsString":Ljava/lang/String;
    :cond_0
    iget-object v10, p0, Lcom/cashwalk/cashwalk/MyFirebaseMessagingService;->pref:Landroid/content/SharedPreferences;

    invoke-interface {v10}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v10

    const-string v11, "LAST_PUSH_DATETIME"

    invoke-interface {v10, v11, v9}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v10

    invoke-interface {v10}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 303
    .end local v5    # "oldTime":Ljava/lang/Long;
    .end local v6    # "oldTimeString":Ljava/lang/String;
    .end local v8    # "tsLong":Ljava/lang/Long;
    .end local v9    # "tsString":Ljava/lang/String;
    :goto_1
    const/4 v10, 0x1

    :try_start_1
    sput-boolean v10, Lcom/cashwalk/cashwalk/CashWalkApp;->shouldRefreshCash:Z

    .line 305
    new-instance v2, Landroid/content/Intent;

    const-class v10, Lcom/cashwalk/cashwalk/activity/friend/MyFriendListActivity;

    invoke-direct {v2, p0, v10}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 306
    .local v2, "intent":Landroid/content/Intent;
    const-string v10, "postion"

    const/4 v11, 0x2

    invoke-virtual {v2, v10, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 307
    const/high16 v10, 0x4000000

    invoke-virtual {v2, v10}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 308
    const/4 v10, 0x0

    const/high16 v11, 0x40000000    # 2.0f

    invoke-static {p0, v10, v2, v11}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v7

    .line 310
    .local v7, "pendingIntent":Landroid/app/PendingIntent;
    if-eqz p1, :cond_1

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->isEmpty()Z

    move-result v10

    if-eqz v10, :cond_2

    .line 311
    :cond_1
    const/4 v10, 0x2

    invoke-static {v10}, Landroid/media/RingtoneManager;->getDefaultUri(I)Landroid/net/Uri;

    move-result-object v0

    .line 312
    .local v0, "defaultSoundUri":Landroid/net/Uri;
    new-instance v10, Landroid/support/v4/app/NotificationCompat$Builder;

    invoke-direct {v10, p0}, Landroid/support/v4/app/NotificationCompat$Builder;-><init>(Landroid/content/Context;)V

    const v11, 0x7f020178

    .line 313
    invoke-virtual {v10, v11}, Landroid/support/v4/app/NotificationCompat$Builder;->setSmallIcon(I)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v10

    const v11, 0x7f0900aa

    .line 314
    invoke-virtual {p0, v11}, Lcom/cashwalk/cashwalk/MyFirebaseMessagingService;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v10

    const v11, 0x7f090226

    .line 315
    invoke-virtual {p0, v11}, Lcom/cashwalk/cashwalk/MyFirebaseMessagingService;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v10

    const/4 v11, 0x1

    .line 316
    invoke-virtual {v10, v11}, Landroid/support/v4/app/NotificationCompat$Builder;->setAutoCancel(Z)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v10

    .line 317
    invoke-virtual {v10, v0}, Landroid/support/v4/app/NotificationCompat$Builder;->setSound(Landroid/net/Uri;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v10

    new-instance v11, Landroid/support/v4/app/NotificationCompat$BigTextStyle;

    invoke-direct {v11}, Landroid/support/v4/app/NotificationCompat$BigTextStyle;-><init>()V

    .line 318
    invoke-virtual {p0}, Lcom/cashwalk/cashwalk/MyFirebaseMessagingService;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    const v13, 0x7f090225

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v12

    const/4 v13, 0x1

    new-array v13, v13, [Ljava/lang/Object;

    const/4 v14, 0x0

    aput-object p1, v13, v14

    invoke-static {v12, v13}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Landroid/support/v4/app/NotificationCompat$BigTextStyle;->bigText(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$BigTextStyle;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/support/v4/app/NotificationCompat$Builder;->setStyle(Landroid/support/v4/app/NotificationCompat$Style;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v10

    .line 319
    invoke-virtual {v10, v7}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v3

    .line 321
    .local v3, "notificationBuilder":Landroid/support/v4/app/NotificationCompat$Builder;
    const-string v10, "notification"

    invoke-virtual {p0, v10}, Lcom/cashwalk/cashwalk/MyFirebaseMessagingService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/NotificationManager;

    .line 323
    .local v4, "notificationManager":Landroid/app/NotificationManager;
    const/4 v10, 0x0

    invoke-virtual {v3}, Landroid/support/v4/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object v11

    invoke-virtual {v4, v10, v11}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    .line 339
    .end local v0    # "defaultSoundUri":Landroid/net/Uri;
    .end local v2    # "intent":Landroid/content/Intent;
    .end local v3    # "notificationBuilder":Landroid/support/v4/app/NotificationCompat$Builder;
    .end local v4    # "notificationManager":Landroid/app/NotificationManager;
    .end local v7    # "pendingIntent":Landroid/app/PendingIntent;
    :catch_0
    move-exception v1

    .line 340
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0

    .line 296
    .end local v1    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v1

    .line 297
    .restart local v1    # "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 298
    iget-object v10, p0, Lcom/cashwalk/cashwalk/MyFirebaseMessagingService;->pref:Landroid/content/SharedPreferences;

    invoke-interface {v10}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v10

    const-string v11, "LAST_PUSH_DATETIME"

    const-string v12, "0"

    invoke-interface {v10, v11, v12}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v10

    invoke-interface {v10}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto/16 :goto_1

    .line 325
    .end local v1    # "e":Ljava/lang/Exception;
    .restart local v2    # "intent":Landroid/content/Intent;
    .restart local v7    # "pendingIntent":Landroid/app/PendingIntent;
    :cond_2
    const/4 v10, 0x2

    :try_start_2
    invoke-static {v10}, Landroid/media/RingtoneManager;->getDefaultUri(I)Landroid/net/Uri;

    move-result-object v0

    .line 326
    .restart local v0    # "defaultSoundUri":Landroid/net/Uri;
    new-instance v10, Landroid/support/v4/app/NotificationCompat$Builder;

    invoke-direct {v10, p0}, Landroid/support/v4/app/NotificationCompat$Builder;-><init>(Landroid/content/Context;)V

    const v11, 0x7f020178

    .line 327
    invoke-virtual {v10, v11}, Landroid/support/v4/app/NotificationCompat$Builder;->setSmallIcon(I)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v10

    const v11, 0x7f0900aa

    .line 328
    invoke-virtual {p0, v11}, Lcom/cashwalk/cashwalk/MyFirebaseMessagingService;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v10

    .line 329
    invoke-virtual {p0}, Lcom/cashwalk/cashwalk/MyFirebaseMessagingService;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const v12, 0x7f090225

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x1

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    aput-object p1, v12, v13

    invoke-static {v11, v12}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v10

    const/4 v11, 0x1

    .line 330
    invoke-virtual {v10, v11}, Landroid/support/v4/app/NotificationCompat$Builder;->setAutoCancel(Z)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v10

    .line 331
    invoke-virtual {v10, v0}, Landroid/support/v4/app/NotificationCompat$Builder;->setSound(Landroid/net/Uri;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v10

    new-instance v11, Landroid/support/v4/app/NotificationCompat$BigTextStyle;

    invoke-direct {v11}, Landroid/support/v4/app/NotificationCompat$BigTextStyle;-><init>()V

    .line 332
    invoke-virtual {p0}, Lcom/cashwalk/cashwalk/MyFirebaseMessagingService;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    const v13, 0x7f090225

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v12

    const/4 v13, 0x1

    new-array v13, v13, [Ljava/lang/Object;

    const/4 v14, 0x0

    aput-object p1, v13, v14

    invoke-static {v12, v13}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Landroid/support/v4/app/NotificationCompat$BigTextStyle;->bigText(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$BigTextStyle;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/support/v4/app/NotificationCompat$Builder;->setStyle(Landroid/support/v4/app/NotificationCompat$Style;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v10

    .line 333
    invoke-virtual {v10, v7}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v3

    .line 335
    .restart local v3    # "notificationBuilder":Landroid/support/v4/app/NotificationCompat$Builder;
    const-string v10, "notification"

    invoke-virtual {p0, v10}, Lcom/cashwalk/cashwalk/MyFirebaseMessagingService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/NotificationManager;

    .line 337
    .restart local v4    # "notificationManager":Landroid/app/NotificationManager;
    const/4 v10, 0x0

    invoke-virtual {v3}, Landroid/support/v4/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object v11

    invoke-virtual {v4, v10, v11}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_0
.end method

.method private sendNotificationFriendAccept(Ljava/lang/String;)V
    .locals 11
    .param p1, "nickname"    # Ljava/lang/String;

    .prologue
    .line 346
    const/4 v6, 0x1

    :try_start_0
    sput-boolean v6, Lcom/cashwalk/cashwalk/CashWalkApp;->shouldRefreshCash:Z

    .line 348
    new-instance v2, Landroid/content/Intent;

    const-class v6, Lcom/cashwalk/cashwalk/activity/friend/MyFriendListActivity;

    invoke-direct {v2, p0, v6}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 349
    .local v2, "intent":Landroid/content/Intent;
    const/high16 v6, 0x4000000

    invoke-virtual {v2, v6}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 350
    const/4 v6, 0x0

    const/high16 v7, 0x40000000    # 2.0f

    invoke-static {p0, v6, v2, v7}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v5

    .line 352
    .local v5, "pendingIntent":Landroid/app/PendingIntent;
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 353
    :cond_0
    const/4 v6, 0x2

    invoke-static {v6}, Landroid/media/RingtoneManager;->getDefaultUri(I)Landroid/net/Uri;

    move-result-object v0

    .line 354
    .local v0, "defaultSoundUri":Landroid/net/Uri;
    new-instance v6, Landroid/support/v4/app/NotificationCompat$Builder;

    invoke-direct {v6, p0}, Landroid/support/v4/app/NotificationCompat$Builder;-><init>(Landroid/content/Context;)V

    const v7, 0x7f020178

    .line 355
    invoke-virtual {v6, v7}, Landroid/support/v4/app/NotificationCompat$Builder;->setSmallIcon(I)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v6

    const v7, 0x7f0900aa

    .line 356
    invoke-virtual {p0, v7}, Lcom/cashwalk/cashwalk/MyFirebaseMessagingService;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v6

    const v7, 0x7f090226

    .line 357
    invoke-virtual {p0, v7}, Lcom/cashwalk/cashwalk/MyFirebaseMessagingService;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v6

    const/4 v7, 0x1

    .line 358
    invoke-virtual {v6, v7}, Landroid/support/v4/app/NotificationCompat$Builder;->setAutoCancel(Z)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v6

    .line 359
    invoke-virtual {v6, v0}, Landroid/support/v4/app/NotificationCompat$Builder;->setSound(Landroid/net/Uri;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v6

    new-instance v7, Landroid/support/v4/app/NotificationCompat$BigTextStyle;

    invoke-direct {v7}, Landroid/support/v4/app/NotificationCompat$BigTextStyle;-><init>()V

    .line 360
    invoke-virtual {p0}, Lcom/cashwalk/cashwalk/MyFirebaseMessagingService;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f090227

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    aput-object p1, v9, v10

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/support/v4/app/NotificationCompat$BigTextStyle;->bigText(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$BigTextStyle;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/support/v4/app/NotificationCompat$Builder;->setStyle(Landroid/support/v4/app/NotificationCompat$Style;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v6

    .line 361
    invoke-virtual {v6, v5}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v3

    .line 363
    .local v3, "notificationBuilder":Landroid/support/v4/app/NotificationCompat$Builder;
    const-string v6, "notification"

    invoke-virtual {p0, v6}, Lcom/cashwalk/cashwalk/MyFirebaseMessagingService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/NotificationManager;

    .line 365
    .local v4, "notificationManager":Landroid/app/NotificationManager;
    const/4 v6, 0x0

    invoke-virtual {v3}, Landroid/support/v4/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object v7

    invoke-virtual {v4, v6, v7}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 384
    .end local v0    # "defaultSoundUri":Landroid/net/Uri;
    .end local v2    # "intent":Landroid/content/Intent;
    .end local v3    # "notificationBuilder":Landroid/support/v4/app/NotificationCompat$Builder;
    .end local v4    # "notificationManager":Landroid/app/NotificationManager;
    .end local v5    # "pendingIntent":Landroid/app/PendingIntent;
    :goto_0
    return-void

    .line 367
    .restart local v2    # "intent":Landroid/content/Intent;
    .restart local v5    # "pendingIntent":Landroid/app/PendingIntent;
    :cond_1
    const/4 v6, 0x2

    invoke-static {v6}, Landroid/media/RingtoneManager;->getDefaultUri(I)Landroid/net/Uri;

    move-result-object v0

    .line 368
    .restart local v0    # "defaultSoundUri":Landroid/net/Uri;
    new-instance v6, Landroid/support/v4/app/NotificationCompat$Builder;

    invoke-direct {v6, p0}, Landroid/support/v4/app/NotificationCompat$Builder;-><init>(Landroid/content/Context;)V

    const v7, 0x7f020178

    .line 369
    invoke-virtual {v6, v7}, Landroid/support/v4/app/NotificationCompat$Builder;->setSmallIcon(I)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v6

    const v7, 0x7f0900aa

    .line 370
    invoke-virtual {p0, v7}, Lcom/cashwalk/cashwalk/MyFirebaseMessagingService;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v6

    .line 371
    invoke-virtual {p0}, Lcom/cashwalk/cashwalk/MyFirebaseMessagingService;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f090227

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    aput-object p1, v8, v9

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v6

    const/4 v7, 0x1

    .line 372
    invoke-virtual {v6, v7}, Landroid/support/v4/app/NotificationCompat$Builder;->setAutoCancel(Z)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v6

    .line 373
    invoke-virtual {v6, v0}, Landroid/support/v4/app/NotificationCompat$Builder;->setSound(Landroid/net/Uri;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v6

    new-instance v7, Landroid/support/v4/app/NotificationCompat$BigTextStyle;

    invoke-direct {v7}, Landroid/support/v4/app/NotificationCompat$BigTextStyle;-><init>()V

    .line 374
    invoke-virtual {p0}, Lcom/cashwalk/cashwalk/MyFirebaseMessagingService;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f090227

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    aput-object p1, v9, v10

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/support/v4/app/NotificationCompat$BigTextStyle;->bigText(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$BigTextStyle;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/support/v4/app/NotificationCompat$Builder;->setStyle(Landroid/support/v4/app/NotificationCompat$Style;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v6

    .line 375
    invoke-virtual {v6, v5}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v3

    .line 377
    .restart local v3    # "notificationBuilder":Landroid/support/v4/app/NotificationCompat$Builder;
    const-string v6, "notification"

    invoke-virtual {p0, v6}, Lcom/cashwalk/cashwalk/MyFirebaseMessagingService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/NotificationManager;

    .line 379
    .restart local v4    # "notificationManager":Landroid/app/NotificationManager;
    const/4 v6, 0x0

    invoke-virtual {v3}, Landroid/support/v4/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object v7

    invoke-virtual {v4, v6, v7}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 381
    .end local v0    # "defaultSoundUri":Landroid/net/Uri;
    .end local v2    # "intent":Landroid/content/Intent;
    .end local v3    # "notificationBuilder":Landroid/support/v4/app/NotificationCompat$Builder;
    .end local v4    # "notificationManager":Landroid/app/NotificationManager;
    .end local v5    # "pendingIntent":Landroid/app/PendingIntent;
    :catch_0
    move-exception v1

    .line 382
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private sendNotificationRaffleWin(Ljava/lang/String;Ljava/lang/String;)V
    .locals 11
    .param p1, "nickname"    # Ljava/lang/String;
    .param p2, "title"    # Ljava/lang/String;

    .prologue
    .line 388
    const/4 v6, 0x1

    :try_start_0
    sput-boolean v6, Lcom/cashwalk/cashwalk/CashWalkApp;->shouldRefreshCash:Z

    .line 390
    new-instance v2, Landroid/content/Intent;

    const-class v6, Lcom/cashwalk/cashwalk/activity/friend/MyFriendListActivity;

    invoke-direct {v2, p0, v6}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 391
    .local v2, "intent":Landroid/content/Intent;
    const/high16 v6, 0x4000000

    invoke-virtual {v2, v6}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 392
    const/4 v6, 0x0

    const/high16 v7, 0x40000000    # 2.0f

    invoke-static {p0, v6, v2, v7}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v5

    .line 394
    .local v5, "pendingIntent":Landroid/app/PendingIntent;
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 395
    :cond_0
    const/4 v6, 0x2

    invoke-static {v6}, Landroid/media/RingtoneManager;->getDefaultUri(I)Landroid/net/Uri;

    move-result-object v0

    .line 396
    .local v0, "defaultSoundUri":Landroid/net/Uri;
    new-instance v6, Landroid/support/v4/app/NotificationCompat$Builder;

    invoke-direct {v6, p0}, Landroid/support/v4/app/NotificationCompat$Builder;-><init>(Landroid/content/Context;)V

    const v7, 0x7f020178

    .line 397
    invoke-virtual {v6, v7}, Landroid/support/v4/app/NotificationCompat$Builder;->setSmallIcon(I)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v6

    const v7, 0x7f0900aa

    .line 398
    invoke-virtual {p0, v7}, Lcom/cashwalk/cashwalk/MyFirebaseMessagingService;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v6

    const v7, 0x7f090229

    .line 399
    invoke-virtual {p0, v7}, Lcom/cashwalk/cashwalk/MyFirebaseMessagingService;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v6

    const/4 v7, 0x1

    .line 400
    invoke-virtual {v6, v7}, Landroid/support/v4/app/NotificationCompat$Builder;->setAutoCancel(Z)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v6

    .line 401
    invoke-virtual {v6, v0}, Landroid/support/v4/app/NotificationCompat$Builder;->setSound(Landroid/net/Uri;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v6

    new-instance v7, Landroid/support/v4/app/NotificationCompat$BigTextStyle;

    invoke-direct {v7}, Landroid/support/v4/app/NotificationCompat$BigTextStyle;-><init>()V

    .line 402
    invoke-virtual {p0}, Lcom/cashwalk/cashwalk/MyFirebaseMessagingService;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f090228

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    aput-object p1, v9, v10

    const/4 v10, 0x1

    aput-object p2, v9, v10

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/support/v4/app/NotificationCompat$BigTextStyle;->bigText(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$BigTextStyle;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/support/v4/app/NotificationCompat$Builder;->setStyle(Landroid/support/v4/app/NotificationCompat$Style;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v6

    .line 403
    invoke-virtual {v6, v5}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v3

    .line 405
    .local v3, "notificationBuilder":Landroid/support/v4/app/NotificationCompat$Builder;
    const-string v6, "notification"

    invoke-virtual {p0, v6}, Lcom/cashwalk/cashwalk/MyFirebaseMessagingService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/NotificationManager;

    .line 407
    .local v4, "notificationManager":Landroid/app/NotificationManager;
    const/4 v6, 0x0

    invoke-virtual {v3}, Landroid/support/v4/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object v7

    invoke-virtual {v4, v6, v7}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 426
    .end local v0    # "defaultSoundUri":Landroid/net/Uri;
    .end local v2    # "intent":Landroid/content/Intent;
    .end local v3    # "notificationBuilder":Landroid/support/v4/app/NotificationCompat$Builder;
    .end local v4    # "notificationManager":Landroid/app/NotificationManager;
    .end local v5    # "pendingIntent":Landroid/app/PendingIntent;
    :goto_0
    return-void

    .line 409
    .restart local v2    # "intent":Landroid/content/Intent;
    .restart local v5    # "pendingIntent":Landroid/app/PendingIntent;
    :cond_1
    const/4 v6, 0x2

    invoke-static {v6}, Landroid/media/RingtoneManager;->getDefaultUri(I)Landroid/net/Uri;

    move-result-object v0

    .line 410
    .restart local v0    # "defaultSoundUri":Landroid/net/Uri;
    new-instance v6, Landroid/support/v4/app/NotificationCompat$Builder;

    invoke-direct {v6, p0}, Landroid/support/v4/app/NotificationCompat$Builder;-><init>(Landroid/content/Context;)V

    const v7, 0x7f020178

    .line 411
    invoke-virtual {v6, v7}, Landroid/support/v4/app/NotificationCompat$Builder;->setSmallIcon(I)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v6

    const v7, 0x7f0900aa

    .line 412
    invoke-virtual {p0, v7}, Lcom/cashwalk/cashwalk/MyFirebaseMessagingService;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v6

    .line 413
    invoke-virtual {p0}, Lcom/cashwalk/cashwalk/MyFirebaseMessagingService;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f090228

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    aput-object p1, v8, v9

    const/4 v9, 0x1

    aput-object p2, v8, v9

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v6

    const/4 v7, 0x1

    .line 414
    invoke-virtual {v6, v7}, Landroid/support/v4/app/NotificationCompat$Builder;->setAutoCancel(Z)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v6

    .line 415
    invoke-virtual {v6, v0}, Landroid/support/v4/app/NotificationCompat$Builder;->setSound(Landroid/net/Uri;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v6

    new-instance v7, Landroid/support/v4/app/NotificationCompat$BigTextStyle;

    invoke-direct {v7}, Landroid/support/v4/app/NotificationCompat$BigTextStyle;-><init>()V

    .line 416
    invoke-virtual {p0}, Lcom/cashwalk/cashwalk/MyFirebaseMessagingService;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f090228

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    aput-object p1, v9, v10

    const/4 v10, 0x1

    aput-object p2, v9, v10

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/support/v4/app/NotificationCompat$BigTextStyle;->bigText(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$BigTextStyle;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/support/v4/app/NotificationCompat$Builder;->setStyle(Landroid/support/v4/app/NotificationCompat$Style;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v6

    .line 417
    invoke-virtual {v6, v5}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v3

    .line 419
    .restart local v3    # "notificationBuilder":Landroid/support/v4/app/NotificationCompat$Builder;
    const-string v6, "notification"

    invoke-virtual {p0, v6}, Lcom/cashwalk/cashwalk/MyFirebaseMessagingService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/NotificationManager;

    .line 421
    .restart local v4    # "notificationManager":Landroid/app/NotificationManager;
    const/4 v6, 0x0

    invoke-virtual {v3}, Landroid/support/v4/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object v7

    invoke-virtual {v4, v6, v7}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 423
    .end local v0    # "defaultSoundUri":Landroid/net/Uri;
    .end local v2    # "intent":Landroid/content/Intent;
    .end local v3    # "notificationBuilder":Landroid/support/v4/app/NotificationCompat$Builder;
    .end local v4    # "notificationManager":Landroid/app/NotificationManager;
    .end local v5    # "pendingIntent":Landroid/app/PendingIntent;
    :catch_0
    move-exception v1

    .line 424
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private sendNotificationRecommendation(Ljava/lang/String;Ljava/lang/String;)V
    .locals 10
    .param p1, "nickname"    # Ljava/lang/String;
    .param p2, "point"    # Ljava/lang/String;

    .prologue
    .line 105
    const/4 v6, 0x1

    :try_start_0
    sput-boolean v6, Lcom/cashwalk/cashwalk/CashWalkApp;->shouldRefreshCash:Z

    .line 107
    new-instance v2, Landroid/content/Intent;

    const-class v6, Lcom/cashwalk/cashwalk/MainActivity;

    invoke-direct {v2, p0, v6}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 108
    .local v2, "intent":Landroid/content/Intent;
    const/high16 v6, 0x4000000

    invoke-virtual {v2, v6}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 109
    const/4 v6, 0x0

    const/high16 v7, 0x40000000    # 2.0f

    invoke-static {p0, v6, v2, v7}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v5

    .line 111
    .local v5, "pendingIntent":Landroid/app/PendingIntent;
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 112
    :cond_0
    const/4 v6, 0x2

    invoke-static {v6}, Landroid/media/RingtoneManager;->getDefaultUri(I)Landroid/net/Uri;

    move-result-object v0

    .line 113
    .local v0, "defaultSoundUri":Landroid/net/Uri;
    new-instance v6, Landroid/support/v4/app/NotificationCompat$Builder;

    invoke-direct {v6, p0}, Landroid/support/v4/app/NotificationCompat$Builder;-><init>(Landroid/content/Context;)V

    const v7, 0x7f020178

    .line 114
    invoke-virtual {v6, v7}, Landroid/support/v4/app/NotificationCompat$Builder;->setSmallIcon(I)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v6

    const v7, 0x7f0900aa

    .line 115
    invoke-virtual {p0, v7}, Lcom/cashwalk/cashwalk/MyFirebaseMessagingService;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v6

    const v7, 0x7f090302

    .line 116
    invoke-virtual {p0, v7}, Lcom/cashwalk/cashwalk/MyFirebaseMessagingService;->getString(I)Ljava/lang/String;

    move-result-object v7

    const-string v8, "%s"

    invoke-virtual {v7, v8, p2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v6

    const/4 v7, 0x1

    .line 117
    invoke-virtual {v6, v7}, Landroid/support/v4/app/NotificationCompat$Builder;->setAutoCancel(Z)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v6

    .line 118
    invoke-virtual {v6, v0}, Landroid/support/v4/app/NotificationCompat$Builder;->setSound(Landroid/net/Uri;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v6

    new-instance v7, Landroid/support/v4/app/NotificationCompat$BigTextStyle;

    invoke-direct {v7}, Landroid/support/v4/app/NotificationCompat$BigTextStyle;-><init>()V

    const v8, 0x7f090301

    .line 119
    invoke-virtual {p0, v8}, Lcom/cashwalk/cashwalk/MyFirebaseMessagingService;->getString(I)Ljava/lang/String;

    move-result-object v8

    const-string v9, "%s"

    invoke-virtual {v8, v9, p1}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string v9, "%s"

    invoke-virtual {v8, v9, p2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/support/v4/app/NotificationCompat$BigTextStyle;->bigText(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$BigTextStyle;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/support/v4/app/NotificationCompat$Builder;->setStyle(Landroid/support/v4/app/NotificationCompat$Style;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v6

    .line 120
    invoke-virtual {v6, v5}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v3

    .line 122
    .local v3, "notificationBuilder":Landroid/support/v4/app/NotificationCompat$Builder;
    const-string v6, "notification"

    invoke-virtual {p0, v6}, Lcom/cashwalk/cashwalk/MyFirebaseMessagingService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/NotificationManager;

    .line 124
    .local v4, "notificationManager":Landroid/app/NotificationManager;
    const/4 v6, 0x0

    invoke-virtual {v3}, Landroid/support/v4/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object v7

    invoke-virtual {v4, v6, v7}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 143
    .end local v0    # "defaultSoundUri":Landroid/net/Uri;
    .end local v2    # "intent":Landroid/content/Intent;
    .end local v3    # "notificationBuilder":Landroid/support/v4/app/NotificationCompat$Builder;
    .end local v4    # "notificationManager":Landroid/app/NotificationManager;
    .end local v5    # "pendingIntent":Landroid/app/PendingIntent;
    :goto_0
    return-void

    .line 126
    .restart local v2    # "intent":Landroid/content/Intent;
    .restart local v5    # "pendingIntent":Landroid/app/PendingIntent;
    :cond_1
    const/4 v6, 0x2

    invoke-static {v6}, Landroid/media/RingtoneManager;->getDefaultUri(I)Landroid/net/Uri;

    move-result-object v0

    .line 127
    .restart local v0    # "defaultSoundUri":Landroid/net/Uri;
    new-instance v6, Landroid/support/v4/app/NotificationCompat$Builder;

    invoke-direct {v6, p0}, Landroid/support/v4/app/NotificationCompat$Builder;-><init>(Landroid/content/Context;)V

    const v7, 0x7f020178

    .line 128
    invoke-virtual {v6, v7}, Landroid/support/v4/app/NotificationCompat$Builder;->setSmallIcon(I)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v6

    const v7, 0x7f0900aa

    .line 129
    invoke-virtual {p0, v7}, Lcom/cashwalk/cashwalk/MyFirebaseMessagingService;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v6

    const v7, 0x7f090301

    .line 130
    invoke-virtual {p0, v7}, Lcom/cashwalk/cashwalk/MyFirebaseMessagingService;->getString(I)Ljava/lang/String;

    move-result-object v7

    const-string v8, "%s"

    invoke-virtual {v7, v8, p1}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v8, "%s"

    invoke-virtual {v7, v8, p2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v6

    const/4 v7, 0x1

    .line 131
    invoke-virtual {v6, v7}, Landroid/support/v4/app/NotificationCompat$Builder;->setAutoCancel(Z)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v6

    .line 132
    invoke-virtual {v6, v0}, Landroid/support/v4/app/NotificationCompat$Builder;->setSound(Landroid/net/Uri;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v6

    new-instance v7, Landroid/support/v4/app/NotificationCompat$BigTextStyle;

    invoke-direct {v7}, Landroid/support/v4/app/NotificationCompat$BigTextStyle;-><init>()V

    const v8, 0x7f090301

    .line 133
    invoke-virtual {p0, v8}, Lcom/cashwalk/cashwalk/MyFirebaseMessagingService;->getString(I)Ljava/lang/String;

    move-result-object v8

    const-string v9, "%s"

    invoke-virtual {v8, v9, p1}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string v9, "%s"

    invoke-virtual {v8, v9, p2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/support/v4/app/NotificationCompat$BigTextStyle;->bigText(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$BigTextStyle;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/support/v4/app/NotificationCompat$Builder;->setStyle(Landroid/support/v4/app/NotificationCompat$Style;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v6

    .line 134
    invoke-virtual {v6, v5}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v3

    .line 136
    .restart local v3    # "notificationBuilder":Landroid/support/v4/app/NotificationCompat$Builder;
    const-string v6, "notification"

    invoke-virtual {p0, v6}, Lcom/cashwalk/cashwalk/MyFirebaseMessagingService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/NotificationManager;

    .line 138
    .restart local v4    # "notificationManager":Landroid/app/NotificationManager;
    const/4 v6, 0x0

    invoke-virtual {v3}, Landroid/support/v4/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object v7

    invoke-virtual {v4, v6, v7}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 140
    .end local v0    # "defaultSoundUri":Landroid/net/Uri;
    .end local v2    # "intent":Landroid/content/Intent;
    .end local v3    # "notificationBuilder":Landroid/support/v4/app/NotificationCompat$Builder;
    .end local v4    # "notificationManager":Landroid/app/NotificationManager;
    .end local v5    # "pendingIntent":Landroid/app/PendingIntent;
    :catch_0
    move-exception v1

    .line 141
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private sendNotificationStepBetStart()V
    .locals 13

    .prologue
    .line 259
    :try_start_0
    new-instance v2, Landroid/content/Intent;

    const-class v6, Lcom/cashwalk/cashwalk/activity/StepBetActivity;

    invoke-direct {v2, p0, v6}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 260
    .local v2, "intent":Landroid/content/Intent;
    const/high16 v6, 0x4000000

    invoke-virtual {v2, v6}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 261
    const/4 v6, 0x0

    const/high16 v7, 0x40000000    # 2.0f

    invoke-static {p0, v6, v2, v7}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v5

    .line 263
    .local v5, "pendingIntent":Landroid/app/PendingIntent;
    const/4 v6, 0x2

    invoke-static {v6}, Landroid/media/RingtoneManager;->getDefaultUri(I)Landroid/net/Uri;

    move-result-object v0

    .line 264
    .local v0, "defaultSoundUri":Landroid/net/Uri;
    new-instance v6, Landroid/support/v4/app/NotificationCompat$Builder;

    invoke-direct {v6, p0}, Landroid/support/v4/app/NotificationCompat$Builder;-><init>(Landroid/content/Context;)V

    const v7, 0x7f020178

    .line 265
    invoke-virtual {v6, v7}, Landroid/support/v4/app/NotificationCompat$Builder;->setSmallIcon(I)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v6

    const v7, 0x7f0900aa

    .line 266
    invoke-virtual {p0, v7}, Lcom/cashwalk/cashwalk/MyFirebaseMessagingService;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v6

    const v7, 0x7f09022a

    .line 267
    invoke-virtual {p0, v7}, Lcom/cashwalk/cashwalk/MyFirebaseMessagingService;->getString(I)Ljava/lang/String;

    move-result-object v7

    const-string v8, "%s"

    iget-object v9, p0, Lcom/cashwalk/cashwalk/MyFirebaseMessagingService;->pref:Landroid/content/SharedPreferences;

    const-string v10, "NICKNAME"

    const/4 v11, 0x0

    invoke-interface {v9, v10, v11}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v6

    const/4 v7, 0x1

    .line 268
    invoke-virtual {v6, v7}, Landroid/support/v4/app/NotificationCompat$Builder;->setAutoCancel(Z)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v6

    .line 269
    invoke-virtual {v6, v0}, Landroid/support/v4/app/NotificationCompat$Builder;->setSound(Landroid/net/Uri;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v6

    new-instance v7, Landroid/support/v4/app/NotificationCompat$BigTextStyle;

    invoke-direct {v7}, Landroid/support/v4/app/NotificationCompat$BigTextStyle;-><init>()V

    const v8, 0x7f09022a

    .line 270
    invoke-virtual {p0, v8}, Lcom/cashwalk/cashwalk/MyFirebaseMessagingService;->getString(I)Ljava/lang/String;

    move-result-object v8

    const-string v9, "%s"

    iget-object v10, p0, Lcom/cashwalk/cashwalk/MyFirebaseMessagingService;->pref:Landroid/content/SharedPreferences;

    const-string v11, "NICKNAME"

    const/4 v12, 0x0

    invoke-interface {v10, v11, v12}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/support/v4/app/NotificationCompat$BigTextStyle;->bigText(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$BigTextStyle;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/support/v4/app/NotificationCompat$Builder;->setStyle(Landroid/support/v4/app/NotificationCompat$Style;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v6

    .line 271
    invoke-virtual {v6, v5}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v3

    .line 273
    .local v3, "notificationBuilder":Landroid/support/v4/app/NotificationCompat$Builder;
    const-string v6, "notification"

    invoke-virtual {p0, v6}, Lcom/cashwalk/cashwalk/MyFirebaseMessagingService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/NotificationManager;

    .line 275
    .local v4, "notificationManager":Landroid/app/NotificationManager;
    const/4 v6, 0x0

    invoke-virtual {v3}, Landroid/support/v4/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object v7

    invoke-virtual {v4, v6, v7}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 279
    .end local v0    # "defaultSoundUri":Landroid/net/Uri;
    .end local v2    # "intent":Landroid/content/Intent;
    .end local v3    # "notificationBuilder":Landroid/support/v4/app/NotificationCompat$Builder;
    .end local v4    # "notificationManager":Landroid/app/NotificationManager;
    .end local v5    # "pendingIntent":Landroid/app/PendingIntent;
    :goto_0
    return-void

    .line 276
    :catch_0
    move-exception v1

    .line 277
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private sendNotificationTimeline(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 11
    .param p1, "body"    # Ljava/lang/String;
    .param p2, "nickname"    # Ljava/lang/String;
    .param p3, "stepBetId"    # Ljava/lang/String;
    .param p4, "timelineId"    # Ljava/lang/String;

    .prologue
    .line 147
    :try_start_0
    new-instance v3, Lcom/cashwalk/cashwalk/util/network/model/TimelineItem;

    invoke-direct {v3}, Lcom/cashwalk/cashwalk/util/network/model/TimelineItem;-><init>()V

    .line 148
    .local v3, "item":Lcom/cashwalk/cashwalk/util/network/model/TimelineItem;
    iput-object p4, v3, Lcom/cashwalk/cashwalk/util/network/model/TimelineItem;->id:Ljava/lang/String;

    .line 149
    iput-object p3, v3, Lcom/cashwalk/cashwalk/util/network/model/TimelineItem;->stepBetId:Ljava/lang/String;

    .line 151
    new-instance v7, Landroid/content/Intent;

    const-class v8, Lcom/cashwalk/cashwalk/activity/StepBetTimelineDetailActivity;

    invoke-direct {v7, p0, v8}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v8, "item"

    invoke-virtual {v7, v8, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    move-result-object v2

    .line 152
    .local v2, "intent":Landroid/content/Intent;
    const/high16 v7, 0x4000000

    invoke-virtual {v2, v7}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 153
    const/4 v7, 0x0

    const/high16 v8, 0x40000000    # 2.0f

    invoke-static {p0, v7, v2, v8}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v6

    .line 155
    .local v6, "pendingIntent":Landroid/app/PendingIntent;
    const/4 v7, 0x2

    invoke-static {v7}, Landroid/media/RingtoneManager;->getDefaultUri(I)Landroid/net/Uri;

    move-result-object v0

    .line 156
    .local v0, "defaultSoundUri":Landroid/net/Uri;
    new-instance v7, Landroid/support/v4/app/NotificationCompat$Builder;

    invoke-direct {v7, p0}, Landroid/support/v4/app/NotificationCompat$Builder;-><init>(Landroid/content/Context;)V

    const v8, 0x7f020178

    .line 157
    invoke-virtual {v7, v8}, Landroid/support/v4/app/NotificationCompat$Builder;->setSmallIcon(I)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v7

    const v8, 0x7f0900aa

    .line 158
    invoke-virtual {p0, v8}, Lcom/cashwalk/cashwalk/MyFirebaseMessagingService;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v7

    const v8, 0x7f09022b

    .line 159
    invoke-virtual {p0, v8}, Lcom/cashwalk/cashwalk/MyFirebaseMessagingService;->getString(I)Ljava/lang/String;

    move-result-object v8

    const-string v9, "%s"

    invoke-virtual {v8, v9, p2}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string v9, "%s"

    invoke-virtual {v8, v9, p1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v7

    const/4 v8, 0x1

    .line 160
    invoke-virtual {v7, v8}, Landroid/support/v4/app/NotificationCompat$Builder;->setAutoCancel(Z)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v7

    .line 161
    invoke-virtual {v7, v0}, Landroid/support/v4/app/NotificationCompat$Builder;->setSound(Landroid/net/Uri;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v7

    new-instance v8, Landroid/support/v4/app/NotificationCompat$BigTextStyle;

    invoke-direct {v8}, Landroid/support/v4/app/NotificationCompat$BigTextStyle;-><init>()V

    const v9, 0x7f09022b

    .line 162
    invoke-virtual {p0, v9}, Lcom/cashwalk/cashwalk/MyFirebaseMessagingService;->getString(I)Ljava/lang/String;

    move-result-object v9

    const-string v10, "%s"

    invoke-virtual {v9, v10, p2}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const-string v10, "%s"

    invoke-virtual {v9, v10, p1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/support/v4/app/NotificationCompat$BigTextStyle;->bigText(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$BigTextStyle;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/support/v4/app/NotificationCompat$Builder;->setStyle(Landroid/support/v4/app/NotificationCompat$Style;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v7

    .line 163
    invoke-virtual {v7, v6}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v4

    .line 165
    .local v4, "notificationBuilder":Landroid/support/v4/app/NotificationCompat$Builder;
    const-string v7, "notification"

    invoke-virtual {p0, v7}, Lcom/cashwalk/cashwalk/MyFirebaseMessagingService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/NotificationManager;

    .line 167
    .local v5, "notificationManager":Landroid/app/NotificationManager;
    const/4 v7, 0x0

    invoke-virtual {v4}, Landroid/support/v4/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object v8

    invoke-virtual {v5, v7, v8}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 171
    .end local v0    # "defaultSoundUri":Landroid/net/Uri;
    .end local v2    # "intent":Landroid/content/Intent;
    .end local v3    # "item":Lcom/cashwalk/cashwalk/util/network/model/TimelineItem;
    .end local v4    # "notificationBuilder":Landroid/support/v4/app/NotificationCompat$Builder;
    .end local v5    # "notificationManager":Landroid/app/NotificationManager;
    .end local v6    # "pendingIntent":Landroid/app/PendingIntent;
    :goto_0
    return-void

    .line 168
    :catch_0
    move-exception v1

    .line 169
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private sendNotificationTimelineComment(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 12
    .param p1, "body"    # Ljava/lang/String;
    .param p2, "nickname"    # Ljava/lang/String;
    .param p3, "stepBetId"    # Ljava/lang/String;
    .param p4, "timelineId"    # Ljava/lang/String;
    .param p5, "type"    # Ljava/lang/String;

    .prologue
    .line 175
    :try_start_0
    new-instance v4, Lcom/cashwalk/cashwalk/util/network/model/TimelineItem;

    invoke-direct {v4}, Lcom/cashwalk/cashwalk/util/network/model/TimelineItem;-><init>()V

    .line 176
    .local v4, "item":Lcom/cashwalk/cashwalk/util/network/model/TimelineItem;
    move-object/from16 v0, p4

    iput-object v0, v4, Lcom/cashwalk/cashwalk/util/network/model/TimelineItem;->id:Ljava/lang/String;

    .line 177
    iput-object p3, v4, Lcom/cashwalk/cashwalk/util/network/model/TimelineItem;->stepBetId:Ljava/lang/String;

    .line 179
    new-instance v8, Landroid/content/Intent;

    const-class v9, Lcom/cashwalk/cashwalk/activity/StepBetTimelineDetailActivity;

    invoke-direct {v8, p0, v9}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v9, "item"

    invoke-virtual {v8, v9, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    move-result-object v8

    const-string/jumbo v9, "type"

    move-object/from16 v0, p5

    invoke-virtual {v8, v9, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v3

    .line 180
    .local v3, "intent":Landroid/content/Intent;
    const/high16 v8, 0x4000000

    invoke-virtual {v3, v8}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 181
    const/4 v8, 0x0

    const/high16 v9, 0x40000000    # 2.0f

    invoke-static {p0, v8, v3, v9}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v7

    .line 183
    .local v7, "pendingIntent":Landroid/app/PendingIntent;
    const/4 v8, 0x2

    invoke-static {v8}, Landroid/media/RingtoneManager;->getDefaultUri(I)Landroid/net/Uri;

    move-result-object v1

    .line 184
    .local v1, "defaultSoundUri":Landroid/net/Uri;
    new-instance v8, Landroid/support/v4/app/NotificationCompat$Builder;

    invoke-direct {v8, p0}, Landroid/support/v4/app/NotificationCompat$Builder;-><init>(Landroid/content/Context;)V

    const v9, 0x7f020178

    .line 185
    invoke-virtual {v8, v9}, Landroid/support/v4/app/NotificationCompat$Builder;->setSmallIcon(I)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v8

    const v9, 0x7f0900aa

    .line 186
    invoke-virtual {p0, v9}, Lcom/cashwalk/cashwalk/MyFirebaseMessagingService;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v8

    const v9, 0x7f09022c

    .line 187
    invoke-virtual {p0, v9}, Lcom/cashwalk/cashwalk/MyFirebaseMessagingService;->getString(I)Ljava/lang/String;

    move-result-object v9

    const-string v10, "%s"

    invoke-virtual {v9, v10, p2}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const-string v10, "%s"

    invoke-virtual {v9, v10, p1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v8

    const/4 v9, 0x1

    .line 188
    invoke-virtual {v8, v9}, Landroid/support/v4/app/NotificationCompat$Builder;->setAutoCancel(Z)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v8

    .line 189
    invoke-virtual {v8, v1}, Landroid/support/v4/app/NotificationCompat$Builder;->setSound(Landroid/net/Uri;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v8

    new-instance v9, Landroid/support/v4/app/NotificationCompat$BigTextStyle;

    invoke-direct {v9}, Landroid/support/v4/app/NotificationCompat$BigTextStyle;-><init>()V

    const v10, 0x7f09022c

    .line 190
    invoke-virtual {p0, v10}, Lcom/cashwalk/cashwalk/MyFirebaseMessagingService;->getString(I)Ljava/lang/String;

    move-result-object v10

    const-string v11, "%s"

    invoke-virtual {v10, v11, p2}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    const-string v11, "%s"

    invoke-virtual {v10, v11, p1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/support/v4/app/NotificationCompat$BigTextStyle;->bigText(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$BigTextStyle;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/support/v4/app/NotificationCompat$Builder;->setStyle(Landroid/support/v4/app/NotificationCompat$Style;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v8

    .line 191
    invoke-virtual {v8, v7}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v5

    .line 193
    .local v5, "notificationBuilder":Landroid/support/v4/app/NotificationCompat$Builder;
    const-string v8, "notification"

    invoke-virtual {p0, v8}, Lcom/cashwalk/cashwalk/MyFirebaseMessagingService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/app/NotificationManager;

    .line 195
    .local v6, "notificationManager":Landroid/app/NotificationManager;
    const/4 v8, 0x0

    invoke-virtual {v5}, Landroid/support/v4/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object v9

    invoke-virtual {v6, v8, v9}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 199
    .end local v1    # "defaultSoundUri":Landroid/net/Uri;
    .end local v3    # "intent":Landroid/content/Intent;
    .end local v4    # "item":Lcom/cashwalk/cashwalk/util/network/model/TimelineItem;
    .end local v5    # "notificationBuilder":Landroid/support/v4/app/NotificationCompat$Builder;
    .end local v6    # "notificationManager":Landroid/app/NotificationManager;
    .end local v7    # "pendingIntent":Landroid/app/PendingIntent;
    :goto_0
    return-void

    .line 196
    :catch_0
    move-exception v2

    .line 197
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private sendNotificationTimelineLike(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 15
    .param p1, "nickname"    # Ljava/lang/String;
    .param p2, "stepBetId"    # Ljava/lang/String;
    .param p3, "timelineId"    # Ljava/lang/String;

    .prologue
    .line 231
    :try_start_0
    new-instance v4, Lcom/cashwalk/cashwalk/util/network/model/TimelineItem;

    invoke-direct {v4}, Lcom/cashwalk/cashwalk/util/network/model/TimelineItem;-><init>()V

    .line 232
    .local v4, "item":Lcom/cashwalk/cashwalk/util/network/model/TimelineItem;
    move-object/from16 v0, p3

    iput-object v0, v4, Lcom/cashwalk/cashwalk/util/network/model/TimelineItem;->id:Ljava/lang/String;

    .line 233
    move-object/from16 v0, p2

    iput-object v0, v4, Lcom/cashwalk/cashwalk/util/network/model/TimelineItem;->stepBetId:Ljava/lang/String;

    .line 235
    new-instance v8, Landroid/content/Intent;

    const-class v9, Lcom/cashwalk/cashwalk/activity/StepBetTimelineDetailActivity;

    invoke-direct {v8, p0, v9}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v9, "item"

    invoke-virtual {v8, v9, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    move-result-object v3

    .line 236
    .local v3, "intent":Landroid/content/Intent;
    const/high16 v8, 0x4000000

    invoke-virtual {v3, v8}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 237
    const/4 v8, 0x0

    const/high16 v9, 0x40000000    # 2.0f

    invoke-static {p0, v8, v3, v9}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v7

    .line 239
    .local v7, "pendingIntent":Landroid/app/PendingIntent;
    const/4 v8, 0x2

    invoke-static {v8}, Landroid/media/RingtoneManager;->getDefaultUri(I)Landroid/net/Uri;

    move-result-object v1

    .line 240
    .local v1, "defaultSoundUri":Landroid/net/Uri;
    new-instance v8, Landroid/support/v4/app/NotificationCompat$Builder;

    invoke-direct {v8, p0}, Landroid/support/v4/app/NotificationCompat$Builder;-><init>(Landroid/content/Context;)V

    const v9, 0x7f020178

    .line 241
    invoke-virtual {v8, v9}, Landroid/support/v4/app/NotificationCompat$Builder;->setSmallIcon(I)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v8

    const v9, 0x7f0900aa

    .line 242
    invoke-virtual {p0, v9}, Lcom/cashwalk/cashwalk/MyFirebaseMessagingService;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v8

    const v9, 0x7f09022d

    .line 243
    invoke-virtual {p0, v9}, Lcom/cashwalk/cashwalk/MyFirebaseMessagingService;->getString(I)Ljava/lang/String;

    move-result-object v9

    const-string v10, "%s"

    move-object/from16 v0, p1

    invoke-virtual {v9, v10, v0}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const-string v10, "%s"

    iget-object v11, p0, Lcom/cashwalk/cashwalk/MyFirebaseMessagingService;->pref:Landroid/content/SharedPreferences;

    const-string v12, "NICKNAME"

    const/4 v13, 0x0

    invoke-interface {v11, v12, v13}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v10, v11}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v8

    const/4 v9, 0x1

    .line 244
    invoke-virtual {v8, v9}, Landroid/support/v4/app/NotificationCompat$Builder;->setAutoCancel(Z)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v8

    .line 245
    invoke-virtual {v8, v1}, Landroid/support/v4/app/NotificationCompat$Builder;->setSound(Landroid/net/Uri;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v8

    new-instance v9, Landroid/support/v4/app/NotificationCompat$BigTextStyle;

    invoke-direct {v9}, Landroid/support/v4/app/NotificationCompat$BigTextStyle;-><init>()V

    const v10, 0x7f09022d

    .line 246
    invoke-virtual {p0, v10}, Lcom/cashwalk/cashwalk/MyFirebaseMessagingService;->getString(I)Ljava/lang/String;

    move-result-object v10

    const-string v11, "%s"

    move-object/from16 v0, p1

    invoke-virtual {v10, v11, v0}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    const-string v11, "%s"

    iget-object v12, p0, Lcom/cashwalk/cashwalk/MyFirebaseMessagingService;->pref:Landroid/content/SharedPreferences;

    const-string v13, "NICKNAME"

    const/4 v14, 0x0

    invoke-interface {v12, v13, v14}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10, v11, v12}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/support/v4/app/NotificationCompat$BigTextStyle;->bigText(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$BigTextStyle;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/support/v4/app/NotificationCompat$Builder;->setStyle(Landroid/support/v4/app/NotificationCompat$Style;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v8

    .line 247
    invoke-virtual {v8, v7}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v5

    .line 249
    .local v5, "notificationBuilder":Landroid/support/v4/app/NotificationCompat$Builder;
    const-string v8, "notification"

    invoke-virtual {p0, v8}, Lcom/cashwalk/cashwalk/MyFirebaseMessagingService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/app/NotificationManager;

    .line 251
    .local v6, "notificationManager":Landroid/app/NotificationManager;
    const/4 v8, 0x0

    invoke-virtual {v5}, Landroid/support/v4/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object v9

    invoke-virtual {v6, v8, v9}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 255
    .end local v1    # "defaultSoundUri":Landroid/net/Uri;
    .end local v3    # "intent":Landroid/content/Intent;
    .end local v4    # "item":Lcom/cashwalk/cashwalk/util/network/model/TimelineItem;
    .end local v5    # "notificationBuilder":Landroid/support/v4/app/NotificationCompat$Builder;
    .end local v6    # "notificationManager":Landroid/app/NotificationManager;
    .end local v7    # "pendingIntent":Landroid/app/PendingIntent;
    :goto_0
    return-void

    .line 252
    :catch_0
    move-exception v2

    .line 253
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method public onMessageReceived(Lcom/google/firebase/messaging/RemoteMessage;)V
    .locals 13
    .param p1, "remoteMessage"    # Lcom/google/firebase/messaging/RemoteMessage;

    .prologue
    .line 28
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/cashwalk/cashwalk/MyFirebaseMessagingService;->pref:Landroid/content/SharedPreferences;

    .line 30
    invoke-virtual {p1}, Lcom/google/firebase/messaging/RemoteMessage;->getData()Ljava/util/Map;

    move-result-object v6

    .line 31
    .local v6, "data":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v0, "type"

    invoke-interface {v6, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    .line 32
    .local v10, "type":Ljava/lang/String;
    const-string v0, "nickname"

    invoke-interface {v6, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 33
    .local v2, "nickname":Ljava/lang/String;
    const-string v0, "body"

    invoke-interface {v6, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 34
    .local v1, "body":Ljava/lang/String;
    const-string/jumbo v0, "user"

    invoke-interface {v6, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 35
    .local v7, "id":Ljava/lang/String;
    const-string/jumbo v0, "stepbet"

    invoke-interface {v6, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 36
    .local v3, "stepBetId":Ljava/lang/String;
    const-string/jumbo v0, "timeline"

    invoke-interface {v6, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 37
    .local v4, "timelineId":Ljava/lang/String;
    const-string v0, "point"

    invoke-interface {v6, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 38
    .local v8, "point":Ljava/lang/String;
    const-string/jumbo v0, "title"

    invoke-interface {v6, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    .line 40
    .local v9, "title":Ljava/lang/String;
    if-nez v10, :cond_1

    .line 81
    :cond_0
    :goto_0
    return-void

    .line 44
    :cond_1
    if-eqz v7, :cond_2

    iget-object v0, p0, Lcom/cashwalk/cashwalk/MyFirebaseMessagingService;->pref:Landroid/content/SharedPreferences;

    const-string v11, "USER_ID"

    const/4 v12, 0x0

    invoke-interface {v0, v11, v12}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 48
    :cond_2
    const/4 v0, -0x1

    invoke-virtual {v10}, Ljava/lang/String;->hashCode()I

    move-result v11

    sparse-switch v11, :sswitch_data_0

    :cond_3
    :goto_1
    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 50
    :pswitch_0
    invoke-direct {p0, v1, v2, v3, v4}, Lcom/cashwalk/cashwalk/MyFirebaseMessagingService;->sendNotificationTimeline(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 48
    :sswitch_0
    const-string/jumbo v11, "stepbet_timeline"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_3

    const/4 v0, 0x0

    goto :goto_1

    :sswitch_1
    const-string/jumbo v11, "stepbet_comment"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_3

    const/4 v0, 0x1

    goto :goto_1

    :sswitch_2
    const-string/jumbo v11, "stepbet_like"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_3

    const/4 v0, 0x2

    goto :goto_1

    :sswitch_3
    const-string/jumbo v11, "stepbet_start"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_3

    const/4 v0, 0x3

    goto :goto_1

    :sswitch_4
    const-string v11, "recommender_point"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_3

    const/4 v0, 0x4

    goto :goto_1

    :sswitch_5
    const-string v11, "friend_add"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_3

    const/4 v0, 0x5

    goto :goto_1

    :sswitch_6
    const-string v11, "friend_accept"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_3

    const/4 v0, 0x6

    goto :goto_1

    :sswitch_7
    const-string v11, "friend_win_prize"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_3

    const/4 v0, 0x7

    goto :goto_1

    .line 53
    :pswitch_1
    const-string v5, ""

    .line 54
    .local v5, "detailType":Ljava/lang/String;
    if-eqz v3, :cond_4

    .line 55
    const-string v0, "RAFFLE"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 56
    const-string/jumbo v5, "winner_list"

    :cond_4
    move-object v0, p0

    .line 59
    invoke-direct/range {v0 .. v5}, Lcom/cashwalk/cashwalk/MyFirebaseMessagingService;->sendNotificationTimelineComment(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 63
    .end local v5    # "detailType":Ljava/lang/String;
    :pswitch_2
    invoke-direct {p0, v2, v3, v4}, Lcom/cashwalk/cashwalk/MyFirebaseMessagingService;->sendNotificationTimelineLike(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 66
    :pswitch_3
    invoke-direct {p0}, Lcom/cashwalk/cashwalk/MyFirebaseMessagingService;->sendNotificationStepBetStart()V

    goto/16 :goto_0

    .line 69
    :pswitch_4
    invoke-direct {p0, v2, v8}, Lcom/cashwalk/cashwalk/MyFirebaseMessagingService;->sendNotificationRecommendation(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 72
    :pswitch_5
    invoke-direct {p0, v2}, Lcom/cashwalk/cashwalk/MyFirebaseMessagingService;->sendNotificationAddFriend(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 75
    :pswitch_6
    invoke-direct {p0, v2}, Lcom/cashwalk/cashwalk/MyFirebaseMessagingService;->sendNotificationFriendAccept(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 78
    :pswitch_7
    invoke-direct {p0, v2, v9}, Lcom/cashwalk/cashwalk/MyFirebaseMessagingService;->sendNotificationRaffleWin(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 48
    :sswitch_data_0
    .sparse-switch
        -0x7dc80d9b -> :sswitch_1
        -0x68afcc80 -> :sswitch_5
        -0x663f66af -> :sswitch_2
        -0x6145ee18 -> :sswitch_3
        -0x55029a72 -> :sswitch_7
        0x40ff643a -> :sswitch_4
        0x6ce750fb -> :sswitch_0
        0x7e0c19c9 -> :sswitch_6
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
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
