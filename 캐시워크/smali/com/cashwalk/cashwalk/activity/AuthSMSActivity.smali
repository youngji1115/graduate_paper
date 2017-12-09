.class public Lcom/cashwalk/cashwalk/activity/AuthSMSActivity;
.super Lcom/cashwalk/cashwalk/BaseActivity;
.source "AuthSMSActivity.java"


# static fields
.field private static final COUNT_DOWN_INTERVAL:I = 0x3e8

.field private static final MILLISINFUTURE:I = 0xea60


# instance fields
.field private SMS_RECEIVE_ACTION:Ljava/lang/String;

.field private countDownTimer:Landroid/os/CountDownTimer;

.field private et_input_auth_number:Landroid/widget/EditText;

.field private et_input_phone_number:Landroid/widget/EditText;

.field private isShop:Z

.field private iv_clear_step1_phone_number:Landroid/widget/ImageView;

.field private iv_clear_step2_auth_number:Landroid/widget/ImageView;

.field private mAuthNumber:Ljava/lang/String;

.field private mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mPhoneNumber:Ljava/lang/String;

.field private pref:Landroid/content/SharedPreferences;

.field private progress:Landroid/widget/ProgressBar;

.field private rl_auth_step_1:Landroid/widget/RelativeLayout;

.field private rl_auth_step_2:Landroid/widget/RelativeLayout;

.field private rl_auth_step_3:Landroid/widget/RelativeLayout;

.field private rl_check_phone_number_popup:Landroid/widget/RelativeLayout;

.field private rl_done_btn:Landroid/widget/RelativeLayout;

.field private rl_remind_popup_cancel:Landroid/widget/RelativeLayout;

.field private rl_remind_popup_ok:Landroid/widget/RelativeLayout;

.field private rl_step1_next_btn:Landroid/widget/RelativeLayout;

.field private rl_step2_next_btn:Landroid/widget/RelativeLayout;

.field private shopItemId:Ljava/lang/String;

.field private smsCount:I

.field private tv_auth_number_count:Landroid/widget/TextView;

.field private tv_edit_phone_number:Landroid/widget/TextView;

.field private tv_remind_phone_number:Landroid/widget/TextView;

.field private tv_step1_info_msg:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 47
    invoke-direct {p0}, Lcom/cashwalk/cashwalk/BaseActivity;-><init>()V

    .line 51
    const-string v0, "android.provider.Telephony.SMS_RECEIVED"

    iput-object v0, p0, Lcom/cashwalk/cashwalk/activity/AuthSMSActivity;->SMS_RECEIVE_ACTION:Ljava/lang/String;

    .line 52
    iput-object v1, p0, Lcom/cashwalk/cashwalk/activity/AuthSMSActivity;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 56
    const/16 v0, 0x3c

    iput v0, p0, Lcom/cashwalk/cashwalk/activity/AuthSMSActivity;->smsCount:I

    .line 78
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/cashwalk/cashwalk/activity/AuthSMSActivity;->isShop:Z

    .line 79
    iput-object v1, p0, Lcom/cashwalk/cashwalk/activity/AuthSMSActivity;->shopItemId:Ljava/lang/String;

    .line 80
    iput-object v1, p0, Lcom/cashwalk/cashwalk/activity/AuthSMSActivity;->mAuthNumber:Ljava/lang/String;

    .line 81
    iput-object v1, p0, Lcom/cashwalk/cashwalk/activity/AuthSMSActivity;->mPhoneNumber:Ljava/lang/String;

    return-void
.end method

.method private abstrackNumber(Ljava/lang/String;)V
    .locals 5
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 443
    const-string v3, "([^\\d])"

    invoke-static {v3}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v2

    .line 444
    .local v2, "p":Ljava/util/regex/Pattern;
    invoke-virtual {v2, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    .line 445
    .local v1, "matcher":Ljava/util/regex/Matcher;
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 447
    .local v0, "destStringBuffer":Ljava/lang/StringBuffer;
    :goto_0
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->find()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 448
    const-string v3, ""

    invoke-virtual {v1, v0, v3}, Ljava/util/regex/Matcher;->appendReplacement(Ljava/lang/StringBuffer;Ljava/lang/String;)Ljava/util/regex/Matcher;

    goto :goto_0

    .line 450
    :cond_0
    invoke-virtual {v1, v0}, Ljava/util/regex/Matcher;->appendTail(Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    .line 451
    iget-object v3, p0, Lcom/cashwalk/cashwalk/activity/AuthSMSActivity;->et_input_auth_number:Landroid/widget/EditText;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 452
    return-void
.end method

.method static synthetic access$000(Lcom/cashwalk/cashwalk/activity/AuthSMSActivity;)Landroid/widget/RelativeLayout;
    .locals 1
    .param p0, "x0"    # Lcom/cashwalk/cashwalk/activity/AuthSMSActivity;

    .prologue
    .line 47
    iget-object v0, p0, Lcom/cashwalk/cashwalk/activity/AuthSMSActivity;->rl_check_phone_number_popup:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method static synthetic access$100(Lcom/cashwalk/cashwalk/activity/AuthSMSActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/cashwalk/cashwalk/activity/AuthSMSActivity;

    .prologue
    .line 47
    invoke-direct {p0}, Lcom/cashwalk/cashwalk/activity/AuthSMSActivity;->sendSMS()V

    return-void
.end method

.method static synthetic access$1000(Lcom/cashwalk/cashwalk/activity/AuthSMSActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/cashwalk/cashwalk/activity/AuthSMSActivity;

    .prologue
    .line 47
    invoke-direct {p0}, Lcom/cashwalk/cashwalk/activity/AuthSMSActivity;->setStep2()V

    return-void
.end method

.method static synthetic access$1100(Lcom/cashwalk/cashwalk/activity/AuthSMSActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/cashwalk/cashwalk/activity/AuthSMSActivity;

    .prologue
    .line 47
    invoke-direct {p0}, Lcom/cashwalk/cashwalk/activity/AuthSMSActivity;->setStep3()V

    return-void
.end method

.method static synthetic access$1200(Lcom/cashwalk/cashwalk/activity/AuthSMSActivity;)I
    .locals 1
    .param p0, "x0"    # Lcom/cashwalk/cashwalk/activity/AuthSMSActivity;

    .prologue
    .line 47
    iget v0, p0, Lcom/cashwalk/cashwalk/activity/AuthSMSActivity;->smsCount:I

    return v0
.end method

.method static synthetic access$1210(Lcom/cashwalk/cashwalk/activity/AuthSMSActivity;)I
    .locals 2
    .param p0, "x0"    # Lcom/cashwalk/cashwalk/activity/AuthSMSActivity;

    .prologue
    .line 47
    iget v0, p0, Lcom/cashwalk/cashwalk/activity/AuthSMSActivity;->smsCount:I

    add-int/lit8 v1, v0, -0x1

    iput v1, p0, Lcom/cashwalk/cashwalk/activity/AuthSMSActivity;->smsCount:I

    return v0
.end method

.method static synthetic access$1300(Lcom/cashwalk/cashwalk/activity/AuthSMSActivity;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/cashwalk/cashwalk/activity/AuthSMSActivity;

    .prologue
    .line 47
    iget-object v0, p0, Lcom/cashwalk/cashwalk/activity/AuthSMSActivity;->tv_auth_number_count:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/cashwalk/cashwalk/activity/AuthSMSActivity;)Landroid/widget/RelativeLayout;
    .locals 1
    .param p0, "x0"    # Lcom/cashwalk/cashwalk/activity/AuthSMSActivity;

    .prologue
    .line 47
    iget-object v0, p0, Lcom/cashwalk/cashwalk/activity/AuthSMSActivity;->rl_done_btn:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/cashwalk/cashwalk/activity/AuthSMSActivity;)Landroid/content/SharedPreferences;
    .locals 1
    .param p0, "x0"    # Lcom/cashwalk/cashwalk/activity/AuthSMSActivity;

    .prologue
    .line 47
    iget-object v0, p0, Lcom/cashwalk/cashwalk/activity/AuthSMSActivity;->pref:Landroid/content/SharedPreferences;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/cashwalk/cashwalk/activity/AuthSMSActivity;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/cashwalk/cashwalk/activity/AuthSMSActivity;

    .prologue
    .line 47
    iget-object v0, p0, Lcom/cashwalk/cashwalk/activity/AuthSMSActivity;->SMS_RECEIVE_ACTION:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/cashwalk/cashwalk/activity/AuthSMSActivity;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/cashwalk/cashwalk/activity/AuthSMSActivity;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 47
    invoke-direct {p0, p1}, Lcom/cashwalk/cashwalk/activity/AuthSMSActivity;->abstrackNumber(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$200(Lcom/cashwalk/cashwalk/activity/AuthSMSActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/cashwalk/cashwalk/activity/AuthSMSActivity;

    .prologue
    .line 47
    invoke-direct {p0}, Lcom/cashwalk/cashwalk/activity/AuthSMSActivity;->checkPhoneNumber()V

    return-void
.end method

.method static synthetic access$300(Lcom/cashwalk/cashwalk/activity/AuthSMSActivity;)Landroid/widget/EditText;
    .locals 1
    .param p0, "x0"    # Lcom/cashwalk/cashwalk/activity/AuthSMSActivity;

    .prologue
    .line 47
    iget-object v0, p0, Lcom/cashwalk/cashwalk/activity/AuthSMSActivity;->et_input_auth_number:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$400(Lcom/cashwalk/cashwalk/activity/AuthSMSActivity;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/cashwalk/cashwalk/activity/AuthSMSActivity;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 47
    invoke-direct {p0, p1}, Lcom/cashwalk/cashwalk/activity/AuthSMSActivity;->checkAuthNumber(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$500(Lcom/cashwalk/cashwalk/activity/AuthSMSActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/cashwalk/cashwalk/activity/AuthSMSActivity;

    .prologue
    .line 47
    invoke-direct {p0}, Lcom/cashwalk/cashwalk/activity/AuthSMSActivity;->setStep1()V

    return-void
.end method

.method static synthetic access$600(Lcom/cashwalk/cashwalk/activity/AuthSMSActivity;)Landroid/widget/EditText;
    .locals 1
    .param p0, "x0"    # Lcom/cashwalk/cashwalk/activity/AuthSMSActivity;

    .prologue
    .line 47
    iget-object v0, p0, Lcom/cashwalk/cashwalk/activity/AuthSMSActivity;->et_input_phone_number:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$700(Lcom/cashwalk/cashwalk/activity/AuthSMSActivity;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lcom/cashwalk/cashwalk/activity/AuthSMSActivity;

    .prologue
    .line 47
    iget-object v0, p0, Lcom/cashwalk/cashwalk/activity/AuthSMSActivity;->iv_clear_step1_phone_number:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$800(Lcom/cashwalk/cashwalk/activity/AuthSMSActivity;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lcom/cashwalk/cashwalk/activity/AuthSMSActivity;

    .prologue
    .line 47
    iget-object v0, p0, Lcom/cashwalk/cashwalk/activity/AuthSMSActivity;->iv_clear_step2_auth_number:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$900(Lcom/cashwalk/cashwalk/activity/AuthSMSActivity;)Landroid/widget/ProgressBar;
    .locals 1
    .param p0, "x0"    # Lcom/cashwalk/cashwalk/activity/AuthSMSActivity;

    .prologue
    .line 47
    iget-object v0, p0, Lcom/cashwalk/cashwalk/activity/AuthSMSActivity;->progress:Landroid/widget/ProgressBar;

    return-object v0
.end method

.method private checkAuthNumber(Ljava/lang/String;)V
    .locals 3
    .param p1, "number"    # Ljava/lang/String;

    .prologue
    .line 291
    invoke-static {p0}, Lcom/cashwalk/cashwalk/util/Utils;->hideSoftKeyboard(Landroid/app/Activity;)V

    .line 292
    iget-object v1, p0, Lcom/cashwalk/cashwalk/activity/AuthSMSActivity;->progress:Landroid/widget/ProgressBar;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 293
    new-instance v1, Lcom/cashwalk/cashwalk/activity/AuthSMSActivity$12;

    invoke-direct {v1, p0}, Lcom/cashwalk/cashwalk/activity/AuthSMSActivity$12;-><init>(Lcom/cashwalk/cashwalk/activity/AuthSMSActivity;)V

    invoke-static {p1, v1}, Lcom/cashwalk/cashwalk/util/network/RestClient;->checkSmsAuthCode(Ljava/lang/String;Lcom/cashwalk/cashwalk/util/network/ResponseHandler;)Lcom/android/volley/toolbox/JsonObjectRequest;

    move-result-object v0

    .line 318
    .local v0, "request":Lcom/android/volley/toolbox/JsonObjectRequest;
    invoke-virtual {p0}, Lcom/cashwalk/cashwalk/activity/AuthSMSActivity;->getApplication()Landroid/app/Application;

    move-result-object v1

    check-cast v1, Lcom/cashwalk/cashwalk/CashWalkApp;

    invoke-virtual {v1}, Lcom/cashwalk/cashwalk/CashWalkApp;->requestQueue()Lcom/android/volley/RequestQueue;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/volley/RequestQueue;->add(Lcom/android/volley/Request;)Lcom/android/volley/Request;

    .line 319
    return-void
.end method

.method private checkPhoneNumber()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 246
    iget-object v0, p0, Lcom/cashwalk/cashwalk/activity/AuthSMSActivity;->et_input_phone_number:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/cashwalk/cashwalk/util/Utils;->isValidCellPhoneNumber(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 247
    const-string/jumbo v0, "\ud734\ub300\ud3f0\ubc88\ud638\ub97c \uc815\ud655\ud788 \uc785\ub825\ud574\uc8fc\uc138\uc694."

    invoke-static {p0, v0, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 255
    :goto_0
    return-void

    .line 251
    :cond_0
    invoke-static {p0}, Lcom/cashwalk/cashwalk/util/Utils;->hideSoftKeyboard(Landroid/app/Activity;)V

    .line 252
    iget-object v0, p0, Lcom/cashwalk/cashwalk/activity/AuthSMSActivity;->tv_remind_phone_number:Landroid/widget/TextView;

    const v1, 0x7f0900b1

    invoke-virtual {p0, v1}, Lcom/cashwalk/cashwalk/activity/AuthSMSActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "+82 "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/cashwalk/cashwalk/activity/AuthSMSActivity;->et_input_phone_number:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 253
    iget-object v0, p0, Lcom/cashwalk/cashwalk/activity/AuthSMSActivity;->rl_check_phone_number_popup:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v5}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto :goto_0
.end method

.method private initLayout()V
    .locals 3

    .prologue
    const v1, 0x7f1000d4

    .line 115
    const v0, 0x7f1000bc

    invoke-virtual {p0, v0}, Lcom/cashwalk/cashwalk/activity/AuthSMSActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/cashwalk/cashwalk/activity/AuthSMSActivity;->rl_auth_step_1:Landroid/widget/RelativeLayout;

    .line 116
    const v0, 0x7f1000c6

    invoke-virtual {p0, v0}, Lcom/cashwalk/cashwalk/activity/AuthSMSActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/cashwalk/cashwalk/activity/AuthSMSActivity;->rl_auth_step_2:Landroid/widget/RelativeLayout;

    .line 117
    const v0, 0x7f1000ce

    invoke-virtual {p0, v0}, Lcom/cashwalk/cashwalk/activity/AuthSMSActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/cashwalk/cashwalk/activity/AuthSMSActivity;->rl_auth_step_3:Landroid/widget/RelativeLayout;

    .line 118
    const v0, 0x7f1000ca

    invoke-virtual {p0, v0}, Lcom/cashwalk/cashwalk/activity/AuthSMSActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/cashwalk/cashwalk/activity/AuthSMSActivity;->et_input_auth_number:Landroid/widget/EditText;

    .line 119
    const v0, 0x7f1000c3

    invoke-virtual {p0, v0}, Lcom/cashwalk/cashwalk/activity/AuthSMSActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/cashwalk/cashwalk/activity/AuthSMSActivity;->et_input_phone_number:Landroid/widget/EditText;

    .line 120
    const v0, 0x7f1000d1

    invoke-virtual {p0, v0}, Lcom/cashwalk/cashwalk/activity/AuthSMSActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/cashwalk/cashwalk/activity/AuthSMSActivity;->rl_check_phone_number_popup:Landroid/widget/RelativeLayout;

    .line 121
    invoke-virtual {p0, v1}, Lcom/cashwalk/cashwalk/activity/AuthSMSActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/cashwalk/cashwalk/activity/AuthSMSActivity;->rl_remind_popup_cancel:Landroid/widget/RelativeLayout;

    .line 122
    const v0, 0x7f1000c2

    invoke-virtual {p0, v0}, Lcom/cashwalk/cashwalk/activity/AuthSMSActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/cashwalk/cashwalk/activity/AuthSMSActivity;->rl_step1_next_btn:Landroid/widget/RelativeLayout;

    .line 123
    invoke-virtual {p0, v1}, Lcom/cashwalk/cashwalk/activity/AuthSMSActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/cashwalk/cashwalk/activity/AuthSMSActivity;->rl_remind_popup_cancel:Landroid/widget/RelativeLayout;

    .line 124
    const v0, 0x7f1000d5

    invoke-virtual {p0, v0}, Lcom/cashwalk/cashwalk/activity/AuthSMSActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/cashwalk/cashwalk/activity/AuthSMSActivity;->rl_remind_popup_ok:Landroid/widget/RelativeLayout;

    .line 125
    const v0, 0x7f1000cc

    invoke-virtual {p0, v0}, Lcom/cashwalk/cashwalk/activity/AuthSMSActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/cashwalk/cashwalk/activity/AuthSMSActivity;->tv_auth_number_count:Landroid/widget/TextView;

    .line 126
    const v0, 0x7f1000cf

    invoke-virtual {p0, v0}, Lcom/cashwalk/cashwalk/activity/AuthSMSActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/cashwalk/cashwalk/activity/AuthSMSActivity;->rl_done_btn:Landroid/widget/RelativeLayout;

    .line 127
    const v0, 0x7f1000c9

    invoke-virtual {p0, v0}, Lcom/cashwalk/cashwalk/activity/AuthSMSActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/cashwalk/cashwalk/activity/AuthSMSActivity;->rl_step2_next_btn:Landroid/widget/RelativeLayout;

    .line 128
    const v0, 0x7f1000cd

    invoke-virtual {p0, v0}, Lcom/cashwalk/cashwalk/activity/AuthSMSActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/cashwalk/cashwalk/activity/AuthSMSActivity;->tv_edit_phone_number:Landroid/widget/TextView;

    .line 129
    const v0, 0x7f1000d2

    invoke-virtual {p0, v0}, Lcom/cashwalk/cashwalk/activity/AuthSMSActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/cashwalk/cashwalk/activity/AuthSMSActivity;->tv_remind_phone_number:Landroid/widget/TextView;

    .line 130
    const v0, 0x7f1000c5

    invoke-virtual {p0, v0}, Lcom/cashwalk/cashwalk/activity/AuthSMSActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/cashwalk/cashwalk/activity/AuthSMSActivity;->tv_step1_info_msg:Landroid/widget/TextView;

    .line 131
    const v0, 0x7f1000c4

    invoke-virtual {p0, v0}, Lcom/cashwalk/cashwalk/activity/AuthSMSActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/cashwalk/cashwalk/activity/AuthSMSActivity;->iv_clear_step1_phone_number:Landroid/widget/ImageView;

    .line 132
    const v0, 0x7f1000cb

    invoke-virtual {p0, v0}, Lcom/cashwalk/cashwalk/activity/AuthSMSActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/cashwalk/cashwalk/activity/AuthSMSActivity;->iv_clear_step2_auth_number:Landroid/widget/ImageView;

    .line 133
    const v0, 0x7f1000d6

    invoke-virtual {p0, v0}, Lcom/cashwalk/cashwalk/activity/AuthSMSActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/cashwalk/cashwalk/activity/AuthSMSActivity;->progress:Landroid/widget/ProgressBar;

    .line 134
    iget-object v0, p0, Lcom/cashwalk/cashwalk/activity/AuthSMSActivity;->tv_edit_phone_number:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "<u>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const v2, 0x7f0900ad

    invoke-virtual {p0, v2}, Lcom/cashwalk/cashwalk/activity/AuthSMSActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "</u>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 136
    iget-boolean v0, p0, Lcom/cashwalk/cashwalk/activity/AuthSMSActivity;->isShop:Z

    if-eqz v0, :cond_0

    .line 137
    iget-object v0, p0, Lcom/cashwalk/cashwalk/activity/AuthSMSActivity;->tv_step1_info_msg:Landroid/widget/TextView;

    const v1, 0x7f0900af

    invoke-virtual {p0, v1}, Lcom/cashwalk/cashwalk/activity/AuthSMSActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 142
    :goto_0
    invoke-direct {p0}, Lcom/cashwalk/cashwalk/activity/AuthSMSActivity;->setListener()V

    .line 143
    return-void

    .line 139
    :cond_0
    iget-object v0, p0, Lcom/cashwalk/cashwalk/activity/AuthSMSActivity;->tv_step1_info_msg:Landroid/widget/TextView;

    const v1, 0x7f0900ae

    invoke-virtual {p0, v1}, Lcom/cashwalk/cashwalk/activity/AuthSMSActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private sendSMS()V
    .locals 3

    .prologue
    .line 260
    iget-object v1, p0, Lcom/cashwalk/cashwalk/activity/AuthSMSActivity;->progress:Landroid/widget/ProgressBar;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 261
    iget-object v1, p0, Lcom/cashwalk/cashwalk/activity/AuthSMSActivity;->et_input_phone_number:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/cashwalk/cashwalk/activity/AuthSMSActivity$11;

    invoke-direct {v2, p0}, Lcom/cashwalk/cashwalk/activity/AuthSMSActivity$11;-><init>(Lcom/cashwalk/cashwalk/activity/AuthSMSActivity;)V

    invoke-static {v1, v2}, Lcom/cashwalk/cashwalk/util/network/RestClient;->sendSMS(Ljava/lang/String;Lcom/cashwalk/cashwalk/util/network/ResponseHandler;)Lcom/android/volley/toolbox/JsonObjectRequest;

    move-result-object v0

    .line 286
    .local v0, "request":Lcom/android/volley/toolbox/JsonObjectRequest;
    invoke-virtual {p0}, Lcom/cashwalk/cashwalk/activity/AuthSMSActivity;->getApplication()Landroid/app/Application;

    move-result-object v1

    check-cast v1, Lcom/cashwalk/cashwalk/CashWalkApp;

    invoke-virtual {v1}, Lcom/cashwalk/cashwalk/CashWalkApp;->requestQueue()Lcom/android/volley/RequestQueue;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/volley/RequestQueue;->add(Lcom/android/volley/Request;)Lcom/android/volley/Request;

    .line 287
    return-void
.end method

.method private setListener()V
    .locals 2

    .prologue
    .line 147
    iget-object v0, p0, Lcom/cashwalk/cashwalk/activity/AuthSMSActivity;->rl_remind_popup_cancel:Landroid/widget/RelativeLayout;

    new-instance v1, Lcom/cashwalk/cashwalk/activity/AuthSMSActivity$1;

    invoke-direct {v1, p0}, Lcom/cashwalk/cashwalk/activity/AuthSMSActivity$1;-><init>(Lcom/cashwalk/cashwalk/activity/AuthSMSActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 153
    iget-object v0, p0, Lcom/cashwalk/cashwalk/activity/AuthSMSActivity;->rl_remind_popup_ok:Landroid/widget/RelativeLayout;

    new-instance v1, Lcom/cashwalk/cashwalk/activity/AuthSMSActivity$2;

    invoke-direct {v1, p0}, Lcom/cashwalk/cashwalk/activity/AuthSMSActivity$2;-><init>(Lcom/cashwalk/cashwalk/activity/AuthSMSActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 160
    iget-object v0, p0, Lcom/cashwalk/cashwalk/activity/AuthSMSActivity;->rl_step1_next_btn:Landroid/widget/RelativeLayout;

    new-instance v1, Lcom/cashwalk/cashwalk/activity/AuthSMSActivity$3;

    invoke-direct {v1, p0}, Lcom/cashwalk/cashwalk/activity/AuthSMSActivity$3;-><init>(Lcom/cashwalk/cashwalk/activity/AuthSMSActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 167
    iget-object v0, p0, Lcom/cashwalk/cashwalk/activity/AuthSMSActivity;->rl_done_btn:Landroid/widget/RelativeLayout;

    new-instance v1, Lcom/cashwalk/cashwalk/activity/AuthSMSActivity$4;

    invoke-direct {v1, p0}, Lcom/cashwalk/cashwalk/activity/AuthSMSActivity$4;-><init>(Lcom/cashwalk/cashwalk/activity/AuthSMSActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 173
    iget-object v0, p0, Lcom/cashwalk/cashwalk/activity/AuthSMSActivity;->rl_step2_next_btn:Landroid/widget/RelativeLayout;

    new-instance v1, Lcom/cashwalk/cashwalk/activity/AuthSMSActivity$5;

    invoke-direct {v1, p0}, Lcom/cashwalk/cashwalk/activity/AuthSMSActivity$5;-><init>(Lcom/cashwalk/cashwalk/activity/AuthSMSActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 179
    iget-object v0, p0, Lcom/cashwalk/cashwalk/activity/AuthSMSActivity;->tv_edit_phone_number:Landroid/widget/TextView;

    new-instance v1, Lcom/cashwalk/cashwalk/activity/AuthSMSActivity$6;

    invoke-direct {v1, p0}, Lcom/cashwalk/cashwalk/activity/AuthSMSActivity$6;-><init>(Lcom/cashwalk/cashwalk/activity/AuthSMSActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 185
    iget-object v0, p0, Lcom/cashwalk/cashwalk/activity/AuthSMSActivity;->iv_clear_step1_phone_number:Landroid/widget/ImageView;

    new-instance v1, Lcom/cashwalk/cashwalk/activity/AuthSMSActivity$7;

    invoke-direct {v1, p0}, Lcom/cashwalk/cashwalk/activity/AuthSMSActivity$7;-><init>(Lcom/cashwalk/cashwalk/activity/AuthSMSActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 191
    iget-object v0, p0, Lcom/cashwalk/cashwalk/activity/AuthSMSActivity;->iv_clear_step2_auth_number:Landroid/widget/ImageView;

    new-instance v1, Lcom/cashwalk/cashwalk/activity/AuthSMSActivity$8;

    invoke-direct {v1, p0}, Lcom/cashwalk/cashwalk/activity/AuthSMSActivity$8;-><init>(Lcom/cashwalk/cashwalk/activity/AuthSMSActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 198
    iget-object v0, p0, Lcom/cashwalk/cashwalk/activity/AuthSMSActivity;->et_input_phone_number:Landroid/widget/EditText;

    new-instance v1, Lcom/cashwalk/cashwalk/activity/AuthSMSActivity$9;

    invoke-direct {v1, p0}, Lcom/cashwalk/cashwalk/activity/AuthSMSActivity$9;-><init>(Lcom/cashwalk/cashwalk/activity/AuthSMSActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 219
    iget-object v0, p0, Lcom/cashwalk/cashwalk/activity/AuthSMSActivity;->et_input_auth_number:Landroid/widget/EditText;

    new-instance v1, Lcom/cashwalk/cashwalk/activity/AuthSMSActivity$10;

    invoke-direct {v1, p0}, Lcom/cashwalk/cashwalk/activity/AuthSMSActivity$10;-><init>(Lcom/cashwalk/cashwalk/activity/AuthSMSActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 240
    return-void
.end method

.method private setSmsReceive()V
    .locals 2

    .prologue
    .line 411
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 412
    .local v0, "filter":Landroid/content/IntentFilter;
    const/16 v1, 0x3e7

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->setPriority(I)V

    .line 413
    iget-object v1, p0, Lcom/cashwalk/cashwalk/activity/AuthSMSActivity;->SMS_RECEIVE_ACTION:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 415
    new-instance v1, Lcom/cashwalk/cashwalk/activity/AuthSMSActivity$15;

    invoke-direct {v1, p0}, Lcom/cashwalk/cashwalk/activity/AuthSMSActivity$15;-><init>(Lcom/cashwalk/cashwalk/activity/AuthSMSActivity;)V

    iput-object v1, p0, Lcom/cashwalk/cashwalk/activity/AuthSMSActivity;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 439
    iget-object v1, p0, Lcom/cashwalk/cashwalk/activity/AuthSMSActivity;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/cashwalk/cashwalk/activity/AuthSMSActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 440
    return-void
.end method

.method private setStep1()V
    .locals 4

    .prologue
    const/16 v3, 0x8

    .line 322
    iget-object v1, p0, Lcom/cashwalk/cashwalk/activity/AuthSMSActivity;->rl_auth_step_1:Landroid/widget/RelativeLayout;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 323
    iget-object v1, p0, Lcom/cashwalk/cashwalk/activity/AuthSMSActivity;->rl_auth_step_2:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 324
    iget-object v1, p0, Lcom/cashwalk/cashwalk/activity/AuthSMSActivity;->rl_auth_step_3:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 326
    iget-object v1, p0, Lcom/cashwalk/cashwalk/activity/AuthSMSActivity;->countDownTimer:Landroid/os/CountDownTimer;

    if-eqz v1, :cond_0

    .line 328
    :try_start_0
    iget-object v1, p0, Lcom/cashwalk/cashwalk/activity/AuthSMSActivity;->countDownTimer:Landroid/os/CountDownTimer;

    invoke-virtual {v1}, Landroid/os/CountDownTimer;->cancel()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 332
    :goto_0
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/cashwalk/cashwalk/activity/AuthSMSActivity;->countDownTimer:Landroid/os/CountDownTimer;

    .line 334
    :cond_0
    return-void

    .line 329
    :catch_0
    move-exception v0

    .line 330
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private setStep2()V
    .locals 6

    .prologue
    const/4 v2, 0x0

    const/16 v1, 0x8

    .line 338
    iget-object v0, p0, Lcom/cashwalk/cashwalk/activity/AuthSMSActivity;->rl_check_phone_number_popup:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 339
    iget-object v0, p0, Lcom/cashwalk/cashwalk/activity/AuthSMSActivity;->rl_auth_step_1:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 340
    iget-object v0, p0, Lcom/cashwalk/cashwalk/activity/AuthSMSActivity;->rl_auth_step_2:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 341
    iget-object v0, p0, Lcom/cashwalk/cashwalk/activity/AuthSMSActivity;->rl_auth_step_3:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 344
    iget-object v0, p0, Lcom/cashwalk/cashwalk/activity/AuthSMSActivity;->tv_auth_number_count:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 346
    new-instance v0, Lcom/cashwalk/cashwalk/activity/AuthSMSActivity$13;

    const-wide/32 v2, 0xea60

    const-wide/16 v4, 0x3e8

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/cashwalk/cashwalk/activity/AuthSMSActivity$13;-><init>(Lcom/cashwalk/cashwalk/activity/AuthSMSActivity;JJ)V

    .line 364
    invoke-virtual {v0}, Lcom/cashwalk/cashwalk/activity/AuthSMSActivity$13;->start()Landroid/os/CountDownTimer;

    move-result-object v0

    iput-object v0, p0, Lcom/cashwalk/cashwalk/activity/AuthSMSActivity;->countDownTimer:Landroid/os/CountDownTimer;

    .line 365
    return-void
.end method

.method private setStep3()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 369
    iget-object v1, p0, Lcom/cashwalk/cashwalk/activity/AuthSMSActivity;->pref:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "GUEST_AUTH_SMS"

    invoke-interface {v1, v2, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 371
    iget-boolean v1, p0, Lcom/cashwalk/cashwalk/activity/AuthSMSActivity;->isShop:Z

    if-nez v1, :cond_0

    .line 373
    iget-object v1, p0, Lcom/cashwalk/cashwalk/activity/AuthSMSActivity;->progress:Landroid/widget/ProgressBar;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 374
    new-instance v1, Lcom/cashwalk/cashwalk/activity/AuthSMSActivity$14;

    invoke-direct {v1, p0}, Lcom/cashwalk/cashwalk/activity/AuthSMSActivity$14;-><init>(Lcom/cashwalk/cashwalk/activity/AuthSMSActivity;)V

    invoke-static {v1}, Lcom/cashwalk/cashwalk/util/network/RestClient;->getUser(Lcom/cashwalk/cashwalk/util/network/ResponseHandler;)Lcom/android/volley/toolbox/JsonObjectRequest;

    move-result-object v0

    .line 401
    .local v0, "request":Lcom/android/volley/toolbox/JsonObjectRequest;
    invoke-virtual {p0}, Lcom/cashwalk/cashwalk/activity/AuthSMSActivity;->getApplication()Landroid/app/Application;

    move-result-object v1

    check-cast v1, Lcom/cashwalk/cashwalk/CashWalkApp;

    invoke-virtual {v1}, Lcom/cashwalk/cashwalk/CashWalkApp;->requestQueue()Lcom/android/volley/RequestQueue;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/volley/RequestQueue;->add(Lcom/android/volley/Request;)Lcom/android/volley/Request;

    .line 408
    .end local v0    # "request":Lcom/android/volley/toolbox/JsonObjectRequest;
    :goto_0
    return-void

    .line 404
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "#### ID => "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/cashwalk/cashwalk/activity/AuthSMSActivity;->shopItemId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/cashwalk/cashwalk/util/Utils;->LOG(Ljava/lang/String;)V

    .line 405
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/cashwalk/cashwalk/activity/ShopItemActivity;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v2, "id"

    iget-object v3, p0, Lcom/cashwalk/cashwalk/activity/AuthSMSActivity;->shopItemId:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    const-string v2, "isOpen"

    invoke-virtual {v1, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/cashwalk/cashwalk/activity/AuthSMSActivity;->startActivity(Landroid/content/Intent;)V

    .line 406
    invoke-virtual {p0}, Lcom/cashwalk/cashwalk/activity/AuthSMSActivity;->finish()V

    goto :goto_0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    const/4 v2, 0x1

    .line 85
    invoke-super {p0, p1}, Lcom/cashwalk/cashwalk/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 86
    const v0, 0x7f04001b

    invoke-virtual {p0, v0}, Lcom/cashwalk/cashwalk/activity/AuthSMSActivity;->setContentView(I)V

    .line 88
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/cashwalk/cashwalk/activity/AuthSMSActivity;->pref:Landroid/content/SharedPreferences;

    .line 91
    invoke-virtual {p0}, Lcom/cashwalk/cashwalk/activity/AuthSMSActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 92
    invoke-virtual {p0}, Lcom/cashwalk/cashwalk/activity/AuthSMSActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/support/v7/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 93
    invoke-virtual {p0}, Lcom/cashwalk/cashwalk/activity/AuthSMSActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/support/v7/app/ActionBar;->setDisplayShowHomeEnabled(Z)V

    .line 96
    :cond_0
    invoke-virtual {p0}, Lcom/cashwalk/cashwalk/activity/AuthSMSActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 97
    invoke-virtual {p0}, Lcom/cashwalk/cashwalk/activity/AuthSMSActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "type"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 98
    invoke-virtual {p0}, Lcom/cashwalk/cashwalk/activity/AuthSMSActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "type"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "join"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 99
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/cashwalk/cashwalk/activity/AuthSMSActivity;->isShop:Z

    .line 107
    :cond_1
    :goto_0
    invoke-direct {p0}, Lcom/cashwalk/cashwalk/activity/AuthSMSActivity;->initLayout()V

    .line 108
    invoke-direct {p0}, Lcom/cashwalk/cashwalk/activity/AuthSMSActivity;->setStep1()V

    .line 111
    invoke-direct {p0}, Lcom/cashwalk/cashwalk/activity/AuthSMSActivity;->setSmsReceive()V

    .line 112
    return-void

    .line 100
    :cond_2
    invoke-virtual {p0}, Lcom/cashwalk/cashwalk/activity/AuthSMSActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "type"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "shop"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 101
    iput-boolean v2, p0, Lcom/cashwalk/cashwalk/activity/AuthSMSActivity;->isShop:Z

    .line 102
    invoke-virtual {p0}, Lcom/cashwalk/cashwalk/activity/AuthSMSActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "id"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cashwalk/cashwalk/activity/AuthSMSActivity;->shopItemId:Ljava/lang/String;

    goto :goto_0
.end method

.method protected onDestroy()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 479
    invoke-super {p0}, Lcom/cashwalk/cashwalk/BaseActivity;->onDestroy()V

    .line 481
    iget-object v1, p0, Lcom/cashwalk/cashwalk/activity/AuthSMSActivity;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v1, :cond_0

    .line 482
    iget-object v1, p0, Lcom/cashwalk/cashwalk/activity/AuthSMSActivity;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1}, Lcom/cashwalk/cashwalk/activity/AuthSMSActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 483
    iput-object v2, p0, Lcom/cashwalk/cashwalk/activity/AuthSMSActivity;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 487
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/cashwalk/cashwalk/activity/AuthSMSActivity;->countDownTimer:Landroid/os/CountDownTimer;

    if-eqz v1, :cond_1

    .line 488
    iget-object v1, p0, Lcom/cashwalk/cashwalk/activity/AuthSMSActivity;->countDownTimer:Landroid/os/CountDownTimer;

    invoke-virtual {v1}, Landroid/os/CountDownTimer;->cancel()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 491
    :cond_1
    :goto_0
    iput-object v2, p0, Lcom/cashwalk/cashwalk/activity/AuthSMSActivity;->countDownTimer:Landroid/os/CountDownTimer;

    .line 492
    return-void

    .line 490
    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 2
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 467
    packed-switch p1, :pswitch_data_0

    .line 474
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/cashwalk/cashwalk/BaseActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    :goto_0
    return v0

    .line 469
    :pswitch_0
    iget-object v0, p0, Lcom/cashwalk/cashwalk/activity/AuthSMSActivity;->rl_check_phone_number_popup:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 470
    iget-object v0, p0, Lcom/cashwalk/cashwalk/activity/AuthSMSActivity;->rl_check_phone_number_popup:Landroid/widget/RelativeLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 471
    const/4 v0, 0x1

    goto :goto_0

    .line 467
    nop

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
    .end packed-switch
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 456
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 461
    invoke-super {p0, p1}, Lcom/cashwalk/cashwalk/BaseActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    .line 458
    :pswitch_0
    invoke-virtual {p0}, Lcom/cashwalk/cashwalk/activity/AuthSMSActivity;->finish()V

    .line 459
    const/4 v0, 0x1

    goto :goto_0

    .line 456
    nop

    :pswitch_data_0
    .packed-switch 0x102002c
        :pswitch_0
    .end packed-switch
.end method
