.class Lcom/cashwalk/cashwalk/activity/SettingsActivity$9;
.super Ljava/lang/Object;
.source "SettingsActivity.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceClickListener;


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


# direct methods
.method constructor <init>(Lcom/cashwalk/cashwalk/activity/SettingsActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/cashwalk/cashwalk/activity/SettingsActivity;

    .prologue
    .line 319
    iput-object p1, p0, Lcom/cashwalk/cashwalk/activity/SettingsActivity$9;->this$0:Lcom/cashwalk/cashwalk/activity/SettingsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 4
    .param p1, "preference"    # Landroid/preference/Preference;

    .prologue
    .line 322
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/cashwalk/cashwalk/activity/SettingsActivity$9;->this$0:Lcom/cashwalk/cashwalk/activity/SettingsActivity;

    const-class v2, Lcom/cashwalk/cashwalk/activity/CashWalkCommonWebviewActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 323
    .local v0, "startWebView":Landroid/content/Intent;
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 324
    const-string/jumbo v1, "url"

    sget-object v2, Lcom/cashwalk/cashwalk/AppConstants;->CASHWALK_FAQ_URL:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 325
    const-string/jumbo v1, "title"

    iget-object v2, p0, Lcom/cashwalk/cashwalk/activity/SettingsActivity$9;->this$0:Lcom/cashwalk/cashwalk/activity/SettingsActivity;

    const v3, 0x7f090258

    invoke-virtual {v2, v3}, Lcom/cashwalk/cashwalk/activity/SettingsActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 326
    iget-object v1, p0, Lcom/cashwalk/cashwalk/activity/SettingsActivity$9;->this$0:Lcom/cashwalk/cashwalk/activity/SettingsActivity;

    invoke-virtual {v1, v0}, Lcom/cashwalk/cashwalk/activity/SettingsActivity;->startActivity(Landroid/content/Intent;)V

    .line 327
    const/4 v1, 0x0

    return v1
.end method
