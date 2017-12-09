.class public Lcom/cashwalk/cashwalk/activity/friend/MyFeedActivity;
.super Landroid/support/v7/app/AppCompatActivity;
.source "MyFeedActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private USER_ID:Ljava/lang/String;

.field private btn_edit_profile:Landroid/widget/Button;

.field private btn_friend_status:Landroid/widget/Button;

.field private friendName:Ljava/lang/String;

.field private friendStatus:I

.field private friendType:Ljava/lang/String;

.field private isMyFeed:Z

.field private isRecommendFacebook:Z

.field private iv_profile_background:Landroid/widget/ImageView;

.field private iv_profile_image:Landroid/widget/ImageView;

.field private iv_request_new:Landroid/widget/ImageView;

.field private pref:Landroid/content/SharedPreferences;

.field private rl_emblem_layout:Landroid/widget/RelativeLayout;

.field private rl_friend_layout:Landroid/widget/RelativeLayout;

.field private tv_nickname:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 51
    invoke-direct {p0}, Landroid/support/v7/app/AppCompatActivity;-><init>()V

    .line 64
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/cashwalk/cashwalk/activity/friend/MyFeedActivity;->isMyFeed:Z

    .line 65
    iput-object v1, p0, Lcom/cashwalk/cashwalk/activity/friend/MyFeedActivity;->friendName:Ljava/lang/String;

    .line 66
    const/4 v0, -0x1

    iput v0, p0, Lcom/cashwalk/cashwalk/activity/friend/MyFeedActivity;->friendStatus:I

    .line 67
    const-string v0, ""

    iput-object v0, p0, Lcom/cashwalk/cashwalk/activity/friend/MyFeedActivity;->friendType:Ljava/lang/String;

    .line 68
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/cashwalk/cashwalk/activity/friend/MyFeedActivity;->isRecommendFacebook:Z

    .line 70
    iput-object v1, p0, Lcom/cashwalk/cashwalk/activity/friend/MyFeedActivity;->USER_ID:Ljava/lang/String;

    return-void
.end method

.method private AddReceiveFriend(Ljava/lang/String;)V
    .locals 2
    .param p1, "id"    # Ljava/lang/String;

    .prologue
    .line 628
    new-instance v1, Lcom/cashwalk/cashwalk/activity/friend/MyFeedActivity$11;

    invoke-direct {v1, p0}, Lcom/cashwalk/cashwalk/activity/friend/MyFeedActivity$11;-><init>(Lcom/cashwalk/cashwalk/activity/friend/MyFeedActivity;)V

    invoke-static {p1, v1}, Lcom/cashwalk/cashwalk/util/network/RestClient;->postUpdateFriend(Ljava/lang/String;Lcom/cashwalk/cashwalk/util/network/ResponseHandler;)Lcom/android/volley/toolbox/JsonObjectRequest;

    move-result-object v0

    .line 673
    .local v0, "request":Lcom/android/volley/toolbox/JsonObjectRequest;
    invoke-virtual {p0}, Lcom/cashwalk/cashwalk/activity/friend/MyFeedActivity;->getApplication()Landroid/app/Application;

    move-result-object v1

    check-cast v1, Lcom/cashwalk/cashwalk/CashWalkApp;

    invoke-virtual {v1}, Lcom/cashwalk/cashwalk/CashWalkApp;->requestQueue()Lcom/android/volley/RequestQueue;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/volley/RequestQueue;->add(Lcom/android/volley/Request;)Lcom/android/volley/Request;

    .line 674
    return-void
.end method

.method static synthetic access$000(Lcom/cashwalk/cashwalk/activity/friend/MyFeedActivity;)I
    .locals 1
    .param p0, "x0"    # Lcom/cashwalk/cashwalk/activity/friend/MyFeedActivity;

    .prologue
    .line 51
    iget v0, p0, Lcom/cashwalk/cashwalk/activity/friend/MyFeedActivity;->friendStatus:I

    return v0
.end method

.method static synthetic access$002(Lcom/cashwalk/cashwalk/activity/friend/MyFeedActivity;I)I
    .locals 0
    .param p0, "x0"    # Lcom/cashwalk/cashwalk/activity/friend/MyFeedActivity;
    .param p1, "x1"    # I

    .prologue
    .line 51
    iput p1, p0, Lcom/cashwalk/cashwalk/activity/friend/MyFeedActivity;->friendStatus:I

    return p1
.end method

.method static synthetic access$100(Lcom/cashwalk/cashwalk/activity/friend/MyFeedActivity;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/cashwalk/cashwalk/activity/friend/MyFeedActivity;

    .prologue
    .line 51
    iget-object v0, p0, Lcom/cashwalk/cashwalk/activity/friend/MyFeedActivity;->USER_ID:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/cashwalk/cashwalk/activity/friend/MyFeedActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/cashwalk/cashwalk/activity/friend/MyFeedActivity;

    .prologue
    .line 51
    invoke-direct {p0}, Lcom/cashwalk/cashwalk/activity/friend/MyFeedActivity;->reset()V

    return-void
.end method

.method static synthetic access$102(Lcom/cashwalk/cashwalk/activity/friend/MyFeedActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/cashwalk/cashwalk/activity/friend/MyFeedActivity;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 51
    iput-object p1, p0, Lcom/cashwalk/cashwalk/activity/friend/MyFeedActivity;->USER_ID:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1100(Lcom/cashwalk/cashwalk/activity/friend/MyFeedActivity;)Landroid/content/SharedPreferences;
    .locals 1
    .param p0, "x0"    # Lcom/cashwalk/cashwalk/activity/friend/MyFeedActivity;

    .prologue
    .line 51
    iget-object v0, p0, Lcom/cashwalk/cashwalk/activity/friend/MyFeedActivity;->pref:Landroid/content/SharedPreferences;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/cashwalk/cashwalk/activity/friend/MyFeedActivity;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/cashwalk/cashwalk/activity/friend/MyFeedActivity;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 51
    invoke-direct {p0, p1}, Lcom/cashwalk/cashwalk/activity/friend/MyFeedActivity;->getFeed(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1300(Lcom/cashwalk/cashwalk/activity/friend/MyFeedActivity;)Landroid/widget/Button;
    .locals 1
    .param p0, "x0"    # Lcom/cashwalk/cashwalk/activity/friend/MyFeedActivity;

    .prologue
    .line 51
    iget-object v0, p0, Lcom/cashwalk/cashwalk/activity/friend/MyFeedActivity;->btn_friend_status:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$200(Lcom/cashwalk/cashwalk/activity/friend/MyFeedActivity;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/cashwalk/cashwalk/activity/friend/MyFeedActivity;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 51
    invoke-direct {p0, p1}, Lcom/cashwalk/cashwalk/activity/friend/MyFeedActivity;->deleteFriend(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$300(Lcom/cashwalk/cashwalk/activity/friend/MyFeedActivity;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/cashwalk/cashwalk/activity/friend/MyFeedActivity;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 51
    invoke-direct {p0, p1}, Lcom/cashwalk/cashwalk/activity/friend/MyFeedActivity;->addFriend(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$400(Lcom/cashwalk/cashwalk/activity/friend/MyFeedActivity;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/cashwalk/cashwalk/activity/friend/MyFeedActivity;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 51
    invoke-direct {p0, p1}, Lcom/cashwalk/cashwalk/activity/friend/MyFeedActivity;->AddReceiveFriend(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$500(Lcom/cashwalk/cashwalk/activity/friend/MyFeedActivity;)Z
    .locals 1
    .param p0, "x0"    # Lcom/cashwalk/cashwalk/activity/friend/MyFeedActivity;

    .prologue
    .line 51
    iget-boolean v0, p0, Lcom/cashwalk/cashwalk/activity/friend/MyFeedActivity;->isMyFeed:Z

    return v0
.end method

.method static synthetic access$600(Lcom/cashwalk/cashwalk/activity/friend/MyFeedActivity;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/cashwalk/cashwalk/activity/friend/MyFeedActivity;

    .prologue
    .line 51
    iget-object v0, p0, Lcom/cashwalk/cashwalk/activity/friend/MyFeedActivity;->friendName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$700(Lcom/cashwalk/cashwalk/activity/friend/MyFeedActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/cashwalk/cashwalk/activity/friend/MyFeedActivity;

    .prologue
    .line 51
    invoke-direct {p0}, Lcom/cashwalk/cashwalk/activity/friend/MyFeedActivity;->initLayout()V

    return-void
.end method

.method static synthetic access$800(Lcom/cashwalk/cashwalk/activity/friend/MyFeedActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/cashwalk/cashwalk/activity/friend/MyFeedActivity;

    .prologue
    .line 51
    invoke-direct {p0}, Lcom/cashwalk/cashwalk/activity/friend/MyFeedActivity;->getFriendList()V

    return-void
.end method

.method static synthetic access$900(Lcom/cashwalk/cashwalk/activity/friend/MyFeedActivity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/cashwalk/cashwalk/activity/friend/MyFeedActivity;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # Ljava/lang/String;

    .prologue
    .line 51
    invoke-direct {p0, p1, p2, p3}, Lcom/cashwalk/cashwalk/activity/friend/MyFeedActivity;->setProfile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private addFriend(Ljava/lang/String;)V
    .locals 3
    .param p1, "friendId"    # Ljava/lang/String;

    .prologue
    .line 557
    const-string v1, "ID"

    new-instance v2, Lcom/cashwalk/cashwalk/activity/friend/MyFeedActivity$8;

    invoke-direct {v2, p0}, Lcom/cashwalk/cashwalk/activity/friend/MyFeedActivity$8;-><init>(Lcom/cashwalk/cashwalk/activity/friend/MyFeedActivity;)V

    invoke-static {p1, v1, v2}, Lcom/cashwalk/cashwalk/util/network/RestClient;->postAddFriend(Ljava/lang/String;Ljava/lang/String;Lcom/cashwalk/cashwalk/util/network/ResponseHandler;)Lcom/android/volley/toolbox/JsonObjectRequest;

    move-result-object v0

    .line 584
    .local v0, "request":Lcom/android/volley/toolbox/JsonObjectRequest;
    invoke-virtual {p0}, Lcom/cashwalk/cashwalk/activity/friend/MyFeedActivity;->getApplication()Landroid/app/Application;

    move-result-object v1

    check-cast v1, Lcom/cashwalk/cashwalk/CashWalkApp;

    invoke-virtual {v1}, Lcom/cashwalk/cashwalk/CashWalkApp;->requestQueue()Lcom/android/volley/RequestQueue;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/volley/RequestQueue;->add(Lcom/android/volley/Request;)Lcom/android/volley/Request;

    .line 586
    return-void
.end method

.method private deleteFriend(Ljava/lang/String;)V
    .locals 3
    .param p1, "friendId"    # Ljava/lang/String;

    .prologue
    .line 590
    new-instance v0, Landroid/support/v7/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/support/v7/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 591
    .local v0, "ab":Landroid/support/v7/app/AlertDialog$Builder;
    invoke-virtual {p0}, Lcom/cashwalk/cashwalk/activity/friend/MyFeedActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f09015d

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v7/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 592
    invoke-virtual {p0}, Lcom/cashwalk/cashwalk/activity/friend/MyFeedActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090101

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/cashwalk/cashwalk/activity/friend/MyFeedActivity$9;

    invoke-direct {v2, p0}, Lcom/cashwalk/cashwalk/activity/friend/MyFeedActivity$9;-><init>(Lcom/cashwalk/cashwalk/activity/friend/MyFeedActivity;)V

    invoke-virtual {v0, v1, v2}, Landroid/support/v7/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 598
    invoke-virtual {p0}, Lcom/cashwalk/cashwalk/activity/friend/MyFeedActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090132

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/cashwalk/cashwalk/activity/friend/MyFeedActivity$10;

    invoke-direct {v2, p0, p1}, Lcom/cashwalk/cashwalk/activity/friend/MyFeedActivity$10;-><init>(Lcom/cashwalk/cashwalk/activity/friend/MyFeedActivity;Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/support/v7/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 624
    invoke-virtual {v0}, Landroid/support/v7/app/AlertDialog$Builder;->show()Landroid/support/v7/app/AlertDialog;

    .line 625
    return-void
.end method

.method private getFeed(Ljava/lang/String;)V
    .locals 4
    .param p1, "_id"    # Ljava/lang/String;

    .prologue
    .line 216
    const-string v1, ""

    .line 217
    .local v1, "userId":Ljava/lang/String;
    if-eqz p1, :cond_0

    .line 219
    move-object v1, p1

    .line 220
    const-string v2, "fb_"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 221
    const-string v2, "fb_"

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    .line 222
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/cashwalk/cashwalk/activity/friend/MyFeedActivity;->isRecommendFacebook:Z

    .line 225
    :cond_0
    iget-object v2, p0, Lcom/cashwalk/cashwalk/activity/friend/MyFeedActivity;->friendType:Ljava/lang/String;

    new-instance v3, Lcom/cashwalk/cashwalk/activity/friend/MyFeedActivity$5;

    invoke-direct {v3, p0, p1}, Lcom/cashwalk/cashwalk/activity/friend/MyFeedActivity$5;-><init>(Lcom/cashwalk/cashwalk/activity/friend/MyFeedActivity;Ljava/lang/String;)V

    invoke-static {v1, v2, v3}, Lcom/cashwalk/cashwalk/util/network/RestClient;->getHomeFeed(Ljava/lang/String;Ljava/lang/String;Lcom/cashwalk/cashwalk/util/network/ResponseHandler;)Lcom/android/volley/toolbox/JsonObjectRequest;

    move-result-object v0

    .line 284
    .local v0, "request":Lcom/android/volley/toolbox/JsonObjectRequest;
    invoke-virtual {p0}, Lcom/cashwalk/cashwalk/activity/friend/MyFeedActivity;->getApplication()Landroid/app/Application;

    move-result-object v2

    check-cast v2, Lcom/cashwalk/cashwalk/CashWalkApp;

    invoke-virtual {v2}, Lcom/cashwalk/cashwalk/CashWalkApp;->requestQueue()Lcom/android/volley/RequestQueue;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/android/volley/RequestQueue;->add(Lcom/android/volley/Request;)Lcom/android/volley/Request;

    .line 285
    return-void
.end method

.method private getFriendList()V
    .locals 4

    .prologue
    .line 517
    const/4 v1, -0x1

    const-string v2, ""

    new-instance v3, Lcom/cashwalk/cashwalk/activity/friend/MyFeedActivity$7;

    invoke-direct {v3, p0}, Lcom/cashwalk/cashwalk/activity/friend/MyFeedActivity$7;-><init>(Lcom/cashwalk/cashwalk/activity/friend/MyFeedActivity;)V

    invoke-static {v1, v2, v3}, Lcom/cashwalk/cashwalk/util/network/RestClient;->getFriendList(ILjava/lang/String;Lcom/cashwalk/cashwalk/util/network/ResponseHandler;)Lcom/android/volley/toolbox/JsonObjectRequest;

    move-result-object v0

    .line 532
    .local v0, "request":Lcom/android/volley/toolbox/JsonObjectRequest;
    invoke-virtual {p0}, Lcom/cashwalk/cashwalk/activity/friend/MyFeedActivity;->getApplication()Landroid/app/Application;

    move-result-object v1

    check-cast v1, Lcom/cashwalk/cashwalk/CashWalkApp;

    invoke-virtual {v1}, Lcom/cashwalk/cashwalk/CashWalkApp;->requestQueue()Lcom/android/volley/RequestQueue;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/volley/RequestQueue;->add(Lcom/android/volley/Request;)Lcom/android/volley/Request;

    .line 533
    return-void
.end method

.method private initLayout()V
    .locals 4

    .prologue
    const/16 v3, 0x8

    const/4 v2, 0x0

    .line 144
    const v0, 0x7f100235

    invoke-virtual {p0, v0}, Lcom/cashwalk/cashwalk/activity/friend/MyFeedActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/cashwalk/cashwalk/activity/friend/MyFeedActivity;->iv_profile_background:Landroid/widget/ImageView;

    .line 145
    const v0, 0x7f100237

    invoke-virtual {p0, v0}, Lcom/cashwalk/cashwalk/activity/friend/MyFeedActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/cashwalk/cashwalk/activity/friend/MyFeedActivity;->iv_profile_image:Landroid/widget/ImageView;

    .line 146
    const v0, 0x7f100238

    invoke-virtual {p0, v0}, Lcom/cashwalk/cashwalk/activity/friend/MyFeedActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/cashwalk/cashwalk/activity/friend/MyFeedActivity;->tv_nickname:Landroid/widget/TextView;

    .line 147
    const v0, 0x7f100239

    invoke-virtual {p0, v0}, Lcom/cashwalk/cashwalk/activity/friend/MyFeedActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/cashwalk/cashwalk/activity/friend/MyFeedActivity;->btn_edit_profile:Landroid/widget/Button;

    .line 148
    const v0, 0x7f10023b

    invoke-virtual {p0, v0}, Lcom/cashwalk/cashwalk/activity/friend/MyFeedActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/cashwalk/cashwalk/activity/friend/MyFeedActivity;->rl_friend_layout:Landroid/widget/RelativeLayout;

    .line 149
    const v0, 0x7f10023e

    invoke-virtual {p0, v0}, Lcom/cashwalk/cashwalk/activity/friend/MyFeedActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/cashwalk/cashwalk/activity/friend/MyFeedActivity;->rl_emblem_layout:Landroid/widget/RelativeLayout;

    .line 150
    const v0, 0x7f10023a

    invoke-virtual {p0, v0}, Lcom/cashwalk/cashwalk/activity/friend/MyFeedActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/cashwalk/cashwalk/activity/friend/MyFeedActivity;->btn_friend_status:Landroid/widget/Button;

    .line 151
    const v0, 0x7f1001d2

    invoke-virtual {p0, v0}, Lcom/cashwalk/cashwalk/activity/friend/MyFeedActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/cashwalk/cashwalk/activity/friend/MyFeedActivity;->iv_request_new:Landroid/widget/ImageView;

    .line 153
    iget-boolean v0, p0, Lcom/cashwalk/cashwalk/activity/friend/MyFeedActivity;->isMyFeed:Z

    if-eqz v0, :cond_1

    .line 154
    iget-object v0, p0, Lcom/cashwalk/cashwalk/activity/friend/MyFeedActivity;->btn_edit_profile:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 155
    iget-object v0, p0, Lcom/cashwalk/cashwalk/activity/friend/MyFeedActivity;->btn_friend_status:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setVisibility(I)V

    .line 157
    iget-object v0, p0, Lcom/cashwalk/cashwalk/activity/friend/MyFeedActivity;->pref:Landroid/content/SharedPreferences;

    const-string v1, "LAST_REQUEST_COUNT"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    sget v1, Lcom/cashwalk/cashwalk/CashWalkApp;->REQUEST_COUNT:I

    if-eq v0, v1, :cond_0

    .line 158
    iget-object v0, p0, Lcom/cashwalk/cashwalk/activity/friend/MyFeedActivity;->iv_request_new:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 168
    :goto_0
    iget-object v0, p0, Lcom/cashwalk/cashwalk/activity/friend/MyFeedActivity;->btn_friend_status:Landroid/widget/Button;

    new-instance v1, Lcom/cashwalk/cashwalk/activity/friend/MyFeedActivity$1;

    invoke-direct {v1, p0}, Lcom/cashwalk/cashwalk/activity/friend/MyFeedActivity$1;-><init>(Lcom/cashwalk/cashwalk/activity/friend/MyFeedActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 183
    iget-object v0, p0, Lcom/cashwalk/cashwalk/activity/friend/MyFeedActivity;->btn_edit_profile:Landroid/widget/Button;

    new-instance v1, Lcom/cashwalk/cashwalk/activity/friend/MyFeedActivity$2;

    invoke-direct {v1, p0}, Lcom/cashwalk/cashwalk/activity/friend/MyFeedActivity$2;-><init>(Lcom/cashwalk/cashwalk/activity/friend/MyFeedActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 190
    iget-object v0, p0, Lcom/cashwalk/cashwalk/activity/friend/MyFeedActivity;->rl_friend_layout:Landroid/widget/RelativeLayout;

    new-instance v1, Lcom/cashwalk/cashwalk/activity/friend/MyFeedActivity$3;

    invoke-direct {v1, p0}, Lcom/cashwalk/cashwalk/activity/friend/MyFeedActivity$3;-><init>(Lcom/cashwalk/cashwalk/activity/friend/MyFeedActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 205
    iget-object v0, p0, Lcom/cashwalk/cashwalk/activity/friend/MyFeedActivity;->rl_emblem_layout:Landroid/widget/RelativeLayout;

    new-instance v1, Lcom/cashwalk/cashwalk/activity/friend/MyFeedActivity$4;

    invoke-direct {v1, p0}, Lcom/cashwalk/cashwalk/activity/friend/MyFeedActivity$4;-><init>(Lcom/cashwalk/cashwalk/activity/friend/MyFeedActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 212
    return-void

    .line 160
    :cond_0
    iget-object v0, p0, Lcom/cashwalk/cashwalk/activity/friend/MyFeedActivity;->iv_request_new:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 164
    :cond_1
    iget-object v0, p0, Lcom/cashwalk/cashwalk/activity/friend/MyFeedActivity;->btn_edit_profile:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setVisibility(I)V

    .line 165
    iget-object v0, p0, Lcom/cashwalk/cashwalk/activity/friend/MyFeedActivity;->btn_friend_status:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_0
.end method

.method private reset()V
    .locals 6

    .prologue
    const/4 v3, 0x0

    const/4 v5, 0x0

    .line 536
    sput-object v3, Lcom/cashwalk/cashwalk/CashWalkApp;->token:Ljava/lang/String;

    .line 537
    sput-object v3, Lcom/cashwalk/cashwalk/CashWalkApp;->u:Ljava/lang/String;

    .line 538
    iget-object v3, p0, Lcom/cashwalk/cashwalk/activity/friend/MyFeedActivity;->pref:Landroid/content/SharedPreferences;

    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 541
    new-instance v3, Lorg/joda/time/DateTime;

    invoke-direct {v3}, Lorg/joda/time/DateTime;-><init>()V

    const-string/jumbo v4, "yyyyMMdd"

    invoke-virtual {v3, v4}, Lorg/joda/time/DateTime;->toString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 542
    .local v2, "today":Ljava/lang/String;
    iget-object v3, p0, Lcom/cashwalk/cashwalk/activity/friend/MyFeedActivity;->pref:Landroid/content/SharedPreferences;

    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 543
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v3, "LOCKSCREEN_HARVESTED_STEPS"

    invoke-interface {v0, v3, v5}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 544
    const-string/jumbo v3, "steps"

    invoke-interface {v0, v3, v5}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 545
    const-string v3, "LOCKSCREEN_UNLOCK_DATE"

    invoke-interface {v0, v3, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 546
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 547
    new-instance v3, Landroid/content/Intent;

    const-class v4, Lcom/cashwalk/cashwalk/lockscreen/LockScreenService;

    invoke-direct {v3, p0, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v3}, Lcom/cashwalk/cashwalk/activity/friend/MyFeedActivity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 549
    new-instance v1, Landroid/content/Intent;

    const-class v3, Lcom/cashwalk/cashwalk/activity/SplashActivity;

    invoke-direct {v1, p0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 550
    .local v1, "restartApp":Landroid/content/Intent;
    const v3, 0x8000

    invoke-virtual {v1, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 551
    const/high16 v3, 0x10000000

    invoke-virtual {v1, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 552
    invoke-virtual {p0, v1}, Lcom/cashwalk/cashwalk/activity/friend/MyFeedActivity;->startActivity(Landroid/content/Intent;)V

    .line 553
    invoke-virtual {p0}, Lcom/cashwalk/cashwalk/activity/friend/MyFeedActivity;->finish()V

    .line 554
    return-void
.end method

.method private setProfile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "nickname"    # Ljava/lang/String;
    .param p2, "path"    # Ljava/lang/String;
    .param p3, "bgUrl"    # Ljava/lang/String;

    .prologue
    .line 289
    iget-boolean v0, p0, Lcom/cashwalk/cashwalk/activity/friend/MyFeedActivity;->isMyFeed:Z

    if-nez v0, :cond_0

    .line 290
    iget v0, p0, Lcom/cashwalk/cashwalk/activity/friend/MyFeedActivity;->friendStatus:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_2

    .line 292
    iget-object v0, p0, Lcom/cashwalk/cashwalk/activity/friend/MyFeedActivity;->btn_friend_status:Landroid/widget/Button;

    const-string/jumbo v1, "\uce5c\uad6c\uc694\uccad"

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 307
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/cashwalk/cashwalk/activity/friend/MyFeedActivity;->tv_nickname:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 308
    if-eqz p2, :cond_1

    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 309
    const-string v0, "http"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 310
    invoke-static {p0}, Lcom/squareup/picasso/Picasso;->with(Landroid/content/Context;)Lcom/squareup/picasso/Picasso;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/squareup/picasso/Picasso;->load(Ljava/lang/String;)Lcom/squareup/picasso/RequestCreator;

    move-result-object v0

    new-instance v1, Lcom/cashwalk/cashwalk/util/CircleTransformation;

    invoke-direct {v1}, Lcom/cashwalk/cashwalk/util/CircleTransformation;-><init>()V

    invoke-virtual {v0, v1}, Lcom/squareup/picasso/RequestCreator;->transform(Lcom/squareup/picasso/Transformation;)Lcom/squareup/picasso/RequestCreator;

    move-result-object v0

    iget-object v1, p0, Lcom/cashwalk/cashwalk/activity/friend/MyFeedActivity;->iv_profile_image:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Lcom/squareup/picasso/RequestCreator;->into(Landroid/widget/ImageView;)V

    .line 316
    :cond_1
    :goto_1
    iget-object v0, p0, Lcom/cashwalk/cashwalk/activity/friend/MyFeedActivity;->iv_profile_image:Landroid/widget/ImageView;

    new-instance v1, Lcom/cashwalk/cashwalk/activity/friend/MyFeedActivity$6;

    invoke-direct {v1, p0, p2, p1}, Lcom/cashwalk/cashwalk/activity/friend/MyFeedActivity$6;-><init>(Lcom/cashwalk/cashwalk/activity/friend/MyFeedActivity;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 326
    invoke-virtual {p0, p3}, Lcom/cashwalk/cashwalk/activity/friend/MyFeedActivity;->updateBackgroundCheck(Ljava/lang/String;)V

    .line 327
    return-void

    .line 293
    :cond_2
    iget v0, p0, Lcom/cashwalk/cashwalk/activity/friend/MyFeedActivity;->friendStatus:I

    if-nez v0, :cond_3

    .line 295
    iget-object v0, p0, Lcom/cashwalk/cashwalk/activity/friend/MyFeedActivity;->btn_friend_status:Landroid/widget/Button;

    const-string/jumbo v1, "\uce5c\uad6c\uc694\uccad\ub428"

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 296
    :cond_3
    iget v0, p0, Lcom/cashwalk/cashwalk/activity/friend/MyFeedActivity;->friendStatus:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_4

    .line 298
    iget-object v0, p0, Lcom/cashwalk/cashwalk/activity/friend/MyFeedActivity;->btn_friend_status:Landroid/widget/Button;

    const-string/jumbo v1, "\uce5c\uad6c\ub04a\uae30"

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 299
    :cond_4
    iget v0, p0, Lcom/cashwalk/cashwalk/activity/friend/MyFeedActivity;->friendStatus:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_5

    .line 301
    iget-object v0, p0, Lcom/cashwalk/cashwalk/activity/friend/MyFeedActivity;->btn_friend_status:Landroid/widget/Button;

    const-string/jumbo v1, "\uce5c\uad6c\uc218\ub77d"

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 303
    :cond_5
    iget-object v0, p0, Lcom/cashwalk/cashwalk/activity/friend/MyFeedActivity;->btn_friend_status:Landroid/widget/Button;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_0

    .line 312
    :cond_6
    invoke-static {p0}, Lcom/squareup/picasso/Picasso;->with(Landroid/content/Context;)Lcom/squareup/picasso/Picasso;

    move-result-object v0

    invoke-static {}, Lcom/cashwalk/cashwalk/util/ImageUrlCache;->getInstance()Lcom/cashwalk/cashwalk/util/ImageUrlCache;

    move-result-object v1

    invoke-virtual {v1, p2}, Lcom/cashwalk/cashwalk/util/ImageUrlCache;->getImageUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/squareup/picasso/Picasso;->load(Ljava/lang/String;)Lcom/squareup/picasso/RequestCreator;

    move-result-object v0

    new-instance v1, Lcom/cashwalk/cashwalk/util/CircleTransformation;

    invoke-direct {v1}, Lcom/cashwalk/cashwalk/util/CircleTransformation;-><init>()V

    invoke-virtual {v0, v1}, Lcom/squareup/picasso/RequestCreator;->transform(Lcom/squareup/picasso/Transformation;)Lcom/squareup/picasso/RequestCreator;

    move-result-object v0

    iget-object v1, p0, Lcom/cashwalk/cashwalk/activity/friend/MyFeedActivity;->iv_profile_image:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Lcom/squareup/picasso/RequestCreator;->into(Landroid/widget/ImageView;)V

    goto :goto_1
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 512
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    .line 514
    .local v0, "getId":I
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 10
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 75
    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 76
    const v3, 0x7f040041

    invoke-virtual {p0, v3}, Lcom/cashwalk/cashwalk/activity/friend/MyFeedActivity;->setContentView(I)V

    .line 79
    invoke-virtual {p0}, Lcom/cashwalk/cashwalk/activity/friend/MyFeedActivity;->getWindow()Landroid/view/Window;

    move-result-object v3

    const v4, 0x680080

    invoke-virtual {v3, v4}, Landroid/view/Window;->addFlags(I)V

    .line 84
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v3

    iput-object v3, p0, Lcom/cashwalk/cashwalk/activity/friend/MyFeedActivity;->pref:Landroid/content/SharedPreferences;

    .line 87
    :try_start_0
    invoke-static {p0}, Lcom/google/firebase/analytics/FirebaseAnalytics;->getInstance(Landroid/content/Context;)Lcom/google/firebase/analytics/FirebaseAnalytics;

    move-result-object v3

    const-string v4, "myfeed"

    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {v3, v4, v5}, Lcom/google/firebase/analytics/FirebaseAnalytics;->logEvent(Ljava/lang/String;Landroid/os/Bundle;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 93
    :goto_0
    invoke-virtual {p0}, Lcom/cashwalk/cashwalk/activity/friend/MyFeedActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 94
    invoke-virtual {p0}, Lcom/cashwalk/cashwalk/activity/friend/MyFeedActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v3

    invoke-virtual {v3, v7}, Landroid/support/v7/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 95
    invoke-virtual {p0}, Lcom/cashwalk/cashwalk/activity/friend/MyFeedActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v3

    invoke-virtual {v3, v7}, Landroid/support/v7/app/ActionBar;->setDisplayShowHomeEnabled(Z)V

    .line 98
    :cond_0
    invoke-virtual {p0}, Lcom/cashwalk/cashwalk/activity/friend/MyFeedActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    if-eqz v3, :cond_7

    .line 99
    invoke-virtual {p0}, Lcom/cashwalk/cashwalk/activity/friend/MyFeedActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 101
    .local v1, "getData":Landroid/content/Intent;
    const-string v3, "id"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_5

    .line 103
    const-string v3, "id"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/cashwalk/cashwalk/activity/friend/MyFeedActivity;->pref:Landroid/content/SharedPreferences;

    const-string v5, "USER_ID"

    const-string v6, ""

    invoke-interface {v4, v5, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 104
    iput-boolean v8, p0, Lcom/cashwalk/cashwalk/activity/friend/MyFeedActivity;->isMyFeed:Z

    .line 105
    const-string v3, "name"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/cashwalk/cashwalk/activity/friend/MyFeedActivity;->friendName:Ljava/lang/String;

    .line 107
    const-string v3, "id"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "fb_"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 108
    const-string v3, "FB"

    iput-object v3, p0, Lcom/cashwalk/cashwalk/activity/friend/MyFeedActivity;->friendType:Ljava/lang/String;

    .line 112
    :goto_1
    const-string v3, "id"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/cashwalk/cashwalk/activity/friend/MyFeedActivity;->getFeed(Ljava/lang/String;)V

    .line 114
    invoke-virtual {p0}, Lcom/cashwalk/cashwalk/activity/friend/MyFeedActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 115
    invoke-virtual {p0}, Lcom/cashwalk/cashwalk/activity/friend/MyFeedActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "name"

    invoke-virtual {v1, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "\ub2d8\uc758 \ud648"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/support/v7/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 126
    :cond_1
    :goto_2
    const-string v3, "go_friend_list"

    invoke-virtual {v1, v3, v8}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 128
    new-instance v2, Landroid/content/Intent;

    const-class v3, Lcom/cashwalk/cashwalk/activity/friend/MyFriendListActivity;

    invoke-direct {v2, p0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 129
    .local v2, "startFriendList":Landroid/content/Intent;
    const-string v3, "postion"

    const/4 v4, 0x2

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 130
    invoke-virtual {p0, v2}, Lcom/cashwalk/cashwalk/activity/friend/MyFeedActivity;->startActivity(Landroid/content/Intent;)V

    .line 140
    .end local v1    # "getData":Landroid/content/Intent;
    .end local v2    # "startFriendList":Landroid/content/Intent;
    :cond_2
    :goto_3
    return-void

    .line 88
    :catch_0
    move-exception v0

    .line 89
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0

    .line 110
    .end local v0    # "e":Ljava/lang/Exception;
    .restart local v1    # "getData":Landroid/content/Intent;
    :cond_3
    const-string v3, ""

    iput-object v3, p0, Lcom/cashwalk/cashwalk/activity/friend/MyFeedActivity;->friendType:Ljava/lang/String;

    goto :goto_1

    .line 118
    :cond_4
    iput-boolean v7, p0, Lcom/cashwalk/cashwalk/activity/friend/MyFeedActivity;->isMyFeed:Z

    .line 119
    invoke-direct {p0, v9}, Lcom/cashwalk/cashwalk/activity/friend/MyFeedActivity;->getFeed(Ljava/lang/String;)V

    goto :goto_2

    .line 122
    :cond_5
    iput-boolean v7, p0, Lcom/cashwalk/cashwalk/activity/friend/MyFeedActivity;->isMyFeed:Z

    .line 123
    invoke-direct {p0, v9}, Lcom/cashwalk/cashwalk/activity/friend/MyFeedActivity;->getFeed(Ljava/lang/String;)V

    goto :goto_2

    .line 131
    :cond_6
    const-string v3, "go_recommend_list"

    invoke-virtual {v1, v3, v8}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 133
    new-instance v2, Landroid/content/Intent;

    const-class v3, Lcom/cashwalk/cashwalk/activity/friend/MyFriendListActivity;

    invoke-direct {v2, p0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 134
    .restart local v2    # "startFriendList":Landroid/content/Intent;
    const-string v3, "postion"

    invoke-virtual {v2, v3, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 135
    invoke-virtual {p0, v2}, Lcom/cashwalk/cashwalk/activity/friend/MyFeedActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_3

    .line 138
    .end local v1    # "getData":Landroid/content/Intent;
    .end local v2    # "startFriendList":Landroid/content/Intent;
    :cond_7
    invoke-direct {p0, v9}, Lcom/cashwalk/cashwalk/activity/friend/MyFeedActivity;->getFeed(Ljava/lang/String;)V

    goto :goto_3
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 497
    invoke-interface {p1}, Landroid/view/MenuItem;->getOrder()I

    move-result v0

    const/16 v1, 0x64

    if-ne v0, v1, :cond_0

    .line 498
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/cashwalk/cashwalk/activity/SettingsActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/cashwalk/cashwalk/activity/friend/MyFeedActivity;->startActivity(Landroid/content/Intent;)V

    .line 501
    :cond_0
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 506
    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    .line 503
    :pswitch_0
    invoke-virtual {p0}, Lcom/cashwalk/cashwalk/activity/friend/MyFeedActivity;->finish()V

    .line 504
    const/4 v0, 0x1

    goto :goto_0

    .line 501
    nop

    :pswitch_data_0
    .packed-switch 0x102002c
        :pswitch_0
    .end packed-switch
.end method

.method protected onResume()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 482
    invoke-super {p0}, Landroid/support/v7/app/AppCompatActivity;->onResume()V

    .line 484
    iget-object v0, p0, Lcom/cashwalk/cashwalk/activity/friend/MyFeedActivity;->iv_request_new:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 485
    iget-object v0, p0, Lcom/cashwalk/cashwalk/activity/friend/MyFeedActivity;->pref:Landroid/content/SharedPreferences;

    const-string v1, "LAST_REQUEST_COUNT"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    sget v1, Lcom/cashwalk/cashwalk/CashWalkApp;->REQUEST_COUNT:I

    if-eq v0, v1, :cond_1

    iget-boolean v0, p0, Lcom/cashwalk/cashwalk/activity/friend/MyFeedActivity;->isMyFeed:Z

    if-eqz v0, :cond_1

    .line 486
    iget-object v0, p0, Lcom/cashwalk/cashwalk/activity/friend/MyFeedActivity;->iv_request_new:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 492
    :cond_0
    :goto_0
    return-void

    .line 488
    :cond_1
    iget-object v0, p0, Lcom/cashwalk/cashwalk/activity/friend/MyFeedActivity;->iv_request_new:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0
.end method

.method public updateBackground(I)V
    .locals 7
    .param p1, "id"    # I

    .prologue
    const v5, 0x7f0202de

    const/16 v6, 0x32

    .line 384
    if-eqz p1, :cond_0

    .line 385
    invoke-virtual {p0}, Lcom/cashwalk/cashwalk/activity/friend/MyFeedActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v4

    invoke-interface {v4}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 386
    .local v0, "display":Landroid/view/Display;
    new-instance v2, Landroid/graphics/Point;

    invoke-direct {v2}, Landroid/graphics/Point;-><init>()V

    .line 387
    .local v2, "size":Landroid/graphics/Point;
    invoke-virtual {v0, v2}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    .line 389
    iget v3, v2, Landroid/graphics/Point;->x:I

    .line 390
    .local v3, "width":I
    iget v1, v2, Landroid/graphics/Point;->y:I

    .line 392
    .local v1, "height":I
    packed-switch p1, :pswitch_data_0

    .line 473
    invoke-static {p0}, Lcom/squareup/picasso/Picasso;->with(Landroid/content/Context;)Lcom/squareup/picasso/Picasso;

    move-result-object v4

    invoke-virtual {v4, v5}, Lcom/squareup/picasso/Picasso;->load(I)Lcom/squareup/picasso/RequestCreator;

    move-result-object v4

    invoke-virtual {v4, v3, v1}, Lcom/squareup/picasso/RequestCreator;->resize(II)Lcom/squareup/picasso/RequestCreator;

    move-result-object v4

    invoke-virtual {v4}, Lcom/squareup/picasso/RequestCreator;->centerCrop()Lcom/squareup/picasso/RequestCreator;

    move-result-object v4

    new-instance v5, Lcom/cashwalk/cashwalk/util/BlurTransformation;

    invoke-direct {v5, p0, v6}, Lcom/cashwalk/cashwalk/util/BlurTransformation;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v4, v5}, Lcom/squareup/picasso/RequestCreator;->transform(Lcom/squareup/picasso/Transformation;)Lcom/squareup/picasso/RequestCreator;

    move-result-object v4

    iget-object v5, p0, Lcom/cashwalk/cashwalk/activity/friend/MyFeedActivity;->iv_profile_background:Landroid/widget/ImageView;

    invoke-virtual {v4, v5}, Lcom/squareup/picasso/RequestCreator;->into(Landroid/widget/ImageView;)V

    .line 477
    .end local v0    # "display":Landroid/view/Display;
    .end local v1    # "height":I
    .end local v2    # "size":Landroid/graphics/Point;
    .end local v3    # "width":I
    :cond_0
    :goto_0
    return-void

    .line 394
    .restart local v0    # "display":Landroid/view/Display;
    .restart local v1    # "height":I
    .restart local v2    # "size":Landroid/graphics/Point;
    .restart local v3    # "width":I
    :pswitch_0
    invoke-static {p0}, Lcom/squareup/picasso/Picasso;->with(Landroid/content/Context;)Lcom/squareup/picasso/Picasso;

    move-result-object v4

    invoke-virtual {v4, v5}, Lcom/squareup/picasso/Picasso;->load(I)Lcom/squareup/picasso/RequestCreator;

    move-result-object v4

    invoke-virtual {v4, v3, v1}, Lcom/squareup/picasso/RequestCreator;->resize(II)Lcom/squareup/picasso/RequestCreator;

    move-result-object v4

    invoke-virtual {v4}, Lcom/squareup/picasso/RequestCreator;->centerCrop()Lcom/squareup/picasso/RequestCreator;

    move-result-object v4

    new-instance v5, Lcom/cashwalk/cashwalk/util/BlurTransformation;

    invoke-direct {v5, p0, v6}, Lcom/cashwalk/cashwalk/util/BlurTransformation;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v4, v5}, Lcom/squareup/picasso/RequestCreator;->transform(Lcom/squareup/picasso/Transformation;)Lcom/squareup/picasso/RequestCreator;

    move-result-object v4

    iget-object v5, p0, Lcom/cashwalk/cashwalk/activity/friend/MyFeedActivity;->iv_profile_background:Landroid/widget/ImageView;

    invoke-virtual {v4, v5}, Lcom/squareup/picasso/RequestCreator;->into(Landroid/widget/ImageView;)V

    goto :goto_0

    .line 397
    :pswitch_1
    invoke-static {p0}, Lcom/squareup/picasso/Picasso;->with(Landroid/content/Context;)Lcom/squareup/picasso/Picasso;

    move-result-object v4

    const v5, 0x7f0202df

    invoke-virtual {v4, v5}, Lcom/squareup/picasso/Picasso;->load(I)Lcom/squareup/picasso/RequestCreator;

    move-result-object v4

    invoke-virtual {v4, v3, v1}, Lcom/squareup/picasso/RequestCreator;->resize(II)Lcom/squareup/picasso/RequestCreator;

    move-result-object v4

    invoke-virtual {v4}, Lcom/squareup/picasso/RequestCreator;->centerCrop()Lcom/squareup/picasso/RequestCreator;

    move-result-object v4

    new-instance v5, Lcom/cashwalk/cashwalk/util/BlurTransformation;

    invoke-direct {v5, p0, v6}, Lcom/cashwalk/cashwalk/util/BlurTransformation;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v4, v5}, Lcom/squareup/picasso/RequestCreator;->transform(Lcom/squareup/picasso/Transformation;)Lcom/squareup/picasso/RequestCreator;

    move-result-object v4

    iget-object v5, p0, Lcom/cashwalk/cashwalk/activity/friend/MyFeedActivity;->iv_profile_background:Landroid/widget/ImageView;

    invoke-virtual {v4, v5}, Lcom/squareup/picasso/RequestCreator;->into(Landroid/widget/ImageView;)V

    goto :goto_0

    .line 400
    :pswitch_2
    invoke-static {p0}, Lcom/squareup/picasso/Picasso;->with(Landroid/content/Context;)Lcom/squareup/picasso/Picasso;

    move-result-object v4

    const v5, 0x7f0202e0

    invoke-virtual {v4, v5}, Lcom/squareup/picasso/Picasso;->load(I)Lcom/squareup/picasso/RequestCreator;

    move-result-object v4

    invoke-virtual {v4, v3, v1}, Lcom/squareup/picasso/RequestCreator;->resize(II)Lcom/squareup/picasso/RequestCreator;

    move-result-object v4

    invoke-virtual {v4}, Lcom/squareup/picasso/RequestCreator;->centerCrop()Lcom/squareup/picasso/RequestCreator;

    move-result-object v4

    new-instance v5, Lcom/cashwalk/cashwalk/util/BlurTransformation;

    invoke-direct {v5, p0, v6}, Lcom/cashwalk/cashwalk/util/BlurTransformation;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v4, v5}, Lcom/squareup/picasso/RequestCreator;->transform(Lcom/squareup/picasso/Transformation;)Lcom/squareup/picasso/RequestCreator;

    move-result-object v4

    iget-object v5, p0, Lcom/cashwalk/cashwalk/activity/friend/MyFeedActivity;->iv_profile_background:Landroid/widget/ImageView;

    invoke-virtual {v4, v5}, Lcom/squareup/picasso/RequestCreator;->into(Landroid/widget/ImageView;)V

    goto :goto_0

    .line 403
    :pswitch_3
    invoke-static {p0}, Lcom/squareup/picasso/Picasso;->with(Landroid/content/Context;)Lcom/squareup/picasso/Picasso;

    move-result-object v4

    const v5, 0x7f0202e1

    invoke-virtual {v4, v5}, Lcom/squareup/picasso/Picasso;->load(I)Lcom/squareup/picasso/RequestCreator;

    move-result-object v4

    invoke-virtual {v4, v3, v1}, Lcom/squareup/picasso/RequestCreator;->resize(II)Lcom/squareup/picasso/RequestCreator;

    move-result-object v4

    invoke-virtual {v4}, Lcom/squareup/picasso/RequestCreator;->centerCrop()Lcom/squareup/picasso/RequestCreator;

    move-result-object v4

    new-instance v5, Lcom/cashwalk/cashwalk/util/BlurTransformation;

    invoke-direct {v5, p0, v6}, Lcom/cashwalk/cashwalk/util/BlurTransformation;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v4, v5}, Lcom/squareup/picasso/RequestCreator;->transform(Lcom/squareup/picasso/Transformation;)Lcom/squareup/picasso/RequestCreator;

    move-result-object v4

    iget-object v5, p0, Lcom/cashwalk/cashwalk/activity/friend/MyFeedActivity;->iv_profile_background:Landroid/widget/ImageView;

    invoke-virtual {v4, v5}, Lcom/squareup/picasso/RequestCreator;->into(Landroid/widget/ImageView;)V

    goto/16 :goto_0

    .line 406
    :pswitch_4
    invoke-static {p0}, Lcom/squareup/picasso/Picasso;->with(Landroid/content/Context;)Lcom/squareup/picasso/Picasso;

    move-result-object v4

    const v5, 0x7f0202e2

    invoke-virtual {v4, v5}, Lcom/squareup/picasso/Picasso;->load(I)Lcom/squareup/picasso/RequestCreator;

    move-result-object v4

    invoke-virtual {v4, v3, v1}, Lcom/squareup/picasso/RequestCreator;->resize(II)Lcom/squareup/picasso/RequestCreator;

    move-result-object v4

    invoke-virtual {v4}, Lcom/squareup/picasso/RequestCreator;->centerCrop()Lcom/squareup/picasso/RequestCreator;

    move-result-object v4

    new-instance v5, Lcom/cashwalk/cashwalk/util/BlurTransformation;

    invoke-direct {v5, p0, v6}, Lcom/cashwalk/cashwalk/util/BlurTransformation;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v4, v5}, Lcom/squareup/picasso/RequestCreator;->transform(Lcom/squareup/picasso/Transformation;)Lcom/squareup/picasso/RequestCreator;

    move-result-object v4

    iget-object v5, p0, Lcom/cashwalk/cashwalk/activity/friend/MyFeedActivity;->iv_profile_background:Landroid/widget/ImageView;

    invoke-virtual {v4, v5}, Lcom/squareup/picasso/RequestCreator;->into(Landroid/widget/ImageView;)V

    goto/16 :goto_0

    .line 409
    :pswitch_5
    invoke-static {p0}, Lcom/squareup/picasso/Picasso;->with(Landroid/content/Context;)Lcom/squareup/picasso/Picasso;

    move-result-object v4

    const v5, 0x7f0202e3

    invoke-virtual {v4, v5}, Lcom/squareup/picasso/Picasso;->load(I)Lcom/squareup/picasso/RequestCreator;

    move-result-object v4

    invoke-virtual {v4, v3, v1}, Lcom/squareup/picasso/RequestCreator;->resize(II)Lcom/squareup/picasso/RequestCreator;

    move-result-object v4

    invoke-virtual {v4}, Lcom/squareup/picasso/RequestCreator;->centerCrop()Lcom/squareup/picasso/RequestCreator;

    move-result-object v4

    new-instance v5, Lcom/cashwalk/cashwalk/util/BlurTransformation;

    invoke-direct {v5, p0, v6}, Lcom/cashwalk/cashwalk/util/BlurTransformation;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v4, v5}, Lcom/squareup/picasso/RequestCreator;->transform(Lcom/squareup/picasso/Transformation;)Lcom/squareup/picasso/RequestCreator;

    move-result-object v4

    iget-object v5, p0, Lcom/cashwalk/cashwalk/activity/friend/MyFeedActivity;->iv_profile_background:Landroid/widget/ImageView;

    invoke-virtual {v4, v5}, Lcom/squareup/picasso/RequestCreator;->into(Landroid/widget/ImageView;)V

    goto/16 :goto_0

    .line 412
    :pswitch_6
    invoke-static {p0}, Lcom/squareup/picasso/Picasso;->with(Landroid/content/Context;)Lcom/squareup/picasso/Picasso;

    move-result-object v4

    const v5, 0x7f0202e4

    invoke-virtual {v4, v5}, Lcom/squareup/picasso/Picasso;->load(I)Lcom/squareup/picasso/RequestCreator;

    move-result-object v4

    invoke-virtual {v4, v3, v1}, Lcom/squareup/picasso/RequestCreator;->resize(II)Lcom/squareup/picasso/RequestCreator;

    move-result-object v4

    invoke-virtual {v4}, Lcom/squareup/picasso/RequestCreator;->centerCrop()Lcom/squareup/picasso/RequestCreator;

    move-result-object v4

    new-instance v5, Lcom/cashwalk/cashwalk/util/BlurTransformation;

    invoke-direct {v5, p0, v6}, Lcom/cashwalk/cashwalk/util/BlurTransformation;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v4, v5}, Lcom/squareup/picasso/RequestCreator;->transform(Lcom/squareup/picasso/Transformation;)Lcom/squareup/picasso/RequestCreator;

    move-result-object v4

    iget-object v5, p0, Lcom/cashwalk/cashwalk/activity/friend/MyFeedActivity;->iv_profile_background:Landroid/widget/ImageView;

    invoke-virtual {v4, v5}, Lcom/squareup/picasso/RequestCreator;->into(Landroid/widget/ImageView;)V

    goto/16 :goto_0

    .line 415
    :pswitch_7
    invoke-static {p0}, Lcom/squareup/picasso/Picasso;->with(Landroid/content/Context;)Lcom/squareup/picasso/Picasso;

    move-result-object v4

    const v5, 0x7f0202e5

    invoke-virtual {v4, v5}, Lcom/squareup/picasso/Picasso;->load(I)Lcom/squareup/picasso/RequestCreator;

    move-result-object v4

    invoke-virtual {v4, v3, v1}, Lcom/squareup/picasso/RequestCreator;->resize(II)Lcom/squareup/picasso/RequestCreator;

    move-result-object v4

    invoke-virtual {v4}, Lcom/squareup/picasso/RequestCreator;->centerCrop()Lcom/squareup/picasso/RequestCreator;

    move-result-object v4

    new-instance v5, Lcom/cashwalk/cashwalk/util/BlurTransformation;

    invoke-direct {v5, p0, v6}, Lcom/cashwalk/cashwalk/util/BlurTransformation;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v4, v5}, Lcom/squareup/picasso/RequestCreator;->transform(Lcom/squareup/picasso/Transformation;)Lcom/squareup/picasso/RequestCreator;

    move-result-object v4

    iget-object v5, p0, Lcom/cashwalk/cashwalk/activity/friend/MyFeedActivity;->iv_profile_background:Landroid/widget/ImageView;

    invoke-virtual {v4, v5}, Lcom/squareup/picasso/RequestCreator;->into(Landroid/widget/ImageView;)V

    goto/16 :goto_0

    .line 418
    :pswitch_8
    invoke-static {p0}, Lcom/squareup/picasso/Picasso;->with(Landroid/content/Context;)Lcom/squareup/picasso/Picasso;

    move-result-object v4

    const v5, 0x7f0202e6

    invoke-virtual {v4, v5}, Lcom/squareup/picasso/Picasso;->load(I)Lcom/squareup/picasso/RequestCreator;

    move-result-object v4

    invoke-virtual {v4, v3, v1}, Lcom/squareup/picasso/RequestCreator;->resize(II)Lcom/squareup/picasso/RequestCreator;

    move-result-object v4

    invoke-virtual {v4}, Lcom/squareup/picasso/RequestCreator;->centerCrop()Lcom/squareup/picasso/RequestCreator;

    move-result-object v4

    new-instance v5, Lcom/cashwalk/cashwalk/util/BlurTransformation;

    invoke-direct {v5, p0, v6}, Lcom/cashwalk/cashwalk/util/BlurTransformation;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v4, v5}, Lcom/squareup/picasso/RequestCreator;->transform(Lcom/squareup/picasso/Transformation;)Lcom/squareup/picasso/RequestCreator;

    move-result-object v4

    iget-object v5, p0, Lcom/cashwalk/cashwalk/activity/friend/MyFeedActivity;->iv_profile_background:Landroid/widget/ImageView;

    invoke-virtual {v4, v5}, Lcom/squareup/picasso/RequestCreator;->into(Landroid/widget/ImageView;)V

    goto/16 :goto_0

    .line 421
    :pswitch_9
    invoke-static {p0}, Lcom/squareup/picasso/Picasso;->with(Landroid/content/Context;)Lcom/squareup/picasso/Picasso;

    move-result-object v4

    const v5, 0x7f0202e7

    invoke-virtual {v4, v5}, Lcom/squareup/picasso/Picasso;->load(I)Lcom/squareup/picasso/RequestCreator;

    move-result-object v4

    invoke-virtual {v4, v3, v1}, Lcom/squareup/picasso/RequestCreator;->resize(II)Lcom/squareup/picasso/RequestCreator;

    move-result-object v4

    invoke-virtual {v4}, Lcom/squareup/picasso/RequestCreator;->centerCrop()Lcom/squareup/picasso/RequestCreator;

    move-result-object v4

    new-instance v5, Lcom/cashwalk/cashwalk/util/BlurTransformation;

    invoke-direct {v5, p0, v6}, Lcom/cashwalk/cashwalk/util/BlurTransformation;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v4, v5}, Lcom/squareup/picasso/RequestCreator;->transform(Lcom/squareup/picasso/Transformation;)Lcom/squareup/picasso/RequestCreator;

    move-result-object v4

    iget-object v5, p0, Lcom/cashwalk/cashwalk/activity/friend/MyFeedActivity;->iv_profile_background:Landroid/widget/ImageView;

    invoke-virtual {v4, v5}, Lcom/squareup/picasso/RequestCreator;->into(Landroid/widget/ImageView;)V

    goto/16 :goto_0

    .line 424
    :pswitch_a
    invoke-static {p0}, Lcom/squareup/picasso/Picasso;->with(Landroid/content/Context;)Lcom/squareup/picasso/Picasso;

    move-result-object v4

    const v5, 0x7f0202e8

    invoke-virtual {v4, v5}, Lcom/squareup/picasso/Picasso;->load(I)Lcom/squareup/picasso/RequestCreator;

    move-result-object v4

    invoke-virtual {v4, v3, v1}, Lcom/squareup/picasso/RequestCreator;->resize(II)Lcom/squareup/picasso/RequestCreator;

    move-result-object v4

    invoke-virtual {v4}, Lcom/squareup/picasso/RequestCreator;->centerCrop()Lcom/squareup/picasso/RequestCreator;

    move-result-object v4

    new-instance v5, Lcom/cashwalk/cashwalk/util/BlurTransformation;

    invoke-direct {v5, p0, v6}, Lcom/cashwalk/cashwalk/util/BlurTransformation;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v4, v5}, Lcom/squareup/picasso/RequestCreator;->transform(Lcom/squareup/picasso/Transformation;)Lcom/squareup/picasso/RequestCreator;

    move-result-object v4

    iget-object v5, p0, Lcom/cashwalk/cashwalk/activity/friend/MyFeedActivity;->iv_profile_background:Landroid/widget/ImageView;

    invoke-virtual {v4, v5}, Lcom/squareup/picasso/RequestCreator;->into(Landroid/widget/ImageView;)V

    goto/16 :goto_0

    .line 427
    :pswitch_b
    invoke-static {p0}, Lcom/squareup/picasso/Picasso;->with(Landroid/content/Context;)Lcom/squareup/picasso/Picasso;

    move-result-object v4

    const v5, 0x7f0202e9

    invoke-virtual {v4, v5}, Lcom/squareup/picasso/Picasso;->load(I)Lcom/squareup/picasso/RequestCreator;

    move-result-object v4

    invoke-virtual {v4, v3, v1}, Lcom/squareup/picasso/RequestCreator;->resize(II)Lcom/squareup/picasso/RequestCreator;

    move-result-object v4

    invoke-virtual {v4}, Lcom/squareup/picasso/RequestCreator;->centerCrop()Lcom/squareup/picasso/RequestCreator;

    move-result-object v4

    new-instance v5, Lcom/cashwalk/cashwalk/util/BlurTransformation;

    invoke-direct {v5, p0, v6}, Lcom/cashwalk/cashwalk/util/BlurTransformation;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v4, v5}, Lcom/squareup/picasso/RequestCreator;->transform(Lcom/squareup/picasso/Transformation;)Lcom/squareup/picasso/RequestCreator;

    move-result-object v4

    iget-object v5, p0, Lcom/cashwalk/cashwalk/activity/friend/MyFeedActivity;->iv_profile_background:Landroid/widget/ImageView;

    invoke-virtual {v4, v5}, Lcom/squareup/picasso/RequestCreator;->into(Landroid/widget/ImageView;)V

    goto/16 :goto_0

    .line 430
    :pswitch_c
    invoke-static {p0}, Lcom/squareup/picasso/Picasso;->with(Landroid/content/Context;)Lcom/squareup/picasso/Picasso;

    move-result-object v4

    const v5, 0x7f0202ea

    invoke-virtual {v4, v5}, Lcom/squareup/picasso/Picasso;->load(I)Lcom/squareup/picasso/RequestCreator;

    move-result-object v4

    invoke-virtual {v4, v3, v1}, Lcom/squareup/picasso/RequestCreator;->resize(II)Lcom/squareup/picasso/RequestCreator;

    move-result-object v4

    invoke-virtual {v4}, Lcom/squareup/picasso/RequestCreator;->centerCrop()Lcom/squareup/picasso/RequestCreator;

    move-result-object v4

    new-instance v5, Lcom/cashwalk/cashwalk/util/BlurTransformation;

    invoke-direct {v5, p0, v6}, Lcom/cashwalk/cashwalk/util/BlurTransformation;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v4, v5}, Lcom/squareup/picasso/RequestCreator;->transform(Lcom/squareup/picasso/Transformation;)Lcom/squareup/picasso/RequestCreator;

    move-result-object v4

    iget-object v5, p0, Lcom/cashwalk/cashwalk/activity/friend/MyFeedActivity;->iv_profile_background:Landroid/widget/ImageView;

    invoke-virtual {v4, v5}, Lcom/squareup/picasso/RequestCreator;->into(Landroid/widget/ImageView;)V

    goto/16 :goto_0

    .line 433
    :pswitch_d
    invoke-static {p0}, Lcom/squareup/picasso/Picasso;->with(Landroid/content/Context;)Lcom/squareup/picasso/Picasso;

    move-result-object v4

    const v5, 0x7f0202eb

    invoke-virtual {v4, v5}, Lcom/squareup/picasso/Picasso;->load(I)Lcom/squareup/picasso/RequestCreator;

    move-result-object v4

    invoke-virtual {v4, v3, v1}, Lcom/squareup/picasso/RequestCreator;->resize(II)Lcom/squareup/picasso/RequestCreator;

    move-result-object v4

    invoke-virtual {v4}, Lcom/squareup/picasso/RequestCreator;->centerCrop()Lcom/squareup/picasso/RequestCreator;

    move-result-object v4

    new-instance v5, Lcom/cashwalk/cashwalk/util/BlurTransformation;

    invoke-direct {v5, p0, v6}, Lcom/cashwalk/cashwalk/util/BlurTransformation;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v4, v5}, Lcom/squareup/picasso/RequestCreator;->transform(Lcom/squareup/picasso/Transformation;)Lcom/squareup/picasso/RequestCreator;

    move-result-object v4

    iget-object v5, p0, Lcom/cashwalk/cashwalk/activity/friend/MyFeedActivity;->iv_profile_background:Landroid/widget/ImageView;

    invoke-virtual {v4, v5}, Lcom/squareup/picasso/RequestCreator;->into(Landroid/widget/ImageView;)V

    goto/16 :goto_0

    .line 436
    :pswitch_e
    invoke-static {p0}, Lcom/squareup/picasso/Picasso;->with(Landroid/content/Context;)Lcom/squareup/picasso/Picasso;

    move-result-object v4

    const v5, 0x7f0202ec

    invoke-virtual {v4, v5}, Lcom/squareup/picasso/Picasso;->load(I)Lcom/squareup/picasso/RequestCreator;

    move-result-object v4

    invoke-virtual {v4, v3, v1}, Lcom/squareup/picasso/RequestCreator;->resize(II)Lcom/squareup/picasso/RequestCreator;

    move-result-object v4

    invoke-virtual {v4}, Lcom/squareup/picasso/RequestCreator;->centerCrop()Lcom/squareup/picasso/RequestCreator;

    move-result-object v4

    new-instance v5, Lcom/cashwalk/cashwalk/util/BlurTransformation;

    invoke-direct {v5, p0, v6}, Lcom/cashwalk/cashwalk/util/BlurTransformation;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v4, v5}, Lcom/squareup/picasso/RequestCreator;->transform(Lcom/squareup/picasso/Transformation;)Lcom/squareup/picasso/RequestCreator;

    move-result-object v4

    iget-object v5, p0, Lcom/cashwalk/cashwalk/activity/friend/MyFeedActivity;->iv_profile_background:Landroid/widget/ImageView;

    invoke-virtual {v4, v5}, Lcom/squareup/picasso/RequestCreator;->into(Landroid/widget/ImageView;)V

    goto/16 :goto_0

    .line 439
    :pswitch_f
    invoke-static {p0}, Lcom/squareup/picasso/Picasso;->with(Landroid/content/Context;)Lcom/squareup/picasso/Picasso;

    move-result-object v4

    const v5, 0x7f0202ed

    invoke-virtual {v4, v5}, Lcom/squareup/picasso/Picasso;->load(I)Lcom/squareup/picasso/RequestCreator;

    move-result-object v4

    invoke-virtual {v4, v3, v1}, Lcom/squareup/picasso/RequestCreator;->resize(II)Lcom/squareup/picasso/RequestCreator;

    move-result-object v4

    invoke-virtual {v4}, Lcom/squareup/picasso/RequestCreator;->centerCrop()Lcom/squareup/picasso/RequestCreator;

    move-result-object v4

    new-instance v5, Lcom/cashwalk/cashwalk/util/BlurTransformation;

    invoke-direct {v5, p0, v6}, Lcom/cashwalk/cashwalk/util/BlurTransformation;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v4, v5}, Lcom/squareup/picasso/RequestCreator;->transform(Lcom/squareup/picasso/Transformation;)Lcom/squareup/picasso/RequestCreator;

    move-result-object v4

    iget-object v5, p0, Lcom/cashwalk/cashwalk/activity/friend/MyFeedActivity;->iv_profile_background:Landroid/widget/ImageView;

    invoke-virtual {v4, v5}, Lcom/squareup/picasso/RequestCreator;->into(Landroid/widget/ImageView;)V

    goto/16 :goto_0

    .line 442
    :pswitch_10
    invoke-static {p0}, Lcom/squareup/picasso/Picasso;->with(Landroid/content/Context;)Lcom/squareup/picasso/Picasso;

    move-result-object v4

    const v5, 0x7f0202ee

    invoke-virtual {v4, v5}, Lcom/squareup/picasso/Picasso;->load(I)Lcom/squareup/picasso/RequestCreator;

    move-result-object v4

    invoke-virtual {v4, v3, v1}, Lcom/squareup/picasso/RequestCreator;->resize(II)Lcom/squareup/picasso/RequestCreator;

    move-result-object v4

    invoke-virtual {v4}, Lcom/squareup/picasso/RequestCreator;->centerCrop()Lcom/squareup/picasso/RequestCreator;

    move-result-object v4

    new-instance v5, Lcom/cashwalk/cashwalk/util/BlurTransformation;

    invoke-direct {v5, p0, v6}, Lcom/cashwalk/cashwalk/util/BlurTransformation;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v4, v5}, Lcom/squareup/picasso/RequestCreator;->transform(Lcom/squareup/picasso/Transformation;)Lcom/squareup/picasso/RequestCreator;

    move-result-object v4

    iget-object v5, p0, Lcom/cashwalk/cashwalk/activity/friend/MyFeedActivity;->iv_profile_background:Landroid/widget/ImageView;

    invoke-virtual {v4, v5}, Lcom/squareup/picasso/RequestCreator;->into(Landroid/widget/ImageView;)V

    goto/16 :goto_0

    .line 445
    :pswitch_11
    invoke-static {p0}, Lcom/squareup/picasso/Picasso;->with(Landroid/content/Context;)Lcom/squareup/picasso/Picasso;

    move-result-object v4

    const v5, 0x7f0202ef

    invoke-virtual {v4, v5}, Lcom/squareup/picasso/Picasso;->load(I)Lcom/squareup/picasso/RequestCreator;

    move-result-object v4

    invoke-virtual {v4, v3, v1}, Lcom/squareup/picasso/RequestCreator;->resize(II)Lcom/squareup/picasso/RequestCreator;

    move-result-object v4

    invoke-virtual {v4}, Lcom/squareup/picasso/RequestCreator;->centerCrop()Lcom/squareup/picasso/RequestCreator;

    move-result-object v4

    new-instance v5, Lcom/cashwalk/cashwalk/util/BlurTransformation;

    invoke-direct {v5, p0, v6}, Lcom/cashwalk/cashwalk/util/BlurTransformation;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v4, v5}, Lcom/squareup/picasso/RequestCreator;->transform(Lcom/squareup/picasso/Transformation;)Lcom/squareup/picasso/RequestCreator;

    move-result-object v4

    iget-object v5, p0, Lcom/cashwalk/cashwalk/activity/friend/MyFeedActivity;->iv_profile_background:Landroid/widget/ImageView;

    invoke-virtual {v4, v5}, Lcom/squareup/picasso/RequestCreator;->into(Landroid/widget/ImageView;)V

    goto/16 :goto_0

    .line 448
    :pswitch_12
    invoke-static {p0}, Lcom/squareup/picasso/Picasso;->with(Landroid/content/Context;)Lcom/squareup/picasso/Picasso;

    move-result-object v4

    const v5, 0x7f0202f0

    invoke-virtual {v4, v5}, Lcom/squareup/picasso/Picasso;->load(I)Lcom/squareup/picasso/RequestCreator;

    move-result-object v4

    invoke-virtual {v4, v3, v1}, Lcom/squareup/picasso/RequestCreator;->resize(II)Lcom/squareup/picasso/RequestCreator;

    move-result-object v4

    invoke-virtual {v4}, Lcom/squareup/picasso/RequestCreator;->centerCrop()Lcom/squareup/picasso/RequestCreator;

    move-result-object v4

    new-instance v5, Lcom/cashwalk/cashwalk/util/BlurTransformation;

    invoke-direct {v5, p0, v6}, Lcom/cashwalk/cashwalk/util/BlurTransformation;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v4, v5}, Lcom/squareup/picasso/RequestCreator;->transform(Lcom/squareup/picasso/Transformation;)Lcom/squareup/picasso/RequestCreator;

    move-result-object v4

    iget-object v5, p0, Lcom/cashwalk/cashwalk/activity/friend/MyFeedActivity;->iv_profile_background:Landroid/widget/ImageView;

    invoke-virtual {v4, v5}, Lcom/squareup/picasso/RequestCreator;->into(Landroid/widget/ImageView;)V

    goto/16 :goto_0

    .line 451
    :pswitch_13
    invoke-static {p0}, Lcom/squareup/picasso/Picasso;->with(Landroid/content/Context;)Lcom/squareup/picasso/Picasso;

    move-result-object v4

    const v5, 0x7f0202f1

    invoke-virtual {v4, v5}, Lcom/squareup/picasso/Picasso;->load(I)Lcom/squareup/picasso/RequestCreator;

    move-result-object v4

    invoke-virtual {v4, v3, v1}, Lcom/squareup/picasso/RequestCreator;->resize(II)Lcom/squareup/picasso/RequestCreator;

    move-result-object v4

    invoke-virtual {v4}, Lcom/squareup/picasso/RequestCreator;->centerCrop()Lcom/squareup/picasso/RequestCreator;

    move-result-object v4

    new-instance v5, Lcom/cashwalk/cashwalk/util/BlurTransformation;

    invoke-direct {v5, p0, v6}, Lcom/cashwalk/cashwalk/util/BlurTransformation;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v4, v5}, Lcom/squareup/picasso/RequestCreator;->transform(Lcom/squareup/picasso/Transformation;)Lcom/squareup/picasso/RequestCreator;

    move-result-object v4

    iget-object v5, p0, Lcom/cashwalk/cashwalk/activity/friend/MyFeedActivity;->iv_profile_background:Landroid/widget/ImageView;

    invoke-virtual {v4, v5}, Lcom/squareup/picasso/RequestCreator;->into(Landroid/widget/ImageView;)V

    goto/16 :goto_0

    .line 454
    :pswitch_14
    invoke-static {p0}, Lcom/squareup/picasso/Picasso;->with(Landroid/content/Context;)Lcom/squareup/picasso/Picasso;

    move-result-object v4

    const v5, 0x7f0202f2

    invoke-virtual {v4, v5}, Lcom/squareup/picasso/Picasso;->load(I)Lcom/squareup/picasso/RequestCreator;

    move-result-object v4

    invoke-virtual {v4, v3, v1}, Lcom/squareup/picasso/RequestCreator;->resize(II)Lcom/squareup/picasso/RequestCreator;

    move-result-object v4

    invoke-virtual {v4}, Lcom/squareup/picasso/RequestCreator;->centerCrop()Lcom/squareup/picasso/RequestCreator;

    move-result-object v4

    new-instance v5, Lcom/cashwalk/cashwalk/util/BlurTransformation;

    invoke-direct {v5, p0, v6}, Lcom/cashwalk/cashwalk/util/BlurTransformation;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v4, v5}, Lcom/squareup/picasso/RequestCreator;->transform(Lcom/squareup/picasso/Transformation;)Lcom/squareup/picasso/RequestCreator;

    move-result-object v4

    iget-object v5, p0, Lcom/cashwalk/cashwalk/activity/friend/MyFeedActivity;->iv_profile_background:Landroid/widget/ImageView;

    invoke-virtual {v4, v5}, Lcom/squareup/picasso/RequestCreator;->into(Landroid/widget/ImageView;)V

    goto/16 :goto_0

    .line 457
    :pswitch_15
    invoke-static {p0}, Lcom/squareup/picasso/Picasso;->with(Landroid/content/Context;)Lcom/squareup/picasso/Picasso;

    move-result-object v4

    const v5, 0x7f0202f3

    invoke-virtual {v4, v5}, Lcom/squareup/picasso/Picasso;->load(I)Lcom/squareup/picasso/RequestCreator;

    move-result-object v4

    invoke-virtual {v4, v3, v1}, Lcom/squareup/picasso/RequestCreator;->resize(II)Lcom/squareup/picasso/RequestCreator;

    move-result-object v4

    invoke-virtual {v4}, Lcom/squareup/picasso/RequestCreator;->centerCrop()Lcom/squareup/picasso/RequestCreator;

    move-result-object v4

    new-instance v5, Lcom/cashwalk/cashwalk/util/BlurTransformation;

    invoke-direct {v5, p0, v6}, Lcom/cashwalk/cashwalk/util/BlurTransformation;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v4, v5}, Lcom/squareup/picasso/RequestCreator;->transform(Lcom/squareup/picasso/Transformation;)Lcom/squareup/picasso/RequestCreator;

    move-result-object v4

    iget-object v5, p0, Lcom/cashwalk/cashwalk/activity/friend/MyFeedActivity;->iv_profile_background:Landroid/widget/ImageView;

    invoke-virtual {v4, v5}, Lcom/squareup/picasso/RequestCreator;->into(Landroid/widget/ImageView;)V

    goto/16 :goto_0

    .line 460
    :pswitch_16
    invoke-static {p0}, Lcom/squareup/picasso/Picasso;->with(Landroid/content/Context;)Lcom/squareup/picasso/Picasso;

    move-result-object v4

    const v5, 0x7f0202f4

    invoke-virtual {v4, v5}, Lcom/squareup/picasso/Picasso;->load(I)Lcom/squareup/picasso/RequestCreator;

    move-result-object v4

    invoke-virtual {v4, v3, v1}, Lcom/squareup/picasso/RequestCreator;->resize(II)Lcom/squareup/picasso/RequestCreator;

    move-result-object v4

    invoke-virtual {v4}, Lcom/squareup/picasso/RequestCreator;->centerCrop()Lcom/squareup/picasso/RequestCreator;

    move-result-object v4

    new-instance v5, Lcom/cashwalk/cashwalk/util/BlurTransformation;

    invoke-direct {v5, p0, v6}, Lcom/cashwalk/cashwalk/util/BlurTransformation;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v4, v5}, Lcom/squareup/picasso/RequestCreator;->transform(Lcom/squareup/picasso/Transformation;)Lcom/squareup/picasso/RequestCreator;

    move-result-object v4

    iget-object v5, p0, Lcom/cashwalk/cashwalk/activity/friend/MyFeedActivity;->iv_profile_background:Landroid/widget/ImageView;

    invoke-virtual {v4, v5}, Lcom/squareup/picasso/RequestCreator;->into(Landroid/widget/ImageView;)V

    goto/16 :goto_0

    .line 463
    :pswitch_17
    invoke-static {p0}, Lcom/squareup/picasso/Picasso;->with(Landroid/content/Context;)Lcom/squareup/picasso/Picasso;

    move-result-object v4

    const v5, 0x7f0202f5

    invoke-virtual {v4, v5}, Lcom/squareup/picasso/Picasso;->load(I)Lcom/squareup/picasso/RequestCreator;

    move-result-object v4

    invoke-virtual {v4, v3, v1}, Lcom/squareup/picasso/RequestCreator;->resize(II)Lcom/squareup/picasso/RequestCreator;

    move-result-object v4

    invoke-virtual {v4}, Lcom/squareup/picasso/RequestCreator;->centerCrop()Lcom/squareup/picasso/RequestCreator;

    move-result-object v4

    new-instance v5, Lcom/cashwalk/cashwalk/util/BlurTransformation;

    invoke-direct {v5, p0, v6}, Lcom/cashwalk/cashwalk/util/BlurTransformation;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v4, v5}, Lcom/squareup/picasso/RequestCreator;->transform(Lcom/squareup/picasso/Transformation;)Lcom/squareup/picasso/RequestCreator;

    move-result-object v4

    iget-object v5, p0, Lcom/cashwalk/cashwalk/activity/friend/MyFeedActivity;->iv_profile_background:Landroid/widget/ImageView;

    invoke-virtual {v4, v5}, Lcom/squareup/picasso/RequestCreator;->into(Landroid/widget/ImageView;)V

    goto/16 :goto_0

    .line 466
    :pswitch_18
    invoke-static {p0}, Lcom/squareup/picasso/Picasso;->with(Landroid/content/Context;)Lcom/squareup/picasso/Picasso;

    move-result-object v4

    const v5, 0x7f0202f6

    invoke-virtual {v4, v5}, Lcom/squareup/picasso/Picasso;->load(I)Lcom/squareup/picasso/RequestCreator;

    move-result-object v4

    invoke-virtual {v4, v3, v1}, Lcom/squareup/picasso/RequestCreator;->resize(II)Lcom/squareup/picasso/RequestCreator;

    move-result-object v4

    invoke-virtual {v4}, Lcom/squareup/picasso/RequestCreator;->centerCrop()Lcom/squareup/picasso/RequestCreator;

    move-result-object v4

    new-instance v5, Lcom/cashwalk/cashwalk/util/BlurTransformation;

    invoke-direct {v5, p0, v6}, Lcom/cashwalk/cashwalk/util/BlurTransformation;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v4, v5}, Lcom/squareup/picasso/RequestCreator;->transform(Lcom/squareup/picasso/Transformation;)Lcom/squareup/picasso/RequestCreator;

    move-result-object v4

    iget-object v5, p0, Lcom/cashwalk/cashwalk/activity/friend/MyFeedActivity;->iv_profile_background:Landroid/widget/ImageView;

    invoke-virtual {v4, v5}, Lcom/squareup/picasso/RequestCreator;->into(Landroid/widget/ImageView;)V

    goto/16 :goto_0

    .line 469
    :pswitch_19
    invoke-static {p0}, Lcom/squareup/picasso/Picasso;->with(Landroid/content/Context;)Lcom/squareup/picasso/Picasso;

    move-result-object v4

    const v5, 0x7f0202f7

    invoke-virtual {v4, v5}, Lcom/squareup/picasso/Picasso;->load(I)Lcom/squareup/picasso/RequestCreator;

    move-result-object v4

    invoke-virtual {v4, v3, v1}, Lcom/squareup/picasso/RequestCreator;->resize(II)Lcom/squareup/picasso/RequestCreator;

    move-result-object v4

    invoke-virtual {v4}, Lcom/squareup/picasso/RequestCreator;->centerCrop()Lcom/squareup/picasso/RequestCreator;

    move-result-object v4

    new-instance v5, Lcom/cashwalk/cashwalk/util/BlurTransformation;

    invoke-direct {v5, p0, v6}, Lcom/cashwalk/cashwalk/util/BlurTransformation;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v4, v5}, Lcom/squareup/picasso/RequestCreator;->transform(Lcom/squareup/picasso/Transformation;)Lcom/squareup/picasso/RequestCreator;

    move-result-object v4

    iget-object v5, p0, Lcom/cashwalk/cashwalk/activity/friend/MyFeedActivity;->iv_profile_background:Landroid/widget/ImageView;

    invoke-virtual {v4, v5}, Lcom/squareup/picasso/RequestCreator;->into(Landroid/widget/ImageView;)V

    goto/16 :goto_0

    .line 392
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_11
        :pswitch_12
        :pswitch_13
        :pswitch_14
        :pswitch_15
        :pswitch_16
        :pswitch_17
        :pswitch_18
        :pswitch_19
    .end packed-switch
.end method

.method public updateBackground(Ljava/lang/String;)V
    .locals 8
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    const/16 v7, 0x32

    .line 357
    if-eqz p1, :cond_0

    .line 358
    invoke-virtual {p0}, Lcom/cashwalk/cashwalk/activity/friend/MyFeedActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v5

    invoke-interface {v5}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 359
    .local v0, "display":Landroid/view/Display;
    new-instance v3, Landroid/graphics/Point;

    invoke-direct {v3}, Landroid/graphics/Point;-><init>()V

    .line 360
    .local v3, "size":Landroid/graphics/Point;
    invoke-virtual {v0, v3}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    .line 362
    iget v4, v3, Landroid/graphics/Point;->x:I

    .line 363
    .local v4, "width":I
    iget v2, v3, Landroid/graphics/Point;->y:I

    .line 364
    .local v2, "height":I
    const-string v5, "bg_"

    invoke-virtual {p1, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 365
    invoke-static {p0}, Lcom/squareup/picasso/Picasso;->with(Landroid/content/Context;)Lcom/squareup/picasso/Picasso;

    move-result-object v5

    .line 366
    invoke-static {}, Lcom/cashwalk/cashwalk/util/ImageUrlCache;->getInstance()Lcom/cashwalk/cashwalk/util/ImageUrlCache;

    move-result-object v6

    .line 367
    invoke-virtual {v6, p1}, Lcom/cashwalk/cashwalk/util/ImageUrlCache;->getImageUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 366
    invoke-virtual {v5, v6}, Lcom/squareup/picasso/Picasso;->load(Ljava/lang/String;)Lcom/squareup/picasso/RequestCreator;

    move-result-object v5

    .line 368
    invoke-virtual {v5, v4, v2}, Lcom/squareup/picasso/RequestCreator;->resize(II)Lcom/squareup/picasso/RequestCreator;

    move-result-object v5

    .line 369
    invoke-virtual {v5}, Lcom/squareup/picasso/RequestCreator;->centerCrop()Lcom/squareup/picasso/RequestCreator;

    move-result-object v5

    const v6, 0x7f0202de

    .line 370
    invoke-virtual {v5, v6}, Lcom/squareup/picasso/RequestCreator;->placeholder(I)Lcom/squareup/picasso/RequestCreator;

    move-result-object v5

    new-instance v6, Lcom/cashwalk/cashwalk/util/BlurTransformation;

    invoke-direct {v6, p0, v7}, Lcom/cashwalk/cashwalk/util/BlurTransformation;-><init>(Landroid/content/Context;I)V

    .line 371
    invoke-virtual {v5, v6}, Lcom/squareup/picasso/RequestCreator;->transform(Lcom/squareup/picasso/Transformation;)Lcom/squareup/picasso/RequestCreator;

    move-result-object v5

    iget-object v6, p0, Lcom/cashwalk/cashwalk/activity/friend/MyFeedActivity;->iv_profile_background:Landroid/widget/ImageView;

    .line 372
    invoke-virtual {v5, v6}, Lcom/squareup/picasso/RequestCreator;->into(Landroid/widget/ImageView;)V

    .line 381
    .end local v0    # "display":Landroid/view/Display;
    .end local v2    # "height":I
    .end local v3    # "size":Landroid/graphics/Point;
    .end local v4    # "width":I
    :cond_0
    :goto_0
    return-void

    .line 374
    .restart local v0    # "display":Landroid/view/Display;
    .restart local v2    # "height":I
    .restart local v3    # "size":Landroid/graphics/Point;
    .restart local v4    # "width":I
    :cond_1
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 375
    .local v1, "file":Ljava/io/File;
    invoke-static {p0}, Lcom/squareup/picasso/Picasso;->with(Landroid/content/Context;)Lcom/squareup/picasso/Picasso;

    move-result-object v5

    .line 376
    invoke-virtual {v5, v1}, Lcom/squareup/picasso/Picasso;->load(Ljava/io/File;)Lcom/squareup/picasso/RequestCreator;

    move-result-object v5

    invoke-virtual {v5, v4, v2}, Lcom/squareup/picasso/RequestCreator;->resize(II)Lcom/squareup/picasso/RequestCreator;

    move-result-object v5

    .line 377
    invoke-virtual {v5}, Lcom/squareup/picasso/RequestCreator;->centerCrop()Lcom/squareup/picasso/RequestCreator;

    move-result-object v5

    new-instance v6, Lcom/cashwalk/cashwalk/util/BlurTransformation;

    invoke-direct {v6, p0, v7}, Lcom/cashwalk/cashwalk/util/BlurTransformation;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v5, v6}, Lcom/squareup/picasso/RequestCreator;->transform(Lcom/squareup/picasso/Transformation;)Lcom/squareup/picasso/RequestCreator;

    move-result-object v5

    iget-object v6, p0, Lcom/cashwalk/cashwalk/activity/friend/MyFeedActivity;->iv_profile_background:Landroid/widget/ImageView;

    .line 378
    invoke-virtual {v5, v6}, Lcom/squareup/picasso/RequestCreator;->into(Landroid/widget/ImageView;)V

    goto :goto_0
.end method

.method public updateBackgroundCheck(Ljava/lang/String;)V
    .locals 5
    .param p1, "bgUrl"    # Ljava/lang/String;

    .prologue
    .line 330
    iget-object v2, p0, Lcom/cashwalk/cashwalk/activity/friend/MyFeedActivity;->pref:Landroid/content/SharedPreferences;

    const-string v3, "LOCKSCREEN_BACKGROUND_ID"

    const/4 v4, 0x0

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 331
    .local v0, "bgId":I
    if-nez v0, :cond_4

    .line 332
    const-string v1, ""

    .line 333
    .local v1, "bgPath":Ljava/lang/String;
    if-eqz p1, :cond_1

    .line 334
    move-object v1, p1

    .line 343
    :goto_0
    if-eqz v1, :cond_0

    .line 344
    const-string v2, "re_"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 345
    const-string v2, "re_"

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 346
    invoke-virtual {p0, v0}, Lcom/cashwalk/cashwalk/activity/friend/MyFeedActivity;->updateBackground(I)V

    .line 354
    .end local v1    # "bgPath":Ljava/lang/String;
    :cond_0
    :goto_1
    return-void

    .line 336
    .restart local v1    # "bgPath":Ljava/lang/String;
    :cond_1
    iget-boolean v2, p0, Lcom/cashwalk/cashwalk/activity/friend/MyFeedActivity;->isMyFeed:Z

    if-eqz v2, :cond_2

    .line 337
    iget-object v2, p0, Lcom/cashwalk/cashwalk/activity/friend/MyFeedActivity;->pref:Landroid/content/SharedPreferences;

    const-string v3, "LOCKSCREEN_BACKGROUND_PATH"

    const/4 v4, 0x0

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 339
    :cond_2
    const-string v1, "re_1"

    goto :goto_0

    .line 348
    :cond_3
    invoke-virtual {p0, v1}, Lcom/cashwalk/cashwalk/activity/friend/MyFeedActivity;->updateBackground(Ljava/lang/String;)V

    goto :goto_1

    .line 352
    .end local v1    # "bgPath":Ljava/lang/String;
    :cond_4
    invoke-virtual {p0, v0}, Lcom/cashwalk/cashwalk/activity/friend/MyFeedActivity;->updateBackground(I)V

    goto :goto_1
.end method
