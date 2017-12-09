.class Lcom/cashwalk/cashwalk/activity/TnkAdActivity$2;
.super Ljava/lang/Object;
.source "TnkAdActivity.java"

# interfaces
.implements Landroid/support/v4/view/ViewPager$OnPageChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cashwalk/cashwalk/activity/TnkAdActivity;->initViews()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cashwalk/cashwalk/activity/TnkAdActivity;


# direct methods
.method constructor <init>(Lcom/cashwalk/cashwalk/activity/TnkAdActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/cashwalk/cashwalk/activity/TnkAdActivity;

    .prologue
    .line 179
    iput-object p1, p0, Lcom/cashwalk/cashwalk/activity/TnkAdActivity$2;->this$0:Lcom/cashwalk/cashwalk/activity/TnkAdActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageScrollStateChanged(I)V
    .locals 0
    .param p1, "state"    # I

    .prologue
    .line 207
    return-void
.end method

.method public onPageScrolled(IFI)V
    .locals 0
    .param p1, "position"    # I
    .param p2, "positionOffset"    # F
    .param p3, "positionOffsetPixels"    # I

    .prologue
    .line 183
    return-void
.end method

.method public onPageSelected(I)V
    .locals 4
    .param p1, "position"    # I

    .prologue
    .line 187
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lcom/cashwalk/cashwalk/activity/TnkAdActivity$2;->this$0:Lcom/cashwalk/cashwalk/activity/TnkAdActivity;

    invoke-static {v2}, Lcom/cashwalk/cashwalk/activity/TnkAdActivity;->access$100(Lcom/cashwalk/cashwalk/activity/TnkAdActivity;)Landroid/widget/LinearLayout;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 188
    iget-object v2, p0, Lcom/cashwalk/cashwalk/activity/TnkAdActivity$2;->this$0:Lcom/cashwalk/cashwalk/activity/TnkAdActivity;

    invoke-static {v2}, Lcom/cashwalk/cashwalk/activity/TnkAdActivity;->access$100(Lcom/cashwalk/cashwalk/activity/TnkAdActivity;)Landroid/widget/LinearLayout;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 189
    .local v1, "tv":Landroid/widget/TextView;
    if-ne v0, p1, :cond_0

    .line 190
    iget-object v2, p0, Lcom/cashwalk/cashwalk/activity/TnkAdActivity$2;->this$0:Lcom/cashwalk/cashwalk/activity/TnkAdActivity;

    invoke-virtual {v2}, Lcom/cashwalk/cashwalk/activity/TnkAdActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0f0020

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 187
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 192
    :cond_0
    iget-object v2, p0, Lcom/cashwalk/cashwalk/activity/TnkAdActivity$2;->this$0:Lcom/cashwalk/cashwalk/activity/TnkAdActivity;

    invoke-virtual {v2}, Lcom/cashwalk/cashwalk/activity/TnkAdActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0f0091

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_1

    .line 202
    .end local v1    # "tv":Landroid/widget/TextView;
    :cond_1
    return-void
.end method
