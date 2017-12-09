.class Lcom/cashwalk/cashwalk/lockscreen/LockScreenMainFragment$23;
.super Lcom/cashwalk/cashwalk/util/network/ResponseHandler;
.source "LockScreenMainFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cashwalk/cashwalk/lockscreen/LockScreenMainFragment;->uploadSteps(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cashwalk/cashwalk/lockscreen/LockScreenMainFragment;


# direct methods
.method constructor <init>(Lcom/cashwalk/cashwalk/lockscreen/LockScreenMainFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/cashwalk/cashwalk/lockscreen/LockScreenMainFragment;

    .prologue
    .line 1126
    iput-object p1, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenMainFragment$23;->this$0:Lcom/cashwalk/cashwalk/lockscreen/LockScreenMainFragment;

    invoke-direct {p0}, Lcom/cashwalk/cashwalk/util/network/ResponseHandler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleResponse(Lorg/json/JSONObject;)V
    .locals 5
    .param p1, "jo"    # Lorg/json/JSONObject;

    .prologue
    .line 1130
    if-eqz p1, :cond_0

    :try_start_0
    const-string v2, "error"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1131
    iget-object v2, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenMainFragment$23;->this$0:Lcom/cashwalk/cashwalk/lockscreen/LockScreenMainFragment;

    invoke-static {v2}, Lcom/cashwalk/cashwalk/lockscreen/LockScreenMainFragment;->access$000(Lcom/cashwalk/cashwalk/lockscreen/LockScreenMainFragment;)Landroid/content/SharedPreferences;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 1132
    .local v1, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v2, "LOCKSCREEN_HARVESTED_STEPS"

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 1133
    const-string/jumbo v2, "steps"

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 1134
    const-string v2, "LOCKSCREEN_UNLOCK_DATE"

    new-instance v3, Lorg/joda/time/DateTime;

    invoke-direct {v3}, Lorg/joda/time/DateTime;-><init>()V

    const-string/jumbo v4, "yyyyMMdd"

    invoke-virtual {v3, v4}, Lorg/joda/time/DateTime;->toString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1135
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1137
    const/4 v2, 0x0

    sput v2, Lcom/cashwalk/cashwalk/lockscreen/LockScreenService;->stepDiff:I

    .line 1138
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sput-wide v2, Lcom/cashwalk/cashwalk/lockscreen/LockScreenService;->lastMillis:J

    .line 1139
    const/4 v2, 0x0

    sput v2, Lcom/cashwalk/cashwalk/lockscreen/LockScreenService;->steps:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1144
    .end local v1    # "editor":Landroid/content/SharedPreferences$Editor;
    :cond_0
    :goto_0
    return-void

    .line 1141
    :catch_0
    move-exception v0

    .line 1142
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
