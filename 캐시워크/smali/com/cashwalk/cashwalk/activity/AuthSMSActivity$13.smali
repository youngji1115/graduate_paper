.class Lcom/cashwalk/cashwalk/activity/AuthSMSActivity$13;
.super Landroid/os/CountDownTimer;
.source "AuthSMSActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cashwalk/cashwalk/activity/AuthSMSActivity;->setStep2()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cashwalk/cashwalk/activity/AuthSMSActivity;


# direct methods
.method constructor <init>(Lcom/cashwalk/cashwalk/activity/AuthSMSActivity;JJ)V
    .locals 0
    .param p1, "this$0"    # Lcom/cashwalk/cashwalk/activity/AuthSMSActivity;
    .param p2, "x0"    # J
    .param p4, "x1"    # J

    .prologue
    .line 346
    iput-object p1, p0, Lcom/cashwalk/cashwalk/activity/AuthSMSActivity$13;->this$0:Lcom/cashwalk/cashwalk/activity/AuthSMSActivity;

    invoke-direct {p0, p2, p3, p4, p5}, Landroid/os/CountDownTimer;-><init>(JJ)V

    return-void
.end method


# virtual methods
.method public onFinish()V
    .locals 2

    .prologue
    .line 361
    iget-object v0, p0, Lcom/cashwalk/cashwalk/activity/AuthSMSActivity$13;->this$0:Lcom/cashwalk/cashwalk/activity/AuthSMSActivity;

    invoke-static {v0}, Lcom/cashwalk/cashwalk/activity/AuthSMSActivity;->access$1300(Lcom/cashwalk/cashwalk/activity/AuthSMSActivity;)Landroid/widget/TextView;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 362
    iget-object v0, p0, Lcom/cashwalk/cashwalk/activity/AuthSMSActivity$13;->this$0:Lcom/cashwalk/cashwalk/activity/AuthSMSActivity;

    invoke-static {v0}, Lcom/cashwalk/cashwalk/activity/AuthSMSActivity;->access$1400(Lcom/cashwalk/cashwalk/activity/AuthSMSActivity;)Landroid/widget/RelativeLayout;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 363
    return-void
.end method

.method public onTick(J)V
    .locals 8
    .param p1, "millisUntilFinished"    # J

    .prologue
    const/16 v7, 0x21

    const/4 v6, 0x5

    const/4 v5, 0x1

    .line 349
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/cashwalk/cashwalk/activity/AuthSMSActivity$13;->this$0:Lcom/cashwalk/cashwalk/activity/AuthSMSActivity;

    invoke-static {v3}, Lcom/cashwalk/cashwalk/activity/AuthSMSActivity;->access$1200(Lcom/cashwalk/cashwalk/activity/AuthSMSActivity;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "\ucd08"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 351
    .local v0, "countDownText":Ljava/lang/String;
    new-instance v1, Landroid/text/SpannableStringBuilder;

    iget-object v2, p0, Lcom/cashwalk/cashwalk/activity/AuthSMSActivity$13;->this$0:Lcom/cashwalk/cashwalk/activity/AuthSMSActivity;

    .line 352
    invoke-virtual {v2}, Lcom/cashwalk/cashwalk/activity/AuthSMSActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0900b0

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-array v3, v5, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 353
    .local v1, "countSps":Landroid/text/SpannableStringBuilder;
    new-instance v2, Landroid/text/style/StyleSpan;

    invoke-direct {v2, v5}, Landroid/text/style/StyleSpan;-><init>(I)V

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x5

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v1, v2, v6, v3, v7}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 354
    new-instance v2, Landroid/text/style/ForegroundColorSpan;

    const v3, -0xff8501

    invoke-direct {v2, v3}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x5

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v1, v2, v6, v3, v7}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 355
    iget-object v2, p0, Lcom/cashwalk/cashwalk/activity/AuthSMSActivity$13;->this$0:Lcom/cashwalk/cashwalk/activity/AuthSMSActivity;

    invoke-static {v2}, Lcom/cashwalk/cashwalk/activity/AuthSMSActivity;->access$1300(Lcom/cashwalk/cashwalk/activity/AuthSMSActivity;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 358
    iget-object v2, p0, Lcom/cashwalk/cashwalk/activity/AuthSMSActivity$13;->this$0:Lcom/cashwalk/cashwalk/activity/AuthSMSActivity;

    invoke-static {v2}, Lcom/cashwalk/cashwalk/activity/AuthSMSActivity;->access$1210(Lcom/cashwalk/cashwalk/activity/AuthSMSActivity;)I

    .line 359
    return-void
.end method
