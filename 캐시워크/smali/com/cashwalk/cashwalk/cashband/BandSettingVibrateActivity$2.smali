.class Lcom/cashwalk/cashwalk/cashband/BandSettingVibrateActivity$2;
.super Ljava/lang/Object;
.source "BandSettingVibrateActivity.java"

# interfaces
.implements Lcom/cashwalk/cashwalk/cashband/dialog/VibrateRepeatCountDialog$OnSelectRepeatCount;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cashwalk/cashwalk/cashband/BandSettingVibrateActivity;->showRepeatDialog(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cashwalk/cashwalk/cashband/BandSettingVibrateActivity;

.field final synthetic val$modeType:I


# direct methods
.method constructor <init>(Lcom/cashwalk/cashwalk/cashband/BandSettingVibrateActivity;I)V
    .locals 0
    .param p1, "this$0"    # Lcom/cashwalk/cashwalk/cashband/BandSettingVibrateActivity;

    .prologue
    .line 140
    iput-object p1, p0, Lcom/cashwalk/cashwalk/cashband/BandSettingVibrateActivity$2;->this$0:Lcom/cashwalk/cashwalk/cashband/BandSettingVibrateActivity;

    iput p2, p0, Lcom/cashwalk/cashwalk/cashband/BandSettingVibrateActivity$2;->val$modeType:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSelect(I)V
    .locals 5
    .param p1, "count"    # I

    .prologue
    .line 144
    iget-object v2, p0, Lcom/cashwalk/cashwalk/cashband/BandSettingVibrateActivity$2;->this$0:Lcom/cashwalk/cashwalk/cashband/BandSettingVibrateActivity;

    invoke-static {v2}, Lcom/cashwalk/cashwalk/cashband/BandSettingVibrateActivity;->access$000(Lcom/cashwalk/cashwalk/cashband/BandSettingVibrateActivity;)Lcom/cashwalk/cashwalk/cashband/util/CashBandManager;

    move-result-object v2

    if-nez v2, :cond_0

    .line 145
    iget-object v2, p0, Lcom/cashwalk/cashwalk/cashband/BandSettingVibrateActivity$2;->this$0:Lcom/cashwalk/cashwalk/cashband/BandSettingVibrateActivity;

    iget-object v3, p0, Lcom/cashwalk/cashwalk/cashband/BandSettingVibrateActivity$2;->this$0:Lcom/cashwalk/cashwalk/cashband/BandSettingVibrateActivity;

    invoke-virtual {v3}, Lcom/cashwalk/cashwalk/cashband/BandSettingVibrateActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f090112

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 170
    :goto_0
    return-void

    .line 148
    :cond_0
    iget-object v2, p0, Lcom/cashwalk/cashwalk/cashband/BandSettingVibrateActivity$2;->this$0:Lcom/cashwalk/cashwalk/cashband/BandSettingVibrateActivity;

    invoke-static {v2}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 149
    .local v1, "pref":Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 151
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    iget v2, p0, Lcom/cashwalk/cashwalk/cashband/BandSettingVibrateActivity$2;->val$modeType:I

    packed-switch v2, :pswitch_data_0

    .line 166
    :goto_1
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 167
    iget-object v2, p0, Lcom/cashwalk/cashwalk/cashband/BandSettingVibrateActivity$2;->this$0:Lcom/cashwalk/cashwalk/cashband/BandSettingVibrateActivity;

    invoke-static {v2}, Lcom/cashwalk/cashwalk/cashband/BandSettingVibrateActivity;->access$000(Lcom/cashwalk/cashwalk/cashband/BandSettingVibrateActivity;)Lcom/cashwalk/cashwalk/cashband/util/CashBandManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/cashwalk/cashwalk/cashband/util/CashBandManager;->setVibrate()V

    goto :goto_0

    .line 153
    :pswitch_0
    iget-object v2, p0, Lcom/cashwalk/cashwalk/cashband/BandSettingVibrateActivity$2;->this$0:Lcom/cashwalk/cashwalk/cashband/BandSettingVibrateActivity;

    invoke-static {v2}, Lcom/cashwalk/cashwalk/cashband/BandSettingVibrateActivity;->access$100(Lcom/cashwalk/cashwalk/cashband/BandSettingVibrateActivity;)Landroid/widget/TextView;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " \ubc88"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 154
    const-string v2, "CASHBAND_VIBRATE_CALL_MODE_COUNT"

    invoke-interface {v0, v2, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    goto :goto_1

    .line 157
    :pswitch_1
    iget-object v2, p0, Lcom/cashwalk/cashwalk/cashband/BandSettingVibrateActivity$2;->this$0:Lcom/cashwalk/cashwalk/cashband/BandSettingVibrateActivity;

    invoke-static {v2}, Lcom/cashwalk/cashwalk/cashband/BandSettingVibrateActivity;->access$200(Lcom/cashwalk/cashwalk/cashband/BandSettingVibrateActivity;)Landroid/widget/TextView;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " \ubc88"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 158
    const-string v2, "CASHBAND_VIBRATE_MOVEMENT_MODE_COUNT"

    invoke-interface {v0, v2, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    goto :goto_1

    .line 161
    :pswitch_2
    iget-object v2, p0, Lcom/cashwalk/cashwalk/cashband/BandSettingVibrateActivity$2;->this$0:Lcom/cashwalk/cashwalk/cashband/BandSettingVibrateActivity;

    invoke-static {v2}, Lcom/cashwalk/cashwalk/cashband/BandSettingVibrateActivity;->access$300(Lcom/cashwalk/cashwalk/cashband/BandSettingVibrateActivity;)Landroid/widget/TextView;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " \ubc88"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 162
    const-string v2, "CASHBAND_VIBRATE_MSG_MODE_COUNT"

    invoke-interface {v0, v2, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    goto :goto_1

    .line 151
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method
