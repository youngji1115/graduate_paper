.class Lcom/cashwalk/cashwalk/activity/SignupActivity$SignupPagerAdpater;
.super Landroid/support/v4/app/FragmentPagerAdapter;
.source "SignupActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cashwalk/cashwalk/activity/SignupActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SignupPagerAdpater"
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

.field final synthetic this$0:Lcom/cashwalk/cashwalk/activity/SignupActivity;


# direct methods
.method public constructor <init>(Lcom/cashwalk/cashwalk/activity/SignupActivity;Landroid/support/v4/app/FragmentManager;)V
    .locals 1
    .param p2, "fm"    # Landroid/support/v4/app/FragmentManager;

    .prologue
    .line 260
    iput-object p1, p0, Lcom/cashwalk/cashwalk/activity/SignupActivity$SignupPagerAdpater;->this$0:Lcom/cashwalk/cashwalk/activity/SignupActivity;

    .line 261
    invoke-direct {p0, p2}, Landroid/support/v4/app/FragmentPagerAdapter;-><init>(Landroid/support/v4/app/FragmentManager;)V

    .line 262
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/cashwalk/cashwalk/activity/SignupActivity$SignupPagerAdpater;->fragmentMap:Ljava/util/HashMap;

    .line 263
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 297
    const/4 v0, 0x3

    return v0
.end method

.method public getFragment(I)Landroid/support/v4/app/Fragment;
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 266
    iget-object v0, p0, Lcom/cashwalk/cashwalk/activity/SignupActivity$SignupPagerAdpater;->fragmentMap:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    .line 267
    iget-object v0, p0, Lcom/cashwalk/cashwalk/activity/SignupActivity$SignupPagerAdpater;->fragmentMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/Fragment;

    .line 269
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
    .line 275
    const/4 v0, 0x0

    .line 277
    .local v0, "fragment":Landroid/support/v4/app/Fragment;
    packed-switch p1, :pswitch_data_0

    .line 290
    :goto_0
    iget-object v1, p0, Lcom/cashwalk/cashwalk/activity/SignupActivity$SignupPagerAdpater;->fragmentMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 292
    return-object v0

    .line 279
    :pswitch_0
    iget-object v1, p0, Lcom/cashwalk/cashwalk/activity/SignupActivity$SignupPagerAdpater;->this$0:Lcom/cashwalk/cashwalk/activity/SignupActivity;

    iget-object v2, p0, Lcom/cashwalk/cashwalk/activity/SignupActivity$SignupPagerAdpater;->this$0:Lcom/cashwalk/cashwalk/activity/SignupActivity;

    invoke-static {v2}, Lcom/cashwalk/cashwalk/activity/SignupActivity;->access$200(Lcom/cashwalk/cashwalk/activity/SignupActivity;)Lcom/cashwalk/cashwalk/util/network/model/User;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/cashwalk/cashwalk/fragment/SignupGenderFragment;->newInstance(Lcom/cashwalk/cashwalk/fragment/SignupFragmentListener;Lcom/cashwalk/cashwalk/util/network/model/User;)Lcom/cashwalk/cashwalk/fragment/SignupGenderFragment;

    move-result-object v0

    .line 280
    iget-object v2, p0, Lcom/cashwalk/cashwalk/activity/SignupActivity$SignupPagerAdpater;->this$0:Lcom/cashwalk/cashwalk/activity/SignupActivity;

    move-object v1, v0

    check-cast v1, Lcom/cashwalk/cashwalk/fragment/SignupGenderFragment;

    invoke-static {v2, v1}, Lcom/cashwalk/cashwalk/activity/SignupActivity;->access$302(Lcom/cashwalk/cashwalk/activity/SignupActivity;Lcom/cashwalk/cashwalk/fragment/SignupGenderFragment;)Lcom/cashwalk/cashwalk/fragment/SignupGenderFragment;

    goto :goto_0

    .line 283
    :pswitch_1
    iget-object v1, p0, Lcom/cashwalk/cashwalk/activity/SignupActivity$SignupPagerAdpater;->this$0:Lcom/cashwalk/cashwalk/activity/SignupActivity;

    iget-object v2, p0, Lcom/cashwalk/cashwalk/activity/SignupActivity$SignupPagerAdpater;->this$0:Lcom/cashwalk/cashwalk/activity/SignupActivity;

    invoke-static {v2}, Lcom/cashwalk/cashwalk/activity/SignupActivity;->access$200(Lcom/cashwalk/cashwalk/activity/SignupActivity;)Lcom/cashwalk/cashwalk/util/network/model/User;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/cashwalk/cashwalk/fragment/SignupWeightFragment;->newInstance(Lcom/cashwalk/cashwalk/fragment/SignupFragmentListener;Lcom/cashwalk/cashwalk/util/network/model/User;)Lcom/cashwalk/cashwalk/fragment/SignupWeightFragment;

    move-result-object v0

    .line 284
    goto :goto_0

    .line 286
    :pswitch_2
    iget-object v1, p0, Lcom/cashwalk/cashwalk/activity/SignupActivity$SignupPagerAdpater;->this$0:Lcom/cashwalk/cashwalk/activity/SignupActivity;

    iget-object v2, p0, Lcom/cashwalk/cashwalk/activity/SignupActivity$SignupPagerAdpater;->this$0:Lcom/cashwalk/cashwalk/activity/SignupActivity;

    invoke-static {v2}, Lcom/cashwalk/cashwalk/activity/SignupActivity;->access$200(Lcom/cashwalk/cashwalk/activity/SignupActivity;)Lcom/cashwalk/cashwalk/util/network/model/User;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/cashwalk/cashwalk/fragment/SignupInviteFragment;->newInstance(Lcom/cashwalk/cashwalk/fragment/SignupFragmentListener;Lcom/cashwalk/cashwalk/util/network/model/User;)Lcom/cashwalk/cashwalk/fragment/SignupInviteFragment;

    move-result-object v0

    goto :goto_0

    .line 277
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
