.class Lcom/cashwalk/cashwalk/activity/SettingsActivity$8$2;
.super Ljava/lang/Object;
.source "SettingsActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cashwalk/cashwalk/activity/SettingsActivity$8;->onPreferenceClick(Landroid/preference/Preference;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/cashwalk/cashwalk/activity/SettingsActivity$8;


# direct methods
.method constructor <init>(Lcom/cashwalk/cashwalk/activity/SettingsActivity$8;)V
    .locals 0
    .param p1, "this$1"    # Lcom/cashwalk/cashwalk/activity/SettingsActivity$8;

    .prologue
    .line 306
    iput-object p1, p0, Lcom/cashwalk/cashwalk/activity/SettingsActivity$8$2;->this$1:Lcom/cashwalk/cashwalk/activity/SettingsActivity$8;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 309
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 310
    iget-object v0, p0, Lcom/cashwalk/cashwalk/activity/SettingsActivity$8$2;->this$1:Lcom/cashwalk/cashwalk/activity/SettingsActivity$8;

    iget-object v0, v0, Lcom/cashwalk/cashwalk/activity/SettingsActivity$8;->this$0:Lcom/cashwalk/cashwalk/activity/SettingsActivity;

    iget-object v1, p0, Lcom/cashwalk/cashwalk/activity/SettingsActivity$8$2;->this$1:Lcom/cashwalk/cashwalk/activity/SettingsActivity$8;

    iget-object v1, v1, Lcom/cashwalk/cashwalk/activity/SettingsActivity$8;->this$0:Lcom/cashwalk/cashwalk/activity/SettingsActivity;

    invoke-static {v1}, Lcom/cashwalk/cashwalk/activity/SettingsActivity;->access$000(Lcom/cashwalk/cashwalk/activity/SettingsActivity;)Landroid/content/SharedPreferences;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/cashwalk/cashwalk/util/Utils;->sendCsEmail(Landroid/content/Context;Landroid/content/SharedPreferences;Z)V

    .line 311
    return-void
.end method
