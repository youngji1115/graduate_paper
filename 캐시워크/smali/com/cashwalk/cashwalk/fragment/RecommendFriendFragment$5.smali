.class Lcom/cashwalk/cashwalk/fragment/RecommendFriendFragment$5;
.super Lcom/cashwalk/cashwalk/util/network/ResponseHandler;
.source "RecommendFriendFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cashwalk/cashwalk/fragment/RecommendFriendFragment;->onItemAdd(Landroid/view/View;ILcom/cashwalk/cashwalk/util/network/model/Friend;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cashwalk/cashwalk/fragment/RecommendFriendFragment;

.field final synthetic val$postion:I


# direct methods
.method constructor <init>(Lcom/cashwalk/cashwalk/fragment/RecommendFriendFragment;I)V
    .locals 0
    .param p1, "this$0"    # Lcom/cashwalk/cashwalk/fragment/RecommendFriendFragment;

    .prologue
    .line 299
    iput-object p1, p0, Lcom/cashwalk/cashwalk/fragment/RecommendFriendFragment$5;->this$0:Lcom/cashwalk/cashwalk/fragment/RecommendFriendFragment;

    iput p2, p0, Lcom/cashwalk/cashwalk/fragment/RecommendFriendFragment$5;->val$postion:I

    invoke-direct {p0}, Lcom/cashwalk/cashwalk/util/network/ResponseHandler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleResponse(Lorg/json/JSONObject;)V
    .locals 9
    .param p1, "jo"    # Lorg/json/JSONObject;

    .prologue
    const v8, 0x7f090141

    const v7, 0x7f090132

    .line 303
    :try_start_0
    const-string v4, "result"

    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 304
    const-string v4, "result"

    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    .line 305
    .local v3, "result":Z
    if-eqz v3, :cond_2

    .line 306
    const/4 v4, 0x0

    sput-object v4, Lcom/cashwalk/cashwalk/CashWalkApp;->MY_FRIEND_LIST:Ljava/util/List;

    .line 307
    iget-object v4, p0, Lcom/cashwalk/cashwalk/fragment/RecommendFriendFragment$5;->this$0:Lcom/cashwalk/cashwalk/fragment/RecommendFriendFragment;

    invoke-static {v4}, Lcom/cashwalk/cashwalk/fragment/RecommendFriendFragment;->access$500(Lcom/cashwalk/cashwalk/fragment/RecommendFriendFragment;)Landroid/content/Context;

    move-result-object v4

    iget-object v5, p0, Lcom/cashwalk/cashwalk/fragment/RecommendFriendFragment$5;->this$0:Lcom/cashwalk/cashwalk/fragment/RecommendFriendFragment;

    const v6, 0x7f09015a

    invoke-virtual {v5, v6}, Lcom/cashwalk/cashwalk/fragment/RecommendFriendFragment;->getString(I)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    invoke-static {v4, v5, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    .line 309
    iget-object v4, p0, Lcom/cashwalk/cashwalk/fragment/RecommendFriendFragment$5;->this$0:Lcom/cashwalk/cashwalk/fragment/RecommendFriendFragment;

    invoke-static {v4}, Lcom/cashwalk/cashwalk/fragment/RecommendFriendFragment;->access$600(Lcom/cashwalk/cashwalk/fragment/RecommendFriendFragment;)Ljava/util/List;

    move-result-object v4

    iget v5, p0, Lcom/cashwalk/cashwalk/fragment/RecommendFriendFragment$5;->val$postion:I

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/cashwalk/cashwalk/util/network/model/Friend;

    const/4 v5, 0x0

    iput v5, v4, Lcom/cashwalk/cashwalk/util/network/model/Friend;->status:I

    .line 310
    sget-object v4, Lcom/cashwalk/cashwalk/activity/friend/MyFriendListActivity;->mRecommendResultList:Ljava/util/List;

    iget v5, p0, Lcom/cashwalk/cashwalk/fragment/RecommendFriendFragment$5;->val$postion:I

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/cashwalk/cashwalk/util/network/model/Friend;

    const/4 v5, 0x0

    iput v5, v4, Lcom/cashwalk/cashwalk/util/network/model/Friend;->status:I

    .line 312
    iget-object v4, p0, Lcom/cashwalk/cashwalk/fragment/RecommendFriendFragment$5;->this$0:Lcom/cashwalk/cashwalk/fragment/RecommendFriendFragment;

    iget-object v4, v4, Lcom/cashwalk/cashwalk/fragment/RecommendFriendFragment;->mRecommendFriendListAdapter:Lcom/cashwalk/cashwalk/adapter/RecommendFriendListAdapter;

    invoke-virtual {v4}, Lcom/cashwalk/cashwalk/adapter/RecommendFriendListAdapter;->notifyDataSetChanged()V

    .line 313
    const/4 v4, 0x1

    sput-boolean v4, Lcom/cashwalk/cashwalk/activity/friend/MyFriendListActivity;->isRefresh:Z

    .line 315
    iget-object v4, p0, Lcom/cashwalk/cashwalk/fragment/RecommendFriendFragment$5;->this$0:Lcom/cashwalk/cashwalk/fragment/RecommendFriendFragment;

    invoke-static {v4}, Lcom/cashwalk/cashwalk/fragment/RecommendFriendFragment;->access$600(Lcom/cashwalk/cashwalk/fragment/RecommendFriendFragment;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-nez v4, :cond_1

    .line 316
    iget-object v4, p0, Lcom/cashwalk/cashwalk/fragment/RecommendFriendFragment$5;->this$0:Lcom/cashwalk/cashwalk/fragment/RecommendFriendFragment;

    invoke-static {v4}, Lcom/cashwalk/cashwalk/fragment/RecommendFriendFragment;->access$700(Lcom/cashwalk/cashwalk/fragment/RecommendFriendFragment;)Landroid/widget/RelativeLayout;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 382
    .end local v3    # "result":Z
    :cond_0
    :goto_0
    return-void

    .line 318
    .restart local v3    # "result":Z
    :cond_1
    iget-object v4, p0, Lcom/cashwalk/cashwalk/fragment/RecommendFriendFragment$5;->this$0:Lcom/cashwalk/cashwalk/fragment/RecommendFriendFragment;

    invoke-static {v4}, Lcom/cashwalk/cashwalk/fragment/RecommendFriendFragment;->access$700(Lcom/cashwalk/cashwalk/fragment/RecommendFriendFragment;)Landroid/widget/RelativeLayout;

    move-result-object v4

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/widget/RelativeLayout;->setVisibility(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 372
    .end local v3    # "result":Z
    :catch_0
    move-exception v1

    .line 373
    .local v1, "e":Ljava/lang/Exception;
    new-instance v0, Landroid/support/v7/app/AlertDialog$Builder;

    iget-object v4, p0, Lcom/cashwalk/cashwalk/fragment/RecommendFriendFragment$5;->this$0:Lcom/cashwalk/cashwalk/fragment/RecommendFriendFragment;

    invoke-virtual {v4}, Lcom/cashwalk/cashwalk/fragment/RecommendFriendFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    invoke-direct {v0, v4}, Landroid/support/v7/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 374
    .local v0, "ab":Landroid/support/v7/app/AlertDialog$Builder;
    iget-object v4, p0, Lcom/cashwalk/cashwalk/fragment/RecommendFriendFragment$5;->this$0:Lcom/cashwalk/cashwalk/fragment/RecommendFriendFragment;

    invoke-virtual {v4}, Lcom/cashwalk/cashwalk/fragment/RecommendFriendFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/support/v7/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 375
    iget-object v4, p0, Lcom/cashwalk/cashwalk/fragment/RecommendFriendFragment$5;->this$0:Lcom/cashwalk/cashwalk/fragment/RecommendFriendFragment;

    invoke-virtual {v4}, Lcom/cashwalk/cashwalk/fragment/RecommendFriendFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Lcom/cashwalk/cashwalk/fragment/RecommendFriendFragment$5$5;

    invoke-direct {v5, p0}, Lcom/cashwalk/cashwalk/fragment/RecommendFriendFragment$5$5;-><init>(Lcom/cashwalk/cashwalk/fragment/RecommendFriendFragment$5;)V

    invoke-virtual {v0, v4, v5}, Landroid/support/v7/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    goto :goto_0

    .line 322
    .end local v0    # "ab":Landroid/support/v7/app/AlertDialog$Builder;
    .end local v1    # "e":Ljava/lang/Exception;
    .restart local v3    # "result":Z
    :cond_2
    :try_start_1
    iget-object v4, p0, Lcom/cashwalk/cashwalk/fragment/RecommendFriendFragment$5;->this$0:Lcom/cashwalk/cashwalk/fragment/RecommendFriendFragment;

    invoke-static {v4}, Lcom/cashwalk/cashwalk/fragment/RecommendFriendFragment;->access$500(Lcom/cashwalk/cashwalk/fragment/RecommendFriendFragment;)Landroid/content/Context;

    move-result-object v4

    iget-object v5, p0, Lcom/cashwalk/cashwalk/fragment/RecommendFriendFragment$5;->this$0:Lcom/cashwalk/cashwalk/fragment/RecommendFriendFragment;

    const v6, 0x7f090141

    invoke-virtual {v5, v6}, Lcom/cashwalk/cashwalk/fragment/RecommendFriendFragment;->getString(I)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    invoke-static {v4, v5, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 324
    .end local v3    # "result":Z
    :cond_3
    const-string v4, "error"

    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 325
    const-string v4, "error"

    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    .line 326
    .local v2, "error":Lorg/json/JSONObject;
    const-string v4, "code"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v4

    const/16 v5, 0xcd

    if-ne v4, v5, :cond_4

    .line 327
    new-instance v0, Landroid/support/v7/app/AlertDialog$Builder;

    iget-object v4, p0, Lcom/cashwalk/cashwalk/fragment/RecommendFriendFragment$5;->this$0:Lcom/cashwalk/cashwalk/fragment/RecommendFriendFragment;

    invoke-virtual {v4}, Lcom/cashwalk/cashwalk/fragment/RecommendFriendFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    invoke-direct {v0, v4}, Landroid/support/v7/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 328
    .restart local v0    # "ab":Landroid/support/v7/app/AlertDialog$Builder;
    iget-object v4, p0, Lcom/cashwalk/cashwalk/fragment/RecommendFriendFragment$5;->this$0:Lcom/cashwalk/cashwalk/fragment/RecommendFriendFragment;

    invoke-virtual {v4}, Lcom/cashwalk/cashwalk/fragment/RecommendFriendFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f09015b

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/support/v7/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 329
    iget-object v4, p0, Lcom/cashwalk/cashwalk/fragment/RecommendFriendFragment$5;->this$0:Lcom/cashwalk/cashwalk/fragment/RecommendFriendFragment;

    invoke-virtual {v4}, Lcom/cashwalk/cashwalk/fragment/RecommendFriendFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f090132

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Lcom/cashwalk/cashwalk/fragment/RecommendFriendFragment$5$1;

    invoke-direct {v5, p0}, Lcom/cashwalk/cashwalk/fragment/RecommendFriendFragment$5$1;-><init>(Lcom/cashwalk/cashwalk/fragment/RecommendFriendFragment$5;)V

    invoke-virtual {v0, v4, v5}, Landroid/support/v7/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 337
    invoke-virtual {v0}, Landroid/support/v7/app/AlertDialog$Builder;->show()Landroid/support/v7/app/AlertDialog;

    goto/16 :goto_0

    .line 338
    .end local v0    # "ab":Landroid/support/v7/app/AlertDialog$Builder;
    :cond_4
    const-string v4, "code"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v4

    const/16 v5, 0xcc

    if-ne v4, v5, :cond_5

    .line 339
    new-instance v0, Landroid/support/v7/app/AlertDialog$Builder;

    iget-object v4, p0, Lcom/cashwalk/cashwalk/fragment/RecommendFriendFragment$5;->this$0:Lcom/cashwalk/cashwalk/fragment/RecommendFriendFragment;

    invoke-virtual {v4}, Lcom/cashwalk/cashwalk/fragment/RecommendFriendFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    invoke-direct {v0, v4}, Landroid/support/v7/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 340
    .restart local v0    # "ab":Landroid/support/v7/app/AlertDialog$Builder;
    iget-object v4, p0, Lcom/cashwalk/cashwalk/fragment/RecommendFriendFragment$5;->this$0:Lcom/cashwalk/cashwalk/fragment/RecommendFriendFragment;

    invoke-virtual {v4}, Lcom/cashwalk/cashwalk/fragment/RecommendFriendFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f090167

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/support/v7/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 341
    iget-object v4, p0, Lcom/cashwalk/cashwalk/fragment/RecommendFriendFragment$5;->this$0:Lcom/cashwalk/cashwalk/fragment/RecommendFriendFragment;

    invoke-virtual {v4}, Lcom/cashwalk/cashwalk/fragment/RecommendFriendFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f090132

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Lcom/cashwalk/cashwalk/fragment/RecommendFriendFragment$5$2;

    invoke-direct {v5, p0}, Lcom/cashwalk/cashwalk/fragment/RecommendFriendFragment$5$2;-><init>(Lcom/cashwalk/cashwalk/fragment/RecommendFriendFragment$5;)V

    invoke-virtual {v0, v4, v5}, Landroid/support/v7/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 349
    invoke-virtual {v0}, Landroid/support/v7/app/AlertDialog$Builder;->show()Landroid/support/v7/app/AlertDialog;

    goto/16 :goto_0

    .line 350
    .end local v0    # "ab":Landroid/support/v7/app/AlertDialog$Builder;
    :cond_5
    const-string v4, "code"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v4

    const/16 v5, 0xe5

    if-ne v4, v5, :cond_6

    .line 351
    new-instance v0, Landroid/support/v7/app/AlertDialog$Builder;

    iget-object v4, p0, Lcom/cashwalk/cashwalk/fragment/RecommendFriendFragment$5;->this$0:Lcom/cashwalk/cashwalk/fragment/RecommendFriendFragment;

    invoke-virtual {v4}, Lcom/cashwalk/cashwalk/fragment/RecommendFriendFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    invoke-direct {v0, v4}, Landroid/support/v7/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 352
    .restart local v0    # "ab":Landroid/support/v7/app/AlertDialog$Builder;
    iget-object v4, p0, Lcom/cashwalk/cashwalk/fragment/RecommendFriendFragment$5;->this$0:Lcom/cashwalk/cashwalk/fragment/RecommendFriendFragment;

    invoke-virtual {v4}, Lcom/cashwalk/cashwalk/fragment/RecommendFriendFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f090168

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/support/v7/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 353
    iget-object v4, p0, Lcom/cashwalk/cashwalk/fragment/RecommendFriendFragment$5;->this$0:Lcom/cashwalk/cashwalk/fragment/RecommendFriendFragment;

    invoke-virtual {v4}, Lcom/cashwalk/cashwalk/fragment/RecommendFriendFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f090132

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Lcom/cashwalk/cashwalk/fragment/RecommendFriendFragment$5$3;

    invoke-direct {v5, p0}, Lcom/cashwalk/cashwalk/fragment/RecommendFriendFragment$5$3;-><init>(Lcom/cashwalk/cashwalk/fragment/RecommendFriendFragment$5;)V

    invoke-virtual {v0, v4, v5}, Landroid/support/v7/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 359
    invoke-virtual {v0}, Landroid/support/v7/app/AlertDialog$Builder;->show()Landroid/support/v7/app/AlertDialog;

    goto/16 :goto_0

    .line 361
    .end local v0    # "ab":Landroid/support/v7/app/AlertDialog$Builder;
    :cond_6
    new-instance v0, Landroid/support/v7/app/AlertDialog$Builder;

    iget-object v4, p0, Lcom/cashwalk/cashwalk/fragment/RecommendFriendFragment$5;->this$0:Lcom/cashwalk/cashwalk/fragment/RecommendFriendFragment;

    invoke-virtual {v4}, Lcom/cashwalk/cashwalk/fragment/RecommendFriendFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    invoke-direct {v0, v4}, Landroid/support/v7/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 362
    .restart local v0    # "ab":Landroid/support/v7/app/AlertDialog$Builder;
    iget-object v4, p0, Lcom/cashwalk/cashwalk/fragment/RecommendFriendFragment$5;->this$0:Lcom/cashwalk/cashwalk/fragment/RecommendFriendFragment;

    invoke-virtual {v4}, Lcom/cashwalk/cashwalk/fragment/RecommendFriendFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f090143

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/support/v7/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 363
    iget-object v4, p0, Lcom/cashwalk/cashwalk/fragment/RecommendFriendFragment$5;->this$0:Lcom/cashwalk/cashwalk/fragment/RecommendFriendFragment;

    invoke-virtual {v4}, Lcom/cashwalk/cashwalk/fragment/RecommendFriendFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f090132

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Lcom/cashwalk/cashwalk/fragment/RecommendFriendFragment$5$4;

    invoke-direct {v5, p0}, Lcom/cashwalk/cashwalk/fragment/RecommendFriendFragment$5$4;-><init>(Lcom/cashwalk/cashwalk/fragment/RecommendFriendFragment$5;)V

    invoke-virtual {v0, v4, v5}, Landroid/support/v7/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 369
    invoke-virtual {v0}, Landroid/support/v7/app/AlertDialog$Builder;->show()Landroid/support/v7/app/AlertDialog;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0
.end method
