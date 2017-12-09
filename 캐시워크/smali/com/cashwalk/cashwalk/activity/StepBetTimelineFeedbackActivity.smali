.class public Lcom/cashwalk/cashwalk/activity/StepBetTimelineFeedbackActivity;
.super Landroid/support/v7/app/AppCompatActivity;
.source "StepBetTimelineFeedbackActivity.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private item:Lcom/cashwalk/cashwalk/util/network/model/TimelineItem;

.field private radio_1:Landroid/widget/RadioButton;

.field private radio_2:Landroid/widget/RadioButton;

.field private radio_3:Landroid/widget/RadioButton;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Landroid/support/v7/app/AppCompatActivity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/cashwalk/cashwalk/activity/StepBetTimelineFeedbackActivity;)Landroid/widget/RadioButton;
    .locals 1
    .param p0, "x0"    # Lcom/cashwalk/cashwalk/activity/StepBetTimelineFeedbackActivity;

    .prologue
    .line 16
    iget-object v0, p0, Lcom/cashwalk/cashwalk/activity/StepBetTimelineFeedbackActivity;->radio_2:Landroid/widget/RadioButton;

    return-object v0
.end method

.method static synthetic access$100(Lcom/cashwalk/cashwalk/activity/StepBetTimelineFeedbackActivity;)Landroid/widget/RadioButton;
    .locals 1
    .param p0, "x0"    # Lcom/cashwalk/cashwalk/activity/StepBetTimelineFeedbackActivity;

    .prologue
    .line 16
    iget-object v0, p0, Lcom/cashwalk/cashwalk/activity/StepBetTimelineFeedbackActivity;->radio_3:Landroid/widget/RadioButton;

    return-object v0
.end method

.method static synthetic access$200(Lcom/cashwalk/cashwalk/activity/StepBetTimelineFeedbackActivity;)Landroid/widget/RadioButton;
    .locals 1
    .param p0, "x0"    # Lcom/cashwalk/cashwalk/activity/StepBetTimelineFeedbackActivity;

    .prologue
    .line 16
    iget-object v0, p0, Lcom/cashwalk/cashwalk/activity/StepBetTimelineFeedbackActivity;->radio_1:Landroid/widget/RadioButton;

    return-object v0
.end method

.method private init()V
    .locals 2

    .prologue
    .line 41
    const v0, 0x7f1002a8

    invoke-virtual {p0, v0}, Lcom/cashwalk/cashwalk/activity/StepBetTimelineFeedbackActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    iput-object v0, p0, Lcom/cashwalk/cashwalk/activity/StepBetTimelineFeedbackActivity;->radio_1:Landroid/widget/RadioButton;

    .line 42
    const v0, 0x7f1002a9

    invoke-virtual {p0, v0}, Lcom/cashwalk/cashwalk/activity/StepBetTimelineFeedbackActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    iput-object v0, p0, Lcom/cashwalk/cashwalk/activity/StepBetTimelineFeedbackActivity;->radio_2:Landroid/widget/RadioButton;

    .line 43
    const v0, 0x7f1002aa

    invoke-virtual {p0, v0}, Lcom/cashwalk/cashwalk/activity/StepBetTimelineFeedbackActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    iput-object v0, p0, Lcom/cashwalk/cashwalk/activity/StepBetTimelineFeedbackActivity;->radio_3:Landroid/widget/RadioButton;

    .line 45
    iget-object v0, p0, Lcom/cashwalk/cashwalk/activity/StepBetTimelineFeedbackActivity;->radio_1:Landroid/widget/RadioButton;

    new-instance v1, Lcom/cashwalk/cashwalk/activity/StepBetTimelineFeedbackActivity$1;

    invoke-direct {v1, p0}, Lcom/cashwalk/cashwalk/activity/StepBetTimelineFeedbackActivity$1;-><init>(Lcom/cashwalk/cashwalk/activity/StepBetTimelineFeedbackActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 57
    iget-object v0, p0, Lcom/cashwalk/cashwalk/activity/StepBetTimelineFeedbackActivity;->radio_2:Landroid/widget/RadioButton;

    new-instance v1, Lcom/cashwalk/cashwalk/activity/StepBetTimelineFeedbackActivity$2;

    invoke-direct {v1, p0}, Lcom/cashwalk/cashwalk/activity/StepBetTimelineFeedbackActivity$2;-><init>(Lcom/cashwalk/cashwalk/activity/StepBetTimelineFeedbackActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 67
    iget-object v0, p0, Lcom/cashwalk/cashwalk/activity/StepBetTimelineFeedbackActivity;->radio_3:Landroid/widget/RadioButton;

    new-instance v1, Lcom/cashwalk/cashwalk/activity/StepBetTimelineFeedbackActivity$3;

    invoke-direct {v1, p0}, Lcom/cashwalk/cashwalk/activity/StepBetTimelineFeedbackActivity$3;-><init>(Lcom/cashwalk/cashwalk/activity/StepBetTimelineFeedbackActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 76
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 26
    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 27
    const v1, 0x7f040050

    invoke-virtual {p0, v1}, Lcom/cashwalk/cashwalk/activity/StepBetTimelineFeedbackActivity;->setContentView(I)V

    .line 29
    invoke-virtual {p0}, Lcom/cashwalk/cashwalk/activity/StepBetTimelineFeedbackActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 30
    .local v0, "it":Landroid/content/Intent;
    if-nez v0, :cond_0

    .line 31
    invoke-virtual {p0}, Lcom/cashwalk/cashwalk/activity/StepBetTimelineFeedbackActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090143

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {p0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 32
    invoke-virtual {p0}, Lcom/cashwalk/cashwalk/activity/StepBetTimelineFeedbackActivity;->finish()V

    .line 38
    :goto_0
    return-void

    .line 34
    :cond_0
    invoke-direct {p0}, Lcom/cashwalk/cashwalk/activity/StepBetTimelineFeedbackActivity;->init()V

    .line 35
    const-string v1, "item"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v1

    check-cast v1, Lcom/cashwalk/cashwalk/util/network/model/TimelineItem;

    iput-object v1, p0, Lcom/cashwalk/cashwalk/activity/StepBetTimelineFeedbackActivity;->item:Lcom/cashwalk/cashwalk/util/network/model/TimelineItem;

    goto :goto_0
.end method
