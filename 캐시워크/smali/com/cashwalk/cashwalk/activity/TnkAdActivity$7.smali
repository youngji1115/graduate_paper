.class Lcom/cashwalk/cashwalk/activity/TnkAdActivity$7;
.super Lcom/cashwalk/cashwalk/util/network/ResponseHandler;
.source "TnkAdActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cashwalk/cashwalk/activity/TnkAdActivity;->checkAppVersion()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cashwalk/cashwalk/activity/TnkAdActivity;


# direct methods
.method constructor <init>(Lcom/cashwalk/cashwalk/activity/TnkAdActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/cashwalk/cashwalk/activity/TnkAdActivity;

    .prologue
    .line 1087
    iput-object p1, p0, Lcom/cashwalk/cashwalk/activity/TnkAdActivity$7;->this$0:Lcom/cashwalk/cashwalk/activity/TnkAdActivity;

    invoke-direct {p0}, Lcom/cashwalk/cashwalk/util/network/ResponseHandler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleResponse(Lorg/json/JSONObject;)V
    .locals 7
    .param p1, "jo"    # Lorg/json/JSONObject;

    .prologue
    .line 1091
    :try_start_0
    iget-object v4, p0, Lcom/cashwalk/cashwalk/activity/TnkAdActivity$7;->this$0:Lcom/cashwalk/cashwalk/activity/TnkAdActivity;

    invoke-static {v4}, Lcom/cashwalk/cashwalk/activity/TnkAdActivity;->access$300(Lcom/cashwalk/cashwalk/activity/TnkAdActivity;)Landroid/content/SharedPreferences;

    move-result-object v4

    invoke-interface {v4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    const-string v5, "PREFERENCE_UPDATE_CHECK_DATETIME"

    new-instance v6, Lorg/joda/time/DateTime;

    invoke-direct {v6}, Lorg/joda/time/DateTime;-><init>()V

    invoke-virtual {v6}, Lorg/joda/time/DateTime;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v4, v5, v6}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    invoke-interface {v4}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 1092
    iget-object v4, p0, Lcom/cashwalk/cashwalk/activity/TnkAdActivity$7;->this$0:Lcom/cashwalk/cashwalk/activity/TnkAdActivity;

    invoke-virtual {v4}, Lcom/cashwalk/cashwalk/activity/TnkAdActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    iget-object v5, p0, Lcom/cashwalk/cashwalk/activity/TnkAdActivity$7;->this$0:Lcom/cashwalk/cashwalk/activity/TnkAdActivity;

    invoke-virtual {v5}, Lcom/cashwalk/cashwalk/activity/TnkAdActivity;->getPackageName()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v2

    .line 1094
    .local v2, "pinfo":Landroid/content/pm/PackageInfo;
    const-string/jumbo v4, "version"

    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v3

    .line 1095
    .local v3, "version":I
    iget v4, v2, Landroid/content/pm/PackageInfo;->versionCode:I

    if-ge v4, v3, :cond_0

    .line 1097
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v4, p0, Lcom/cashwalk/cashwalk/activity/TnkAdActivity$7;->this$0:Lcom/cashwalk/cashwalk/activity/TnkAdActivity;

    invoke-direct {v0, v4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1098
    .local v0, "ab":Landroid/app/AlertDialog$Builder;
    iget-object v4, p0, Lcom/cashwalk/cashwalk/activity/TnkAdActivity$7;->this$0:Lcom/cashwalk/cashwalk/activity/TnkAdActivity;

    const v5, 0x7f0902e6

    invoke-virtual {v4, v5}, Lcom/cashwalk/cashwalk/activity/TnkAdActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 1099
    iget-object v4, p0, Lcom/cashwalk/cashwalk/activity/TnkAdActivity$7;->this$0:Lcom/cashwalk/cashwalk/activity/TnkAdActivity;

    invoke-virtual {v4}, Lcom/cashwalk/cashwalk/activity/TnkAdActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f090101

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Lcom/cashwalk/cashwalk/activity/TnkAdActivity$7$1;

    invoke-direct {v5, p0}, Lcom/cashwalk/cashwalk/activity/TnkAdActivity$7$1;-><init>(Lcom/cashwalk/cashwalk/activity/TnkAdActivity$7;)V

    invoke-virtual {v0, v4, v5}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1105
    iget-object v4, p0, Lcom/cashwalk/cashwalk/activity/TnkAdActivity$7;->this$0:Lcom/cashwalk/cashwalk/activity/TnkAdActivity;

    const v5, 0x7f0902e5

    invoke-virtual {v4, v5}, Lcom/cashwalk/cashwalk/activity/TnkAdActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Lcom/cashwalk/cashwalk/activity/TnkAdActivity$7$2;

    invoke-direct {v5, p0}, Lcom/cashwalk/cashwalk/activity/TnkAdActivity$7$2;-><init>(Lcom/cashwalk/cashwalk/activity/TnkAdActivity$7;)V

    invoke-virtual {v0, v4, v5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1114
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1119
    .end local v0    # "ab":Landroid/app/AlertDialog$Builder;
    .end local v2    # "pinfo":Landroid/content/pm/PackageInfo;
    .end local v3    # "version":I
    :cond_0
    :goto_0
    return-void

    .line 1116
    :catch_0
    move-exception v1

    .line 1117
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
