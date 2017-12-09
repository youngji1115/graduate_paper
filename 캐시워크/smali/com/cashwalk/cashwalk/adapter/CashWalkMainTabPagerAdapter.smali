.class public Lcom/cashwalk/cashwalk/adapter/CashWalkMainTabPagerAdapter;
.super Landroid/support/v4/app/FragmentStatePagerAdapter;
.source "CashWalkMainTabPagerAdapter.java"


# instance fields
.field private tabCount:I


# direct methods
.method public constructor <init>(Landroid/support/v4/app/FragmentManager;I)V
    .locals 0
    .param p1, "fm"    # Landroid/support/v4/app/FragmentManager;
    .param p2, "tabCount"    # I

    .prologue
    .line 16
    invoke-direct {p0, p1}, Landroid/support/v4/app/FragmentStatePagerAdapter;-><init>(Landroid/support/v4/app/FragmentManager;)V

    .line 17
    iput p2, p0, Lcom/cashwalk/cashwalk/adapter/CashWalkMainTabPagerAdapter;->tabCount:I

    .line 18
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 47
    iget v0, p0, Lcom/cashwalk/cashwalk/adapter/CashWalkMainTabPagerAdapter;->tabCount:I

    return v0
.end method

.method public getItem(I)Landroid/support/v4/app/Fragment;
    .locals 5
    .param p1, "position"    # I

    .prologue
    .line 24
    packed-switch p1, :pswitch_data_0

    .line 41
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 26
    :pswitch_0
    new-instance v0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenEmptyFragmentLeft;

    invoke-direct {v0}, Lcom/cashwalk/cashwalk/lockscreen/LockScreenEmptyFragmentLeft;-><init>()V

    .line 27
    .local v0, "tabFragment1":Lcom/cashwalk/cashwalk/lockscreen/LockScreenEmptyFragmentLeft;
    goto :goto_0

    .line 29
    .end local v0    # "tabFragment1":Lcom/cashwalk/cashwalk/lockscreen/LockScreenEmptyFragmentLeft;
    :pswitch_1
    new-instance v1, Lcom/cashwalk/cashwalk/lockscreen/LockScreenEmptyFragmentLeft;

    invoke-direct {v1}, Lcom/cashwalk/cashwalk/lockscreen/LockScreenEmptyFragmentLeft;-><init>()V

    .local v1, "tabFragment2":Lcom/cashwalk/cashwalk/lockscreen/LockScreenEmptyFragmentLeft;
    move-object v0, v1

    .line 30
    goto :goto_0

    .line 32
    .end local v1    # "tabFragment2":Lcom/cashwalk/cashwalk/lockscreen/LockScreenEmptyFragmentLeft;
    :pswitch_2
    new-instance v2, Lcom/cashwalk/cashwalk/lockscreen/LockScreenEmptyFragmentLeft;

    invoke-direct {v2}, Lcom/cashwalk/cashwalk/lockscreen/LockScreenEmptyFragmentLeft;-><init>()V

    .local v2, "tabFragment3":Lcom/cashwalk/cashwalk/lockscreen/LockScreenEmptyFragmentLeft;
    move-object v0, v2

    .line 33
    goto :goto_0

    .line 35
    .end local v2    # "tabFragment3":Lcom/cashwalk/cashwalk/lockscreen/LockScreenEmptyFragmentLeft;
    :pswitch_3
    new-instance v3, Lcom/cashwalk/cashwalk/lockscreen/LockScreenEmptyFragmentLeft;

    invoke-direct {v3}, Lcom/cashwalk/cashwalk/lockscreen/LockScreenEmptyFragmentLeft;-><init>()V

    .local v3, "tabFragment4":Lcom/cashwalk/cashwalk/lockscreen/LockScreenEmptyFragmentLeft;
    move-object v0, v3

    .line 36
    goto :goto_0

    .line 38
    .end local v3    # "tabFragment4":Lcom/cashwalk/cashwalk/lockscreen/LockScreenEmptyFragmentLeft;
    :pswitch_4
    new-instance v4, Lcom/cashwalk/cashwalk/lockscreen/LockScreenEmptyFragmentLeft;

    invoke-direct {v4}, Lcom/cashwalk/cashwalk/lockscreen/LockScreenEmptyFragmentLeft;-><init>()V

    .local v4, "tabFragment5":Lcom/cashwalk/cashwalk/lockscreen/LockScreenEmptyFragmentLeft;
    move-object v0, v4

    .line 39
    goto :goto_0

    .line 24
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method
