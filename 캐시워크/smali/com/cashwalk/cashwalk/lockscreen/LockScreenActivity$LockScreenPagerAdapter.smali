.class Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity$LockScreenPagerAdapter;
.super Landroid/support/v4/app/FragmentPagerAdapter;
.source "LockScreenActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LockScreenPagerAdapter"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity;


# direct methods
.method public constructor <init>(Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity;Landroid/support/v4/app/FragmentManager;)V
    .locals 0
    .param p2, "fm"    # Landroid/support/v4/app/FragmentManager;

    .prologue
    .line 1070
    iput-object p1, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity$LockScreenPagerAdapter;->this$0:Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity;

    .line 1071
    invoke-direct {p0, p2}, Landroid/support/v4/app/FragmentPagerAdapter;-><init>(Landroid/support/v4/app/FragmentManager;)V

    .line 1072
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 1092
    const/4 v0, 0x2

    return v0
.end method

.method public getItem(I)Landroid/support/v4/app/Fragment;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 1076
    const/4 v0, 0x0

    .line 1078
    .local v0, "fragment":Landroid/support/v4/app/Fragment;
    packed-switch p1, :pswitch_data_0

    .line 1087
    :goto_0
    return-object v0

    .line 1080
    :pswitch_0
    invoke-static {}, Lcom/cashwalk/cashwalk/lockscreen/LockScreenEmptyFragmentLeft;->newInstance()Lcom/cashwalk/cashwalk/lockscreen/LockScreenEmptyFragmentLeft;

    move-result-object v0

    .line 1081
    goto :goto_0

    .line 1083
    :pswitch_1
    invoke-static {}, Lcom/cashwalk/cashwalk/lockscreen/LockScreenMainFragment;->newInstance()Lcom/cashwalk/cashwalk/lockscreen/LockScreenMainFragment;

    move-result-object v0

    goto :goto_0

    .line 1078
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
