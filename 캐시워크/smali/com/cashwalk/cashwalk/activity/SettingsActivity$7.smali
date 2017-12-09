.class Lcom/cashwalk/cashwalk/activity/SettingsActivity$7;
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
    .line 266
    iput-object p1, p0, Lcom/cashwalk/cashwalk/activity/SettingsActivity$7;->this$0:Lcom/cashwalk/cashwalk/activity/SettingsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 4
    .param p1, "preference"    # Landroid/preference/Preference;

    .prologue
    .line 269
    iget-object v0, p0, Lcom/cashwalk/cashwalk/activity/SettingsActivity$7;->this$0:Lcom/cashwalk/cashwalk/activity/SettingsActivity;

    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/cashwalk/cashwalk/activity/SettingsActivity$7;->this$0:Lcom/cashwalk/cashwalk/activity/SettingsActivity;

    const-class v3, Lcom/cashwalk/cashwalk/lockscreen/WallpaperActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Lcom/cashwalk/cashwalk/activity/SettingsActivity;->startActivity(Landroid/content/Intent;)V

    .line 270
    const/4 v0, 0x0

    return v0
.end method
