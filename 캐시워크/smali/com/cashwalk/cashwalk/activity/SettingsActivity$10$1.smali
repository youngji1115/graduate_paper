.class Lcom/cashwalk/cashwalk/activity/SettingsActivity$10$1;
.super Landroid/os/Handler;
.source "SettingsActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cashwalk/cashwalk/activity/SettingsActivity$10;->onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/cashwalk/cashwalk/activity/SettingsActivity$10;


# direct methods
.method constructor <init>(Lcom/cashwalk/cashwalk/activity/SettingsActivity$10;)V
    .locals 0
    .param p1, "this$1"    # Lcom/cashwalk/cashwalk/activity/SettingsActivity$10;

    .prologue
    .line 336
    iput-object p1, p0, Lcom/cashwalk/cashwalk/activity/SettingsActivity$10$1;->this$1:Lcom/cashwalk/cashwalk/activity/SettingsActivity$10;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 6
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/16 v5, 0x3b

    const/4 v3, 0x1

    .line 339
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 359
    :goto_0
    return-void

    .line 341
    :pswitch_0
    iget-object v0, p0, Lcom/cashwalk/cashwalk/activity/SettingsActivity$10$1;->this$1:Lcom/cashwalk/cashwalk/activity/SettingsActivity$10;

    iget-object v0, v0, Lcom/cashwalk/cashwalk/activity/SettingsActivity$10;->val$prefShowOnLockscreen:Landroid/preference/SwitchPreference;

    invoke-virtual {v0, v3}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    goto :goto_0

    .line 344
    :pswitch_1
    iget-object v0, p0, Lcom/cashwalk/cashwalk/activity/SettingsActivity$10$1;->this$1:Lcom/cashwalk/cashwalk/activity/SettingsActivity$10;

    iget-object v0, v0, Lcom/cashwalk/cashwalk/activity/SettingsActivity$10;->this$0:Lcom/cashwalk/cashwalk/activity/SettingsActivity;

    invoke-static {v0}, Lcom/cashwalk/cashwalk/activity/SettingsActivity;->access$000(Lcom/cashwalk/cashwalk/activity/SettingsActivity;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "LOCKSCREEN_OFF_DATETIME"

    new-instance v2, Lorg/joda/time/DateTime;

    invoke-direct {v2}, Lorg/joda/time/DateTime;-><init>()V

    invoke-virtual {v2, v3}, Lorg/joda/time/DateTime;->plusHours(I)Lorg/joda/time/DateTime;

    move-result-object v2

    invoke-virtual {v2}, Lorg/joda/time/DateTime;->getMillis()J

    move-result-wide v2

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto :goto_0

    .line 347
    :pswitch_2
    iget-object v0, p0, Lcom/cashwalk/cashwalk/activity/SettingsActivity$10$1;->this$1:Lcom/cashwalk/cashwalk/activity/SettingsActivity$10;

    iget-object v0, v0, Lcom/cashwalk/cashwalk/activity/SettingsActivity$10;->this$0:Lcom/cashwalk/cashwalk/activity/SettingsActivity;

    invoke-static {v0}, Lcom/cashwalk/cashwalk/activity/SettingsActivity;->access$000(Lcom/cashwalk/cashwalk/activity/SettingsActivity;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "LOCKSCREEN_OFF_DATETIME"

    new-instance v2, Lorg/joda/time/DateTime;

    invoke-direct {v2}, Lorg/joda/time/DateTime;-><init>()V

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Lorg/joda/time/DateTime;->plusHours(I)Lorg/joda/time/DateTime;

    move-result-object v2

    invoke-virtual {v2}, Lorg/joda/time/DateTime;->getMillis()J

    move-result-wide v2

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto :goto_0

    .line 350
    :pswitch_3
    iget-object v0, p0, Lcom/cashwalk/cashwalk/activity/SettingsActivity$10$1;->this$1:Lcom/cashwalk/cashwalk/activity/SettingsActivity$10;

    iget-object v0, v0, Lcom/cashwalk/cashwalk/activity/SettingsActivity$10;->this$0:Lcom/cashwalk/cashwalk/activity/SettingsActivity;

    invoke-static {v0}, Lcom/cashwalk/cashwalk/activity/SettingsActivity;->access$000(Lcom/cashwalk/cashwalk/activity/SettingsActivity;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "LOCKSCREEN_OFF_DATETIME"

    new-instance v2, Lorg/joda/time/DateTime;

    invoke-direct {v2}, Lorg/joda/time/DateTime;-><init>()V

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Lorg/joda/time/DateTime;->plusHours(I)Lorg/joda/time/DateTime;

    move-result-object v2

    invoke-virtual {v2}, Lorg/joda/time/DateTime;->getMillis()J

    move-result-wide v2

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto :goto_0

    .line 353
    :pswitch_4
    iget-object v0, p0, Lcom/cashwalk/cashwalk/activity/SettingsActivity$10$1;->this$1:Lcom/cashwalk/cashwalk/activity/SettingsActivity$10;

    iget-object v0, v0, Lcom/cashwalk/cashwalk/activity/SettingsActivity$10;->this$0:Lcom/cashwalk/cashwalk/activity/SettingsActivity;

    invoke-static {v0}, Lcom/cashwalk/cashwalk/activity/SettingsActivity;->access$000(Lcom/cashwalk/cashwalk/activity/SettingsActivity;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "LOCKSCREEN_OFF_DATETIME"

    new-instance v2, Lorg/joda/time/DateTime;

    invoke-direct {v2}, Lorg/joda/time/DateTime;-><init>()V

    const/16 v3, 0x17

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v5, v5, v4}, Lorg/joda/time/DateTime;->withTime(IIII)Lorg/joda/time/DateTime;

    move-result-object v2

    invoke-virtual {v2}, Lorg/joda/time/DateTime;->getMillis()J

    move-result-wide v2

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto/16 :goto_0

    .line 356
    :pswitch_5
    iget-object v0, p0, Lcom/cashwalk/cashwalk/activity/SettingsActivity$10$1;->this$1:Lcom/cashwalk/cashwalk/activity/SettingsActivity$10;

    iget-object v0, v0, Lcom/cashwalk/cashwalk/activity/SettingsActivity$10;->this$0:Lcom/cashwalk/cashwalk/activity/SettingsActivity;

    invoke-static {v0}, Lcom/cashwalk/cashwalk/activity/SettingsActivity;->access$000(Lcom/cashwalk/cashwalk/activity/SettingsActivity;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "LOCKSCREEN_OFF_DATETIME"

    const-wide/16 v2, -0x1

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto/16 :goto_0

    .line 339
    nop

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method
