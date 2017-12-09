.class public Lcom/cashwalk/cashwalk/fragment/FriendRankFragment;
.super Landroid/support/v4/app/Fragment;
.source "FriendRankFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cashwalk/cashwalk/fragment/FriendRankFragment$RankListAdapter;
    }
.end annotation


# static fields
.field public static instance:Lcom/cashwalk/cashwalk/fragment/FriendRankFragment;


# instance fields
.field private TOTAL_RECOMMEND_COUNT:I

.field private date:Landroid/widget/TextView;

.field private fb_id:Ljava/lang/String;

.field private fb_token:Ljava/lang/String;

.field private id:Ljava/lang/String;

.field private isContactsConnect:Z

.field private isFacebookConnect:Z

.field private iv_add_connect_image:Landroid/widget/ImageView;

.field private li_not_friend:Landroid/widget/RelativeLayout;

.field private listView:Landroid/widget/ListView;

.field private mActivity:Landroid/app/Activity;

.field private mContactsDBHelper:Lcom/cashwalk/cashwalk/util/ContactsDBHelper;

.field private mRecommendContactsFriendList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/cashwalk/cashwalk/util/network/model/Friend;",
            ">;"
        }
    .end annotation
.end field

.field private mRecommendFacebookFriendList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/cashwalk/cashwalk/util/network/model/Friend;",
            ">;"
        }
    .end annotation
.end field

.field private mRecommendResultList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/cashwalk/cashwalk/util/network/model/Friend;",
            ">;"
        }
    .end annotation
.end field

.field private pref:Landroid/content/SharedPreferences;

.field private preperation:Landroid/widget/LinearLayout;

.field private refreshLayout:Landroid/support/v4/widget/SwipeRefreshLayout;

.field public rl_add_connect_option:Landroid/widget/RelativeLayout;

.field private rl_find_friend:Landroid/widget/RelativeLayout;

.field private tv_add_connect_close:Landroid/widget/TextView;

.field private tv_add_connect_text:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 84
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    .line 76
    iput-object v0, p0, Lcom/cashwalk/cashwalk/fragment/FriendRankFragment;->id:Ljava/lang/String;

    .line 77
    iput-object v0, p0, Lcom/cashwalk/cashwalk/fragment/FriendRankFragment;->fb_token:Ljava/lang/String;

    .line 78
    iput-object v0, p0, Lcom/cashwalk/cashwalk/fragment/FriendRankFragment;->fb_id:Ljava/lang/String;

    .line 80
    iput-object v0, p0, Lcom/cashwalk/cashwalk/fragment/FriendRankFragment;->mActivity:Landroid/app/Activity;

    .line 82
    const/4 v0, 0x0

    iput v0, p0, Lcom/cashwalk/cashwalk/fragment/FriendRankFragment;->TOTAL_RECOMMEND_COUNT:I

    .line 86
    return-void
.end method

.method static synthetic access$000(Lcom/cashwalk/cashwalk/fragment/FriendRankFragment;)Z
    .locals 1
    .param p0, "x0"    # Lcom/cashwalk/cashwalk/fragment/FriendRankFragment;

    .prologue
    .line 53
    iget-boolean v0, p0, Lcom/cashwalk/cashwalk/fragment/FriendRankFragment;->isContactsConnect:Z

    return v0
.end method

.method static synthetic access$100(Lcom/cashwalk/cashwalk/fragment/FriendRankFragment;)Landroid/content/SharedPreferences;
    .locals 1
    .param p0, "x0"    # Lcom/cashwalk/cashwalk/fragment/FriendRankFragment;

    .prologue
    .line 53
    iget-object v0, p0, Lcom/cashwalk/cashwalk/fragment/FriendRankFragment;->pref:Landroid/content/SharedPreferences;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/cashwalk/cashwalk/fragment/FriendRankFragment;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/cashwalk/cashwalk/fragment/FriendRankFragment;

    .prologue
    .line 53
    iget-object v0, p0, Lcom/cashwalk/cashwalk/fragment/FriendRankFragment;->mRecommendResultList:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/cashwalk/cashwalk/fragment/FriendRankFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/cashwalk/cashwalk/fragment/FriendRankFragment;

    .prologue
    .line 53
    invoke-direct {p0}, Lcom/cashwalk/cashwalk/fragment/FriendRankFragment;->getFacebookFriendList()V

    return-void
.end method

.method static synthetic access$1200(Lcom/cashwalk/cashwalk/fragment/FriendRankFragment;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/cashwalk/cashwalk/fragment/FriendRankFragment;

    .prologue
    .line 53
    iget-object v0, p0, Lcom/cashwalk/cashwalk/fragment/FriendRankFragment;->mRecommendFacebookFriendList:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$1202(Lcom/cashwalk/cashwalk/fragment/FriendRankFragment;Ljava/util/List;)Ljava/util/List;
    .locals 0
    .param p0, "x0"    # Lcom/cashwalk/cashwalk/fragment/FriendRankFragment;
    .param p1, "x1"    # Ljava/util/List;

    .prologue
    .line 53
    iput-object p1, p0, Lcom/cashwalk/cashwalk/fragment/FriendRankFragment;->mRecommendFacebookFriendList:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$200(Lcom/cashwalk/cashwalk/fragment/FriendRankFragment;)Z
    .locals 1
    .param p0, "x0"    # Lcom/cashwalk/cashwalk/fragment/FriendRankFragment;

    .prologue
    .line 53
    iget-boolean v0, p0, Lcom/cashwalk/cashwalk/fragment/FriendRankFragment;->isFacebookConnect:Z

    return v0
.end method

.method static synthetic access$300(Lcom/cashwalk/cashwalk/fragment/FriendRankFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/cashwalk/cashwalk/fragment/FriendRankFragment;

    .prologue
    .line 53
    invoke-direct {p0}, Lcom/cashwalk/cashwalk/fragment/FriendRankFragment;->refreshList()V

    return-void
.end method

.method static synthetic access$400(Lcom/cashwalk/cashwalk/fragment/FriendRankFragment;)I
    .locals 1
    .param p0, "x0"    # Lcom/cashwalk/cashwalk/fragment/FriendRankFragment;

    .prologue
    .line 53
    iget v0, p0, Lcom/cashwalk/cashwalk/fragment/FriendRankFragment;->TOTAL_RECOMMEND_COUNT:I

    return v0
.end method

.method static synthetic access$402(Lcom/cashwalk/cashwalk/fragment/FriendRankFragment;I)I
    .locals 0
    .param p0, "x0"    # Lcom/cashwalk/cashwalk/fragment/FriendRankFragment;
    .param p1, "x1"    # I

    .prologue
    .line 53
    iput p1, p0, Lcom/cashwalk/cashwalk/fragment/FriendRankFragment;->TOTAL_RECOMMEND_COUNT:I

    return p1
.end method

.method static synthetic access$500(Lcom/cashwalk/cashwalk/fragment/FriendRankFragment;)Landroid/widget/RelativeLayout;
    .locals 1
    .param p0, "x0"    # Lcom/cashwalk/cashwalk/fragment/FriendRankFragment;

    .prologue
    .line 53
    iget-object v0, p0, Lcom/cashwalk/cashwalk/fragment/FriendRankFragment;->li_not_friend:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method static synthetic access$600(Lcom/cashwalk/cashwalk/fragment/FriendRankFragment;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/cashwalk/cashwalk/fragment/FriendRankFragment;

    .prologue
    .line 53
    iget-object v0, p0, Lcom/cashwalk/cashwalk/fragment/FriendRankFragment;->date:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$700(Lcom/cashwalk/cashwalk/fragment/FriendRankFragment;)Landroid/widget/ListView;
    .locals 1
    .param p0, "x0"    # Lcom/cashwalk/cashwalk/fragment/FriendRankFragment;

    .prologue
    .line 53
    iget-object v0, p0, Lcom/cashwalk/cashwalk/fragment/FriendRankFragment;->listView:Landroid/widget/ListView;

    return-object v0
.end method

.method static synthetic access$800(Lcom/cashwalk/cashwalk/fragment/FriendRankFragment;)Landroid/support/v4/widget/SwipeRefreshLayout;
    .locals 1
    .param p0, "x0"    # Lcom/cashwalk/cashwalk/fragment/FriendRankFragment;

    .prologue
    .line 53
    iget-object v0, p0, Lcom/cashwalk/cashwalk/fragment/FriendRankFragment;->refreshLayout:Landroid/support/v4/widget/SwipeRefreshLayout;

    return-object v0
.end method

.method static synthetic access$900(Lcom/cashwalk/cashwalk/fragment/FriendRankFragment;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/cashwalk/cashwalk/fragment/FriendRankFragment;

    .prologue
    .line 53
    iget-object v0, p0, Lcom/cashwalk/cashwalk/fragment/FriendRankFragment;->mRecommendContactsFriendList:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$902(Lcom/cashwalk/cashwalk/fragment/FriendRankFragment;Ljava/util/List;)Ljava/util/List;
    .locals 0
    .param p0, "x0"    # Lcom/cashwalk/cashwalk/fragment/FriendRankFragment;
    .param p1, "x1"    # Ljava/util/List;

    .prologue
    .line 53
    iput-object p1, p0, Lcom/cashwalk/cashwalk/fragment/FriendRankFragment;->mRecommendContactsFriendList:Ljava/util/List;

    return-object p1
.end method

.method private connectCheck()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 173
    iget-object v0, p0, Lcom/cashwalk/cashwalk/fragment/FriendRankFragment;->pref:Landroid/content/SharedPreferences;

    const-string v1, "IS_FACEBOOK_CONNECT"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/cashwalk/cashwalk/fragment/FriendRankFragment;->isFacebookConnect:Z

    .line 174
    iget-object v0, p0, Lcom/cashwalk/cashwalk/fragment/FriendRankFragment;->pref:Landroid/content/SharedPreferences;

    const-string v1, "IS_CONTACTS_CONNECT"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/cashwalk/cashwalk/fragment/FriendRankFragment;->isContactsConnect:Z

    .line 176
    iget-boolean v0, p0, Lcom/cashwalk/cashwalk/fragment/FriendRankFragment;->isContactsConnect:Z

    if-nez v0, :cond_0

    .line 177
    iget-object v0, p0, Lcom/cashwalk/cashwalk/fragment/FriendRankFragment;->rl_add_connect_option:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 178
    iget-object v0, p0, Lcom/cashwalk/cashwalk/fragment/FriendRankFragment;->iv_add_connect_image:Landroid/widget/ImageView;

    const v1, 0x7f02015a

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 179
    iget-object v0, p0, Lcom/cashwalk/cashwalk/fragment/FriendRankFragment;->tv_add_connect_text:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/cashwalk/cashwalk/fragment/FriendRankFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090172

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 187
    :goto_0
    return-void

    .line 180
    :cond_0
    iget-boolean v0, p0, Lcom/cashwalk/cashwalk/fragment/FriendRankFragment;->isFacebookConnect:Z

    if-nez v0, :cond_1

    .line 181
    iget-object v0, p0, Lcom/cashwalk/cashwalk/fragment/FriendRankFragment;->rl_add_connect_option:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 182
    iget-object v0, p0, Lcom/cashwalk/cashwalk/fragment/FriendRankFragment;->iv_add_connect_image:Landroid/widget/ImageView;

    const v1, 0x7f02015c

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 183
    iget-object v0, p0, Lcom/cashwalk/cashwalk/fragment/FriendRankFragment;->tv_add_connect_text:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/cashwalk/cashwalk/fragment/FriendRankFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090171

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 185
    :cond_1
    iget-object v0, p0, Lcom/cashwalk/cashwalk/fragment/FriendRankFragment;->rl_add_connect_option:Landroid/widget/RelativeLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto :goto_0
.end method

.method private getFacebookFriendList()V
    .locals 4

    .prologue
    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 375
    iget-object v1, p0, Lcom/cashwalk/cashwalk/fragment/FriendRankFragment;->mActivity:Landroid/app/Activity;

    if-nez v1, :cond_0

    .line 424
    :goto_0
    return-void

    .line 379
    :cond_0
    invoke-static {}, Lcom/facebook/AccessToken;->getCurrentAccessToken()Lcom/facebook/AccessToken;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 380
    invoke-static {}, Lcom/facebook/AccessToken;->getCurrentAccessToken()Lcom/facebook/AccessToken;

    move-result-object v1

    invoke-virtual {v1}, Lcom/facebook/AccessToken;->getToken()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/cashwalk/cashwalk/fragment/FriendRankFragment;->fb_token:Ljava/lang/String;

    .line 381
    invoke-static {}, Lcom/facebook/AccessToken;->getCurrentAccessToken()Lcom/facebook/AccessToken;

    move-result-object v1

    invoke-virtual {v1}, Lcom/facebook/AccessToken;->getUserId()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/cashwalk/cashwalk/fragment/FriendRankFragment;->fb_id:Ljava/lang/String;

    .line 387
    :goto_1
    iget-object v1, p0, Lcom/cashwalk/cashwalk/fragment/FriendRankFragment;->fb_token:Ljava/lang/String;

    if-eqz v1, :cond_2

    .line 388
    iput-boolean v3, p0, Lcom/cashwalk/cashwalk/fragment/FriendRankFragment;->isFacebookConnect:Z

    .line 389
    iget-object v1, p0, Lcom/cashwalk/cashwalk/fragment/FriendRankFragment;->pref:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "IS_FACEBOOK_CONNECT"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 391
    iget-object v1, p0, Lcom/cashwalk/cashwalk/fragment/FriendRankFragment;->fb_id:Ljava/lang/String;

    iget-object v2, p0, Lcom/cashwalk/cashwalk/fragment/FriendRankFragment;->fb_token:Ljava/lang/String;

    new-instance v3, Lcom/cashwalk/cashwalk/fragment/FriendRankFragment$7;

    invoke-direct {v3, p0}, Lcom/cashwalk/cashwalk/fragment/FriendRankFragment$7;-><init>(Lcom/cashwalk/cashwalk/fragment/FriendRankFragment;)V

    invoke-static {v1, v2, v3}, Lcom/cashwalk/cashwalk/util/network/RestClient;->getFriendFacebookRecommend(Ljava/lang/String;Ljava/lang/String;Lcom/cashwalk/cashwalk/util/network/ResponseHandler;)Lcom/android/volley/toolbox/JsonObjectRequest;

    move-result-object v0

    .line 418
    .local v0, "request":Lcom/android/volley/toolbox/JsonObjectRequest;
    iget-object v1, p0, Lcom/cashwalk/cashwalk/fragment/FriendRankFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v1

    check-cast v1, Lcom/cashwalk/cashwalk/CashWalkApp;

    invoke-virtual {v1}, Lcom/cashwalk/cashwalk/CashWalkApp;->requestQueue()Lcom/android/volley/RequestQueue;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/volley/RequestQueue;->add(Lcom/android/volley/Request;)Lcom/android/volley/Request;

    goto :goto_0

    .line 383
    .end local v0    # "request":Lcom/android/volley/toolbox/JsonObjectRequest;
    :cond_1
    iput-object v2, p0, Lcom/cashwalk/cashwalk/fragment/FriendRankFragment;->fb_token:Ljava/lang/String;

    .line 384
    iput-object v2, p0, Lcom/cashwalk/cashwalk/fragment/FriendRankFragment;->fb_id:Ljava/lang/String;

    goto :goto_1

    .line 422
    :cond_2
    invoke-direct {p0}, Lcom/cashwalk/cashwalk/fragment/FriendRankFragment;->refreshList()V

    goto :goto_0
.end method

.method private getRecommendPhoneList()V
    .locals 9

    .prologue
    .line 302
    iget-object v6, p0, Lcom/cashwalk/cashwalk/fragment/FriendRankFragment;->mActivity:Landroid/app/Activity;

    if-nez v6, :cond_0

    .line 371
    :goto_0
    return-void

    .line 307
    :cond_0
    iget-object v6, p0, Lcom/cashwalk/cashwalk/fragment/FriendRankFragment;->mContactsDBHelper:Lcom/cashwalk/cashwalk/util/ContactsDBHelper;

    const/16 v7, 0x64

    invoke-virtual {v6, v7}, Lcom/cashwalk/cashwalk/util/ContactsDBHelper;->selectRandom(I)Ljava/util/List;

    move-result-object v0

    .line 309
    .local v0, "getRandomList":Ljava/util/List;, "Ljava/util/List<Lcom/cashwalk/cashwalk/util/network/model/Phone;>;"
    const-string v5, ""

    .line 310
    .local v5, "resultPhoneList":Ljava/lang/String;
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v6

    if-eqz v6, :cond_2

    .line 311
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 312
    .local v3, "phones":Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v6

    if-ge v1, v6, :cond_1

    .line 313
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/cashwalk/cashwalk/util/network/model/Phone;

    iget-object v6, v6, Lcom/cashwalk/cashwalk/util/network/model/Phone;->number:Ljava/lang/String;

    const-string v7, "+82"

    const-string v8, "0"

    invoke-virtual {v6, v7, v8}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "-"

    const-string v8, ""

    invoke-virtual {v6, v7, v8}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "82010"

    const-string v8, "010"

    invoke-virtual {v6, v7, v8}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    .line 314
    .local v2, "phoneNumber":Ljava/lang/String;
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 315
    const-string v6, ","

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 312
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 317
    .end local v2    # "phoneNumber":Ljava/lang/String;
    :cond_1
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 318
    const/4 v6, 0x0

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    invoke-virtual {v5, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    .line 321
    .end local v1    # "i":I
    .end local v3    # "phones":Ljava/lang/StringBuilder;
    :cond_2
    new-instance v6, Lcom/cashwalk/cashwalk/fragment/FriendRankFragment$6;

    invoke-direct {v6, p0}, Lcom/cashwalk/cashwalk/fragment/FriendRankFragment$6;-><init>(Lcom/cashwalk/cashwalk/fragment/FriendRankFragment;)V

    invoke-static {v5, v6}, Lcom/cashwalk/cashwalk/util/network/RestClient;->getFriendPhoneRecommend(Ljava/lang/String;Lcom/cashwalk/cashwalk/util/network/ResponseHandler;)Lcom/android/volley/toolbox/JsonObjectRequest;

    move-result-object v4

    .line 370
    .local v4, "request":Lcom/android/volley/toolbox/JsonObjectRequest;
    iget-object v6, p0, Lcom/cashwalk/cashwalk/fragment/FriendRankFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {v6}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v6

    check-cast v6, Lcom/cashwalk/cashwalk/CashWalkApp;

    invoke-virtual {v6}, Lcom/cashwalk/cashwalk/CashWalkApp;->requestQueue()Lcom/android/volley/RequestQueue;

    move-result-object v6

    invoke-virtual {v6, v4}, Lcom/android/volley/RequestQueue;->add(Lcom/android/volley/Request;)Lcom/android/volley/Request;

    goto :goto_0
.end method

.method public static newInstance()Lcom/cashwalk/cashwalk/fragment/FriendRankFragment;
    .locals 1

    .prologue
    .line 89
    new-instance v0, Lcom/cashwalk/cashwalk/fragment/FriendRankFragment;

    invoke-direct {v0}, Lcom/cashwalk/cashwalk/fragment/FriendRankFragment;-><init>()V

    .line 90
    .local v0, "fragment":Lcom/cashwalk/cashwalk/fragment/FriendRankFragment;
    return-object v0
.end method

.method private refreshList()V
    .locals 4

    .prologue
    .line 193
    iget-object v1, p0, Lcom/cashwalk/cashwalk/fragment/FriendRankFragment;->mActivity:Landroid/app/Activity;

    if-nez v1, :cond_0

    .line 262
    :goto_0
    return-void

    .line 197
    :cond_0
    iget-object v1, p0, Lcom/cashwalk/cashwalk/fragment/FriendRankFragment;->date:Landroid/widget/TextView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 198
    iget-object v1, p0, Lcom/cashwalk/cashwalk/fragment/FriendRankFragment;->date:Landroid/widget/TextView;

    new-instance v2, Lorg/joda/time/DateTime;

    invoke-direct {v2}, Lorg/joda/time/DateTime;-><init>()V

    const-string/jumbo v3, "yyyy.MM.dd (E)"

    invoke-virtual {v2, v3}, Lorg/joda/time/DateTime;->toString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 199
    new-instance v1, Lcom/cashwalk/cashwalk/fragment/FriendRankFragment$5;

    invoke-direct {v1, p0}, Lcom/cashwalk/cashwalk/fragment/FriendRankFragment$5;-><init>(Lcom/cashwalk/cashwalk/fragment/FriendRankFragment;)V

    invoke-static {v1}, Lcom/cashwalk/cashwalk/util/network/RestClient;->getFriendRank(Lcom/cashwalk/cashwalk/util/network/ResponseHandler;)Lcom/android/volley/toolbox/JsonObjectRequest;

    move-result-object v0

    .line 261
    .local v0, "request":Lcom/android/volley/toolbox/JsonObjectRequest;
    iget-object v1, p0, Lcom/cashwalk/cashwalk/fragment/FriendRankFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v1

    check-cast v1, Lcom/cashwalk/cashwalk/CashWalkApp;

    invoke-virtual {v1}, Lcom/cashwalk/cashwalk/CashWalkApp;->requestQueue()Lcom/android/volley/RequestQueue;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/volley/RequestQueue;->add(Lcom/android/volley/Request;)Lcom/android/volley/Request;

    goto :goto_0
.end method


# virtual methods
.method public getRecommendFriendList()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, -0x1

    .line 270
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/cashwalk/cashwalk/fragment/FriendRankFragment;->mRecommendResultList:Ljava/util/List;

    .line 271
    iget-object v1, p0, Lcom/cashwalk/cashwalk/fragment/FriendRankFragment;->pref:Landroid/content/SharedPreferences;

    const-string v2, "IS_FACEBOOK_CONNECT"

    invoke-interface {v1, v2, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/cashwalk/cashwalk/fragment/FriendRankFragment;->isFacebookConnect:Z

    .line 272
    iget-object v1, p0, Lcom/cashwalk/cashwalk/fragment/FriendRankFragment;->pref:Landroid/content/SharedPreferences;

    const-string v2, "IS_CONTACTS_CONNECT"

    invoke-interface {v1, v2, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/cashwalk/cashwalk/fragment/FriendRankFragment;->isContactsConnect:Z

    .line 274
    iget-object v1, p0, Lcom/cashwalk/cashwalk/fragment/FriendRankFragment;->pref:Landroid/content/SharedPreferences;

    const-string v2, "FRIEND_RECOMMEND_TOTAL_COUNT"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 276
    .local v0, "totalCount":I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "#### \ucd94\ucc9c\uce5c\uad6c\uc218(\uce90\uc2dc) => "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/cashwalk/cashwalk/util/Utils;->LOG(Ljava/lang/String;)V

    .line 279
    iget-boolean v1, p0, Lcom/cashwalk/cashwalk/fragment/FriendRankFragment;->isFacebookConnect:Z

    if-nez v1, :cond_1

    iget-boolean v1, p0, Lcom/cashwalk/cashwalk/fragment/FriendRankFragment;->isContactsConnect:Z

    if-nez v1, :cond_1

    .line 280
    iput v4, p0, Lcom/cashwalk/cashwalk/fragment/FriendRankFragment;->TOTAL_RECOMMEND_COUNT:I

    .line 281
    iget-object v1, p0, Lcom/cashwalk/cashwalk/fragment/FriendRankFragment;->pref:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "FRIEND_RECOMMEND_TOTAL_COUNT"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 282
    invoke-direct {p0}, Lcom/cashwalk/cashwalk/fragment/FriendRankFragment;->refreshList()V

    .line 298
    :cond_0
    :goto_0
    return-void

    .line 286
    :cond_1
    if-ne v0, v3, :cond_5

    .line 287
    iget-boolean v1, p0, Lcom/cashwalk/cashwalk/fragment/FriendRankFragment;->isFacebookConnect:Z

    if-eqz v1, :cond_2

    iget-boolean v1, p0, Lcom/cashwalk/cashwalk/fragment/FriendRankFragment;->isContactsConnect:Z

    if-nez v1, :cond_3

    :cond_2
    iget-boolean v1, p0, Lcom/cashwalk/cashwalk/fragment/FriendRankFragment;->isContactsConnect:Z

    if-eqz v1, :cond_4

    .line 288
    :cond_3
    invoke-direct {p0}, Lcom/cashwalk/cashwalk/fragment/FriendRankFragment;->getRecommendPhoneList()V

    goto :goto_0

    .line 289
    :cond_4
    iget-boolean v1, p0, Lcom/cashwalk/cashwalk/fragment/FriendRankFragment;->isFacebookConnect:Z

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/cashwalk/cashwalk/fragment/FriendRankFragment;->isContactsConnect:Z

    if-nez v1, :cond_0

    .line 290
    invoke-direct {p0}, Lcom/cashwalk/cashwalk/fragment/FriendRankFragment;->getFacebookFriendList()V

    goto :goto_0

    .line 294
    :cond_5
    iput v0, p0, Lcom/cashwalk/cashwalk/fragment/FriendRankFragment;->TOTAL_RECOMMEND_COUNT:I

    .line 295
    invoke-direct {p0}, Lcom/cashwalk/cashwalk/fragment/FriendRankFragment;->refreshList()V

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 95
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 97
    sput-object p0, Lcom/cashwalk/cashwalk/fragment/FriendRankFragment;->instance:Lcom/cashwalk/cashwalk/fragment/FriendRankFragment;

    .line 98
    invoke-virtual {p0}, Lcom/cashwalk/cashwalk/fragment/FriendRankFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    iput-object v0, p0, Lcom/cashwalk/cashwalk/fragment/FriendRankFragment;->mActivity:Landroid/app/Activity;

    .line 100
    invoke-virtual {p0}, Lcom/cashwalk/cashwalk/fragment/FriendRankFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/cashwalk/cashwalk/fragment/FriendRankFragment;->pref:Landroid/content/SharedPreferences;

    .line 101
    new-instance v0, Lcom/cashwalk/cashwalk/util/ContactsDBHelper;

    invoke-virtual {p0}, Lcom/cashwalk/cashwalk/fragment/FriendRankFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/cashwalk/cashwalk/util/ContactsDBHelper;-><init>(Landroid/content/Context;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;)V

    iput-object v0, p0, Lcom/cashwalk/cashwalk/fragment/FriendRankFragment;->mContactsDBHelper:Lcom/cashwalk/cashwalk/util/ContactsDBHelper;

    .line 102
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/cashwalk/cashwalk/fragment/FriendRankFragment;->mRecommendFacebookFriendList:Ljava/util/List;

    .line 103
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/cashwalk/cashwalk/fragment/FriendRankFragment;->mRecommendContactsFriendList:Ljava/util/List;

    .line 104
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/cashwalk/cashwalk/fragment/FriendRankFragment;->mRecommendResultList:Ljava/util/List;

    .line 105
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 109
    const v1, 0x7f04008e

    const/4 v2, 0x0

    invoke-virtual {p1, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 111
    .local v0, "v":Landroid/view/View;
    const v1, 0x7f1003a2

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/cashwalk/cashwalk/fragment/FriendRankFragment;->date:Landroid/widget/TextView;

    .line 113
    const v1, 0x7f1003a3

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/cashwalk/cashwalk/fragment/FriendRankFragment;->preperation:Landroid/widget/LinearLayout;

    .line 114
    const v1, 0x7f100202

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/support/v4/widget/SwipeRefreshLayout;

    iput-object v1, p0, Lcom/cashwalk/cashwalk/fragment/FriendRankFragment;->refreshLayout:Landroid/support/v4/widget/SwipeRefreshLayout;

    .line 115
    const v1, 0x7f1001ba

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ListView;

    iput-object v1, p0, Lcom/cashwalk/cashwalk/fragment/FriendRankFragment;->listView:Landroid/widget/ListView;

    .line 116
    const v1, 0x7f1003a4

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    iput-object v1, p0, Lcom/cashwalk/cashwalk/fragment/FriendRankFragment;->li_not_friend:Landroid/widget/RelativeLayout;

    .line 117
    const v1, 0x7f100313

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    iput-object v1, p0, Lcom/cashwalk/cashwalk/fragment/FriendRankFragment;->rl_find_friend:Landroid/widget/RelativeLayout;

    .line 118
    const v1, 0x7f10039e

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    iput-object v1, p0, Lcom/cashwalk/cashwalk/fragment/FriendRankFragment;->rl_add_connect_option:Landroid/widget/RelativeLayout;

    .line 119
    const v1, 0x7f1003a0

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/cashwalk/cashwalk/fragment/FriendRankFragment;->tv_add_connect_text:Landroid/widget/TextView;

    .line 120
    const v1, 0x7f1003a1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/cashwalk/cashwalk/fragment/FriendRankFragment;->tv_add_connect_close:Landroid/widget/TextView;

    .line 121
    const v1, 0x7f10039f

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/cashwalk/cashwalk/fragment/FriendRankFragment;->iv_add_connect_image:Landroid/widget/ImageView;

    .line 123
    iget-object v1, p0, Lcom/cashwalk/cashwalk/fragment/FriendRankFragment;->tv_add_connect_close:Landroid/widget/TextView;

    new-instance v2, Lcom/cashwalk/cashwalk/fragment/FriendRankFragment$1;

    invoke-direct {v2, p0}, Lcom/cashwalk/cashwalk/fragment/FriendRankFragment$1;-><init>(Lcom/cashwalk/cashwalk/fragment/FriendRankFragment;)V

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 130
    iget-object v1, p0, Lcom/cashwalk/cashwalk/fragment/FriendRankFragment;->rl_find_friend:Landroid/widget/RelativeLayout;

    new-instance v2, Lcom/cashwalk/cashwalk/fragment/FriendRankFragment$2;

    invoke-direct {v2, p0}, Lcom/cashwalk/cashwalk/fragment/FriendRankFragment$2;-><init>(Lcom/cashwalk/cashwalk/fragment/FriendRankFragment;)V

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 142
    iget-object v1, p0, Lcom/cashwalk/cashwalk/fragment/FriendRankFragment;->rl_add_connect_option:Landroid/widget/RelativeLayout;

    new-instance v2, Lcom/cashwalk/cashwalk/fragment/FriendRankFragment$3;

    invoke-direct {v2, p0}, Lcom/cashwalk/cashwalk/fragment/FriendRankFragment$3;-><init>(Lcom/cashwalk/cashwalk/fragment/FriendRankFragment;)V

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 160
    iget-object v1, p0, Lcom/cashwalk/cashwalk/fragment/FriendRankFragment;->refreshLayout:Landroid/support/v4/widget/SwipeRefreshLayout;

    new-instance v2, Lcom/cashwalk/cashwalk/fragment/FriendRankFragment$4;

    invoke-direct {v2, p0}, Lcom/cashwalk/cashwalk/fragment/FriendRankFragment$4;-><init>(Lcom/cashwalk/cashwalk/fragment/FriendRankFragment;)V

    invoke-virtual {v1, v2}, Landroid/support/v4/widget/SwipeRefreshLayout;->setOnRefreshListener(Landroid/support/v4/widget/SwipeRefreshLayout$OnRefreshListener;)V

    .line 167
    invoke-direct {p0}, Lcom/cashwalk/cashwalk/fragment/FriendRankFragment;->connectCheck()V

    .line 169
    return-object v0
.end method

.method public onResume()V
    .locals 4

    .prologue
    const/16 v3, 0x8

    const/4 v2, 0x0

    .line 428
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onResume()V

    .line 430
    new-instance v0, Lorg/joda/time/DateTime;

    invoke-direct {v0}, Lorg/joda/time/DateTime;-><init>()V

    .line 432
    .local v0, "today":Lorg/joda/time/DateTime;
    const/4 v1, 0x1

    invoke-virtual {v0, v1, v2, v2, v2}, Lorg/joda/time/DateTime;->withTime(IIII)Lorg/joda/time/DateTime;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/joda/time/DateTime;->isBefore(Lorg/joda/time/ReadableInstant;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0, v2, v2, v2, v2}, Lorg/joda/time/DateTime;->withTime(IIII)Lorg/joda/time/DateTime;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/joda/time/DateTime;->isAfter(Lorg/joda/time/ReadableInstant;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 433
    iget-object v1, p0, Lcom/cashwalk/cashwalk/fragment/FriendRankFragment;->preperation:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 434
    iget-object v1, p0, Lcom/cashwalk/cashwalk/fragment/FriendRankFragment;->refreshLayout:Landroid/support/v4/widget/SwipeRefreshLayout;

    invoke-virtual {v1, v3}, Landroid/support/v4/widget/SwipeRefreshLayout;->setVisibility(I)V

    .line 441
    :goto_0
    invoke-virtual {p0}, Lcom/cashwalk/cashwalk/fragment/FriendRankFragment;->getRecommendFriendList()V

    .line 443
    return-void

    .line 436
    :cond_0
    iget-object v1, p0, Lcom/cashwalk/cashwalk/fragment/FriendRankFragment;->preperation:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 437
    iget-object v1, p0, Lcom/cashwalk/cashwalk/fragment/FriendRankFragment;->refreshLayout:Landroid/support/v4/widget/SwipeRefreshLayout;

    invoke-virtual {v1, v2}, Landroid/support/v4/widget/SwipeRefreshLayout;->setVisibility(I)V

    goto :goto_0
.end method
