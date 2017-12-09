.class Lcom/cashwalk/cashwalk/cashband/BandSettingVibrateModeActivity$2;
.super Ljava/lang/Object;
.source "BandSettingVibrateModeActivity.java"

# interfaces
.implements Landroid/view/MenuItem$OnMenuItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cashwalk/cashwalk/cashband/BandSettingVibrateModeActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cashwalk/cashwalk/cashband/BandSettingVibrateModeActivity;


# direct methods
.method constructor <init>(Lcom/cashwalk/cashwalk/cashband/BandSettingVibrateModeActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/cashwalk/cashwalk/cashband/BandSettingVibrateModeActivity;

    .prologue
    .line 161
    iput-object p1, p0, Lcom/cashwalk/cashwalk/cashband/BandSettingVibrateModeActivity$2;->this$0:Lcom/cashwalk/cashwalk/cashband/BandSettingVibrateModeActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 5
    .param p1, "mi"    # Landroid/view/MenuItem;

    .prologue
    .line 165
    iget-object v2, p0, Lcom/cashwalk/cashwalk/cashband/BandSettingVibrateModeActivity$2;->this$0:Lcom/cashwalk/cashwalk/cashband/BandSettingVibrateModeActivity;

    invoke-static {v2}, Lcom/cashwalk/cashwalk/cashband/BandSettingVibrateModeActivity;->access$000(Lcom/cashwalk/cashwalk/cashband/BandSettingVibrateModeActivity;)Lcom/cashwalk/cashwalk/cashband/util/CashBandManager;

    move-result-object v2

    if-nez v2, :cond_0

    .line 166
    iget-object v2, p0, Lcom/cashwalk/cashwalk/cashband/BandSettingVibrateModeActivity$2;->this$0:Lcom/cashwalk/cashwalk/cashband/BandSettingVibrateModeActivity;

    iget-object v3, p0, Lcom/cashwalk/cashwalk/cashband/BandSettingVibrateModeActivity$2;->this$0:Lcom/cashwalk/cashwalk/cashband/BandSettingVibrateModeActivity;

    invoke-virtual {v3}, Lcom/cashwalk/cashwalk/cashband/BandSettingVibrateModeActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f090112

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 193
    :goto_0
    const/4 v2, 0x1

    return v2

    .line 168
    :cond_0
    iget-object v2, p0, Lcom/cashwalk/cashwalk/cashband/BandSettingVibrateModeActivity$2;->this$0:Lcom/cashwalk/cashwalk/cashband/BandSettingVibrateModeActivity;

    invoke-static {v2}, Lcom/cashwalk/cashwalk/cashband/BandSettingVibrateModeActivity;->access$100(Lcom/cashwalk/cashwalk/cashband/BandSettingVibrateModeActivity;)Lcom/cashwalk/cashwalk/model/VibrateMode;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 169
    iget-object v2, p0, Lcom/cashwalk/cashwalk/cashband/BandSettingVibrateModeActivity$2;->this$0:Lcom/cashwalk/cashwalk/cashband/BandSettingVibrateModeActivity;

    invoke-static {v2}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 170
    .local v1, "pref":Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 172
    .local v0, "edit":Landroid/content/SharedPreferences$Editor;
    iget-object v2, p0, Lcom/cashwalk/cashwalk/cashband/BandSettingVibrateModeActivity$2;->this$0:Lcom/cashwalk/cashwalk/cashband/BandSettingVibrateModeActivity;

    invoke-static {v2}, Lcom/cashwalk/cashwalk/cashband/BandSettingVibrateModeActivity;->access$200(Lcom/cashwalk/cashwalk/cashband/BandSettingVibrateModeActivity;)I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 187
    :goto_1
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 188
    iget-object v2, p0, Lcom/cashwalk/cashwalk/cashband/BandSettingVibrateModeActivity$2;->this$0:Lcom/cashwalk/cashwalk/cashband/BandSettingVibrateModeActivity;

    invoke-static {v2}, Lcom/cashwalk/cashwalk/cashband/BandSettingVibrateModeActivity;->access$000(Lcom/cashwalk/cashwalk/cashband/BandSettingVibrateModeActivity;)Lcom/cashwalk/cashwalk/cashband/util/CashBandManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/cashwalk/cashwalk/cashband/util/CashBandManager;->setVibrate()V

    .line 191
    .end local v0    # "edit":Landroid/content/SharedPreferences$Editor;
    .end local v1    # "pref":Landroid/content/SharedPreferences;
    :cond_1
    iget-object v2, p0, Lcom/cashwalk/cashwalk/cashband/BandSettingVibrateModeActivity$2;->this$0:Lcom/cashwalk/cashwalk/cashband/BandSettingVibrateModeActivity;

    invoke-virtual {v2}, Lcom/cashwalk/cashwalk/cashband/BandSettingVibrateModeActivity;->finish()V

    goto :goto_0

    .line 174
    .restart local v0    # "edit":Landroid/content/SharedPreferences$Editor;
    .restart local v1    # "pref":Landroid/content/SharedPreferences;
    :pswitch_0
    const-string v2, "CASHBAND_VIBRATE_CALL_MODE"

    iget-object v3, p0, Lcom/cashwalk/cashwalk/cashband/BandSettingVibrateModeActivity$2;->this$0:Lcom/cashwalk/cashwalk/cashband/BandSettingVibrateModeActivity;

    invoke-static {v3}, Lcom/cashwalk/cashwalk/cashband/BandSettingVibrateModeActivity;->access$100(Lcom/cashwalk/cashwalk/cashband/BandSettingVibrateModeActivity;)Lcom/cashwalk/cashwalk/model/VibrateMode;

    move-result-object v3

    iget v3, v3, Lcom/cashwalk/cashwalk/model/VibrateMode;->modeIndex:I

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 175
    const-string v2, "CASHBAND_VIBRATE_CALL_MODE_NAME"

    iget-object v3, p0, Lcom/cashwalk/cashwalk/cashband/BandSettingVibrateModeActivity$2;->this$0:Lcom/cashwalk/cashwalk/cashband/BandSettingVibrateModeActivity;

    invoke-static {v3}, Lcom/cashwalk/cashwalk/cashband/BandSettingVibrateModeActivity;->access$100(Lcom/cashwalk/cashwalk/cashband/BandSettingVibrateModeActivity;)Lcom/cashwalk/cashwalk/model/VibrateMode;

    move-result-object v3

    iget-object v3, v3, Lcom/cashwalk/cashwalk/model/VibrateMode;->modeName:Ljava/lang/String;

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto :goto_1

    .line 178
    :pswitch_1
    const-string v2, "CASHBAND_VIBRATE_MSG_MODE"

    iget-object v3, p0, Lcom/cashwalk/cashwalk/cashband/BandSettingVibrateModeActivity$2;->this$0:Lcom/cashwalk/cashwalk/cashband/BandSettingVibrateModeActivity;

    invoke-static {v3}, Lcom/cashwalk/cashwalk/cashband/BandSettingVibrateModeActivity;->access$100(Lcom/cashwalk/cashwalk/cashband/BandSettingVibrateModeActivity;)Lcom/cashwalk/cashwalk/model/VibrateMode;

    move-result-object v3

    iget v3, v3, Lcom/cashwalk/cashwalk/model/VibrateMode;->modeIndex:I

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 179
    const-string v2, "CASHBAND_VIBRATE_MSG_MODE_NAME"

    iget-object v3, p0, Lcom/cashwalk/cashwalk/cashband/BandSettingVibrateModeActivity$2;->this$0:Lcom/cashwalk/cashwalk/cashband/BandSettingVibrateModeActivity;

    invoke-static {v3}, Lcom/cashwalk/cashwalk/cashband/BandSettingVibrateModeActivity;->access$100(Lcom/cashwalk/cashwalk/cashband/BandSettingVibrateModeActivity;)Lcom/cashwalk/cashwalk/model/VibrateMode;

    move-result-object v3

    iget-object v3, v3, Lcom/cashwalk/cashwalk/model/VibrateMode;->modeName:Ljava/lang/String;

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto :goto_1

    .line 182
    :pswitch_2
    const-string v2, "CASHBAND_VIBRATE_MOVEMENT_MODE"

    iget-object v3, p0, Lcom/cashwalk/cashwalk/cashband/BandSettingVibrateModeActivity$2;->this$0:Lcom/cashwalk/cashwalk/cashband/BandSettingVibrateModeActivity;

    invoke-static {v3}, Lcom/cashwalk/cashwalk/cashband/BandSettingVibrateModeActivity;->access$100(Lcom/cashwalk/cashwalk/cashband/BandSettingVibrateModeActivity;)Lcom/cashwalk/cashwalk/model/VibrateMode;

    move-result-object v3

    iget v3, v3, Lcom/cashwalk/cashwalk/model/VibrateMode;->modeIndex:I

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 183
    const-string v2, "CASHBAND_VIBRATE_MOVEMENT_MODE_NAME"

    iget-object v3, p0, Lcom/cashwalk/cashwalk/cashband/BandSettingVibrateModeActivity$2;->this$0:Lcom/cashwalk/cashwalk/cashband/BandSettingVibrateModeActivity;

    invoke-static {v3}, Lcom/cashwalk/cashwalk/cashband/BandSettingVibrateModeActivity;->access$100(Lcom/cashwalk/cashwalk/cashband/BandSettingVibrateModeActivity;)Lcom/cashwalk/cashwalk/model/VibrateMode;

    move-result-object v3

    iget-object v3, v3, Lcom/cashwalk/cashwalk/model/VibrateMode;->modeName:Ljava/lang/String;

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto :goto_1

    .line 172
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
