.class Lcom/cashwalk/cashwalk/activity/CouponActivity$5;
.super Lcom/cashwalk/cashwalk/util/network/ResponseHandler;
.source "CouponActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cashwalk/cashwalk/activity/CouponActivity;->refresh()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cashwalk/cashwalk/activity/CouponActivity;


# direct methods
.method constructor <init>(Lcom/cashwalk/cashwalk/activity/CouponActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/cashwalk/cashwalk/activity/CouponActivity;

    .prologue
    .line 156
    iput-object p1, p0, Lcom/cashwalk/cashwalk/activity/CouponActivity$5;->this$0:Lcom/cashwalk/cashwalk/activity/CouponActivity;

    invoke-direct {p0}, Lcom/cashwalk/cashwalk/util/network/ResponseHandler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleResponse(Lorg/json/JSONObject;)V
    .locals 9
    .param p1, "jo"    # Lorg/json/JSONObject;

    .prologue
    const/4 v8, 0x0

    .line 160
    :try_start_0
    iget-object v5, p0, Lcom/cashwalk/cashwalk/activity/CouponActivity$5;->this$0:Lcom/cashwalk/cashwalk/activity/CouponActivity;

    invoke-static {v5}, Lcom/cashwalk/cashwalk/activity/CouponActivity;->access$200(Lcom/cashwalk/cashwalk/activity/CouponActivity;)Landroid/support/v4/widget/SwipeRefreshLayout;

    move-result-object v5

    invoke-virtual {v5}, Landroid/support/v4/widget/SwipeRefreshLayout;->isRefreshing()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 161
    iget-object v5, p0, Lcom/cashwalk/cashwalk/activity/CouponActivity$5;->this$0:Lcom/cashwalk/cashwalk/activity/CouponActivity;

    invoke-static {v5}, Lcom/cashwalk/cashwalk/activity/CouponActivity;->access$200(Lcom/cashwalk/cashwalk/activity/CouponActivity;)Landroid/support/v4/widget/SwipeRefreshLayout;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/support/v4/widget/SwipeRefreshLayout;->setRefreshing(Z)V

    .line 164
    :cond_0
    iget-object v5, p0, Lcom/cashwalk/cashwalk/activity/CouponActivity$5;->this$0:Lcom/cashwalk/cashwalk/activity/CouponActivity;

    invoke-static {v5}, Lcom/cashwalk/cashwalk/activity/CouponActivity;->access$300(Lcom/cashwalk/cashwalk/activity/CouponActivity;)Landroid/widget/ProgressBar;

    move-result-object v5

    const/16 v6, 0x8

    invoke-virtual {v5, v6}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 166
    const-string v5, "result"

    invoke-virtual {p1, v5}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v5

    invoke-static {v5}, Lcom/cashwalk/cashwalk/util/network/ResponseParser;->parseCouponList(Lorg/json/JSONArray;)Ljava/util/ArrayList;

    move-result-object v0

    .line 167
    .local v0, "data":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/cashwalk/cashwalk/util/network/model/Coupon;>;"
    iget-object v5, p0, Lcom/cashwalk/cashwalk/activity/CouponActivity$5;->this$0:Lcom/cashwalk/cashwalk/activity/CouponActivity;

    invoke-static {v5}, Lcom/cashwalk/cashwalk/activity/CouponActivity;->access$400(Lcom/cashwalk/cashwalk/activity/CouponActivity;)Lde/halfbit/pinnedsection/PinnedSectionListView;

    move-result-object v5

    new-instance v6, Lcom/cashwalk/cashwalk/activity/CouponActivity$CouponListAdapter;

    iget-object v7, p0, Lcom/cashwalk/cashwalk/activity/CouponActivity$5;->this$0:Lcom/cashwalk/cashwalk/activity/CouponActivity;

    invoke-direct {v6, v7, v0}, Lcom/cashwalk/cashwalk/activity/CouponActivity$CouponListAdapter;-><init>(Lcom/cashwalk/cashwalk/activity/CouponActivity;Ljava/util/ArrayList;)V

    invoke-virtual {v5, v6}, Lde/halfbit/pinnedsection/PinnedSectionListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 169
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-nez v5, :cond_2

    .line 170
    iget-object v5, p0, Lcom/cashwalk/cashwalk/activity/CouponActivity$5;->this$0:Lcom/cashwalk/cashwalk/activity/CouponActivity;

    invoke-static {v5}, Lcom/cashwalk/cashwalk/activity/CouponActivity;->access$500(Lcom/cashwalk/cashwalk/activity/CouponActivity;)Landroid/widget/LinearLayout;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 171
    iget-object v5, p0, Lcom/cashwalk/cashwalk/activity/CouponActivity$5;->this$0:Lcom/cashwalk/cashwalk/activity/CouponActivity;

    invoke-static {v5}, Lcom/cashwalk/cashwalk/activity/CouponActivity;->access$600(Lcom/cashwalk/cashwalk/activity/CouponActivity;)Landroid/widget/RelativeLayout;

    move-result-object v5

    const/16 v6, 0x8

    invoke-virtual {v5, v6}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 189
    .end local v0    # "data":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/cashwalk/cashwalk/util/network/model/Coupon;>;"
    :cond_1
    :goto_0
    return-void

    .line 173
    .restart local v0    # "data":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/cashwalk/cashwalk/util/network/model/Coupon;>;"
    :cond_2
    iget-object v5, p0, Lcom/cashwalk/cashwalk/activity/CouponActivity$5;->this$0:Lcom/cashwalk/cashwalk/activity/CouponActivity;

    invoke-static {v5}, Lcom/cashwalk/cashwalk/activity/CouponActivity;->access$600(Lcom/cashwalk/cashwalk/activity/CouponActivity;)Landroid/widget/RelativeLayout;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 174
    iget-object v5, p0, Lcom/cashwalk/cashwalk/activity/CouponActivity$5;->this$0:Lcom/cashwalk/cashwalk/activity/CouponActivity;

    invoke-static {v5}, Lcom/cashwalk/cashwalk/activity/CouponActivity;->access$700(Lcom/cashwalk/cashwalk/activity/CouponActivity;)Landroid/content/SharedPreferences;

    move-result-object v5

    const-string v6, "PREFERENCE_REVIEW_CLICKED"

    const/4 v7, 0x0

    invoke-interface {v5, v6, v7}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    .line 176
    .local v2, "hasReviewed":Z
    if-nez v2, :cond_1

    .line 177
    iget-object v5, p0, Lcom/cashwalk/cashwalk/activity/CouponActivity$5;->this$0:Lcom/cashwalk/cashwalk/activity/CouponActivity;

    invoke-static {v5}, Lcom/cashwalk/cashwalk/activity/CouponActivity;->access$700(Lcom/cashwalk/cashwalk/activity/CouponActivity;)Landroid/content/SharedPreferences;

    move-result-object v5

    const-string v6, "PREFERENCE_REVIEW_CANCEL_DATETIME"

    const/4 v7, 0x0

    invoke-interface {v5, v6, v7}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 179
    .local v4, "reviewCancelDateTime":Ljava/lang/String;
    if-eqz v4, :cond_3

    new-instance v5, Lorg/joda/time/DateTime;

    invoke-direct {v5, v4}, Lorg/joda/time/DateTime;-><init>(Ljava/lang/Object;)V

    const/4 v6, 0x7

    invoke-virtual {v5, v6}, Lorg/joda/time/DateTime;->plusDays(I)Lorg/joda/time/DateTime;

    move-result-object v5

    new-instance v6, Lorg/joda/time/DateTime;

    invoke-direct {v6}, Lorg/joda/time/DateTime;-><init>()V

    invoke-virtual {v5, v6}, Lorg/joda/time/DateTime;->isBefore(Lorg/joda/time/ReadableInstant;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 180
    :cond_3
    new-instance v3, Lcom/cashwalk/cashwalk/dialog/ReviewDialog;

    iget-object v5, p0, Lcom/cashwalk/cashwalk/activity/CouponActivity$5;->this$0:Lcom/cashwalk/cashwalk/activity/CouponActivity;

    invoke-direct {v3, v5}, Lcom/cashwalk/cashwalk/dialog/ReviewDialog;-><init>(Landroid/content/Context;)V

    .line 181
    .local v3, "rd":Lcom/cashwalk/cashwalk/dialog/ReviewDialog;
    invoke-virtual {v3}, Lcom/cashwalk/cashwalk/dialog/ReviewDialog;->show()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 185
    .end local v0    # "data":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/cashwalk/cashwalk/util/network/model/Coupon;>;"
    .end local v2    # "hasReviewed":Z
    .end local v3    # "rd":Lcom/cashwalk/cashwalk/dialog/ReviewDialog;
    .end local v4    # "reviewCancelDateTime":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 186
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 187
    iget-object v5, p0, Lcom/cashwalk/cashwalk/activity/CouponActivity$5;->this$0:Lcom/cashwalk/cashwalk/activity/CouponActivity;

    invoke-static {v5}, Lcom/cashwalk/cashwalk/activity/CouponActivity;->access$500(Lcom/cashwalk/cashwalk/activity/CouponActivity;)Landroid/widget/LinearLayout;

    move-result-object v5

    invoke-virtual {v5, v8}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0
.end method
