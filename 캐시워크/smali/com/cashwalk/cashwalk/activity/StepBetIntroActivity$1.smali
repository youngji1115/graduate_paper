.class Lcom/cashwalk/cashwalk/activity/StepBetIntroActivity$1;
.super Landroid/os/CountDownTimer;
.source "StepBetIntroActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cashwalk/cashwalk/activity/StepBetIntroActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cashwalk/cashwalk/activity/StepBetIntroActivity;


# direct methods
.method constructor <init>(Lcom/cashwalk/cashwalk/activity/StepBetIntroActivity;JJ)V
    .locals 0
    .param p1, "this$0"    # Lcom/cashwalk/cashwalk/activity/StepBetIntroActivity;
    .param p2, "x0"    # J
    .param p4, "x1"    # J

    .prologue
    .line 76
    iput-object p1, p0, Lcom/cashwalk/cashwalk/activity/StepBetIntroActivity$1;->this$0:Lcom/cashwalk/cashwalk/activity/StepBetIntroActivity;

    invoke-direct {p0, p2, p3, p4, p5}, Landroid/os/CountDownTimer;-><init>(JJ)V

    return-void
.end method


# virtual methods
.method public onFinish()V
    .locals 4

    .prologue
    .line 88
    iget-object v0, p0, Lcom/cashwalk/cashwalk/activity/StepBetIntroActivity$1;->this$0:Lcom/cashwalk/cashwalk/activity/StepBetIntroActivity;

    invoke-virtual {v0}, Lcom/cashwalk/cashwalk/activity/StepBetIntroActivity;->finish()V

    .line 89
    iget-object v0, p0, Lcom/cashwalk/cashwalk/activity/StepBetIntroActivity$1;->this$0:Lcom/cashwalk/cashwalk/activity/StepBetIntroActivity;

    invoke-static {v0}, Lcom/cashwalk/cashwalk/activity/StepBetIntroActivity;->access$100(Lcom/cashwalk/cashwalk/activity/StepBetIntroActivity;)Lcom/cashwalk/cashwalk/util/network/model/StepBet;

    move-result-object v0

    iget-boolean v0, v0, Lcom/cashwalk/cashwalk/util/network/model/StepBet;->participation:Z

    if-eqz v0, :cond_0

    .line 90
    iget-object v0, p0, Lcom/cashwalk/cashwalk/activity/StepBetIntroActivity$1;->this$0:Lcom/cashwalk/cashwalk/activity/StepBetIntroActivity;

    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/cashwalk/cashwalk/activity/StepBetIntroActivity$1;->this$0:Lcom/cashwalk/cashwalk/activity/StepBetIntroActivity;

    const-class v3, Lcom/cashwalk/cashwalk/activity/StepBetActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Lcom/cashwalk/cashwalk/activity/StepBetIntroActivity;->startActivity(Landroid/content/Intent;)V

    .line 92
    :cond_0
    return-void
.end method

.method public onTick(J)V
    .locals 11
    .param p1, "milliseconds"    # J

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 79
    const-wide/16 v4, 0x3e8

    div-long v4, p1, v4

    long-to-int v4, v4

    rem-int/lit8 v3, v4, 0x3c

    .line 80
    .local v3, "seconds":I
    const-wide/32 v4, 0xea60

    div-long v4, p1, v4

    const-wide/16 v6, 0x3c

    rem-long/2addr v4, v6

    long-to-int v2, v4

    .line 81
    .local v2, "minutes":I
    const-wide/32 v4, 0x36ee80

    div-long v4, p1, v4

    const-wide/16 v6, 0x18

    rem-long/2addr v4, v6

    long-to-int v1, v4

    .line 82
    .local v1, "hours":I
    sget-object v4, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v4, p1, p2}, Ljava/util/concurrent/TimeUnit;->toDays(J)J

    move-result-wide v4

    long-to-int v0, v4

    .line 84
    .local v0, "days":I
    iget-object v4, p0, Lcom/cashwalk/cashwalk/activity/StepBetIntroActivity$1;->this$0:Lcom/cashwalk/cashwalk/activity/StepBetIntroActivity;

    invoke-static {v4}, Lcom/cashwalk/cashwalk/activity/StepBetIntroActivity;->access$000(Lcom/cashwalk/cashwalk/activity/StepBetIntroActivity;)Landroid/widget/TextView;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "%02d"

    new-array v7, v10, [Ljava/lang/Object;

    mul-int/lit8 v8, v0, 0x18

    add-int/2addr v8, v1

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v9

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "%02d"

    new-array v7, v10, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v9

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "%02d"

    new-array v7, v10, [Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v9

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 85
    return-void
.end method
