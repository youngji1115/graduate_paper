.class public Lcom/cashwalk/cashwalk/activity/StepBetActivity$TabsPagerAdapter;
.super Landroid/support/v4/app/FragmentPagerAdapter;
.source "StepBetActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cashwalk/cashwalk/activity/StepBetActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "TabsPagerAdapter"
.end annotation


# instance fields
.field private fragmentMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Landroid/support/v4/app/Fragment;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/cashwalk/cashwalk/activity/StepBetActivity;


# direct methods
.method public constructor <init>(Lcom/cashwalk/cashwalk/activity/StepBetActivity;Landroid/support/v4/app/FragmentManager;)V
    .locals 1
    .param p1, "this$0"    # Lcom/cashwalk/cashwalk/activity/StepBetActivity;
    .param p2, "fm"    # Landroid/support/v4/app/FragmentManager;

    .prologue
    .line 313
    iput-object p1, p0, Lcom/cashwalk/cashwalk/activity/StepBetActivity$TabsPagerAdapter;->this$0:Lcom/cashwalk/cashwalk/activity/StepBetActivity;

    .line 314
    invoke-direct {p0, p2}, Landroid/support/v4/app/FragmentPagerAdapter;-><init>(Landroid/support/v4/app/FragmentManager;)V

    .line 315
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/cashwalk/cashwalk/activity/StepBetActivity$TabsPagerAdapter;->fragmentMap:Ljava/util/HashMap;

    .line 316
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 350
    const/4 v0, 0x3

    return v0
.end method

.method public getFragment(I)Landroid/support/v4/app/Fragment;
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 319
    iget-object v0, p0, Lcom/cashwalk/cashwalk/activity/StepBetActivity$TabsPagerAdapter;->fragmentMap:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    .line 320
    iget-object v0, p0, Lcom/cashwalk/cashwalk/activity/StepBetActivity$TabsPagerAdapter;->fragmentMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/Fragment;

    .line 322
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getItem(I)Landroid/support/v4/app/Fragment;
    .locals 3
    .param p1, "position"    # I

    .prologue
    .line 329
    const/4 v0, 0x0

    .line 331
    .local v0, "fragment":Landroid/support/v4/app/Fragment;
    packed-switch p1, :pswitch_data_0

    .line 343
    :goto_0
    iget-object v1, p0, Lcom/cashwalk/cashwalk/activity/StepBetActivity$TabsPagerAdapter;->fragmentMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 345
    return-object v0

    .line 333
    :pswitch_0
    invoke-static {}, Lcom/cashwalk/cashwalk/fragment/FriendRankFragment;->newInstance()Lcom/cashwalk/cashwalk/fragment/FriendRankFragment;

    move-result-object v0

    .line 334
    goto :goto_0

    .line 336
    :pswitch_1
    invoke-static {}, Lcom/cashwalk/cashwalk/fragment/StepBetRankFragment;->newInstance()Lcom/cashwalk/cashwalk/fragment/StepBetRankFragment;

    move-result-object v0

    .line 337
    goto :goto_0

    .line 339
    :pswitch_2
    invoke-static {}, Lcom/cashwalk/cashwalk/fragment/StepBetTimelineFragment;->newInstance()Lcom/cashwalk/cashwalk/fragment/StepBetTimelineFragment;

    move-result-object v0

    goto :goto_0

    .line 331
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public getPageTitle(I)Ljava/lang/CharSequence;
    .locals 3
    .param p1, "position"    # I

    .prologue
    .line 355
    const/4 v0, 0x0

    .line 356
    .local v0, "title":Ljava/lang/String;
    packed-switch p1, :pswitch_data_0

    .line 368
    :goto_0
    return-object v0

    .line 358
    :pswitch_0
    iget-object v1, p0, Lcom/cashwalk/cashwalk/activity/StepBetActivity$TabsPagerAdapter;->this$0:Lcom/cashwalk/cashwalk/activity/StepBetActivity;

    const v2, 0x7f0902a3

    invoke-virtual {v1, v2}, Lcom/cashwalk/cashwalk/activity/StepBetActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 359
    goto :goto_0

    .line 361
    :pswitch_1
    iget-object v1, p0, Lcom/cashwalk/cashwalk/activity/StepBetActivity$TabsPagerAdapter;->this$0:Lcom/cashwalk/cashwalk/activity/StepBetActivity;

    const v2, 0x7f0902de

    invoke-virtual {v1, v2}, Lcom/cashwalk/cashwalk/activity/StepBetActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 362
    goto :goto_0

    .line 364
    :pswitch_2
    iget-object v1, p0, Lcom/cashwalk/cashwalk/activity/StepBetActivity$TabsPagerAdapter;->this$0:Lcom/cashwalk/cashwalk/activity/StepBetActivity;

    const v2, 0x7f0902bf

    invoke-virtual {v1, v2}, Lcom/cashwalk/cashwalk/activity/StepBetActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 356
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
