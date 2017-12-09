.class Lcom/cashwalk/cashwalk/lockscreen/LottoDialog$1;
.super Lcom/cashwalk/cashwalk/util/network/ResponseHandler;
.source "LottoDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cashwalk/cashwalk/lockscreen/LottoDialog;-><init>(Landroid/content/Context;Lcom/cashwalk/cashwalk/util/network/model/Lotto;Ljava/lang/String;Landroid/os/Handler;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cashwalk/cashwalk/lockscreen/LottoDialog;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$lotto:Lcom/cashwalk/cashwalk/util/network/model/Lotto;


# direct methods
.method constructor <init>(Lcom/cashwalk/cashwalk/lockscreen/LottoDialog;Landroid/content/Context;Lcom/cashwalk/cashwalk/util/network/model/Lotto;)V
    .locals 0
    .param p1, "this$0"    # Lcom/cashwalk/cashwalk/lockscreen/LottoDialog;

    .prologue
    .line 68
    iput-object p1, p0, Lcom/cashwalk/cashwalk/lockscreen/LottoDialog$1;->this$0:Lcom/cashwalk/cashwalk/lockscreen/LottoDialog;

    iput-object p2, p0, Lcom/cashwalk/cashwalk/lockscreen/LottoDialog$1;->val$context:Landroid/content/Context;

    iput-object p3, p0, Lcom/cashwalk/cashwalk/lockscreen/LottoDialog$1;->val$lotto:Lcom/cashwalk/cashwalk/util/network/model/Lotto;

    invoke-direct {p0}, Lcom/cashwalk/cashwalk/util/network/ResponseHandler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleResponse(Lorg/json/JSONObject;)V
    .locals 8
    .param p1, "jo"    # Lorg/json/JSONObject;

    .prologue
    .line 72
    :try_start_0
    iget-object v3, p0, Lcom/cashwalk/cashwalk/lockscreen/LottoDialog$1;->this$0:Lcom/cashwalk/cashwalk/lockscreen/LottoDialog;

    invoke-static {v3}, Lcom/cashwalk/cashwalk/lockscreen/LottoDialog;->access$000(Lcom/cashwalk/cashwalk/lockscreen/LottoDialog;)Landroid/widget/TextView;

    move-result-object v3

    iget-object v4, p0, Lcom/cashwalk/cashwalk/lockscreen/LottoDialog$1;->val$context:Landroid/content/Context;

    const v5, 0x7f0901ee

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    const-string v5, "%s"

    iget-object v6, p0, Lcom/cashwalk/cashwalk/lockscreen/LottoDialog$1;->val$lotto:Lcom/cashwalk/cashwalk/util/network/model/Lotto;

    iget-object v6, v6, Lcom/cashwalk/cashwalk/util/network/model/Lotto;->title:Ljava/lang/String;

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 73
    iget-object v3, p0, Lcom/cashwalk/cashwalk/lockscreen/LottoDialog$1;->this$0:Lcom/cashwalk/cashwalk/lockscreen/LottoDialog;

    invoke-static {v3}, Lcom/cashwalk/cashwalk/lockscreen/LottoDialog;->access$100(Lcom/cashwalk/cashwalk/lockscreen/LottoDialog;)Lcom/cooltechworks/views/ScratchImageView;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/cooltechworks/views/ScratchImageView;->setEnabled(Z)V

    .line 75
    if-eqz p1, :cond_4

    .line 76
    const-string v3, "result"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 79
    iget-object v3, p0, Lcom/cashwalk/cashwalk/lockscreen/LottoDialog$1;->this$0:Lcom/cashwalk/cashwalk/lockscreen/LottoDialog;

    invoke-static {v3}, Lcom/cashwalk/cashwalk/lockscreen/LottoDialog;->access$200(Lcom/cashwalk/cashwalk/lockscreen/LottoDialog;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/cashwalk/cashwalk/lockscreen/LottoDialog$1;->this$0:Lcom/cashwalk/cashwalk/lockscreen/LottoDialog;

    invoke-static {v3}, Lcom/cashwalk/cashwalk/lockscreen/LottoDialog;->access$200(Lcom/cashwalk/cashwalk/lockscreen/LottoDialog;)Ljava/lang/String;

    move-result-object v3

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 80
    :cond_0
    iget-object v3, p0, Lcom/cashwalk/cashwalk/lockscreen/LottoDialog$1;->this$0:Lcom/cashwalk/cashwalk/lockscreen/LottoDialog;

    invoke-static {v3}, Lcom/cashwalk/cashwalk/lockscreen/LottoDialog;->access$300(Lcom/cashwalk/cashwalk/lockscreen/LottoDialog;)Landroid/content/SharedPreferences;

    move-result-object v3

    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    const-string v4, "POINT"

    iget-object v5, p0, Lcom/cashwalk/cashwalk/lockscreen/LottoDialog$1;->this$0:Lcom/cashwalk/cashwalk/lockscreen/LottoDialog;

    invoke-static {v5}, Lcom/cashwalk/cashwalk/lockscreen/LottoDialog;->access$300(Lcom/cashwalk/cashwalk/lockscreen/LottoDialog;)Landroid/content/SharedPreferences;

    move-result-object v5

    const-string v6, "POINT"

    const/4 v7, 0x0

    invoke-interface {v5, v6, v7}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v5

    iget-object v6, p0, Lcom/cashwalk/cashwalk/lockscreen/LottoDialog$1;->val$lotto:Lcom/cashwalk/cashwalk/util/network/model/Lotto;

    iget v6, v6, Lcom/cashwalk/cashwalk/util/network/model/Lotto;->point:I

    sub-int/2addr v5, v6

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 83
    :cond_1
    iget-object v3, p0, Lcom/cashwalk/cashwalk/lockscreen/LottoDialog$1;->this$0:Lcom/cashwalk/cashwalk/lockscreen/LottoDialog;

    const-string v4, "result"

    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    const-string/jumbo v5, "win"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v4

    invoke-static {v3, v4}, Lcom/cashwalk/cashwalk/lockscreen/LottoDialog;->access$402(Lcom/cashwalk/cashwalk/lockscreen/LottoDialog;Z)Z

    .line 85
    iget-object v3, p0, Lcom/cashwalk/cashwalk/lockscreen/LottoDialog$1;->this$0:Lcom/cashwalk/cashwalk/lockscreen/LottoDialog;

    invoke-static {v3}, Lcom/cashwalk/cashwalk/lockscreen/LottoDialog;->access$400(Lcom/cashwalk/cashwalk/lockscreen/LottoDialog;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result v3

    if-eqz v3, :cond_2

    .line 87
    :try_start_1
    iget-object v3, p0, Lcom/cashwalk/cashwalk/lockscreen/LottoDialog$1;->val$context:Landroid/content/Context;

    invoke-static {v3}, Lcom/google/firebase/analytics/FirebaseAnalytics;->getInstance(Landroid/content/Context;)Lcom/google/firebase/analytics/FirebaseAnalytics;

    move-result-object v3

    const-string v4, "lotto_win"

    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {v3, v4, v5}, Lcom/google/firebase/analytics/FirebaseAnalytics;->logEvent(Ljava/lang/String;Landroid/os/Bundle;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 92
    :goto_0
    :try_start_2
    iget-object v3, p0, Lcom/cashwalk/cashwalk/lockscreen/LottoDialog$1;->this$0:Lcom/cashwalk/cashwalk/lockscreen/LottoDialog;

    invoke-static {v3}, Lcom/cashwalk/cashwalk/lockscreen/LottoDialog;->access$100(Lcom/cashwalk/cashwalk/lockscreen/LottoDialog;)Lcom/cooltechworks/views/ScratchImageView;

    move-result-object v3

    const v4, 0x7f020070

    invoke-virtual {v3, v4}, Lcom/cooltechworks/views/ScratchImageView;->setImageResource(I)V

    .line 164
    :goto_1
    return-void

    .line 88
    :catch_0
    move-exception v0

    .line 89
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 160
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v0

    .line 161
    .restart local v0    # "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 162
    invoke-static {v0}, Lcom/crashlytics/android/Crashlytics;->logException(Ljava/lang/Throwable;)V

    goto :goto_1

    .line 95
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_2
    :try_start_3
    iget-object v3, p0, Lcom/cashwalk/cashwalk/lockscreen/LottoDialog$1;->val$context:Landroid/content/Context;

    invoke-static {v3}, Lcom/google/firebase/analytics/FirebaseAnalytics;->getInstance(Landroid/content/Context;)Lcom/google/firebase/analytics/FirebaseAnalytics;

    move-result-object v3

    const-string v4, "lotto_lose"

    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {v3, v4, v5}, Lcom/google/firebase/analytics/FirebaseAnalytics;->logEvent(Ljava/lang/String;Landroid/os/Bundle;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    .line 100
    :goto_2
    :try_start_4
    new-instance v1, Ljava/util/Random;

    invoke-direct {v1}, Ljava/util/Random;-><init>()V

    .line 101
    .local v1, "r":Ljava/util/Random;
    const/4 v3, 0x3

    invoke-virtual {v1, v3}, Ljava/util/Random;->nextInt(I)I

    move-result v2

    .line 103
    .local v2, "rand":I
    packed-switch v2, :pswitch_data_0

    goto :goto_1

    .line 105
    :pswitch_0
    iget-object v3, p0, Lcom/cashwalk/cashwalk/lockscreen/LottoDialog$1;->this$0:Lcom/cashwalk/cashwalk/lockscreen/LottoDialog;

    invoke-static {v3}, Lcom/cashwalk/cashwalk/lockscreen/LottoDialog;->access$100(Lcom/cashwalk/cashwalk/lockscreen/LottoDialog;)Lcom/cooltechworks/views/ScratchImageView;

    move-result-object v3

    const v4, 0x7f02006d

    invoke-virtual {v3, v4}, Lcom/cooltechworks/views/ScratchImageView;->setImageResource(I)V

    goto :goto_1

    .line 96
    .end local v1    # "r":Ljava/util/Random;
    .end local v2    # "rand":I
    :catch_2
    move-exception v0

    .line 97
    .restart local v0    # "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2

    .line 108
    .end local v0    # "e":Ljava/lang/Exception;
    .restart local v1    # "r":Ljava/util/Random;
    .restart local v2    # "rand":I
    :pswitch_1
    iget-object v3, p0, Lcom/cashwalk/cashwalk/lockscreen/LottoDialog$1;->this$0:Lcom/cashwalk/cashwalk/lockscreen/LottoDialog;

    invoke-static {v3}, Lcom/cashwalk/cashwalk/lockscreen/LottoDialog;->access$100(Lcom/cashwalk/cashwalk/lockscreen/LottoDialog;)Lcom/cooltechworks/views/ScratchImageView;

    move-result-object v3

    const v4, 0x7f02006e

    invoke-virtual {v3, v4}, Lcom/cooltechworks/views/ScratchImageView;->setImageResource(I)V

    goto :goto_1

    .line 111
    :pswitch_2
    iget-object v3, p0, Lcom/cashwalk/cashwalk/lockscreen/LottoDialog$1;->this$0:Lcom/cashwalk/cashwalk/lockscreen/LottoDialog;

    invoke-static {v3}, Lcom/cashwalk/cashwalk/lockscreen/LottoDialog;->access$100(Lcom/cashwalk/cashwalk/lockscreen/LottoDialog;)Lcom/cooltechworks/views/ScratchImageView;

    move-result-object v3

    const v4, 0x7f02006f

    invoke-virtual {v3, v4}, Lcom/cooltechworks/views/ScratchImageView;->setImageResource(I)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_1

    .line 118
    .end local v1    # "r":Ljava/util/Random;
    .end local v2    # "rand":I
    :cond_3
    :try_start_5
    iget-object v3, p0, Lcom/cashwalk/cashwalk/lockscreen/LottoDialog$1;->val$context:Landroid/content/Context;

    invoke-static {v3}, Lcom/google/firebase/analytics/FirebaseAnalytics;->getInstance(Landroid/content/Context;)Lcom/google/firebase/analytics/FirebaseAnalytics;

    move-result-object v3

    const-string v4, "lotto_lose"

    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {v3, v4, v5}, Lcom/google/firebase/analytics/FirebaseAnalytics;->logEvent(Ljava/lang/String;Landroid/os/Bundle;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    .line 123
    :goto_3
    :try_start_6
    new-instance v1, Ljava/util/Random;

    invoke-direct {v1}, Ljava/util/Random;-><init>()V

    .line 124
    .restart local v1    # "r":Ljava/util/Random;
    const/4 v3, 0x3

    invoke-virtual {v1, v3}, Ljava/util/Random;->nextInt(I)I

    move-result v2

    .line 126
    .restart local v2    # "rand":I
    packed-switch v2, :pswitch_data_1

    goto :goto_1

    .line 128
    :pswitch_3
    iget-object v3, p0, Lcom/cashwalk/cashwalk/lockscreen/LottoDialog$1;->this$0:Lcom/cashwalk/cashwalk/lockscreen/LottoDialog;

    invoke-static {v3}, Lcom/cashwalk/cashwalk/lockscreen/LottoDialog;->access$100(Lcom/cashwalk/cashwalk/lockscreen/LottoDialog;)Lcom/cooltechworks/views/ScratchImageView;

    move-result-object v3

    const v4, 0x7f02006d

    invoke-virtual {v3, v4}, Lcom/cooltechworks/views/ScratchImageView;->setImageResource(I)V

    goto/16 :goto_1

    .line 119
    .end local v1    # "r":Ljava/util/Random;
    .end local v2    # "rand":I
    :catch_3
    move-exception v0

    .line 120
    .restart local v0    # "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_3

    .line 131
    .end local v0    # "e":Ljava/lang/Exception;
    .restart local v1    # "r":Ljava/util/Random;
    .restart local v2    # "rand":I
    :pswitch_4
    iget-object v3, p0, Lcom/cashwalk/cashwalk/lockscreen/LottoDialog$1;->this$0:Lcom/cashwalk/cashwalk/lockscreen/LottoDialog;

    invoke-static {v3}, Lcom/cashwalk/cashwalk/lockscreen/LottoDialog;->access$100(Lcom/cashwalk/cashwalk/lockscreen/LottoDialog;)Lcom/cooltechworks/views/ScratchImageView;

    move-result-object v3

    const v4, 0x7f02006e

    invoke-virtual {v3, v4}, Lcom/cooltechworks/views/ScratchImageView;->setImageResource(I)V

    goto/16 :goto_1

    .line 134
    :pswitch_5
    iget-object v3, p0, Lcom/cashwalk/cashwalk/lockscreen/LottoDialog$1;->this$0:Lcom/cashwalk/cashwalk/lockscreen/LottoDialog;

    invoke-static {v3}, Lcom/cashwalk/cashwalk/lockscreen/LottoDialog;->access$100(Lcom/cashwalk/cashwalk/lockscreen/LottoDialog;)Lcom/cooltechworks/views/ScratchImageView;

    move-result-object v3

    const v4, 0x7f02006f

    invoke-virtual {v3, v4}, Lcom/cooltechworks/views/ScratchImageView;->setImageResource(I)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1

    goto/16 :goto_1

    .line 140
    .end local v1    # "r":Ljava/util/Random;
    .end local v2    # "rand":I
    :cond_4
    :try_start_7
    iget-object v3, p0, Lcom/cashwalk/cashwalk/lockscreen/LottoDialog$1;->val$context:Landroid/content/Context;

    invoke-static {v3}, Lcom/google/firebase/analytics/FirebaseAnalytics;->getInstance(Landroid/content/Context;)Lcom/google/firebase/analytics/FirebaseAnalytics;

    move-result-object v3

    const-string v4, "lotto_lose"

    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {v3, v4, v5}, Lcom/google/firebase/analytics/FirebaseAnalytics;->logEvent(Ljava/lang/String;Landroid/os/Bundle;)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_4

    .line 145
    :goto_4
    :try_start_8
    new-instance v1, Ljava/util/Random;

    invoke-direct {v1}, Ljava/util/Random;-><init>()V

    .line 146
    .restart local v1    # "r":Ljava/util/Random;
    const/4 v3, 0x3

    invoke-virtual {v1, v3}, Ljava/util/Random;->nextInt(I)I

    move-result v2

    .line 148
    .restart local v2    # "rand":I
    packed-switch v2, :pswitch_data_2

    goto/16 :goto_1

    .line 150
    :pswitch_6
    iget-object v3, p0, Lcom/cashwalk/cashwalk/lockscreen/LottoDialog$1;->this$0:Lcom/cashwalk/cashwalk/lockscreen/LottoDialog;

    invoke-static {v3}, Lcom/cashwalk/cashwalk/lockscreen/LottoDialog;->access$100(Lcom/cashwalk/cashwalk/lockscreen/LottoDialog;)Lcom/cooltechworks/views/ScratchImageView;

    move-result-object v3

    const v4, 0x7f02006d

    invoke-virtual {v3, v4}, Lcom/cooltechworks/views/ScratchImageView;->setImageResource(I)V

    goto/16 :goto_1

    .line 141
    .end local v1    # "r":Ljava/util/Random;
    .end local v2    # "rand":I
    :catch_4
    move-exception v0

    .line 142
    .restart local v0    # "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_4

    .line 153
    .end local v0    # "e":Ljava/lang/Exception;
    .restart local v1    # "r":Ljava/util/Random;
    .restart local v2    # "rand":I
    :pswitch_7
    iget-object v3, p0, Lcom/cashwalk/cashwalk/lockscreen/LottoDialog$1;->this$0:Lcom/cashwalk/cashwalk/lockscreen/LottoDialog;

    invoke-static {v3}, Lcom/cashwalk/cashwalk/lockscreen/LottoDialog;->access$100(Lcom/cashwalk/cashwalk/lockscreen/LottoDialog;)Lcom/cooltechworks/views/ScratchImageView;

    move-result-object v3

    const v4, 0x7f02006e

    invoke-virtual {v3, v4}, Lcom/cooltechworks/views/ScratchImageView;->setImageResource(I)V

    goto/16 :goto_1

    .line 156
    :pswitch_8
    iget-object v3, p0, Lcom/cashwalk/cashwalk/lockscreen/LottoDialog$1;->this$0:Lcom/cashwalk/cashwalk/lockscreen/LottoDialog;

    invoke-static {v3}, Lcom/cashwalk/cashwalk/lockscreen/LottoDialog;->access$100(Lcom/cashwalk/cashwalk/lockscreen/LottoDialog;)Lcom/cooltechworks/views/ScratchImageView;

    move-result-object v3

    const v4, 0x7f02006f

    invoke-virtual {v3, v4}, Lcom/cooltechworks/views/ScratchImageView;->setImageResource(I)V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_1

    goto/16 :goto_1

    .line 103
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch

    .line 126
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch

    .line 148
    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_6
        :pswitch_7
        :pswitch_8
    .end packed-switch
.end method
