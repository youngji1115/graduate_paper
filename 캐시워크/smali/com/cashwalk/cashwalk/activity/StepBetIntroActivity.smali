.class public Lcom/cashwalk/cashwalk/activity/StepBetIntroActivity;
.super Landroid/support/v7/app/AppCompatActivity;
.source "StepBetIntroActivity.java"


# instance fields
.field private bg:Landroid/widget/ImageView;

.field private duration:Landroid/widget/TextView;

.field private info:Landroid/widget/ImageButton;

.field private infoLayout:Landroid/widget/LinearLayout;

.field private next:Landroid/widget/Button;

.field private people:Landroid/widget/TextView;

.field private pref:Landroid/content/SharedPreferences;

.field private prize:Landroid/widget/TextView;

.field private stepbet:Lcom/cashwalk/cashwalk/util/network/model/StepBet;

.field private time:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0}, Landroid/support/v7/app/AppCompatActivity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/cashwalk/cashwalk/activity/StepBetIntroActivity;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/cashwalk/cashwalk/activity/StepBetIntroActivity;

    .prologue
    .line 35
    iget-object v0, p0, Lcom/cashwalk/cashwalk/activity/StepBetIntroActivity;->time:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$100(Lcom/cashwalk/cashwalk/activity/StepBetIntroActivity;)Lcom/cashwalk/cashwalk/util/network/model/StepBet;
    .locals 1
    .param p0, "x0"    # Lcom/cashwalk/cashwalk/activity/StepBetIntroActivity;

    .prologue
    .line 35
    iget-object v0, p0, Lcom/cashwalk/cashwalk/activity/StepBetIntroActivity;->stepbet:Lcom/cashwalk/cashwalk/util/network/model/StepBet;

    return-object v0
.end method

.method static synthetic access$200(Lcom/cashwalk/cashwalk/activity/StepBetIntroActivity;)Landroid/content/SharedPreferences;
    .locals 1
    .param p0, "x0"    # Lcom/cashwalk/cashwalk/activity/StepBetIntroActivity;

    .prologue
    .line 35
    iget-object v0, p0, Lcom/cashwalk/cashwalk/activity/StepBetIntroActivity;->pref:Landroid/content/SharedPreferences;

    return-object v0
.end method

.method static synthetic access$300(Lcom/cashwalk/cashwalk/activity/StepBetIntroActivity;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/cashwalk/cashwalk/activity/StepBetIntroActivity;

    .prologue
    .line 35
    iget-object v0, p0, Lcom/cashwalk/cashwalk/activity/StepBetIntroActivity;->people:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$400(Lcom/cashwalk/cashwalk/activity/StepBetIntroActivity;)Landroid/widget/Button;
    .locals 1
    .param p0, "x0"    # Lcom/cashwalk/cashwalk/activity/StepBetIntroActivity;

    .prologue
    .line 35
    iget-object v0, p0, Lcom/cashwalk/cashwalk/activity/StepBetIntroActivity;->next:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$500(Lcom/cashwalk/cashwalk/activity/StepBetIntroActivity;)Landroid/widget/LinearLayout;
    .locals 1
    .param p0, "x0"    # Lcom/cashwalk/cashwalk/activity/StepBetIntroActivity;

    .prologue
    .line 35
    iget-object v0, p0, Lcom/cashwalk/cashwalk/activity/StepBetIntroActivity;->infoLayout:Landroid/widget/LinearLayout;

    return-object v0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 9
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v3, 0x0

    .line 51
    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 52
    const v0, 0x7f04004e

    invoke-virtual {p0, v0}, Lcom/cashwalk/cashwalk/activity/StepBetIntroActivity;->setContentView(I)V

    .line 53
    invoke-virtual {p0}, Lcom/cashwalk/cashwalk/activity/StepBetIntroActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/high16 v1, 0x480000

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 55
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/cashwalk/cashwalk/activity/StepBetIntroActivity;->pref:Landroid/content/SharedPreferences;

    .line 57
    const v0, 0x7f100204

    invoke-virtual {p0, v0}, Lcom/cashwalk/cashwalk/activity/StepBetIntroActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/cashwalk/cashwalk/activity/StepBetIntroActivity;->bg:Landroid/widget/ImageView;

    .line 58
    const v0, 0x7f100289

    invoke-virtual {p0, v0}, Lcom/cashwalk/cashwalk/activity/StepBetIntroActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/cashwalk/cashwalk/activity/StepBetIntroActivity;->time:Landroid/widget/TextView;

    .line 59
    const v0, 0x7f10028a

    invoke-virtual {p0, v0}, Lcom/cashwalk/cashwalk/activity/StepBetIntroActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/cashwalk/cashwalk/activity/StepBetIntroActivity;->duration:Landroid/widget/TextView;

    .line 60
    const v0, 0x7f10028b

    invoke-virtual {p0, v0}, Lcom/cashwalk/cashwalk/activity/StepBetIntroActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/cashwalk/cashwalk/activity/StepBetIntroActivity;->prize:Landroid/widget/TextView;

    .line 61
    const v0, 0x7f10028c

    invoke-virtual {p0, v0}, Lcom/cashwalk/cashwalk/activity/StepBetIntroActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/cashwalk/cashwalk/activity/StepBetIntroActivity;->people:Landroid/widget/TextView;

    .line 62
    const v0, 0x7f10026e

    invoke-virtual {p0, v0}, Lcom/cashwalk/cashwalk/activity/StepBetIntroActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/cashwalk/cashwalk/activity/StepBetIntroActivity;->next:Landroid/widget/Button;

    .line 63
    const v0, 0x7f10028d

    invoke-virtual {p0, v0}, Lcom/cashwalk/cashwalk/activity/StepBetIntroActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/cashwalk/cashwalk/activity/StepBetIntroActivity;->info:Landroid/widget/ImageButton;

    .line 64
    const v0, 0x7f10028e

    invoke-virtual {p0, v0}, Lcom/cashwalk/cashwalk/activity/StepBetIntroActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/cashwalk/cashwalk/activity/StepBetIntroActivity;->infoLayout:Landroid/widget/LinearLayout;

    .line 66
    invoke-virtual {p0}, Lcom/cashwalk/cashwalk/activity/StepBetIntroActivity;->getIntent()Landroid/content/Intent;

    move-result-object v7

    .line 67
    .local v7, "it":Landroid/content/Intent;
    if-eqz v7, :cond_0

    .line 68
    const-string/jumbo v0, "stepbet"

    invoke-virtual {v7, v0}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/cashwalk/cashwalk/util/network/model/StepBet;

    iput-object v0, p0, Lcom/cashwalk/cashwalk/activity/StepBetIntroActivity;->stepbet:Lcom/cashwalk/cashwalk/util/network/model/StepBet;

    .line 71
    :cond_0
    iget-object v0, p0, Lcom/cashwalk/cashwalk/activity/StepBetIntroActivity;->stepbet:Lcom/cashwalk/cashwalk/util/network/model/StepBet;

    iget-boolean v0, v0, Lcom/cashwalk/cashwalk/util/network/model/StepBet;->participation:Z

    if-eqz v0, :cond_1

    .line 72
    iget-object v0, p0, Lcom/cashwalk/cashwalk/activity/StepBetIntroActivity;->next:Landroid/widget/Button;

    const v1, 0x7f0902a6

    invoke-virtual {p0, v1}, Lcom/cashwalk/cashwalk/activity/StepBetIntroActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 73
    iget-object v0, p0, Lcom/cashwalk/cashwalk/activity/StepBetIntroActivity;->next:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setEnabled(Z)V

    .line 76
    :cond_1
    new-instance v0, Lcom/cashwalk/cashwalk/activity/StepBetIntroActivity$1;

    iget-object v1, p0, Lcom/cashwalk/cashwalk/activity/StepBetIntroActivity;->stepbet:Lcom/cashwalk/cashwalk/util/network/model/StepBet;

    iget-object v1, v1, Lcom/cashwalk/cashwalk/util/network/model/StepBet;->startDate:Lorg/joda/time/DateTime;

    const/16 v2, 0xc

    invoke-virtual {v1, v2, v3, v3, v3}, Lorg/joda/time/DateTime;->withTime(IIII)Lorg/joda/time/DateTime;

    move-result-object v1

    invoke-virtual {v1}, Lorg/joda/time/DateTime;->getMillis()J

    move-result-wide v2

    new-instance v1, Lorg/joda/time/DateTime;

    invoke-direct {v1}, Lorg/joda/time/DateTime;-><init>()V

    invoke-virtual {v1}, Lorg/joda/time/DateTime;->getMillis()J

    move-result-wide v4

    sub-long/2addr v2, v4

    const-wide/16 v4, 0x3e8

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/cashwalk/cashwalk/activity/StepBetIntroActivity$1;-><init>(Lcom/cashwalk/cashwalk/activity/StepBetIntroActivity;JJ)V

    .line 93
    invoke-virtual {v0}, Lcom/cashwalk/cashwalk/activity/StepBetIntroActivity$1;->start()Landroid/os/CountDownTimer;

    .line 95
    invoke-static {p0}, Lcom/squareup/picasso/Picasso;->with(Landroid/content/Context;)Lcom/squareup/picasso/Picasso;

    move-result-object v0

    iget-object v1, p0, Lcom/cashwalk/cashwalk/activity/StepBetIntroActivity;->stepbet:Lcom/cashwalk/cashwalk/util/network/model/StepBet;

    iget-object v1, v1, Lcom/cashwalk/cashwalk/util/network/model/StepBet;->bgUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/squareup/picasso/Picasso;->load(Ljava/lang/String;)Lcom/squareup/picasso/RequestCreator;

    move-result-object v0

    const v1, 0x7f0202f9

    invoke-virtual {v0, v1}, Lcom/squareup/picasso/RequestCreator;->placeholder(I)Lcom/squareup/picasso/RequestCreator;

    move-result-object v0

    iget-object v1, p0, Lcom/cashwalk/cashwalk/activity/StepBetIntroActivity;->bg:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Lcom/squareup/picasso/RequestCreator;->into(Landroid/widget/ImageView;)V

    .line 96
    iget-object v0, p0, Lcom/cashwalk/cashwalk/activity/StepBetIntroActivity;->duration:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/cashwalk/cashwalk/activity/StepBetIntroActivity;->stepbet:Lcom/cashwalk/cashwalk/util/network/model/StepBet;

    iget-object v2, v2, Lcom/cashwalk/cashwalk/util/network/model/StepBet;->startDate:Lorg/joda/time/DateTime;

    const-string/jumbo v3, "yyyy.MM.dd"

    invoke-virtual {v2, v3}, Lorg/joda/time/DateTime;->toString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/cashwalk/cashwalk/activity/StepBetIntroActivity;->stepbet:Lcom/cashwalk/cashwalk/util/network/model/StepBet;

    iget-object v2, v2, Lcom/cashwalk/cashwalk/util/network/model/StepBet;->endDate:Lorg/joda/time/DateTime;

    const-string/jumbo v3, "yyyy.MM.dd"

    invoke-virtual {v2, v3}, Lorg/joda/time/DateTime;->toString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 97
    iget-object v0, p0, Lcom/cashwalk/cashwalk/activity/StepBetIntroActivity;->people:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/cashwalk/cashwalk/activity/StepBetIntroActivity;->stepbet:Lcom/cashwalk/cashwalk/util/network/model/StepBet;

    iget v2, v2, Lcom/cashwalk/cashwalk/util/network/model/StepBet;->participants:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const v2, 0x7f090231

    invoke-virtual {p0, v2}, Lcom/cashwalk/cashwalk/activity/StepBetIntroActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 98
    new-instance v6, Ljava/text/DecimalFormat;

    const-string v0, "###,###"

    invoke-direct {v6, v0}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    .line 99
    .local v6, "format":Ljava/text/DecimalFormat;
    iget-object v0, p0, Lcom/cashwalk/cashwalk/activity/StepBetIntroActivity;->stepbet:Lcom/cashwalk/cashwalk/util/network/model/StepBet;

    iget v0, v0, Lcom/cashwalk/cashwalk/util/network/model/StepBet;->prize:I

    int-to-long v0, v0

    invoke-virtual {v6, v0, v1}, Ljava/text/DecimalFormat;->format(J)Ljava/lang/String;

    move-result-object v8

    .line 100
    .local v8, "prizeStr":Ljava/lang/String;
    iget-object v0, p0, Lcom/cashwalk/cashwalk/activity/StepBetIntroActivity;->prize:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const v2, 0x7f09030c

    invoke-virtual {p0, v2}, Lcom/cashwalk/cashwalk/activity/StepBetIntroActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 102
    iget-object v0, p0, Lcom/cashwalk/cashwalk/activity/StepBetIntroActivity;->next:Landroid/widget/Button;

    new-instance v1, Lcom/cashwalk/cashwalk/activity/StepBetIntroActivity$2;

    invoke-direct {v1, p0}, Lcom/cashwalk/cashwalk/activity/StepBetIntroActivity$2;-><init>(Lcom/cashwalk/cashwalk/activity/StepBetIntroActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 134
    iget-object v0, p0, Lcom/cashwalk/cashwalk/activity/StepBetIntroActivity;->info:Landroid/widget/ImageButton;

    new-instance v1, Lcom/cashwalk/cashwalk/activity/StepBetIntroActivity$3;

    invoke-direct {v1, p0}, Lcom/cashwalk/cashwalk/activity/StepBetIntroActivity$3;-><init>(Lcom/cashwalk/cashwalk/activity/StepBetIntroActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 144
    return-void
.end method
