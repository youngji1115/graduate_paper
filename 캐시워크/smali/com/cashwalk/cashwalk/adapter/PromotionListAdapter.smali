.class public Lcom/cashwalk/cashwalk/adapter/PromotionListAdapter;
.super Landroid/support/v4/view/PagerAdapter;
.source "PromotionListAdapter.java"


# instance fields
.field private mSize:I

.field private final random:Ljava/util/Random;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 21
    invoke-direct {p0}, Landroid/support/v4/view/PagerAdapter;-><init>()V

    .line 18
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    iput-object v0, p0, Lcom/cashwalk/cashwalk/adapter/PromotionListAdapter;->random:Ljava/util/Random;

    .line 22
    const/4 v0, 0x5

    iput v0, p0, Lcom/cashwalk/cashwalk/adapter/PromotionListAdapter;->mSize:I

    .line 23
    return-void
.end method

.method public constructor <init>(I)V
    .locals 1
    .param p1, "count"    # I

    .prologue
    .line 25
    invoke-direct {p0}, Landroid/support/v4/view/PagerAdapter;-><init>()V

    .line 18
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    iput-object v0, p0, Lcom/cashwalk/cashwalk/adapter/PromotionListAdapter;->random:Ljava/util/Random;

    .line 26
    iput p1, p0, Lcom/cashwalk/cashwalk/adapter/PromotionListAdapter;->mSize:I

    .line 27
    return-void
.end method


# virtual methods
.method public addItem()V
    .locals 1

    .prologue
    .line 54
    iget v0, p0, Lcom/cashwalk/cashwalk/adapter/PromotionListAdapter;->mSize:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/cashwalk/cashwalk/adapter/PromotionListAdapter;->mSize:I

    .line 55
    invoke-virtual {p0}, Lcom/cashwalk/cashwalk/adapter/PromotionListAdapter;->notifyDataSetChanged()V

    .line 56
    return-void
.end method

.method public destroyItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V
    .locals 0
    .param p1, "view"    # Landroid/view/ViewGroup;
    .param p2, "position"    # I
    .param p3, "object"    # Ljava/lang/Object;

    .prologue
    .line 38
    check-cast p3, Landroid/view/View;

    .end local p3    # "object":Ljava/lang/Object;
    invoke-virtual {p1, p3}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 39
    return-void
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 30
    iget v0, p0, Lcom/cashwalk/cashwalk/adapter/PromotionListAdapter;->mSize:I

    return v0
.end method

.method public instantiateItem(Landroid/view/ViewGroup;I)Ljava/lang/Object;
    .locals 5
    .param p1, "view"    # Landroid/view/ViewGroup;
    .param p2, "position"    # I

    .prologue
    const/4 v4, -0x1

    .line 42
    new-instance v0, Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 43
    .local v0, "textView":Landroid/widget/TextView;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "\ud504\ub85c\ubaa8\uc158 "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    add-int/lit8 v2, p2, 0x1

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 44
    const/high16 v1, -0x1000000

    iget-object v2, p0, Lcom/cashwalk/cashwalk/adapter/PromotionListAdapter;->random:Ljava/util/Random;

    const v3, 0xffffff

    invoke-virtual {v2, v3}, Ljava/util/Random;->nextInt(I)I

    move-result v2

    or-int/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundColor(I)V

    .line 45
    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    .line 46
    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 47
    const/high16 v1, 0x42400000    # 48.0f

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextSize(F)V

    .line 48
    invoke-virtual {p1, v0, v4, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    .line 50
    return-object v0
.end method

.method public isViewFromObject(Landroid/view/View;Ljava/lang/Object;)Z
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "object"    # Ljava/lang/Object;

    .prologue
    .line 34
    if-ne p1, p2, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public removeItem()V
    .locals 1

    .prologue
    .line 59
    iget v0, p0, Lcom/cashwalk/cashwalk/adapter/PromotionListAdapter;->mSize:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/cashwalk/cashwalk/adapter/PromotionListAdapter;->mSize:I

    .line 60
    iget v0, p0, Lcom/cashwalk/cashwalk/adapter/PromotionListAdapter;->mSize:I

    if-gez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    iput v0, p0, Lcom/cashwalk/cashwalk/adapter/PromotionListAdapter;->mSize:I

    .line 62
    invoke-virtual {p0}, Lcom/cashwalk/cashwalk/adapter/PromotionListAdapter;->notifyDataSetChanged()V

    .line 63
    return-void

    .line 60
    :cond_0
    iget v0, p0, Lcom/cashwalk/cashwalk/adapter/PromotionListAdapter;->mSize:I

    goto :goto_0
.end method
