.class public Lcom/cashwalk/cashwalk/activity/TnkAdActivity$TabsPagerAdapter;
.super Landroid/support/v4/app/FragmentPagerAdapter;
.source "TnkAdActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cashwalk/cashwalk/activity/TnkAdActivity;
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

.field final synthetic this$0:Lcom/cashwalk/cashwalk/activity/TnkAdActivity;


# direct methods
.method public constructor <init>(Lcom/cashwalk/cashwalk/activity/TnkAdActivity;Landroid/support/v4/app/FragmentManager;)V
    .locals 1
    .param p1, "this$0"    # Lcom/cashwalk/cashwalk/activity/TnkAdActivity;
    .param p2, "fm"    # Landroid/support/v4/app/FragmentManager;

    .prologue
    .line 1025
    iput-object p1, p0, Lcom/cashwalk/cashwalk/activity/TnkAdActivity$TabsPagerAdapter;->this$0:Lcom/cashwalk/cashwalk/activity/TnkAdActivity;

    .line 1026
    invoke-direct {p0, p2}, Landroid/support/v4/app/FragmentPagerAdapter;-><init>(Landroid/support/v4/app/FragmentManager;)V

    .line 1027
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/cashwalk/cashwalk/activity/TnkAdActivity$TabsPagerAdapter;->fragmentMap:Ljava/util/HashMap;

    .line 1028
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 1059
    const/4 v0, 0x1

    return v0
.end method

.method public getFragment(I)Landroid/support/v4/app/Fragment;
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 1031
    iget-object v0, p0, Lcom/cashwalk/cashwalk/activity/TnkAdActivity$TabsPagerAdapter;->fragmentMap:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    .line 1032
    iget-object v0, p0, Lcom/cashwalk/cashwalk/activity/TnkAdActivity$TabsPagerAdapter;->fragmentMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/Fragment;

    .line 1034
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
    .line 1041
    const/4 v0, 0x0

    .line 1043
    .local v0, "fragment":Landroid/support/v4/app/Fragment;
    packed-switch p1, :pswitch_data_0

    .line 1052
    :goto_0
    iget-object v1, p0, Lcom/cashwalk/cashwalk/activity/TnkAdActivity$TabsPagerAdapter;->fragmentMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1054
    return-object v0

    .line 1048
    :pswitch_0
    invoke-static {}, Lcom/cashwalk/cashwalk/fragment/TnkAdListFragment;->newInstance()Lcom/cashwalk/cashwalk/fragment/TnkAdListFragment;

    move-result-object v0

    goto :goto_0

    .line 1043
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public getPageTitle(I)Ljava/lang/CharSequence;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 1064
    const/4 v0, 0x0

    .line 1065
    .local v0, "title":Ljava/lang/String;
    packed-switch p1, :pswitch_data_0

    .line 1076
    :goto_0
    return-object v0

    .line 1067
    :pswitch_0
    const-string/jumbo v0, "\ubb34\ub8cc\uce90\uc2dc \uc801\ub9bd1"

    goto :goto_0

    .line 1065
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
