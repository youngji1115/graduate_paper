.class public Lcom/cashwalk/cashwalk/lockscreen/DrawerNewsFragment;
.super Landroid/support/v4/app/Fragment;
.source "DrawerNewsFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cashwalk/cashwalk/lockscreen/DrawerNewsFragment$NewsListAdapter;
    }
.end annotation


# instance fields
.field private data:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/cashwalk/cashwalk/util/network/model/News;",
            ">;"
        }
    .end annotation
.end field

.field private listView:Landroid/widget/ListView;

.field private motionFlag:Ljava/lang/Boolean;

.field private pref:Landroid/content/SharedPreferences;

.field private receiver:Landroid/content/BroadcastReceiver;

.field private swipeRefreshLayout:Landroid/support/v4/widget/SwipeRefreshLayout;

.field public type:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 52
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    .line 50
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/cashwalk/cashwalk/lockscreen/DrawerNewsFragment;->motionFlag:Ljava/lang/Boolean;

    .line 54
    return-void
.end method

.method static synthetic access$000(Lcom/cashwalk/cashwalk/lockscreen/DrawerNewsFragment;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/cashwalk/cashwalk/lockscreen/DrawerNewsFragment;
    .param p1, "x1"    # Z

    .prologue
    .line 40
    invoke-direct {p0, p1}, Lcom/cashwalk/cashwalk/lockscreen/DrawerNewsFragment;->refreshList(Z)V

    return-void
.end method

.method static synthetic access$100(Lcom/cashwalk/cashwalk/lockscreen/DrawerNewsFragment;)Ljava/lang/Boolean;
    .locals 1
    .param p0, "x0"    # Lcom/cashwalk/cashwalk/lockscreen/DrawerNewsFragment;

    .prologue
    .line 40
    iget-object v0, p0, Lcom/cashwalk/cashwalk/lockscreen/DrawerNewsFragment;->motionFlag:Ljava/lang/Boolean;

    return-object v0
.end method

.method static synthetic access$102(Lcom/cashwalk/cashwalk/lockscreen/DrawerNewsFragment;Ljava/lang/Boolean;)Ljava/lang/Boolean;
    .locals 0
    .param p0, "x0"    # Lcom/cashwalk/cashwalk/lockscreen/DrawerNewsFragment;
    .param p1, "x1"    # Ljava/lang/Boolean;

    .prologue
    .line 40
    iput-object p1, p0, Lcom/cashwalk/cashwalk/lockscreen/DrawerNewsFragment;->motionFlag:Ljava/lang/Boolean;

    return-object p1
.end method

.method static synthetic access$200(Lcom/cashwalk/cashwalk/lockscreen/DrawerNewsFragment;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/cashwalk/cashwalk/lockscreen/DrawerNewsFragment;

    .prologue
    .line 40
    iget-object v0, p0, Lcom/cashwalk/cashwalk/lockscreen/DrawerNewsFragment;->data:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$202(Lcom/cashwalk/cashwalk/lockscreen/DrawerNewsFragment;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 0
    .param p0, "x0"    # Lcom/cashwalk/cashwalk/lockscreen/DrawerNewsFragment;
    .param p1, "x1"    # Ljava/util/ArrayList;

    .prologue
    .line 40
    iput-object p1, p0, Lcom/cashwalk/cashwalk/lockscreen/DrawerNewsFragment;->data:Ljava/util/ArrayList;

    return-object p1
.end method

.method static synthetic access$300(Lcom/cashwalk/cashwalk/lockscreen/DrawerNewsFragment;)Landroid/widget/ListView;
    .locals 1
    .param p0, "x0"    # Lcom/cashwalk/cashwalk/lockscreen/DrawerNewsFragment;

    .prologue
    .line 40
    iget-object v0, p0, Lcom/cashwalk/cashwalk/lockscreen/DrawerNewsFragment;->listView:Landroid/widget/ListView;

    return-object v0
.end method

.method static synthetic access$400(Lcom/cashwalk/cashwalk/lockscreen/DrawerNewsFragment;)Landroid/content/SharedPreferences;
    .locals 1
    .param p0, "x0"    # Lcom/cashwalk/cashwalk/lockscreen/DrawerNewsFragment;

    .prologue
    .line 40
    iget-object v0, p0, Lcom/cashwalk/cashwalk/lockscreen/DrawerNewsFragment;->pref:Landroid/content/SharedPreferences;

    return-object v0
.end method

.method static synthetic access$500(Lcom/cashwalk/cashwalk/lockscreen/DrawerNewsFragment;)Landroid/support/v4/widget/SwipeRefreshLayout;
    .locals 1
    .param p0, "x0"    # Lcom/cashwalk/cashwalk/lockscreen/DrawerNewsFragment;

    .prologue
    .line 40
    iget-object v0, p0, Lcom/cashwalk/cashwalk/lockscreen/DrawerNewsFragment;->swipeRefreshLayout:Landroid/support/v4/widget/SwipeRefreshLayout;

    return-object v0
.end method

.method private fetchData()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 279
    iget-object v2, p0, Lcom/cashwalk/cashwalk/lockscreen/DrawerNewsFragment;->type:Ljava/lang/String;

    if-nez v2, :cond_0

    .line 280
    invoke-virtual {p0}, Lcom/cashwalk/cashwalk/lockscreen/DrawerNewsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v4/app/FragmentActivity;->finish()V

    .line 282
    :try_start_0
    invoke-virtual {p0}, Lcom/cashwalk/cashwalk/lockscreen/DrawerNewsFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/google/firebase/analytics/FirebaseAnalytics;->getInstance(Landroid/content/Context;)Lcom/google/firebase/analytics/FirebaseAnalytics;

    move-result-object v2

    const-string v3, "news_type_null"

    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {v2, v3, v4}, Lcom/google/firebase/analytics/FirebaseAnalytics;->logEvent(Ljava/lang/String;Landroid/os/Bundle;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 379
    :goto_0
    return-void

    .line 283
    :catch_0
    move-exception v0

    .line 284
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 289
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    iget-object v2, p0, Lcom/cashwalk/cashwalk/lockscreen/DrawerNewsFragment;->type:Ljava/lang/String;

    const-string v3, "TOTAL"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 292
    iget-object v2, p0, Lcom/cashwalk/cashwalk/lockscreen/DrawerNewsFragment;->pref:Landroid/content/SharedPreferences;

    const-string v3, "USER_ID"

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/cashwalk/cashwalk/lockscreen/DrawerNewsFragment;->pref:Landroid/content/SharedPreferences;

    const-string v3, "NICKNAME"

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_2

    .line 293
    :cond_1
    new-instance v2, Lcom/cashwalk/cashwalk/lockscreen/DrawerNewsFragment$4;

    invoke-direct {v2, p0}, Lcom/cashwalk/cashwalk/lockscreen/DrawerNewsFragment$4;-><init>(Lcom/cashwalk/cashwalk/lockscreen/DrawerNewsFragment;)V

    invoke-static {v2}, Lcom/cashwalk/cashwalk/util/network/RestClient;->getNewsAll(Lcom/cashwalk/cashwalk/util/network/ResponseHandler;)Lcom/android/volley/toolbox/JsonObjectRequest;

    move-result-object v1

    .line 327
    .local v1, "request":Lcom/android/volley/toolbox/JsonObjectRequest;
    :goto_1
    invoke-virtual {p0}, Lcom/cashwalk/cashwalk/lockscreen/DrawerNewsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v4/app/FragmentActivity;->getApplication()Landroid/app/Application;

    move-result-object v2

    check-cast v2, Lcom/cashwalk/cashwalk/CashWalkApp;

    invoke-virtual {v2}, Lcom/cashwalk/cashwalk/CashWalkApp;->requestQueue()Lcom/android/volley/RequestQueue;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/android/volley/RequestQueue;->add(Lcom/android/volley/Request;)Lcom/android/volley/Request;

    goto :goto_0

    .line 310
    .end local v1    # "request":Lcom/android/volley/toolbox/JsonObjectRequest;
    :cond_2
    new-instance v2, Lcom/cashwalk/cashwalk/lockscreen/DrawerNewsFragment$5;

    invoke-direct {v2, p0}, Lcom/cashwalk/cashwalk/lockscreen/DrawerNewsFragment$5;-><init>(Lcom/cashwalk/cashwalk/lockscreen/DrawerNewsFragment;)V

    invoke-static {v2}, Lcom/cashwalk/cashwalk/util/network/RestClient;->getNewsPersonal(Lcom/cashwalk/cashwalk/util/network/ResponseHandler;)Lcom/android/volley/toolbox/JsonObjectRequest;

    move-result-object v1

    .restart local v1    # "request":Lcom/android/volley/toolbox/JsonObjectRequest;
    goto :goto_1

    .line 329
    .end local v1    # "request":Lcom/android/volley/toolbox/JsonObjectRequest;
    :cond_3
    iget-object v2, p0, Lcom/cashwalk/cashwalk/lockscreen/DrawerNewsFragment;->type:Ljava/lang/String;

    new-instance v3, Lcom/cashwalk/cashwalk/lockscreen/DrawerNewsFragment$6;

    invoke-direct {v3, p0}, Lcom/cashwalk/cashwalk/lockscreen/DrawerNewsFragment$6;-><init>(Lcom/cashwalk/cashwalk/lockscreen/DrawerNewsFragment;)V

    invoke-static {v2, v3}, Lcom/cashwalk/cashwalk/util/network/RestClient;->getNewsSection(Ljava/lang/String;Lcom/cashwalk/cashwalk/util/network/ResponseHandler;)Lcom/android/volley/toolbox/JsonObjectRequest;

    move-result-object v1

    .line 377
    .restart local v1    # "request":Lcom/android/volley/toolbox/JsonObjectRequest;
    invoke-virtual {p0}, Lcom/cashwalk/cashwalk/lockscreen/DrawerNewsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v4/app/FragmentActivity;->getApplication()Landroid/app/Application;

    move-result-object v2

    check-cast v2, Lcom/cashwalk/cashwalk/CashWalkApp;

    invoke-virtual {v2}, Lcom/cashwalk/cashwalk/CashWalkApp;->requestQueue()Lcom/android/volley/RequestQueue;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/android/volley/RequestQueue;->add(Lcom/android/volley/Request;)Lcom/android/volley/Request;

    goto :goto_0
.end method

.method public static newInstance(Ljava/lang/String;)Lcom/cashwalk/cashwalk/lockscreen/DrawerNewsFragment;
    .locals 1
    .param p0, "type"    # Ljava/lang/String;

    .prologue
    .line 57
    new-instance v0, Lcom/cashwalk/cashwalk/lockscreen/DrawerNewsFragment;

    invoke-direct {v0}, Lcom/cashwalk/cashwalk/lockscreen/DrawerNewsFragment;-><init>()V

    .line 58
    .local v0, "fragment":Lcom/cashwalk/cashwalk/lockscreen/DrawerNewsFragment;
    iput-object p0, v0, Lcom/cashwalk/cashwalk/lockscreen/DrawerNewsFragment;->type:Ljava/lang/String;

    .line 59
    return-object v0
.end method

.method private refreshList(Z)V
    .locals 11
    .param p1, "force"    # Z

    .prologue
    const/4 v6, 0x1

    const/4 v4, 0x0

    const/4 v5, -0x1

    const/4 v7, 0x4

    const/4 v10, 0x0

    .line 168
    iget-object v8, p0, Lcom/cashwalk/cashwalk/lockscreen/DrawerNewsFragment;->type:Ljava/lang/String;

    if-nez v8, :cond_0

    .line 169
    invoke-virtual {p0}, Lcom/cashwalk/cashwalk/lockscreen/DrawerNewsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/support/v4/app/FragmentActivity;->finish()V

    .line 171
    :try_start_0
    invoke-virtual {p0}, Lcom/cashwalk/cashwalk/lockscreen/DrawerNewsFragment;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/google/firebase/analytics/FirebaseAnalytics;->getInstance(Landroid/content/Context;)Lcom/google/firebase/analytics/FirebaseAnalytics;

    move-result-object v4

    const-string v5, "news_type_null"

    new-instance v6, Landroid/os/Bundle;

    invoke-direct {v6}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {v4, v5, v6}, Lcom/google/firebase/analytics/FirebaseAnalytics;->logEvent(Ljava/lang/String;Landroid/os/Bundle;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 276
    :goto_0
    return-void

    .line 172
    :catch_0
    move-exception v0

    .line 173
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 178
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    if-eqz p1, :cond_1

    .line 179
    invoke-direct {p0}, Lcom/cashwalk/cashwalk/lockscreen/DrawerNewsFragment;->fetchData()V

    goto :goto_0

    .line 181
    :cond_1
    const/4 v3, 0x0

    .line 183
    .local v3, "refreshStr":Ljava/lang/String;
    iget-object v8, p0, Lcom/cashwalk/cashwalk/lockscreen/DrawerNewsFragment;->type:Ljava/lang/String;

    invoke-virtual {v8}, Ljava/lang/String;->hashCode()I

    move-result v9

    sparse-switch v9, :sswitch_data_0

    :cond_2
    move v8, v5

    :goto_1
    packed-switch v8, :pswitch_data_0

    .line 212
    iget-object v8, p0, Lcom/cashwalk/cashwalk/lockscreen/DrawerNewsFragment;->pref:Landroid/content/SharedPreferences;

    const-string v9, "LOCKSCREEN_NEWS_DATETIME"

    invoke-interface {v8, v9, v10}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 215
    :goto_2
    if-nez v3, :cond_3

    .line 216
    invoke-direct {p0}, Lcom/cashwalk/cashwalk/lockscreen/DrawerNewsFragment;->fetchData()V

    goto :goto_0

    .line 183
    :sswitch_0
    const-string v9, "TOTAL"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    move v8, v4

    goto :goto_1

    :sswitch_1
    const-string v9, "LIFE"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    move v8, v6

    goto :goto_1

    :sswitch_2
    const-string v9, "ECONOMY"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    const/4 v8, 0x2

    goto :goto_1

    :sswitch_3
    const-string v9, "POLITICS"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    const/4 v8, 0x3

    goto :goto_1

    :sswitch_4
    const-string v9, "SOCIETY"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    move v8, v7

    goto :goto_1

    :sswitch_5
    const-string v9, "IT"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    const/4 v8, 0x5

    goto :goto_1

    :sswitch_6
    const-string v9, "GLOBAL"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    const/4 v8, 0x6

    goto :goto_1

    :sswitch_7
    const-string v9, "ENTERTAINMENT"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    const/4 v8, 0x7

    goto :goto_1

    :sswitch_8
    const-string v9, "TV"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    const/16 v8, 0x8

    goto :goto_1

    .line 185
    :pswitch_0
    iget-object v8, p0, Lcom/cashwalk/cashwalk/lockscreen/DrawerNewsFragment;->pref:Landroid/content/SharedPreferences;

    const-string v9, "LOCKSCREEN_NEWS_DATETIME"

    invoke-interface {v8, v9, v10}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 186
    goto :goto_2

    .line 188
    :pswitch_1
    iget-object v8, p0, Lcom/cashwalk/cashwalk/lockscreen/DrawerNewsFragment;->pref:Landroid/content/SharedPreferences;

    const-string v9, "LOCKSCREEN_NEWS_DATETIME_LIFE"

    invoke-interface {v8, v9, v10}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 189
    goto :goto_2

    .line 191
    :pswitch_2
    iget-object v8, p0, Lcom/cashwalk/cashwalk/lockscreen/DrawerNewsFragment;->pref:Landroid/content/SharedPreferences;

    const-string v9, "LOCKSCREEN_NEWS_DATETIME_ECONOMY"

    invoke-interface {v8, v9, v10}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 192
    goto :goto_2

    .line 194
    :pswitch_3
    iget-object v8, p0, Lcom/cashwalk/cashwalk/lockscreen/DrawerNewsFragment;->pref:Landroid/content/SharedPreferences;

    const-string v9, "LOCKSCREEN_NEWS_DATETIME_POLITICS"

    invoke-interface {v8, v9, v10}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 195
    goto/16 :goto_2

    .line 197
    :pswitch_4
    iget-object v8, p0, Lcom/cashwalk/cashwalk/lockscreen/DrawerNewsFragment;->pref:Landroid/content/SharedPreferences;

    const-string v9, "LOCKSCREEN_NEWS_DATETIME_SOCIETY"

    invoke-interface {v8, v9, v10}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 198
    goto/16 :goto_2

    .line 200
    :pswitch_5
    iget-object v8, p0, Lcom/cashwalk/cashwalk/lockscreen/DrawerNewsFragment;->pref:Landroid/content/SharedPreferences;

    const-string v9, "LOCKSCREEN_NEWS_DATETIME_IT"

    invoke-interface {v8, v9, v10}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 201
    goto/16 :goto_2

    .line 203
    :pswitch_6
    iget-object v8, p0, Lcom/cashwalk/cashwalk/lockscreen/DrawerNewsFragment;->pref:Landroid/content/SharedPreferences;

    const-string v9, "LOCKSCREEN_NEWS_DATETIME_GLOBAL"

    invoke-interface {v8, v9, v10}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 204
    goto/16 :goto_2

    .line 206
    :pswitch_7
    iget-object v8, p0, Lcom/cashwalk/cashwalk/lockscreen/DrawerNewsFragment;->pref:Landroid/content/SharedPreferences;

    const-string v9, "LOCKSCREEN_NEWS_DATETIME_ENTERTAINMENT"

    invoke-interface {v8, v9, v10}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 207
    goto/16 :goto_2

    .line 209
    :pswitch_8
    iget-object v8, p0, Lcom/cashwalk/cashwalk/lockscreen/DrawerNewsFragment;->pref:Landroid/content/SharedPreferences;

    const-string v9, "LOCKSCREEN_NEWS_DATETIME_TV"

    invoke-interface {v8, v9, v10}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 210
    goto/16 :goto_2

    .line 218
    :cond_3
    new-instance v2, Lorg/joda/time/DateTime;

    invoke-direct {v2, v3}, Lorg/joda/time/DateTime;-><init>(Ljava/lang/Object;)V

    .line 220
    .local v2, "refreshDateTime":Lorg/joda/time/DateTime;
    invoke-virtual {v2, v7}, Lorg/joda/time/DateTime;->plusHours(I)Lorg/joda/time/DateTime;

    move-result-object v8

    invoke-virtual {v8}, Lorg/joda/time/DateTime;->isBeforeNow()Z

    move-result v8

    if-eqz v8, :cond_4

    .line 221
    invoke-direct {p0}, Lcom/cashwalk/cashwalk/lockscreen/DrawerNewsFragment;->fetchData()V

    goto/16 :goto_0

    .line 223
    :cond_4
    const/4 v1, 0x0

    .line 225
    .local v1, "jsonData":Ljava/lang/String;
    iget-object v8, p0, Lcom/cashwalk/cashwalk/lockscreen/DrawerNewsFragment;->type:Ljava/lang/String;

    invoke-virtual {v8}, Ljava/lang/String;->hashCode()I

    move-result v9

    sparse-switch v9, :sswitch_data_1

    :cond_5
    move v4, v5

    :goto_3
    packed-switch v4, :pswitch_data_1

    .line 255
    :goto_4
    if-nez v1, :cond_6

    .line 256
    invoke-direct {p0}, Lcom/cashwalk/cashwalk/lockscreen/DrawerNewsFragment;->fetchData()V

    goto/16 :goto_0

    .line 225
    :sswitch_9
    const-string v6, "TOTAL"

    invoke-virtual {v8, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    goto :goto_3

    :sswitch_a
    const-string v4, "POLITICS"

    invoke-virtual {v8, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    move v4, v6

    goto :goto_3

    :sswitch_b
    const-string v4, "IT"

    invoke-virtual {v8, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    const/4 v4, 0x2

    goto :goto_3

    :sswitch_c
    const-string v4, "SOCIETY"

    invoke-virtual {v8, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    const/4 v4, 0x3

    goto :goto_3

    :sswitch_d
    const-string v4, "LIFE"

    invoke-virtual {v8, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    move v4, v7

    goto :goto_3

    :sswitch_e
    const-string v4, "ECONOMY"

    invoke-virtual {v8, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    const/4 v4, 0x5

    goto :goto_3

    :sswitch_f
    const-string v4, "GLOBAL"

    invoke-virtual {v8, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    const/4 v4, 0x6

    goto :goto_3

    :sswitch_10
    const-string v4, "ENTERTAINMENT"

    invoke-virtual {v8, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    const/4 v4, 0x7

    goto :goto_3

    :sswitch_11
    const-string v4, "TV"

    invoke-virtual {v8, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    const/16 v4, 0x8

    goto :goto_3

    .line 227
    :pswitch_9
    iget-object v4, p0, Lcom/cashwalk/cashwalk/lockscreen/DrawerNewsFragment;->pref:Landroid/content/SharedPreferences;

    const-string v5, "LOCKSCREEN_NEWS_JSON"

    invoke-interface {v4, v5, v10}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 228
    goto :goto_4

    .line 230
    :pswitch_a
    iget-object v4, p0, Lcom/cashwalk/cashwalk/lockscreen/DrawerNewsFragment;->pref:Landroid/content/SharedPreferences;

    const-string v5, "LOCKSCREEN_NEWS_JSON_POLITICS"

    invoke-interface {v4, v5, v10}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 231
    goto :goto_4

    .line 233
    :pswitch_b
    iget-object v4, p0, Lcom/cashwalk/cashwalk/lockscreen/DrawerNewsFragment;->pref:Landroid/content/SharedPreferences;

    const-string v5, "LOCKSCREEN_NEWS_JSON_IT"

    invoke-interface {v4, v5, v10}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 234
    goto :goto_4

    .line 236
    :pswitch_c
    iget-object v4, p0, Lcom/cashwalk/cashwalk/lockscreen/DrawerNewsFragment;->pref:Landroid/content/SharedPreferences;

    const-string v5, "LOCKSCREEN_NEWS_JSON_SOCIETY"

    invoke-interface {v4, v5, v10}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 237
    goto/16 :goto_4

    .line 239
    :pswitch_d
    iget-object v4, p0, Lcom/cashwalk/cashwalk/lockscreen/DrawerNewsFragment;->pref:Landroid/content/SharedPreferences;

    const-string v5, "LOCKSCREEN_NEWS_JSON_LIFE"

    invoke-interface {v4, v5, v10}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 240
    goto/16 :goto_4

    .line 242
    :pswitch_e
    iget-object v4, p0, Lcom/cashwalk/cashwalk/lockscreen/DrawerNewsFragment;->pref:Landroid/content/SharedPreferences;

    const-string v5, "LOCKSCREEN_NEWS_JSON_ECONOMY"

    invoke-interface {v4, v5, v10}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 243
    goto/16 :goto_4

    .line 245
    :pswitch_f
    iget-object v4, p0, Lcom/cashwalk/cashwalk/lockscreen/DrawerNewsFragment;->pref:Landroid/content/SharedPreferences;

    const-string v5, "LOCKSCREEN_NEWS_JSON_GLOBAL"

    invoke-interface {v4, v5, v10}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 246
    goto/16 :goto_4

    .line 248
    :pswitch_10
    iget-object v4, p0, Lcom/cashwalk/cashwalk/lockscreen/DrawerNewsFragment;->pref:Landroid/content/SharedPreferences;

    const-string v5, "LOCKSCREEN_NEWS_JSON_ENTERTAINMENT"

    invoke-interface {v4, v5, v10}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 249
    goto/16 :goto_4

    .line 251
    :pswitch_11
    iget-object v4, p0, Lcom/cashwalk/cashwalk/lockscreen/DrawerNewsFragment;->pref:Landroid/content/SharedPreferences;

    const-string v5, "LOCKSCREEN_NEWS_JSON_TV"

    invoke-interface {v4, v5, v10}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_4

    .line 259
    :cond_6
    :try_start_1
    iget-object v4, p0, Lcom/cashwalk/cashwalk/lockscreen/DrawerNewsFragment;->type:Ljava/lang/String;

    const-string v5, "TOTAL"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_9

    .line 260
    iget-object v4, p0, Lcom/cashwalk/cashwalk/lockscreen/DrawerNewsFragment;->pref:Landroid/content/SharedPreferences;

    const-string v5, "USER_ID"

    const/4 v6, 0x0

    invoke-interface {v4, v5, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_7

    iget-object v4, p0, Lcom/cashwalk/cashwalk/lockscreen/DrawerNewsFragment;->pref:Landroid/content/SharedPreferences;

    const-string v5, "NICKNAME"

    const/4 v6, 0x0

    invoke-interface {v4, v5, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_8

    .line 261
    :cond_7
    new-instance v4, Lorg/json/JSONArray;

    invoke-direct {v4, v1}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    invoke-static {v4}, Lcom/cashwalk/cashwalk/util/network/ResponseParser;->parseNewsList(Lorg/json/JSONArray;)Ljava/util/ArrayList;

    move-result-object v4

    iput-object v4, p0, Lcom/cashwalk/cashwalk/lockscreen/DrawerNewsFragment;->data:Ljava/util/ArrayList;

    .line 268
    :goto_5
    iget-object v4, p0, Lcom/cashwalk/cashwalk/lockscreen/DrawerNewsFragment;->listView:Landroid/widget/ListView;

    new-instance v5, Lcom/cashwalk/cashwalk/lockscreen/DrawerNewsFragment$NewsListAdapter;

    iget-object v6, p0, Lcom/cashwalk/cashwalk/lockscreen/DrawerNewsFragment;->data:Ljava/util/ArrayList;

    invoke-direct {v5, p0, v6}, Lcom/cashwalk/cashwalk/lockscreen/DrawerNewsFragment$NewsListAdapter;-><init>(Lcom/cashwalk/cashwalk/lockscreen/DrawerNewsFragment;Ljava/util/ArrayList;)V

    invoke-virtual {v4, v5}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_0

    .line 269
    :catch_1
    move-exception v0

    .line 270
    .restart local v0    # "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0

    .line 263
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_8
    :try_start_2
    new-instance v4, Lorg/json/JSONArray;

    invoke-direct {v4, v1}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    invoke-static {v4}, Lcom/cashwalk/cashwalk/util/network/ResponseParser;->parseNewsListOnly(Lorg/json/JSONArray;)Ljava/util/ArrayList;

    move-result-object v4

    iput-object v4, p0, Lcom/cashwalk/cashwalk/lockscreen/DrawerNewsFragment;->data:Ljava/util/ArrayList;

    goto :goto_5

    .line 266
    :cond_9
    new-instance v4, Lorg/json/JSONArray;

    invoke-direct {v4, v1}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    invoke-static {v4}, Lcom/cashwalk/cashwalk/util/network/ResponseParser;->parseNewsList(Lorg/json/JSONArray;)Ljava/util/ArrayList;

    move-result-object v4

    iput-object v4, p0, Lcom/cashwalk/cashwalk/lockscreen/DrawerNewsFragment;->data:Ljava/util/ArrayList;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_5

    .line 183
    nop

    :sswitch_data_0
    .sparse-switch
        -0x4eb98d78 -> :sswitch_4
        -0x471f6de2 -> :sswitch_2
        -0x28746898 -> :sswitch_7
        0x92b -> :sswitch_5
        0xa82 -> :sswitch_8
        0x23a6fc -> :sswitch_1
        0x4c4e324 -> :sswitch_0
        0x4f469b61 -> :sswitch_3
        0x7d7bf7a3 -> :sswitch_6
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
    .end packed-switch

    .line 225
    :sswitch_data_1
    .sparse-switch
        -0x4eb98d78 -> :sswitch_c
        -0x471f6de2 -> :sswitch_e
        -0x28746898 -> :sswitch_10
        0x92b -> :sswitch_b
        0xa82 -> :sswitch_11
        0x23a6fc -> :sswitch_d
        0x4c4e324 -> :sswitch_9
        0x4f469b61 -> :sswitch_a
        0x7d7bf7a3 -> :sswitch_f
    .end sparse-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_11
    .end packed-switch
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 64
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 66
    invoke-virtual {p0}, Lcom/cashwalk/cashwalk/lockscreen/DrawerNewsFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    iput-object v1, p0, Lcom/cashwalk/cashwalk/lockscreen/DrawerNewsFragment;->pref:Landroid/content/SharedPreferences;

    .line 68
    new-instance v1, Lcom/cashwalk/cashwalk/lockscreen/DrawerNewsFragment$1;

    invoke-direct {v1, p0}, Lcom/cashwalk/cashwalk/lockscreen/DrawerNewsFragment$1;-><init>(Lcom/cashwalk/cashwalk/lockscreen/DrawerNewsFragment;)V

    iput-object v1, p0, Lcom/cashwalk/cashwalk/lockscreen/DrawerNewsFragment;->receiver:Landroid/content/BroadcastReceiver;

    .line 76
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "com.cashwalk.cashwalk.action.LOCKSCREEN_REFRESH_NEWS"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 77
    .local v0, "filter":Landroid/content/IntentFilter;
    invoke-virtual {p0}, Lcom/cashwalk/cashwalk/lockscreen/DrawerNewsFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/cashwalk/cashwalk/lockscreen/DrawerNewsFragment;->receiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 78
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 96
    const v1, 0x7f040097

    const/4 v2, 0x0

    invoke-virtual {p1, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 98
    .local v0, "v":Landroid/view/View;
    const v1, 0x7f1001ba

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ListView;

    iput-object v1, p0, Lcom/cashwalk/cashwalk/lockscreen/DrawerNewsFragment;->listView:Landroid/widget/ListView;

    .line 99
    const v1, 0x7f100202

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/support/v4/widget/SwipeRefreshLayout;

    iput-object v1, p0, Lcom/cashwalk/cashwalk/lockscreen/DrawerNewsFragment;->swipeRefreshLayout:Landroid/support/v4/widget/SwipeRefreshLayout;

    .line 100
    iget-object v1, p0, Lcom/cashwalk/cashwalk/lockscreen/DrawerNewsFragment;->swipeRefreshLayout:Landroid/support/v4/widget/SwipeRefreshLayout;

    new-instance v2, Lcom/cashwalk/cashwalk/lockscreen/DrawerNewsFragment$2;

    invoke-direct {v2, p0}, Lcom/cashwalk/cashwalk/lockscreen/DrawerNewsFragment$2;-><init>(Lcom/cashwalk/cashwalk/lockscreen/DrawerNewsFragment;)V

    invoke-virtual {v1, v2}, Landroid/support/v4/widget/SwipeRefreshLayout;->setOnRefreshListener(Landroid/support/v4/widget/SwipeRefreshLayout$OnRefreshListener;)V

    .line 107
    iget-object v1, p0, Lcom/cashwalk/cashwalk/lockscreen/DrawerNewsFragment;->listView:Landroid/widget/ListView;

    new-instance v2, Lcom/cashwalk/cashwalk/lockscreen/DrawerNewsFragment$3;

    invoke-direct {v2, p0}, Lcom/cashwalk/cashwalk/lockscreen/DrawerNewsFragment$3;-><init>(Lcom/cashwalk/cashwalk/lockscreen/DrawerNewsFragment;)V

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 152
    return-object v0
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 82
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onDestroy()V

    .line 83
    iget-object v0, p0, Lcom/cashwalk/cashwalk/lockscreen/DrawerNewsFragment;->receiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_0

    .line 84
    invoke-virtual {p0}, Lcom/cashwalk/cashwalk/lockscreen/DrawerNewsFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/cashwalk/cashwalk/lockscreen/DrawerNewsFragment;->receiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 86
    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 90
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onResume()V

    .line 91
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/cashwalk/cashwalk/lockscreen/DrawerNewsFragment;->refreshList(Z)V

    .line 92
    return-void
.end method

.method public refreshNewsOnMsg()V
    .locals 6

    .prologue
    .line 156
    iget-object v3, p0, Lcom/cashwalk/cashwalk/lockscreen/DrawerNewsFragment;->data:Ljava/util/ArrayList;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/cashwalk/cashwalk/lockscreen/DrawerNewsFragment;->data:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_1

    .line 157
    new-instance v1, Ljava/util/Random;

    invoke-direct {v1}, Ljava/util/Random;-><init>()V

    .line 158
    .local v1, "r":Ljava/util/Random;
    iget-object v3, p0, Lcom/cashwalk/cashwalk/lockscreen/DrawerNewsFragment;->data:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v1, v3}, Ljava/util/Random;->nextInt(I)I

    move-result v2

    .line 159
    .local v2, "rand":I
    iget-object v3, p0, Lcom/cashwalk/cashwalk/lockscreen/DrawerNewsFragment;->data:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cashwalk/cashwalk/util/network/model/News;

    .line 161
    .local v0, "news":Lcom/cashwalk/cashwalk/util/network/model/News;
    invoke-virtual {p0}, Lcom/cashwalk/cashwalk/lockscreen/DrawerNewsFragment;->getContext()Landroid/content/Context;

    move-result-object v3

    new-instance v4, Landroid/content/Intent;

    const-string v5, "com.cashwalk.cashwalk.action.LOCKSCREEN_NEWS_SHOW"

    invoke-direct {v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v5, "news"

    invoke-virtual {v4, v5, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 165
    .end local v0    # "news":Lcom/cashwalk/cashwalk/util/network/model/News;
    .end local v1    # "r":Ljava/util/Random;
    .end local v2    # "rand":I
    :cond_0
    :goto_0
    return-void

    .line 162
    :cond_1
    iget-object v3, p0, Lcom/cashwalk/cashwalk/lockscreen/DrawerNewsFragment;->type:Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 163
    const/4 v3, 0x1

    invoke-direct {p0, v3}, Lcom/cashwalk/cashwalk/lockscreen/DrawerNewsFragment;->refreshList(Z)V

    goto :goto_0
.end method
