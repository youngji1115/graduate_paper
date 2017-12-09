.class public Lcom/cashwalk/cashwalk/util/FeedbackDialog;
.super Landroid/app/Activity;
.source "FeedbackDialog.java"


# instance fields
.field private pref:Landroid/content/SharedPreferences;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/cashwalk/cashwalk/util/FeedbackDialog;)Landroid/content/SharedPreferences;
    .locals 1
    .param p0, "x0"    # Lcom/cashwalk/cashwalk/util/FeedbackDialog;

    .prologue
    .line 15
    iget-object v0, p0, Lcom/cashwalk/cashwalk/util/FeedbackDialog;->pref:Landroid/content/SharedPreferences;

    return-object v0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 21
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 23
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/cashwalk/cashwalk/lockscreen/LockScreenService;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v1}, Lcom/cashwalk/cashwalk/util/FeedbackDialog;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 24
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    iput-object v1, p0, Lcom/cashwalk/cashwalk/util/FeedbackDialog;->pref:Landroid/content/SharedPreferences;

    .line 25
    new-instance v0, Landroid/support/v7/app/AlertDialog$Builder;

    const v1, 0x7f0b00b4

    invoke-direct {v0, p0, v1}, Landroid/support/v7/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    .line 26
    .local v0, "ab":Landroid/support/v7/app/AlertDialog$Builder;
    const v1, 0x7f09012c

    invoke-virtual {p0, v1}, Lcom/cashwalk/cashwalk/util/FeedbackDialog;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v7/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 27
    invoke-virtual {p0}, Lcom/cashwalk/cashwalk/util/FeedbackDialog;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090222

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/cashwalk/cashwalk/util/FeedbackDialog$1;

    invoke-direct {v2, p0}, Lcom/cashwalk/cashwalk/util/FeedbackDialog$1;-><init>(Lcom/cashwalk/cashwalk/util/FeedbackDialog;)V

    invoke-virtual {v0, v1, v2}, Landroid/support/v7/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 35
    const v1, 0x7f090136

    invoke-virtual {p0, v1}, Lcom/cashwalk/cashwalk/util/FeedbackDialog;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/cashwalk/cashwalk/util/FeedbackDialog$2;

    invoke-direct {v2, p0}, Lcom/cashwalk/cashwalk/util/FeedbackDialog$2;-><init>(Lcom/cashwalk/cashwalk/util/FeedbackDialog;)V

    invoke-virtual {v0, v1, v2}, Landroid/support/v7/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 43
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v7/app/AlertDialog$Builder;->setCancelable(Z)Landroid/support/v7/app/AlertDialog$Builder;

    .line 44
    invoke-virtual {v0}, Landroid/support/v7/app/AlertDialog$Builder;->show()Landroid/support/v7/app/AlertDialog;

    .line 45
    return-void
.end method
