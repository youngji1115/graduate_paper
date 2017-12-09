.class Lcom/cashwalk/cashwalk/activity/SettingsActivity$10;
.super Ljava/lang/Object;
.source "SettingsActivity.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cashwalk/cashwalk/activity/SettingsActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cashwalk/cashwalk/activity/SettingsActivity;

.field final synthetic val$prefShowOnLockscreen:Landroid/preference/SwitchPreference;


# direct methods
.method constructor <init>(Lcom/cashwalk/cashwalk/activity/SettingsActivity;Landroid/preference/SwitchPreference;)V
    .locals 0
    .param p1, "this$0"    # Lcom/cashwalk/cashwalk/activity/SettingsActivity;

    .prologue
    .line 332
    iput-object p1, p0, Lcom/cashwalk/cashwalk/activity/SettingsActivity$10;->this$0:Lcom/cashwalk/cashwalk/activity/SettingsActivity;

    iput-object p2, p0, Lcom/cashwalk/cashwalk/activity/SettingsActivity$10;->val$prefShowOnLockscreen:Landroid/preference/SwitchPreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 6
    .param p1, "preference"    # Landroid/preference/Preference;
    .param p2, "newValue"    # Ljava/lang/Object;

    .prologue
    .line 335
    check-cast p2, Ljava/lang/Boolean;

    .end local p2    # "newValue":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_0

    .line 336
    new-instance v0, Lcom/cashwalk/cashwalk/lockscreen/OffDialog;

    iget-object v1, p0, Lcom/cashwalk/cashwalk/activity/SettingsActivity$10;->this$0:Lcom/cashwalk/cashwalk/activity/SettingsActivity;

    new-instance v2, Lcom/cashwalk/cashwalk/activity/SettingsActivity$10$1;

    invoke-direct {v2, p0}, Lcom/cashwalk/cashwalk/activity/SettingsActivity$10$1;-><init>(Lcom/cashwalk/cashwalk/activity/SettingsActivity$10;)V

    invoke-direct {v0, v1, v2}, Lcom/cashwalk/cashwalk/lockscreen/OffDialog;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    .line 361
    .local v0, "od":Lcom/cashwalk/cashwalk/lockscreen/OffDialog;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/cashwalk/cashwalk/lockscreen/OffDialog;->setCancelable(Z)V

    .line 362
    invoke-virtual {v0}, Lcom/cashwalk/cashwalk/lockscreen/OffDialog;->show()V

    .line 367
    .end local v0    # "od":Lcom/cashwalk/cashwalk/lockscreen/OffDialog;
    :goto_0
    const/4 v1, 0x1

    return v1

    .line 365
    :cond_0
    iget-object v1, p0, Lcom/cashwalk/cashwalk/activity/SettingsActivity$10;->this$0:Lcom/cashwalk/cashwalk/activity/SettingsActivity;

    invoke-static {v1}, Lcom/cashwalk/cashwalk/activity/SettingsActivity;->access$000(Lcom/cashwalk/cashwalk/activity/SettingsActivity;)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "LOCKSCREEN_OFF_DATETIME"

    const-wide/16 v4, 0x0

    invoke-interface {v1, v2, v4, v5}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto :goto_0
.end method
