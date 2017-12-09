.class public Lcom/cashwalk/cashwalk/activity/ProfileActivity;
.super Landroid/support/v7/app/AppCompatActivity;
.source "ProfileActivity.java"


# static fields
.field private static final REQUEST_PICK:I = 0x77


# instance fields
.field private fromSignup:Z

.field private next:Landroid/widget/Button;

.field private nicknameEdit:Landroid/widget/EditText;

.field private nicknameText:Landroid/widget/TextView;

.field private pref:Landroid/content/SharedPreferences;

.field private profile:Landroid/widget/ImageButton;

.field private profileUrl:Ljava/lang/String;

.field private progress:Landroid/widget/ProgressBar;

.field private tv_justogo_info_btn:Landroid/widget/TextView;

.field private tv_justogo_info_msg:Landroid/widget/TextView;

.field private user:Lcom/cashwalk/cashwalk/util/network/model/User;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 39
    invoke-direct {p0}, Landroid/support/v7/app/AppCompatActivity;-><init>()V

    .line 54
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/cashwalk/cashwalk/activity/ProfileActivity;->profileUrl:Ljava/lang/String;

    .line 55
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/cashwalk/cashwalk/activity/ProfileActivity;->fromSignup:Z

    return-void
.end method

.method static synthetic access$000(Lcom/cashwalk/cashwalk/activity/ProfileActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/cashwalk/cashwalk/activity/ProfileActivity;

    .prologue
    .line 39
    invoke-direct {p0}, Lcom/cashwalk/cashwalk/activity/ProfileActivity;->pickFromGallery()V

    return-void
.end method

.method static synthetic access$100(Lcom/cashwalk/cashwalk/activity/ProfileActivity;)Landroid/content/SharedPreferences;
    .locals 1
    .param p0, "x0"    # Lcom/cashwalk/cashwalk/activity/ProfileActivity;

    .prologue
    .line 39
    iget-object v0, p0, Lcom/cashwalk/cashwalk/activity/ProfileActivity;->pref:Landroid/content/SharedPreferences;

    return-object v0
.end method

.method static synthetic access$200(Lcom/cashwalk/cashwalk/activity/ProfileActivity;)Z
    .locals 1
    .param p0, "x0"    # Lcom/cashwalk/cashwalk/activity/ProfileActivity;

    .prologue
    .line 39
    invoke-direct {p0}, Lcom/cashwalk/cashwalk/activity/ProfileActivity;->checkData()Z

    move-result v0

    return v0
.end method

.method static synthetic access$300(Lcom/cashwalk/cashwalk/activity/ProfileActivity;)Lcom/cashwalk/cashwalk/util/network/model/User;
    .locals 1
    .param p0, "x0"    # Lcom/cashwalk/cashwalk/activity/ProfileActivity;

    .prologue
    .line 39
    iget-object v0, p0, Lcom/cashwalk/cashwalk/activity/ProfileActivity;->user:Lcom/cashwalk/cashwalk/util/network/model/User;

    return-object v0
.end method

.method static synthetic access$400(Lcom/cashwalk/cashwalk/activity/ProfileActivity;)Landroid/widget/ProgressBar;
    .locals 1
    .param p0, "x0"    # Lcom/cashwalk/cashwalk/activity/ProfileActivity;

    .prologue
    .line 39
    iget-object v0, p0, Lcom/cashwalk/cashwalk/activity/ProfileActivity;->progress:Landroid/widget/ProgressBar;

    return-object v0
.end method

.method static synthetic access$500(Lcom/cashwalk/cashwalk/activity/ProfileActivity;)Landroid/widget/EditText;
    .locals 1
    .param p0, "x0"    # Lcom/cashwalk/cashwalk/activity/ProfileActivity;

    .prologue
    .line 39
    iget-object v0, p0, Lcom/cashwalk/cashwalk/activity/ProfileActivity;->nicknameEdit:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$600(Lcom/cashwalk/cashwalk/activity/ProfileActivity;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/cashwalk/cashwalk/activity/ProfileActivity;

    .prologue
    .line 39
    iget-object v0, p0, Lcom/cashwalk/cashwalk/activity/ProfileActivity;->profileUrl:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$602(Lcom/cashwalk/cashwalk/activity/ProfileActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/cashwalk/cashwalk/activity/ProfileActivity;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 39
    iput-object p1, p0, Lcom/cashwalk/cashwalk/activity/ProfileActivity;->profileUrl:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$700(Lcom/cashwalk/cashwalk/activity/ProfileActivity;)Z
    .locals 1
    .param p0, "x0"    # Lcom/cashwalk/cashwalk/activity/ProfileActivity;

    .prologue
    .line 39
    iget-boolean v0, p0, Lcom/cashwalk/cashwalk/activity/ProfileActivity;->fromSignup:Z

    return v0
.end method

.method private checkData()Z
    .locals 1

    .prologue
    .line 190
    iget-object v0, p0, Lcom/cashwalk/cashwalk/activity/ProfileActivity;->nicknameEdit:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 191
    const/4 v0, 0x1

    .line 193
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private pickFromGallery()V
    .locals 2

    .prologue
    .line 219
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 220
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "image/*"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 221
    const-string v1, "android.intent.action.GET_CONTENT"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 222
    const-string v1, "android.intent.category.OPENABLE"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 223
    const/16 v1, 0x77

    invoke-virtual {p0, v0, v1}, Lcom/cashwalk/cashwalk/activity/ProfileActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 224
    return-void
.end method

.method private updateProfile(Ljava/lang/String;)V
    .locals 6
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    .line 198
    const/16 v1, 0x48

    invoke-static {v1}, Lcom/cashwalk/cashwalk/util/Utils;->dpToPx(I)I

    move-result v0

    .line 201
    .local v0, "px":I
    sget-object v1, Lcom/cashwalk/cashwalk/AppConstants;->AWS_S3_BUCKET_NAME:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/cashwalk/cashwalk/activity/ProfileActivity;->pref:Landroid/content/SharedPreferences;

    const-string v4, "USER_ID"

    const-string v5, "0"

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/profile_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ".jpg"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/cashwalk/cashwalk/activity/ProfileActivity$4;

    invoke-direct {v3, p0}, Lcom/cashwalk/cashwalk/activity/ProfileActivity$4;-><init>(Lcom/cashwalk/cashwalk/activity/ProfileActivity;)V

    invoke-static {p1, v1, v2, v3}, Lcom/cashwalk/cashwalk/util/AWSHelper;->uploadFile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Handler;)V

    .line 215
    invoke-static {p0}, Lcom/squareup/picasso/Picasso;->with(Landroid/content/Context;)Lcom/squareup/picasso/Picasso;

    move-result-object v1

    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v2}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/squareup/picasso/Picasso;->load(Landroid/net/Uri;)Lcom/squareup/picasso/RequestCreator;

    move-result-object v1

    invoke-virtual {v1, v0, v0}, Lcom/squareup/picasso/RequestCreator;->resize(II)Lcom/squareup/picasso/RequestCreator;

    move-result-object v1

    invoke-virtual {v1}, Lcom/squareup/picasso/RequestCreator;->centerCrop()Lcom/squareup/picasso/RequestCreator;

    move-result-object v1

    const v2, 0x7f02012a

    invoke-virtual {v1, v2}, Lcom/squareup/picasso/RequestCreator;->placeholder(I)Lcom/squareup/picasso/RequestCreator;

    move-result-object v1

    new-instance v2, Lcom/cashwalk/cashwalk/util/CircleTransformation;

    invoke-direct {v2}, Lcom/cashwalk/cashwalk/util/CircleTransformation;-><init>()V

    invoke-virtual {v1, v2}, Lcom/squareup/picasso/RequestCreator;->transform(Lcom/squareup/picasso/Transformation;)Lcom/squareup/picasso/RequestCreator;

    move-result-object v1

    iget-object v2, p0, Lcom/cashwalk/cashwalk/activity/ProfileActivity;->profile:Landroid/widget/ImageButton;

    invoke-virtual {v1, v2}, Lcom/squareup/picasso/RequestCreator;->into(Landroid/widget/ImageView;)V

    .line 216
    return-void
.end method


# virtual methods
.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 10
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    const/16 v9, 0x140

    const/4 v4, 0x0

    const/high16 v8, 0x3f800000    # 1.0f

    .line 229
    const/4 v3, -0x1

    if-eq p2, v3, :cond_0

    .line 230
    const v3, 0x7f09018f

    invoke-virtual {p0, v3}, Lcom/cashwalk/cashwalk/activity/ProfileActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    .line 257
    :goto_0
    return-void

    .line 234
    :cond_0
    sparse-switch p1, :sswitch_data_0

    goto :goto_0

    .line 250
    :sswitch_0
    invoke-static {p3}, Lcom/yalantis/ucrop/UCrop;->getOutput(Landroid/content/Intent;)Landroid/net/Uri;

    move-result-object v1

    .line 251
    .local v1, "resultUri":Landroid/net/Uri;
    invoke-virtual {v1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/cashwalk/cashwalk/activity/ProfileActivity;->updateProfile(Ljava/lang/String;)V

    goto :goto_0

    .line 236
    .end local v1    # "resultUri":Landroid/net/Uri;
    :sswitch_1
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v2

    .line 238
    .local v2, "sourceUri":Landroid/net/Uri;
    new-instance v0, Lcom/yalantis/ucrop/UCrop$Options;

    invoke-direct {v0}, Lcom/yalantis/ucrop/UCrop$Options;-><init>()V

    .line 239
    .local v0, "options":Lcom/yalantis/ucrop/UCrop$Options;
    invoke-virtual {p0}, Lcom/cashwalk/cashwalk/activity/ProfileActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0f0022

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v0, v3}, Lcom/yalantis/ucrop/UCrop$Options;->setToolbarColor(I)V

    .line 240
    const v3, 0x7f090134

    invoke-virtual {p0, v3}, Lcom/cashwalk/cashwalk/activity/ProfileActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/yalantis/ucrop/UCrop$Options;->setToolbarTitle(Ljava/lang/String;)V

    .line 242
    invoke-static {}, Lcom/cashwalk/cashwalk/util/Utils;->checkAppDir()Z

    .line 243
    new-instance v3, Ljava/io/File;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v5

    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/cashwalk/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "profile"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ".jpg"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v3}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/yalantis/ucrop/UCrop;->of(Landroid/net/Uri;Landroid/net/Uri;)Lcom/yalantis/ucrop/UCrop;

    move-result-object v3

    .line 244
    invoke-virtual {v3, v8, v8}, Lcom/yalantis/ucrop/UCrop;->withAspectRatio(FF)Lcom/yalantis/ucrop/UCrop;

    move-result-object v3

    .line 245
    invoke-virtual {v3, v9, v9}, Lcom/yalantis/ucrop/UCrop;->withMaxResultSize(II)Lcom/yalantis/ucrop/UCrop;

    move-result-object v3

    .line 246
    invoke-virtual {v3, v0}, Lcom/yalantis/ucrop/UCrop;->withOptions(Lcom/yalantis/ucrop/UCrop$Options;)Lcom/yalantis/ucrop/UCrop;

    move-result-object v3

    .line 247
    invoke-virtual {v3, p0}, Lcom/yalantis/ucrop/UCrop;->start(Landroid/app/Activity;)V

    goto/16 :goto_0

    .line 254
    .end local v0    # "options":Lcom/yalantis/ucrop/UCrop$Options;
    .end local v2    # "sourceUri":Landroid/net/Uri;
    :sswitch_2
    invoke-static {p3}, Lcom/yalantis/ucrop/UCrop;->getError(Landroid/content/Intent;)Ljava/lang/Throwable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 234
    :sswitch_data_0
    .sparse-switch
        0x45 -> :sswitch_0
        0x60 -> :sswitch_2
        0x77 -> :sswitch_1
    .end sparse-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 10
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const v9, 0x7f02012a

    const/16 v8, 0x8

    const/4 v6, 0x4

    const/4 v5, 0x0

    const/4 v7, 0x0

    .line 59
    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 60
    const v3, 0x7f040045

    invoke-virtual {p0, v3}, Lcom/cashwalk/cashwalk/activity/ProfileActivity;->setContentView(I)V

    .line 62
    invoke-virtual {p0}, Lcom/cashwalk/cashwalk/activity/ProfileActivity;->getWindow()Landroid/view/Window;

    move-result-object v3

    const/high16 v4, 0x480000

    invoke-virtual {v3, v4}, Landroid/view/Window;->addFlags(I)V

    .line 64
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v3

    iput-object v3, p0, Lcom/cashwalk/cashwalk/activity/ProfileActivity;->pref:Landroid/content/SharedPreferences;

    .line 66
    const v3, 0x7f10026b

    invoke-virtual {p0, v3}, Lcom/cashwalk/cashwalk/activity/ProfileActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/cashwalk/cashwalk/activity/ProfileActivity;->tv_justogo_info_msg:Landroid/widget/TextView;

    .line 67
    const v3, 0x7f10026c

    invoke-virtual {p0, v3}, Lcom/cashwalk/cashwalk/activity/ProfileActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/cashwalk/cashwalk/activity/ProfileActivity;->tv_justogo_info_btn:Landroid/widget/TextView;

    .line 69
    invoke-virtual {p0}, Lcom/cashwalk/cashwalk/activity/ProfileActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 70
    .local v0, "it":Landroid/content/Intent;
    if-eqz v0, :cond_5

    .line 71
    const-string/jumbo v3, "user"

    invoke-virtual {v0, v3}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v3

    check-cast v3, Lcom/cashwalk/cashwalk/util/network/model/User;

    iput-object v3, p0, Lcom/cashwalk/cashwalk/activity/ProfileActivity;->user:Lcom/cashwalk/cashwalk/util/network/model/User;

    .line 73
    iget-object v3, p0, Lcom/cashwalk/cashwalk/activity/ProfileActivity;->user:Lcom/cashwalk/cashwalk/util/network/model/User;

    if-eqz v3, :cond_4

    .line 74
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/cashwalk/cashwalk/activity/ProfileActivity;->fromSignup:Z

    .line 76
    iget-object v3, p0, Lcom/cashwalk/cashwalk/activity/ProfileActivity;->pref:Landroid/content/SharedPreferences;

    const-string v4, "IS_LOGIN"

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 77
    iget-object v3, p0, Lcom/cashwalk/cashwalk/activity/ProfileActivity;->tv_justogo_info_msg:Landroid/widget/TextView;

    invoke-virtual {v3, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 78
    iget-object v3, p0, Lcom/cashwalk/cashwalk/activity/ProfileActivity;->tv_justogo_info_btn:Landroid/widget/TextView;

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 92
    :goto_0
    iget-object v3, p0, Lcom/cashwalk/cashwalk/activity/ProfileActivity;->user:Lcom/cashwalk/cashwalk/util/network/model/User;

    if-nez v3, :cond_0

    .line 93
    new-instance v3, Lcom/cashwalk/cashwalk/util/network/model/User;

    invoke-direct {v3}, Lcom/cashwalk/cashwalk/util/network/model/User;-><init>()V

    iput-object v3, p0, Lcom/cashwalk/cashwalk/activity/ProfileActivity;->user:Lcom/cashwalk/cashwalk/util/network/model/User;

    .line 96
    :cond_0
    const v3, 0x7f1001f1

    invoke-virtual {p0, v3}, Lcom/cashwalk/cashwalk/activity/ProfileActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/cashwalk/cashwalk/activity/ProfileActivity;->nicknameText:Landroid/widget/TextView;

    .line 97
    const v3, 0x7f10026d

    invoke-virtual {p0, v3}, Lcom/cashwalk/cashwalk/activity/ProfileActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/EditText;

    iput-object v3, p0, Lcom/cashwalk/cashwalk/activity/ProfileActivity;->nicknameEdit:Landroid/widget/EditText;

    .line 98
    const v3, 0x7f1001f0

    invoke-virtual {p0, v3}, Lcom/cashwalk/cashwalk/activity/ProfileActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageButton;

    iput-object v3, p0, Lcom/cashwalk/cashwalk/activity/ProfileActivity;->profile:Landroid/widget/ImageButton;

    .line 99
    const v3, 0x7f10026e

    invoke-virtual {p0, v3}, Lcom/cashwalk/cashwalk/activity/ProfileActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    iput-object v3, p0, Lcom/cashwalk/cashwalk/activity/ProfileActivity;->next:Landroid/widget/Button;

    .line 100
    const v3, 0x7f1000d6

    invoke-virtual {p0, v3}, Lcom/cashwalk/cashwalk/activity/ProfileActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ProgressBar;

    iput-object v3, p0, Lcom/cashwalk/cashwalk/activity/ProfileActivity;->progress:Landroid/widget/ProgressBar;

    .line 102
    iget-object v3, p0, Lcom/cashwalk/cashwalk/activity/ProfileActivity;->profile:Landroid/widget/ImageButton;

    new-instance v4, Lcom/cashwalk/cashwalk/activity/ProfileActivity$1;

    invoke-direct {v4, p0}, Lcom/cashwalk/cashwalk/activity/ProfileActivity$1;-><init>(Lcom/cashwalk/cashwalk/activity/ProfileActivity;)V

    invoke-virtual {v3, v4}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 109
    iget-object v3, p0, Lcom/cashwalk/cashwalk/activity/ProfileActivity;->tv_justogo_info_btn:Landroid/widget/TextView;

    new-instance v4, Lcom/cashwalk/cashwalk/activity/ProfileActivity$2;

    invoke-direct {v4, p0}, Lcom/cashwalk/cashwalk/activity/ProfileActivity$2;-><init>(Lcom/cashwalk/cashwalk/activity/ProfileActivity;)V

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 119
    iget-object v3, p0, Lcom/cashwalk/cashwalk/activity/ProfileActivity;->next:Landroid/widget/Button;

    new-instance v4, Lcom/cashwalk/cashwalk/activity/ProfileActivity$3;

    invoke-direct {v4, p0}, Lcom/cashwalk/cashwalk/activity/ProfileActivity$3;-><init>(Lcom/cashwalk/cashwalk/activity/ProfileActivity;)V

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 168
    iget-object v3, p0, Lcom/cashwalk/cashwalk/activity/ProfileActivity;->pref:Landroid/content/SharedPreferences;

    const-string v4, "NICKNAME"

    invoke-interface {v3, v4, v7}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 169
    .local v1, "nick":Ljava/lang/String;
    if-eqz v1, :cond_6

    .line 170
    const v3, 0x7f0902ec

    invoke-virtual {p0, v3}, Lcom/cashwalk/cashwalk/activity/ProfileActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 171
    iget-object v3, p0, Lcom/cashwalk/cashwalk/activity/ProfileActivity;->nicknameEdit:Landroid/widget/EditText;

    invoke-virtual {v3, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 172
    iget-object v3, p0, Lcom/cashwalk/cashwalk/activity/ProfileActivity;->nicknameEdit:Landroid/widget/EditText;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->setSelection(I)V

    .line 174
    :cond_1
    iget-object v3, p0, Lcom/cashwalk/cashwalk/activity/ProfileActivity;->nicknameText:Landroid/widget/TextView;

    const v4, 0x7f090289

    invoke-virtual {p0, v4}, Lcom/cashwalk/cashwalk/activity/ProfileActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    const-string v5, "%s"

    invoke-virtual {v4, v5, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 179
    :goto_1
    iget-object v3, p0, Lcom/cashwalk/cashwalk/activity/ProfileActivity;->pref:Landroid/content/SharedPreferences;

    const-string v4, "PROFILE_URL"

    invoke-interface {v3, v4, v7}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 180
    .local v2, "path":Ljava/lang/String;
    if-eqz v2, :cond_2

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_2

    .line 181
    const-string v3, "http"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 182
    invoke-static {p0}, Lcom/squareup/picasso/Picasso;->with(Landroid/content/Context;)Lcom/squareup/picasso/Picasso;

    move-result-object v3

    iget-object v4, p0, Lcom/cashwalk/cashwalk/activity/ProfileActivity;->pref:Landroid/content/SharedPreferences;

    const-string v5, "PROFILE_URL"

    invoke-interface {v4, v5, v7}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/squareup/picasso/Picasso;->load(Ljava/lang/String;)Lcom/squareup/picasso/RequestCreator;

    move-result-object v3

    invoke-virtual {v3, v9}, Lcom/squareup/picasso/RequestCreator;->placeholder(I)Lcom/squareup/picasso/RequestCreator;

    move-result-object v3

    new-instance v4, Lcom/cashwalk/cashwalk/util/CircleTransformation;

    invoke-direct {v4}, Lcom/cashwalk/cashwalk/util/CircleTransformation;-><init>()V

    invoke-virtual {v3, v4}, Lcom/squareup/picasso/RequestCreator;->transform(Lcom/squareup/picasso/Transformation;)Lcom/squareup/picasso/RequestCreator;

    move-result-object v3

    iget-object v4, p0, Lcom/cashwalk/cashwalk/activity/ProfileActivity;->profile:Landroid/widget/ImageButton;

    invoke-virtual {v3, v4}, Lcom/squareup/picasso/RequestCreator;->into(Landroid/widget/ImageView;)V

    .line 187
    :cond_2
    :goto_2
    return-void

    .line 80
    .end local v1    # "nick":Ljava/lang/String;
    .end local v2    # "path":Ljava/lang/String;
    :cond_3
    iget-object v3, p0, Lcom/cashwalk/cashwalk/activity/ProfileActivity;->tv_justogo_info_msg:Landroid/widget/TextView;

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 81
    iget-object v3, p0, Lcom/cashwalk/cashwalk/activity/ProfileActivity;->tv_justogo_info_btn:Landroid/widget/TextView;

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_0

    .line 84
    :cond_4
    iget-object v3, p0, Lcom/cashwalk/cashwalk/activity/ProfileActivity;->tv_justogo_info_msg:Landroid/widget/TextView;

    invoke-virtual {v3, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 85
    iget-object v3, p0, Lcom/cashwalk/cashwalk/activity/ProfileActivity;->tv_justogo_info_btn:Landroid/widget/TextView;

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_0

    .line 88
    :cond_5
    iget-object v3, p0, Lcom/cashwalk/cashwalk/activity/ProfileActivity;->tv_justogo_info_msg:Landroid/widget/TextView;

    invoke-virtual {v3, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 89
    iget-object v3, p0, Lcom/cashwalk/cashwalk/activity/ProfileActivity;->tv_justogo_info_btn:Landroid/widget/TextView;

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_0

    .line 176
    .restart local v1    # "nick":Ljava/lang/String;
    :cond_6
    iget-object v3, p0, Lcom/cashwalk/cashwalk/activity/ProfileActivity;->nicknameText:Landroid/widget/TextView;

    const v4, 0x7f090289

    invoke-virtual {p0, v4}, Lcom/cashwalk/cashwalk/activity/ProfileActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    const-string v5, "%s"

    const v6, 0x7f0902ec

    invoke-virtual {p0, v6}, Lcom/cashwalk/cashwalk/activity/ProfileActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 184
    .restart local v2    # "path":Ljava/lang/String;
    :cond_7
    invoke-static {p0}, Lcom/squareup/picasso/Picasso;->with(Landroid/content/Context;)Lcom/squareup/picasso/Picasso;

    move-result-object v3

    invoke-static {}, Lcom/cashwalk/cashwalk/util/ImageUrlCache;->getInstance()Lcom/cashwalk/cashwalk/util/ImageUrlCache;

    move-result-object v4

    iget-object v5, p0, Lcom/cashwalk/cashwalk/activity/ProfileActivity;->pref:Landroid/content/SharedPreferences;

    const-string v6, "PROFILE_URL"

    invoke-interface {v5, v6, v7}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/cashwalk/cashwalk/util/ImageUrlCache;->getImageUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/squareup/picasso/Picasso;->load(Ljava/lang/String;)Lcom/squareup/picasso/RequestCreator;

    move-result-object v3

    invoke-virtual {v3, v9}, Lcom/squareup/picasso/RequestCreator;->placeholder(I)Lcom/squareup/picasso/RequestCreator;

    move-result-object v3

    new-instance v4, Lcom/cashwalk/cashwalk/util/CircleTransformation;

    invoke-direct {v4}, Lcom/cashwalk/cashwalk/util/CircleTransformation;-><init>()V

    invoke-virtual {v3, v4}, Lcom/squareup/picasso/RequestCreator;->transform(Lcom/squareup/picasso/Transformation;)Lcom/squareup/picasso/RequestCreator;

    move-result-object v3

    iget-object v4, p0, Lcom/cashwalk/cashwalk/activity/ProfileActivity;->profile:Landroid/widget/ImageButton;

    invoke-virtual {v3, v4}, Lcom/squareup/picasso/RequestCreator;->into(Landroid/widget/ImageView;)V

    goto :goto_2
.end method
