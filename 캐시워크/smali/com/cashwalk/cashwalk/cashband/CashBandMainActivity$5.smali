.class Lcom/cashwalk/cashwalk/cashband/CashBandMainActivity$5;
.super Ljava/lang/Object;
.source "CashBandMainActivity.java"

# interfaces
.implements Lcom/cashwalk/cashwalk/cashband/util/CashBandManager$OnRefreshFinishListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cashwalk/cashwalk/cashband/CashBandMainActivity;->setStepData()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cashwalk/cashwalk/cashband/CashBandMainActivity;


# direct methods
.method constructor <init>(Lcom/cashwalk/cashwalk/cashband/CashBandMainActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/cashwalk/cashwalk/cashband/CashBandMainActivity;

    .prologue
    .line 308
    iput-object p1, p0, Lcom/cashwalk/cashwalk/cashband/CashBandMainActivity$5;->this$0:Lcom/cashwalk/cashwalk/cashband/CashBandMainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSuccess(Lcom/cashwalk/cashwalk/model/BandInfo;)V
    .locals 8
    .param p1, "result"    # Lcom/cashwalk/cashwalk/model/BandInfo;

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 311
    iget-object v0, p0, Lcom/cashwalk/cashwalk/cashband/CashBandMainActivity$5;->this$0:Lcom/cashwalk/cashwalk/cashband/CashBandMainActivity;

    invoke-static {v0}, Lcom/cashwalk/cashwalk/cashband/CashBandMainActivity;->access$1600(Lcom/cashwalk/cashwalk/cashband/CashBandMainActivity;)Landroid/widget/ProgressBar;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 312
    iget-object v0, p0, Lcom/cashwalk/cashwalk/cashband/CashBandMainActivity$5;->this$0:Lcom/cashwalk/cashwalk/cashband/CashBandMainActivity;

    invoke-static {v0}, Lcom/cashwalk/cashwalk/cashband/CashBandMainActivity;->access$1700(Lcom/cashwalk/cashwalk/cashband/CashBandMainActivity;)Lcom/cashwalk/cashwalk/util/BandDBHelper;

    move-result-object v0

    iget v1, p1, Lcom/cashwalk/cashwalk/model/BandInfo;->steps:I

    new-instance v2, Lorg/joda/time/DateTime;

    invoke-direct {v2}, Lorg/joda/time/DateTime;-><init>()V

    invoke-virtual {v0, v1, v2}, Lcom/cashwalk/cashwalk/util/BandDBHelper;->insertStep(ILorg/joda/time/DateTime;)V

    .line 314
    iget-object v0, p0, Lcom/cashwalk/cashwalk/cashband/CashBandMainActivity$5;->this$0:Lcom/cashwalk/cashwalk/cashband/CashBandMainActivity;

    invoke-static {v0}, Lcom/cashwalk/cashwalk/cashband/CashBandMainActivity;->access$1800(Lcom/cashwalk/cashwalk/cashband/CashBandMainActivity;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 315
    iget-object v0, p0, Lcom/cashwalk/cashwalk/cashband/CashBandMainActivity$5;->this$0:Lcom/cashwalk/cashwalk/cashband/CashBandMainActivity;

    invoke-static {v0}, Lcom/cashwalk/cashwalk/cashband/CashBandMainActivity;->access$1900(Lcom/cashwalk/cashwalk/cashband/CashBandMainActivity;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 317
    iget-object v0, p0, Lcom/cashwalk/cashwalk/cashband/CashBandMainActivity$5;->this$0:Lcom/cashwalk/cashwalk/cashband/CashBandMainActivity;

    invoke-static {v0}, Lcom/cashwalk/cashwalk/cashband/CashBandMainActivity;->access$1800(Lcom/cashwalk/cashwalk/cashband/CashBandMainActivity;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/cashwalk/cashwalk/cashband/CashBandMainActivity$5;->this$0:Lcom/cashwalk/cashwalk/cashband/CashBandMainActivity;

    .line 319
    invoke-virtual {v1}, Lcom/cashwalk/cashwalk/cashband/CashBandMainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090116

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-array v2, v7, [Ljava/lang/Object;

    iget v3, p1, Lcom/cashwalk/cashwalk/model/BandInfo;->steps:I

    .line 320
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v6

    .line 318
    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 317
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 321
    iget-object v0, p0, Lcom/cashwalk/cashwalk/cashband/CashBandMainActivity$5;->this$0:Lcom/cashwalk/cashwalk/cashband/CashBandMainActivity;

    invoke-static {v0}, Lcom/cashwalk/cashwalk/cashband/CashBandMainActivity;->access$1900(Lcom/cashwalk/cashwalk/cashband/CashBandMainActivity;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/cashwalk/cashwalk/cashband/CashBandMainActivity$5;->this$0:Lcom/cashwalk/cashwalk/cashband/CashBandMainActivity;

    .line 323
    invoke-virtual {v1}, Lcom/cashwalk/cashwalk/cashband/CashBandMainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090117

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    iget-wide v4, p1, Lcom/cashwalk/cashwalk/model/BandInfo;->distances:D

    .line 324
    invoke-static {v4, v5}, Lcom/cashwalk/cashwalk/util/Utils;->meterToKilometer(D)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v6

    iget v3, p1, Lcom/cashwalk/cashwalk/model/BandInfo;->calories:I

    .line 325
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v7

    .line 322
    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 321
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 328
    sget-object v0, Lcom/cashwalk/cashwalk/CashWalkApp;->StepsDBHelper:Lcom/cashwalk/cashwalk/util/StepsDBHelper;

    if-nez v0, :cond_0

    .line 329
    new-instance v0, Lcom/cashwalk/cashwalk/util/StepsDBHelper;

    iget-object v1, p0, Lcom/cashwalk/cashwalk/cashband/CashBandMainActivity$5;->this$0:Lcom/cashwalk/cashwalk/cashband/CashBandMainActivity;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/cashwalk/cashwalk/util/StepsDBHelper;-><init>(Landroid/content/Context;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;)V

    sput-object v0, Lcom/cashwalk/cashwalk/CashWalkApp;->StepsDBHelper:Lcom/cashwalk/cashwalk/util/StepsDBHelper;

    .line 331
    :cond_0
    iget-object v0, p0, Lcom/cashwalk/cashwalk/cashband/CashBandMainActivity$5;->this$0:Lcom/cashwalk/cashwalk/cashband/CashBandMainActivity;

    sget-object v1, Lcom/cashwalk/cashwalk/CashWalkApp;->StepsDBHelper:Lcom/cashwalk/cashwalk/util/StepsDBHelper;

    iget-object v2, p0, Lcom/cashwalk/cashwalk/cashband/CashBandMainActivity$5;->this$0:Lcom/cashwalk/cashwalk/cashband/CashBandMainActivity;

    invoke-static {v2}, Lcom/cashwalk/cashwalk/cashband/CashBandMainActivity;->access$1700(Lcom/cashwalk/cashwalk/cashband/CashBandMainActivity;)Lcom/cashwalk/cashwalk/util/BandDBHelper;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/cashwalk/cashwalk/util/Utils;->syncLocalDbToBandDb(Landroid/content/Context;Lcom/cashwalk/cashwalk/util/StepsDBHelper;Lcom/cashwalk/cashwalk/util/BandDBHelper;)Z

    .line 332
    return-void
.end method
