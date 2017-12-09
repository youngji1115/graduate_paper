.class public Lcom/cashwalk/cashwalk/activity/StatActivity$TabsPagerAdapter;
.super Landroid/support/v4/app/FragmentPagerAdapter;
.source "StatActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cashwalk/cashwalk/activity/StatActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "TabsPagerAdapter"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cashwalk/cashwalk/activity/StatActivity;


# direct methods
.method public constructor <init>(Lcom/cashwalk/cashwalk/activity/StatActivity;Landroid/support/v4/app/FragmentManager;)V
    .locals 0
    .param p1, "this$0"    # Lcom/cashwalk/cashwalk/activity/StatActivity;
    .param p2, "fm"    # Landroid/support/v4/app/FragmentManager;

    .prologue
    .line 153
    iput-object p1, p0, Lcom/cashwalk/cashwalk/activity/StatActivity$TabsPagerAdapter;->this$0:Lcom/cashwalk/cashwalk/activity/StatActivity;

    .line 154
    invoke-direct {p0, p2}, Landroid/support/v4/app/FragmentPagerAdapter;-><init>(Landroid/support/v4/app/FragmentManager;)V

    .line 155
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 180
    const/4 v0, 0x3

    return v0
.end method

.method public getItem(I)Landroid/support/v4/app/Fragment;
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 160
    const/4 v0, 0x0

    .line 162
    .local v0, "fragment":Landroid/support/v4/app/Fragment;
    const-string v1, "#### TEST1"

    invoke-static {v1}, Lcom/cashwalk/cashwalk/util/Utils;->LOG(Ljava/lang/String;)V

    .line 163
    packed-switch p1, :pswitch_data_0

    .line 175
    :goto_0
    return-object v0

    .line 165
    :pswitch_0
    iget-object v1, p0, Lcom/cashwalk/cashwalk/activity/StatActivity$TabsPagerAdapter;->this$0:Lcom/cashwalk/cashwalk/activity/StatActivity;

    invoke-static {v1}, Lcom/cashwalk/cashwalk/activity/StatActivity;->access$100(Lcom/cashwalk/cashwalk/activity/StatActivity;)Lcom/cashwalk/cashwalk/fragment/StatLineChartFragment;

    move-result-object v0

    .line 166
    goto :goto_0

    .line 168
    :pswitch_1
    iget-object v1, p0, Lcom/cashwalk/cashwalk/activity/StatActivity$TabsPagerAdapter;->this$0:Lcom/cashwalk/cashwalk/activity/StatActivity;

    invoke-static {v1}, Lcom/cashwalk/cashwalk/activity/StatActivity;->access$200(Lcom/cashwalk/cashwalk/activity/StatActivity;)Lcom/cashwalk/cashwalk/fragment/StatBarChartFragment;

    move-result-object v0

    .line 169
    goto :goto_0

    .line 171
    :pswitch_2
    iget-object v1, p0, Lcom/cashwalk/cashwalk/activity/StatActivity$TabsPagerAdapter;->this$0:Lcom/cashwalk/cashwalk/activity/StatActivity;

    invoke-static {v1}, Lcom/cashwalk/cashwalk/activity/StatActivity;->access$300(Lcom/cashwalk/cashwalk/activity/StatActivity;)Lcom/cashwalk/cashwalk/fragment/StatBarChartFragment;

    move-result-object v0

    goto :goto_0

    .line 163
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public getPageTitle(I)Ljava/lang/CharSequence;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 185
    const/4 v0, 0x0

    .line 186
    .local v0, "title":Ljava/lang/String;
    packed-switch p1, :pswitch_data_0

    .line 198
    :goto_0
    return-object v0

    .line 188
    :pswitch_0
    const-string/jumbo v0, "\uc77c"

    .line 189
    goto :goto_0

    .line 191
    :pswitch_1
    const-string/jumbo v0, "\uc8fc"

    .line 192
    goto :goto_0

    .line 194
    :pswitch_2
    const-string/jumbo v0, "\uc6d4"

    goto :goto_0

    .line 186
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
