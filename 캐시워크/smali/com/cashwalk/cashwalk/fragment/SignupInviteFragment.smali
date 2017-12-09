.class public Lcom/cashwalk/cashwalk/fragment/SignupInviteFragment;
.super Landroid/support/v4/app/Fragment;
.source "SignupInviteFragment.java"


# instance fields
.field private et_invite_code:Landroid/widget/EditText;

.field private listener:Lcom/cashwalk/cashwalk/fragment/SignupFragmentListener;

.field private next:Landroid/widget/Button;

.field private nicknameText:Landroid/widget/TextView;

.field private tv_skip:Landroid/widget/TextView;

.field private user:Lcom/cashwalk/cashwalk/util/network/model/User;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    .line 29
    return-void
.end method

.method static synthetic access$000(Lcom/cashwalk/cashwalk/fragment/SignupInviteFragment;)Landroid/widget/EditText;
    .locals 1
    .param p0, "x0"    # Lcom/cashwalk/cashwalk/fragment/SignupInviteFragment;

    .prologue
    .line 15
    iget-object v0, p0, Lcom/cashwalk/cashwalk/fragment/SignupInviteFragment;->et_invite_code:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$100(Lcom/cashwalk/cashwalk/fragment/SignupInviteFragment;)Lcom/cashwalk/cashwalk/util/network/model/User;
    .locals 1
    .param p0, "x0"    # Lcom/cashwalk/cashwalk/fragment/SignupInviteFragment;

    .prologue
    .line 15
    iget-object v0, p0, Lcom/cashwalk/cashwalk/fragment/SignupInviteFragment;->user:Lcom/cashwalk/cashwalk/util/network/model/User;

    return-object v0
.end method

.method static synthetic access$200(Lcom/cashwalk/cashwalk/fragment/SignupInviteFragment;)Lcom/cashwalk/cashwalk/fragment/SignupFragmentListener;
    .locals 1
    .param p0, "x0"    # Lcom/cashwalk/cashwalk/fragment/SignupInviteFragment;

    .prologue
    .line 15
    iget-object v0, p0, Lcom/cashwalk/cashwalk/fragment/SignupInviteFragment;->listener:Lcom/cashwalk/cashwalk/fragment/SignupFragmentListener;

    return-object v0
.end method

.method public static newInstance(Lcom/cashwalk/cashwalk/fragment/SignupFragmentListener;Lcom/cashwalk/cashwalk/util/network/model/User;)Lcom/cashwalk/cashwalk/fragment/SignupInviteFragment;
    .locals 1
    .param p0, "listener"    # Lcom/cashwalk/cashwalk/fragment/SignupFragmentListener;
    .param p1, "user"    # Lcom/cashwalk/cashwalk/util/network/model/User;

    .prologue
    .line 32
    new-instance v0, Lcom/cashwalk/cashwalk/fragment/SignupInviteFragment;

    invoke-direct {v0}, Lcom/cashwalk/cashwalk/fragment/SignupInviteFragment;-><init>()V

    .line 33
    .local v0, "fragment":Lcom/cashwalk/cashwalk/fragment/SignupInviteFragment;
    iput-object p0, v0, Lcom/cashwalk/cashwalk/fragment/SignupInviteFragment;->listener:Lcom/cashwalk/cashwalk/fragment/SignupFragmentListener;

    .line 34
    iput-object p1, v0, Lcom/cashwalk/cashwalk/fragment/SignupInviteFragment;->user:Lcom/cashwalk/cashwalk/util/network/model/User;

    .line 35
    return-object v0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 44
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 47
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 6
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v5, 0x0

    .line 51
    const v1, 0x7f04009d

    invoke-virtual {p1, v1, p2, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 53
    .local v0, "v":Landroid/view/View;
    const v1, 0x7f10026e

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/cashwalk/cashwalk/fragment/SignupInviteFragment;->next:Landroid/widget/Button;

    .line 54
    const v1, 0x7f1003d9

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    iput-object v1, p0, Lcom/cashwalk/cashwalk/fragment/SignupInviteFragment;->et_invite_code:Landroid/widget/EditText;

    .line 55
    const v1, 0x7f1001f1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/cashwalk/cashwalk/fragment/SignupInviteFragment;->nicknameText:Landroid/widget/TextView;

    .line 56
    const v1, 0x7f1003da

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/cashwalk/cashwalk/fragment/SignupInviteFragment;->tv_skip:Landroid/widget/TextView;

    .line 58
    iget-object v1, p0, Lcom/cashwalk/cashwalk/fragment/SignupInviteFragment;->nicknameText:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/cashwalk/cashwalk/fragment/SignupInviteFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f090282

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/cashwalk/cashwalk/fragment/SignupInviteFragment;->user:Lcom/cashwalk/cashwalk/util/network/model/User;

    iget-object v4, v4, Lcom/cashwalk/cashwalk/util/network/model/User;->nickname:Ljava/lang/String;

    aput-object v4, v3, v5

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 60
    iget-object v1, p0, Lcom/cashwalk/cashwalk/fragment/SignupInviteFragment;->tv_skip:Landroid/widget/TextView;

    new-instance v2, Lcom/cashwalk/cashwalk/fragment/SignupInviteFragment$1;

    invoke-direct {v2, p0}, Lcom/cashwalk/cashwalk/fragment/SignupInviteFragment$1;-><init>(Lcom/cashwalk/cashwalk/fragment/SignupInviteFragment;)V

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 69
    iget-object v1, p0, Lcom/cashwalk/cashwalk/fragment/SignupInviteFragment;->next:Landroid/widget/Button;

    new-instance v2, Lcom/cashwalk/cashwalk/fragment/SignupInviteFragment$2;

    invoke-direct {v2, p0}, Lcom/cashwalk/cashwalk/fragment/SignupInviteFragment$2;-><init>(Lcom/cashwalk/cashwalk/fragment/SignupInviteFragment;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 80
    return-object v0
.end method

.method public setUser(Lcom/cashwalk/cashwalk/util/network/model/User;)V
    .locals 0
    .param p1, "user"    # Lcom/cashwalk/cashwalk/util/network/model/User;

    .prologue
    .line 39
    iput-object p1, p0, Lcom/cashwalk/cashwalk/fragment/SignupInviteFragment;->user:Lcom/cashwalk/cashwalk/util/network/model/User;

    .line 40
    return-void
.end method
