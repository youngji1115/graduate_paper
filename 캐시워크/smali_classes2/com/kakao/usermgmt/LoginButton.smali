.class public Lcom/kakao/usermgmt/LoginButton;
.super Landroid/widget/FrameLayout;
.source "LoginButton.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kakao/usermgmt/LoginButton$Item;
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 54
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 55
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 58
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 59
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 62
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 63
    return-void
.end method

.method static synthetic access$000(Lcom/kakao/usermgmt/LoginButton;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/kakao/usermgmt/LoginButton;

    .prologue
    .line 51
    invoke-direct {p0}, Lcom/kakao/usermgmt/LoginButton;->getAuthTypes()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100(Lcom/kakao/usermgmt/LoginButton;Ljava/util/List;)V
    .locals 0
    .param p0, "x0"    # Lcom/kakao/usermgmt/LoginButton;
    .param p1, "x1"    # Ljava/util/List;

    .prologue
    .line 51
    invoke-direct {p0, p1}, Lcom/kakao/usermgmt/LoginButton;->onClickLoginButton(Ljava/util/List;)V

    return-void
.end method

.method private getAuthTypes()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/kakao/auth/AuthType;",
            ">;"
        }
    .end annotation

    .prologue
    .line 86
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 87
    .local v0, "availableAuthTypes":Ljava/util/List;, "Ljava/util/List<Lcom/kakao/auth/AuthType;>;"
    invoke-virtual {p0}, Lcom/kakao/usermgmt/LoginButton;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {}, Lcom/kakao/auth/Session;->getCurrentSession()Lcom/kakao/auth/Session;

    move-result-object v3

    invoke-virtual {v3}, Lcom/kakao/auth/Session;->isProjectLogin()Z

    move-result v3

    invoke-static {v2, v3}, Lcom/kakao/util/helper/TalkProtocol;->existCapriLoginActivityInTalk(Landroid/content/Context;Z)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 88
    sget-object v2, Lcom/kakao/auth/AuthType;->KAKAO_TALK:Lcom/kakao/auth/AuthType;

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 89
    sget-object v2, Lcom/kakao/auth/AuthType;->KAKAO_TALK_EXCLUDE_NATIVE_LOGIN:Lcom/kakao/auth/AuthType;

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 91
    :cond_0
    invoke-virtual {p0}, Lcom/kakao/usermgmt/LoginButton;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {}, Lcom/kakao/auth/Session;->getCurrentSession()Lcom/kakao/auth/Session;

    move-result-object v3

    invoke-virtual {v3}, Lcom/kakao/auth/Session;->isProjectLogin()Z

    move-result v3

    invoke-static {v2, v3}, Lcom/kakao/util/helper/StoryProtocol;->existCapriLoginActivityInStory(Landroid/content/Context;Z)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 92
    sget-object v2, Lcom/kakao/auth/AuthType;->KAKAO_STORY:Lcom/kakao/auth/AuthType;

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 94
    :cond_1
    sget-object v2, Lcom/kakao/auth/AuthType;->KAKAO_ACCOUNT:Lcom/kakao/auth/AuthType;

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 96
    invoke-static {}, Lcom/kakao/auth/Session;->getCurrentSession()Lcom/kakao/auth/Session;

    move-result-object v2

    invoke-virtual {v2}, Lcom/kakao/auth/Session;->getAuthTypes()[Lcom/kakao/auth/AuthType;

    move-result-object v1

    .line 97
    .local v1, "selectedAuthTypes":[Lcom/kakao/auth/AuthType;
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->retainAll(Ljava/util/Collection;)Z

    .line 100
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-nez v2, :cond_2

    .line 101
    sget-object v2, Lcom/kakao/auth/AuthType;->KAKAO_ACCOUNT:Lcom/kakao/auth/AuthType;

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 103
    :cond_2
    return-object v0
.end method

.method private onClickLoginButton(Ljava/util/List;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/kakao/auth/AuthType;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 107
    .local p1, "authTypes":Ljava/util/List;, "Ljava/util/List<Lcom/kakao/auth/AuthType;>;"
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 108
    .local v7, "itemList":Ljava/util/List;, "Ljava/util/List<Lcom/kakao/usermgmt/LoginButton$Item;>;"
    sget-object v1, Lcom/kakao/auth/AuthType;->KAKAO_TALK:Lcom/kakao/auth/AuthType;

    invoke-interface {p1, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 109
    new-instance v1, Lcom/kakao/usermgmt/LoginButton$Item;

    sget v2, Lcom/kakao/usermgmt/R$string;->com_kakao_kakaotalk_account:I

    sget v3, Lcom/kakao/usermgmt/R$drawable;->kakaotalk_icon:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    sget v4, Lcom/kakao/usermgmt/R$string;->com_kakao_kakaotalk_account_tts:I

    sget-object v6, Lcom/kakao/auth/AuthType;->KAKAO_TALK:Lcom/kakao/auth/AuthType;

    invoke-direct {v1, v2, v3, v4, v6}, Lcom/kakao/usermgmt/LoginButton$Item;-><init>(ILjava/lang/Integer;ILcom/kakao/auth/AuthType;)V

    invoke-interface {v7, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 111
    :cond_0
    sget-object v1, Lcom/kakao/auth/AuthType;->KAKAO_STORY:Lcom/kakao/auth/AuthType;

    invoke-interface {p1, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 112
    new-instance v1, Lcom/kakao/usermgmt/LoginButton$Item;

    sget v2, Lcom/kakao/usermgmt/R$string;->com_kakao_kakaostory_account:I

    sget v3, Lcom/kakao/usermgmt/R$drawable;->kakaostory_icon:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    sget v4, Lcom/kakao/usermgmt/R$string;->com_kakao_kakaostory_account_tts:I

    sget-object v6, Lcom/kakao/auth/AuthType;->KAKAO_STORY:Lcom/kakao/auth/AuthType;

    invoke-direct {v1, v2, v3, v4, v6}, Lcom/kakao/usermgmt/LoginButton$Item;-><init>(ILjava/lang/Integer;ILcom/kakao/auth/AuthType;)V

    invoke-interface {v7, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 114
    :cond_1
    sget-object v1, Lcom/kakao/auth/AuthType;->KAKAO_ACCOUNT:Lcom/kakao/auth/AuthType;

    invoke-interface {p1, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 115
    new-instance v1, Lcom/kakao/usermgmt/LoginButton$Item;

    sget v2, Lcom/kakao/usermgmt/R$string;->com_kakao_other_kakaoaccount:I

    sget v3, Lcom/kakao/usermgmt/R$drawable;->kakaoaccount_icon:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    sget v4, Lcom/kakao/usermgmt/R$string;->com_kakao_other_kakaoaccount_tts:I

    sget-object v6, Lcom/kakao/auth/AuthType;->KAKAO_ACCOUNT:Lcom/kakao/auth/AuthType;

    invoke-direct {v1, v2, v3, v4, v6}, Lcom/kakao/usermgmt/LoginButton$Item;-><init>(ILjava/lang/Integer;ILcom/kakao/auth/AuthType;)V

    invoke-interface {v7, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 117
    :cond_2
    new-instance v1, Lcom/kakao/usermgmt/LoginButton$Item;

    sget v2, Lcom/kakao/usermgmt/R$string;->com_kakao_account_cancel:I

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    sget v4, Lcom/kakao/usermgmt/R$string;->com_kakao_account_cancel_tts:I

    const/4 v6, 0x0

    invoke-direct {v1, v2, v3, v4, v6}, Lcom/kakao/usermgmt/LoginButton$Item;-><init>(ILjava/lang/Integer;ILcom/kakao/auth/AuthType;)V

    invoke-interface {v7, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 119
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Lcom/kakao/usermgmt/LoginButton$Item;

    invoke-interface {v7, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Lcom/kakao/usermgmt/LoginButton$Item;

    .line 121
    .local v5, "items":[Lcom/kakao/usermgmt/LoginButton$Item;
    new-instance v0, Lcom/kakao/usermgmt/LoginButton$2;

    .line 122
    invoke-virtual {p0}, Lcom/kakao/usermgmt/LoginButton;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x1090011

    const v4, 0x1020014

    move-object v1, p0

    move-object v6, v5

    invoke-direct/range {v0 .. v7}, Lcom/kakao/usermgmt/LoginButton$2;-><init>(Lcom/kakao/usermgmt/LoginButton;Landroid/content/Context;II[Lcom/kakao/usermgmt/LoginButton$Item;[Lcom/kakao/usermgmt/LoginButton$Item;Ljava/util/List;)V

    .line 149
    .local v0, "adapter":Landroid/widget/ListAdapter;
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/kakao/usermgmt/LoginButton;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    new-instance v2, Lcom/kakao/usermgmt/LoginButton$3;

    invoke-direct {v2, p0, v5}, Lcom/kakao/usermgmt/LoginButton$3;-><init>(Lcom/kakao/usermgmt/LoginButton;[Lcom/kakao/usermgmt/LoginButton$Item;)V

    .line 150
    invoke-virtual {v1, v0, v2}, Landroid/app/AlertDialog$Builder;->setAdapter(Landroid/widget/ListAdapter;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 159
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    .line 161
    return-void
.end method


# virtual methods
.method protected onAttachedToWindow()V
    .locals 2

    .prologue
    .line 70
    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    .line 71
    invoke-virtual {p0}, Lcom/kakao/usermgmt/LoginButton;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/kakao/usermgmt/R$layout;->kakao_login_layout:I

    invoke-static {v0, v1, p0}, Lcom/kakao/usermgmt/LoginButton;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 72
    new-instance v0, Lcom/kakao/usermgmt/LoginButton$1;

    invoke-direct {v0, p0}, Lcom/kakao/usermgmt/LoginButton$1;-><init>(Lcom/kakao/usermgmt/LoginButton;)V

    invoke-virtual {p0, v0}, Lcom/kakao/usermgmt/LoginButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 83
    return-void
.end method
