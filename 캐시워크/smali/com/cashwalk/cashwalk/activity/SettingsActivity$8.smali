.class Lcom/cashwalk/cashwalk/activity/SettingsActivity$8;
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
    .line 275
    iput-object p1, p0, Lcom/cashwalk/cashwalk/activity/SettingsActivity$8;->this$0:Lcom/cashwalk/cashwalk/activity/SettingsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 3
    .param p1, "preference"    # Landroid/preference/Preference;

    .prologue
    .line 297
    new-instance v0, Landroid/support/v7/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/cashwalk/cashwalk/activity/SettingsActivity$8;->this$0:Lcom/cashwalk/cashwalk/activity/SettingsActivity;

    invoke-direct {v0, v1}, Landroid/support/v7/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 298
    .local v0, "ab":Landroid/support/v7/app/AlertDialog$Builder;
    iget-object v1, p0, Lcom/cashwalk/cashwalk/activity/SettingsActivity$8;->this$0:Lcom/cashwalk/cashwalk/activity/SettingsActivity;

    const v2, 0x7f09012c

    invoke-virtual {v1, v2}, Lcom/cashwalk/cashwalk/activity/SettingsActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v7/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 299
    iget-object v1, p0, Lcom/cashwalk/cashwalk/activity/SettingsActivity$8;->this$0:Lcom/cashwalk/cashwalk/activity/SettingsActivity;

    invoke-virtual {v1}, Lcom/cashwalk/cashwalk/activity/SettingsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090222

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/cashwalk/cashwalk/activity/SettingsActivity$8$1;

    invoke-direct {v2, p0}, Lcom/cashwalk/cashwalk/activity/SettingsActivity$8$1;-><init>(Lcom/cashwalk/cashwalk/activity/SettingsActivity$8;)V

    invoke-virtual {v0, v1, v2}, Landroid/support/v7/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 306
    iget-object v1, p0, Lcom/cashwalk/cashwalk/activity/SettingsActivity$8;->this$0:Lcom/cashwalk/cashwalk/activity/SettingsActivity;

    const v2, 0x7f090136

    invoke-virtual {v1, v2}, Lcom/cashwalk/cashwalk/activity/SettingsActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/cashwalk/cashwalk/activity/SettingsActivity$8$2;

    invoke-direct {v2, p0}, Lcom/cashwalk/cashwalk/activity/SettingsActivity$8$2;-><init>(Lcom/cashwalk/cashwalk/activity/SettingsActivity$8;)V

    invoke-virtual {v0, v1, v2}, Landroid/support/v7/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 313
    invoke-virtual {v0}, Landroid/support/v7/app/AlertDialog$Builder;->show()Landroid/support/v7/app/AlertDialog;

    .line 315
    const/4 v1, 0x0

    return v1
.end method
