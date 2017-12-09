.class public Lcom/cashwalk/cashwalk/fragment/TimelineFragment$TabsPagerAdapter;
.super Landroid/support/v4/app/FragmentPagerAdapter;
.source "TimelineFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cashwalk/cashwalk/fragment/TimelineFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "TabsPagerAdapter"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cashwalk/cashwalk/fragment/TimelineFragment;


# direct methods
.method public constructor <init>(Lcom/cashwalk/cashwalk/fragment/TimelineFragment;Landroid/support/v4/app/FragmentManager;)V
    .locals 0
    .param p1, "this$0"    # Lcom/cashwalk/cashwalk/fragment/TimelineFragment;
    .param p2, "fm"    # Landroid/support/v4/app/FragmentManager;

    .prologue
    .line 113
    iput-object p1, p0, Lcom/cashwalk/cashwalk/fragment/TimelineFragment$TabsPagerAdapter;->this$0:Lcom/cashwalk/cashwalk/fragment/TimelineFragment;

    .line 114
    invoke-direct {p0, p2}, Landroid/support/v4/app/FragmentPagerAdapter;-><init>(Landroid/support/v4/app/FragmentManager;)V

    .line 115
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 139
    const/4 v0, 0x2

    return v0
.end method

.method public getItem(I)Landroid/support/v4/app/Fragment;
    .locals 4
    .param p1, "position"    # I

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 119
    const/4 v0, 0x0

    .line 121
    .local v0, "fragment":Lcom/cashwalk/cashwalk/fragment/TimelineListFragment;
    packed-switch p1, :pswitch_data_0

    .line 134
    :goto_0
    return-object v0

    .line 123
    :pswitch_0
    invoke-static {}, Lcom/cashwalk/cashwalk/fragment/TimelineListFragment;->newInstance()Lcom/cashwalk/cashwalk/fragment/TimelineListFragment;

    move-result-object v0

    .line 124
    invoke-virtual {v0, v3}, Lcom/cashwalk/cashwalk/fragment/TimelineListFragment;->setType(Z)V

    .line 125
    iget-object v1, p0, Lcom/cashwalk/cashwalk/fragment/TimelineFragment$TabsPagerAdapter;->this$0:Lcom/cashwalk/cashwalk/fragment/TimelineFragment;

    invoke-static {v1}, Lcom/cashwalk/cashwalk/fragment/TimelineFragment;->access$100(Lcom/cashwalk/cashwalk/fragment/TimelineFragment;)[Lcom/cashwalk/cashwalk/fragment/TimelineListFragment;

    move-result-object v1

    aput-object v0, v1, v2

    goto :goto_0

    .line 128
    :pswitch_1
    invoke-static {}, Lcom/cashwalk/cashwalk/fragment/TimelineListFragment;->newInstance()Lcom/cashwalk/cashwalk/fragment/TimelineListFragment;

    move-result-object v0

    .line 129
    invoke-virtual {v0, v2}, Lcom/cashwalk/cashwalk/fragment/TimelineListFragment;->setType(Z)V

    .line 130
    iget-object v1, p0, Lcom/cashwalk/cashwalk/fragment/TimelineFragment$TabsPagerAdapter;->this$0:Lcom/cashwalk/cashwalk/fragment/TimelineFragment;

    invoke-static {v1}, Lcom/cashwalk/cashwalk/fragment/TimelineFragment;->access$100(Lcom/cashwalk/cashwalk/fragment/TimelineFragment;)[Lcom/cashwalk/cashwalk/fragment/TimelineListFragment;

    move-result-object v1

    aput-object v0, v1, v3

    goto :goto_0

    .line 121
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public getPageTitle(I)Ljava/lang/CharSequence;
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 144
    if-nez p1, :cond_0

    .line 145
    iget-object v0, p0, Lcom/cashwalk/cashwalk/fragment/TimelineFragment$TabsPagerAdapter;->this$0:Lcom/cashwalk/cashwalk/fragment/TimelineFragment;

    const v1, 0x7f0902d9

    invoke-virtual {v0, v1}, Lcom/cashwalk/cashwalk/fragment/TimelineFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 147
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/cashwalk/cashwalk/fragment/TimelineFragment$TabsPagerAdapter;->this$0:Lcom/cashwalk/cashwalk/fragment/TimelineFragment;

    const v1, 0x7f0902d8

    invoke-virtual {v0, v1}, Lcom/cashwalk/cashwalk/fragment/TimelineFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
