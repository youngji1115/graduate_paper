.class Lcom/cashwalk/cashwalk/activity/SettingsActivity$5;
.super Lcom/cashwalk/cashwalk/util/network/ResponseHandler;
.source "SettingsActivity.java"


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

.field final synthetic val$prefVersion:Landroid/preference/Preference;


# direct methods
.method constructor <init>(Lcom/cashwalk/cashwalk/activity/SettingsActivity;Landroid/preference/Preference;)V
    .locals 0
    .param p1, "this$0"    # Lcom/cashwalk/cashwalk/activity/SettingsActivity;

    .prologue
    .line 185
    iput-object p1, p0, Lcom/cashwalk/cashwalk/activity/SettingsActivity$5;->this$0:Lcom/cashwalk/cashwalk/activity/SettingsActivity;

    iput-object p2, p0, Lcom/cashwalk/cashwalk/activity/SettingsActivity$5;->val$prefVersion:Landroid/preference/Preference;

    invoke-direct {p0}, Lcom/cashwalk/cashwalk/util/network/ResponseHandler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleResponse(Lorg/json/JSONObject;)V
    .locals 6
    .param p1, "jo"    # Lorg/json/JSONObject;

    .prologue
    .line 189
    :try_start_0
    iget-object v3, p0, Lcom/cashwalk/cashwalk/activity/SettingsActivity$5;->this$0:Lcom/cashwalk/cashwalk/activity/SettingsActivity;

    invoke-static {v3}, Lcom/cashwalk/cashwalk/activity/SettingsActivity;->access$000(Lcom/cashwalk/cashwalk/activity/SettingsActivity;)Landroid/content/SharedPreferences;

    move-result-object v3

    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    const-string v4, "PREFERENCE_UPDATE_CHECK_DATETIME"

    new-instance v5, Lorg/joda/time/DateTime;

    invoke-direct {v5}, Lorg/joda/time/DateTime;-><init>()V

    invoke-virtual {v5}, Lorg/joda/time/DateTime;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 190
    iget-object v3, p0, Lcom/cashwalk/cashwalk/activity/SettingsActivity$5;->this$0:Lcom/cashwalk/cashwalk/activity/SettingsActivity;

    invoke-virtual {v3}, Lcom/cashwalk/cashwalk/activity/SettingsActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    iget-object v4, p0, Lcom/cashwalk/cashwalk/activity/SettingsActivity$5;->this$0:Lcom/cashwalk/cashwalk/activity/SettingsActivity;

    invoke-virtual {v4}, Lcom/cashwalk/cashwalk/activity/SettingsActivity;->getPackageName()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 192
    .local v1, "pinfo":Landroid/content/pm/PackageInfo;
    const-string/jumbo v3, "version"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    .line 194
    .local v2, "version":I
    iget v3, v1, Landroid/content/pm/PackageInfo;->versionCode:I

    if-ge v3, v2, :cond_0

    .line 195
    iget-object v3, p0, Lcom/cashwalk/cashwalk/activity/SettingsActivity$5;->val$prefVersion:Landroid/preference/Preference;

    iget-object v4, p0, Lcom/cashwalk/cashwalk/activity/SettingsActivity$5;->this$0:Lcom/cashwalk/cashwalk/activity/SettingsActivity;

    const v5, 0x7f09025a

    invoke-virtual {v4, v5}, Lcom/cashwalk/cashwalk/activity/SettingsActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 202
    .end local v1    # "pinfo":Landroid/content/pm/PackageInfo;
    .end local v2    # "version":I
    :goto_0
    return-void

    .line 197
    .restart local v1    # "pinfo":Landroid/content/pm/PackageInfo;
    .restart local v2    # "version":I
    :cond_0
    iget-object v3, p0, Lcom/cashwalk/cashwalk/activity/SettingsActivity$5;->val$prefVersion:Landroid/preference/Preference;

    iget-object v4, p0, Lcom/cashwalk/cashwalk/activity/SettingsActivity$5;->this$0:Lcom/cashwalk/cashwalk/activity/SettingsActivity;

    const v5, 0x7f090259

    invoke-virtual {v4, v5}, Lcom/cashwalk/cashwalk/activity/SettingsActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 199
    .end local v1    # "pinfo":Landroid/content/pm/PackageInfo;
    .end local v2    # "version":I
    :catch_0
    move-exception v0

    .line 200
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
