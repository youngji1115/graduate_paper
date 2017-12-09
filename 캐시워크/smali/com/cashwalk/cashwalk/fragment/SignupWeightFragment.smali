.class public Lcom/cashwalk/cashwalk/fragment/SignupWeightFragment;
.super Landroid/support/v4/app/Fragment;
.source "SignupWeightFragment.java"


# instance fields
.field private height:Landroid/widget/EditText;

.field private listener:Lcom/cashwalk/cashwalk/fragment/SignupFragmentListener;

.field private next:Landroid/widget/Button;

.field private nicknameText:Landroid/widget/TextView;

.field private pref:Landroid/content/SharedPreferences;

.field private user:Lcom/cashwalk/cashwalk/util/network/model/User;

.field private weight:Landroid/widget/EditText;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    .line 33
    return-void
.end method

.method static synthetic access$000(Lcom/cashwalk/cashwalk/fragment/SignupWeightFragment;)Z
    .locals 1
    .param p0, "x0"    # Lcom/cashwalk/cashwalk/fragment/SignupWeightFragment;

    .prologue
    .line 19
    invoke-direct {p0}, Lcom/cashwalk/cashwalk/fragment/SignupWeightFragment;->checkData()Z

    move-result v0

    return v0
.end method

.method static synthetic access$100(Lcom/cashwalk/cashwalk/fragment/SignupWeightFragment;)Lcom/cashwalk/cashwalk/util/network/model/User;
    .locals 1
    .param p0, "x0"    # Lcom/cashwalk/cashwalk/fragment/SignupWeightFragment;

    .prologue
    .line 19
    iget-object v0, p0, Lcom/cashwalk/cashwalk/fragment/SignupWeightFragment;->user:Lcom/cashwalk/cashwalk/util/network/model/User;

    return-object v0
.end method

.method static synthetic access$200(Lcom/cashwalk/cashwalk/fragment/SignupWeightFragment;)Landroid/widget/EditText;
    .locals 1
    .param p0, "x0"    # Lcom/cashwalk/cashwalk/fragment/SignupWeightFragment;

    .prologue
    .line 19
    iget-object v0, p0, Lcom/cashwalk/cashwalk/fragment/SignupWeightFragment;->height:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$300(Lcom/cashwalk/cashwalk/fragment/SignupWeightFragment;)Landroid/widget/EditText;
    .locals 1
    .param p0, "x0"    # Lcom/cashwalk/cashwalk/fragment/SignupWeightFragment;

    .prologue
    .line 19
    iget-object v0, p0, Lcom/cashwalk/cashwalk/fragment/SignupWeightFragment;->weight:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$400(Lcom/cashwalk/cashwalk/fragment/SignupWeightFragment;)Landroid/content/SharedPreferences;
    .locals 1
    .param p0, "x0"    # Lcom/cashwalk/cashwalk/fragment/SignupWeightFragment;

    .prologue
    .line 19
    iget-object v0, p0, Lcom/cashwalk/cashwalk/fragment/SignupWeightFragment;->pref:Landroid/content/SharedPreferences;

    return-object v0
.end method

.method static synthetic access$500(Lcom/cashwalk/cashwalk/fragment/SignupWeightFragment;)Lcom/cashwalk/cashwalk/fragment/SignupFragmentListener;
    .locals 1
    .param p0, "x0"    # Lcom/cashwalk/cashwalk/fragment/SignupWeightFragment;

    .prologue
    .line 19
    iget-object v0, p0, Lcom/cashwalk/cashwalk/fragment/SignupWeightFragment;->listener:Lcom/cashwalk/cashwalk/fragment/SignupFragmentListener;

    return-object v0
.end method

.method private checkData()Z
    .locals 1

    .prologue
    .line 88
    iget-object v0, p0, Lcom/cashwalk/cashwalk/fragment/SignupWeightFragment;->weight:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/cashwalk/cashwalk/fragment/SignupWeightFragment;->height:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 89
    const/4 v0, 0x1

    .line 91
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static newInstance(Lcom/cashwalk/cashwalk/fragment/SignupFragmentListener;Lcom/cashwalk/cashwalk/util/network/model/User;)Lcom/cashwalk/cashwalk/fragment/SignupWeightFragment;
    .locals 1
    .param p0, "listener"    # Lcom/cashwalk/cashwalk/fragment/SignupFragmentListener;
    .param p1, "user"    # Lcom/cashwalk/cashwalk/util/network/model/User;

    .prologue
    .line 36
    new-instance v0, Lcom/cashwalk/cashwalk/fragment/SignupWeightFragment;

    invoke-direct {v0}, Lcom/cashwalk/cashwalk/fragment/SignupWeightFragment;-><init>()V

    .line 37
    .local v0, "fragment":Lcom/cashwalk/cashwalk/fragment/SignupWeightFragment;
    iput-object p0, v0, Lcom/cashwalk/cashwalk/fragment/SignupWeightFragment;->listener:Lcom/cashwalk/cashwalk/fragment/SignupFragmentListener;

    .line 38
    iput-object p1, v0, Lcom/cashwalk/cashwalk/fragment/SignupWeightFragment;->user:Lcom/cashwalk/cashwalk/util/network/model/User;

    .line 39
    return-object v0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 48
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 50
    invoke-virtual {p0}, Lcom/cashwalk/cashwalk/fragment/SignupWeightFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/cashwalk/cashwalk/fragment/SignupWeightFragment;->pref:Landroid/content/SharedPreferences;

    .line 51
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 5
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 55
    const v1, 0x7f04009f

    const/4 v2, 0x0

    invoke-virtual {p1, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 57
    .local v0, "v":Landroid/view/View;
    const v1, 0x7f1001f1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/cashwalk/cashwalk/fragment/SignupWeightFragment;->nicknameText:Landroid/widget/TextView;

    .line 58
    const v1, 0x7f1003dc

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    iput-object v1, p0, Lcom/cashwalk/cashwalk/fragment/SignupWeightFragment;->height:Landroid/widget/EditText;

    .line 59
    const v1, 0x7f1003db

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    iput-object v1, p0, Lcom/cashwalk/cashwalk/fragment/SignupWeightFragment;->weight:Landroid/widget/EditText;

    .line 60
    const v1, 0x7f10026e

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/cashwalk/cashwalk/fragment/SignupWeightFragment;->next:Landroid/widget/Button;

    .line 62
    iget-object v1, p0, Lcom/cashwalk/cashwalk/fragment/SignupWeightFragment;->nicknameText:Landroid/widget/TextView;

    const v2, 0x7f090291

    invoke-virtual {p0, v2}, Lcom/cashwalk/cashwalk/fragment/SignupWeightFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "%s"

    iget-object v4, p0, Lcom/cashwalk/cashwalk/fragment/SignupWeightFragment;->user:Lcom/cashwalk/cashwalk/util/network/model/User;

    iget-object v4, v4, Lcom/cashwalk/cashwalk/util/network/model/User;->nickname:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 64
    iget-object v1, p0, Lcom/cashwalk/cashwalk/fragment/SignupWeightFragment;->next:Landroid/widget/Button;

    new-instance v2, Lcom/cashwalk/cashwalk/fragment/SignupWeightFragment$1;

    invoke-direct {v2, p0}, Lcom/cashwalk/cashwalk/fragment/SignupWeightFragment$1;-><init>(Lcom/cashwalk/cashwalk/fragment/SignupWeightFragment;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 84
    return-object v0
.end method

.method public setUser(Lcom/cashwalk/cashwalk/util/network/model/User;)V
    .locals 0
    .param p1, "user"    # Lcom/cashwalk/cashwalk/util/network/model/User;

    .prologue
    .line 43
    iput-object p1, p0, Lcom/cashwalk/cashwalk/fragment/SignupWeightFragment;->user:Lcom/cashwalk/cashwalk/util/network/model/User;

    .line 44
    return-void
.end method
