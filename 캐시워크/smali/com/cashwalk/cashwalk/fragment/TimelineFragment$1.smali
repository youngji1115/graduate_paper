.class Lcom/cashwalk/cashwalk/fragment/TimelineFragment$1;
.super Ljava/lang/Object;
.source "TimelineFragment.java"

# interfaces
.implements Landroid/support/v4/view/ViewPager$OnPageChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cashwalk/cashwalk/fragment/TimelineFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cashwalk/cashwalk/fragment/TimelineFragment;


# direct methods
.method constructor <init>(Lcom/cashwalk/cashwalk/fragment/TimelineFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/cashwalk/cashwalk/fragment/TimelineFragment;

    .prologue
    .line 61
    iput-object p1, p0, Lcom/cashwalk/cashwalk/fragment/TimelineFragment$1;->this$0:Lcom/cashwalk/cashwalk/fragment/TimelineFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageScrollStateChanged(I)V
    .locals 0
    .param p1, "state"    # I

    .prologue
    .line 89
    return-void
.end method

.method public onPageScrolled(IFI)V
    .locals 0
    .param p1, "position"    # I
    .param p2, "positionOffset"    # F
    .param p3, "positionOffsetPixels"    # I

    .prologue
    .line 65
    return-void
.end method

.method public onPageSelected(I)V
    .locals 4
    .param p1, "position"    # I

    .prologue
    .line 69
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lcom/cashwalk/cashwalk/fragment/TimelineFragment$1;->this$0:Lcom/cashwalk/cashwalk/fragment/TimelineFragment;

    invoke-static {v2}, Lcom/cashwalk/cashwalk/fragment/TimelineFragment;->access$000(Lcom/cashwalk/cashwalk/fragment/TimelineFragment;)Landroid/widget/LinearLayout;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 70
    iget-object v2, p0, Lcom/cashwalk/cashwalk/fragment/TimelineFragment$1;->this$0:Lcom/cashwalk/cashwalk/fragment/TimelineFragment;

    invoke-static {v2}, Lcom/cashwalk/cashwalk/fragment/TimelineFragment;->access$000(Lcom/cashwalk/cashwalk/fragment/TimelineFragment;)Landroid/widget/LinearLayout;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 71
    .local v1, "tv":Landroid/widget/TextView;
    if-ne v0, p1, :cond_0

    .line 72
    iget-object v2, p0, Lcom/cashwalk/cashwalk/fragment/TimelineFragment$1;->this$0:Lcom/cashwalk/cashwalk/fragment/TimelineFragment;

    invoke-virtual {v2}, Lcom/cashwalk/cashwalk/fragment/TimelineFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0f0020

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 69
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 74
    :cond_0
    iget-object v2, p0, Lcom/cashwalk/cashwalk/fragment/TimelineFragment$1;->this$0:Lcom/cashwalk/cashwalk/fragment/TimelineFragment;

    invoke-virtual {v2}, Lcom/cashwalk/cashwalk/fragment/TimelineFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0f0091

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_1

    .line 78
    .end local v1    # "tv":Landroid/widget/TextView;
    :cond_1
    packed-switch p1, :pswitch_data_0

    .line 84
    :pswitch_0
    return-void

    .line 78
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
