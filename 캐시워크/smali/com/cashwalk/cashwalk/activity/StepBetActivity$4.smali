.class Lcom/cashwalk/cashwalk/activity/StepBetActivity$4;
.super Ljava/lang/Object;
.source "StepBetActivity.java"

# interfaces
.implements Landroid/support/v4/view/ViewPager$OnPageChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cashwalk/cashwalk/activity/StepBetActivity;->initViews()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cashwalk/cashwalk/activity/StepBetActivity;


# direct methods
.method constructor <init>(Lcom/cashwalk/cashwalk/activity/StepBetActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/cashwalk/cashwalk/activity/StepBetActivity;

    .prologue
    .line 196
    iput-object p1, p0, Lcom/cashwalk/cashwalk/activity/StepBetActivity$4;->this$0:Lcom/cashwalk/cashwalk/activity/StepBetActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageScrollStateChanged(I)V
    .locals 0
    .param p1, "state"    # I

    .prologue
    .line 253
    return-void
.end method

.method public onPageScrolled(IFI)V
    .locals 0
    .param p1, "position"    # I
    .param p2, "positionOffset"    # F
    .param p3, "positionOffsetPixels"    # I

    .prologue
    .line 200
    return-void
.end method

.method public onPageSelected(I)V
    .locals 7
    .param p1, "position"    # I

    .prologue
    const/4 v6, 0x1

    const/16 v5, 0x8

    const/4 v4, 0x0

    .line 205
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "#### \uc120\ud0dd"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/cashwalk/cashwalk/util/Utils;->LOG(Ljava/lang/String;)V

    .line 207
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lcom/cashwalk/cashwalk/activity/StepBetActivity$4;->this$0:Lcom/cashwalk/cashwalk/activity/StepBetActivity;

    invoke-static {v2}, Lcom/cashwalk/cashwalk/activity/StepBetActivity;->access$300(Lcom/cashwalk/cashwalk/activity/StepBetActivity;)Landroid/widget/LinearLayout;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 208
    iget-object v2, p0, Lcom/cashwalk/cashwalk/activity/StepBetActivity$4;->this$0:Lcom/cashwalk/cashwalk/activity/StepBetActivity;

    invoke-static {v2}, Lcom/cashwalk/cashwalk/activity/StepBetActivity;->access$300(Lcom/cashwalk/cashwalk/activity/StepBetActivity;)Landroid/widget/LinearLayout;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 209
    .local v1, "tv":Landroid/widget/TextView;
    if-ne v0, p1, :cond_0

    .line 210
    iget-object v2, p0, Lcom/cashwalk/cashwalk/activity/StepBetActivity$4;->this$0:Lcom/cashwalk/cashwalk/activity/StepBetActivity;

    invoke-virtual {v2}, Lcom/cashwalk/cashwalk/activity/StepBetActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0f0020

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 207
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 212
    :cond_0
    iget-object v2, p0, Lcom/cashwalk/cashwalk/activity/StepBetActivity$4;->this$0:Lcom/cashwalk/cashwalk/activity/StepBetActivity;

    invoke-virtual {v2}, Lcom/cashwalk/cashwalk/activity/StepBetActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0f0091

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_1

    .line 216
    .end local v1    # "tv":Landroid/widget/TextView;
    :cond_1
    iget-object v2, p0, Lcom/cashwalk/cashwalk/activity/StepBetActivity$4;->this$0:Lcom/cashwalk/cashwalk/activity/StepBetActivity;

    invoke-static {v2, p1}, Lcom/cashwalk/cashwalk/activity/StepBetActivity;->access$102(Lcom/cashwalk/cashwalk/activity/StepBetActivity;I)I

    .line 217
    iget-object v2, p0, Lcom/cashwalk/cashwalk/activity/StepBetActivity$4;->this$0:Lcom/cashwalk/cashwalk/activity/StepBetActivity;

    invoke-static {v2}, Lcom/cashwalk/cashwalk/activity/StepBetActivity;->access$400(Lcom/cashwalk/cashwalk/activity/StepBetActivity;)Landroid/widget/LinearLayout;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 219
    packed-switch p1, :pswitch_data_0

    .line 248
    :cond_2
    :goto_2
    return-void

    .line 221
    :pswitch_0
    iget-object v2, p0, Lcom/cashwalk/cashwalk/activity/StepBetActivity$4;->this$0:Lcom/cashwalk/cashwalk/activity/StepBetActivity;

    invoke-static {v2}, Lcom/cashwalk/cashwalk/activity/StepBetActivity;->access$500(Lcom/cashwalk/cashwalk/activity/StepBetActivity;)Landroid/widget/RelativeLayout;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 222
    iget-object v2, p0, Lcom/cashwalk/cashwalk/activity/StepBetActivity$4;->this$0:Lcom/cashwalk/cashwalk/activity/StepBetActivity;

    invoke-static {v2}, Lcom/cashwalk/cashwalk/activity/StepBetActivity;->access$600(Lcom/cashwalk/cashwalk/activity/StepBetActivity;)Landroid/view/MenuItem;

    move-result-object v2

    if-eqz v2, :cond_2

    sget-object v2, Lcom/cashwalk/cashwalk/activity/StepBetActivity;->actionItemShare:Landroid/view/MenuItem;

    if-eqz v2, :cond_2

    .line 223
    iget-object v2, p0, Lcom/cashwalk/cashwalk/activity/StepBetActivity$4;->this$0:Lcom/cashwalk/cashwalk/activity/StepBetActivity;

    invoke-static {v2}, Lcom/cashwalk/cashwalk/activity/StepBetActivity;->access$600(Lcom/cashwalk/cashwalk/activity/StepBetActivity;)Landroid/view/MenuItem;

    move-result-object v2

    invoke-interface {v2, v6}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 225
    sget v2, Lcom/cashwalk/cashwalk/activity/StepBetActivity;->MY_FRIEND_TOTAL_SIZE:I

    if-eqz v2, :cond_3

    .line 226
    sget-object v2, Lcom/cashwalk/cashwalk/activity/StepBetActivity;->actionItemShare:Landroid/view/MenuItem;

    invoke-interface {v2, v6}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_2

    .line 228
    :cond_3
    sget-object v2, Lcom/cashwalk/cashwalk/activity/StepBetActivity;->actionItemShare:Landroid/view/MenuItem;

    invoke-interface {v2, v4}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_2

    .line 233
    :pswitch_1
    iget-object v2, p0, Lcom/cashwalk/cashwalk/activity/StepBetActivity$4;->this$0:Lcom/cashwalk/cashwalk/activity/StepBetActivity;

    invoke-static {v2}, Lcom/cashwalk/cashwalk/activity/StepBetActivity;->access$500(Lcom/cashwalk/cashwalk/activity/StepBetActivity;)Landroid/widget/RelativeLayout;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 234
    iget-object v2, p0, Lcom/cashwalk/cashwalk/activity/StepBetActivity$4;->this$0:Lcom/cashwalk/cashwalk/activity/StepBetActivity;

    invoke-static {v2}, Lcom/cashwalk/cashwalk/activity/StepBetActivity;->access$600(Lcom/cashwalk/cashwalk/activity/StepBetActivity;)Landroid/view/MenuItem;

    move-result-object v2

    if-eqz v2, :cond_2

    sget-object v2, Lcom/cashwalk/cashwalk/activity/StepBetActivity;->actionItemShare:Landroid/view/MenuItem;

    if-eqz v2, :cond_2

    .line 235
    iget-object v2, p0, Lcom/cashwalk/cashwalk/activity/StepBetActivity$4;->this$0:Lcom/cashwalk/cashwalk/activity/StepBetActivity;

    invoke-static {v2}, Lcom/cashwalk/cashwalk/activity/StepBetActivity;->access$600(Lcom/cashwalk/cashwalk/activity/StepBetActivity;)Landroid/view/MenuItem;

    move-result-object v2

    invoke-interface {v2, v4}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 236
    sget-object v2, Lcom/cashwalk/cashwalk/activity/StepBetActivity;->actionItemShare:Landroid/view/MenuItem;

    invoke-interface {v2, v4}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_2

    .line 240
    :pswitch_2
    iget-object v2, p0, Lcom/cashwalk/cashwalk/activity/StepBetActivity$4;->this$0:Lcom/cashwalk/cashwalk/activity/StepBetActivity;

    invoke-static {v2}, Lcom/cashwalk/cashwalk/activity/StepBetActivity;->access$400(Lcom/cashwalk/cashwalk/activity/StepBetActivity;)Landroid/widget/LinearLayout;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 241
    iget-object v2, p0, Lcom/cashwalk/cashwalk/activity/StepBetActivity$4;->this$0:Lcom/cashwalk/cashwalk/activity/StepBetActivity;

    invoke-static {v2}, Lcom/cashwalk/cashwalk/activity/StepBetActivity;->access$500(Lcom/cashwalk/cashwalk/activity/StepBetActivity;)Landroid/widget/RelativeLayout;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 242
    iget-object v2, p0, Lcom/cashwalk/cashwalk/activity/StepBetActivity$4;->this$0:Lcom/cashwalk/cashwalk/activity/StepBetActivity;

    invoke-static {v2}, Lcom/cashwalk/cashwalk/activity/StepBetActivity;->access$600(Lcom/cashwalk/cashwalk/activity/StepBetActivity;)Landroid/view/MenuItem;

    move-result-object v2

    if-eqz v2, :cond_2

    sget-object v2, Lcom/cashwalk/cashwalk/activity/StepBetActivity;->actionItemShare:Landroid/view/MenuItem;

    if-eqz v2, :cond_2

    .line 243
    iget-object v2, p0, Lcom/cashwalk/cashwalk/activity/StepBetActivity$4;->this$0:Lcom/cashwalk/cashwalk/activity/StepBetActivity;

    invoke-static {v2}, Lcom/cashwalk/cashwalk/activity/StepBetActivity;->access$600(Lcom/cashwalk/cashwalk/activity/StepBetActivity;)Landroid/view/MenuItem;

    move-result-object v2

    invoke-interface {v2, v4}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 244
    sget-object v2, Lcom/cashwalk/cashwalk/activity/StepBetActivity;->actionItemShare:Landroid/view/MenuItem;

    invoke-interface {v2, v4}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_2

    .line 219
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
