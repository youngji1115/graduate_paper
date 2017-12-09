.class Lcom/kakao/usermgmt/LoginButton$2;
.super Landroid/widget/ArrayAdapter;
.source "LoginButton.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kakao/usermgmt/LoginButton;->onClickLoginButton(Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Lcom/kakao/usermgmt/LoginButton$Item;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kakao/usermgmt/LoginButton;

.field final synthetic val$itemList:Ljava/util/List;

.field final synthetic val$items:[Lcom/kakao/usermgmt/LoginButton$Item;


# direct methods
.method constructor <init>(Lcom/kakao/usermgmt/LoginButton;Landroid/content/Context;II[Lcom/kakao/usermgmt/LoginButton$Item;[Lcom/kakao/usermgmt/LoginButton$Item;Ljava/util/List;)V
    .locals 0
    .param p1, "this$0"    # Lcom/kakao/usermgmt/LoginButton;
    .param p2, "x0"    # Landroid/content/Context;
    .param p3, "x1"    # I
    .param p4, "x2"    # I
    .param p5, "x3"    # [Lcom/kakao/usermgmt/LoginButton$Item;

    .prologue
    .line 124
    iput-object p1, p0, Lcom/kakao/usermgmt/LoginButton$2;->this$0:Lcom/kakao/usermgmt/LoginButton;

    iput-object p6, p0, Lcom/kakao/usermgmt/LoginButton$2;->val$items:[Lcom/kakao/usermgmt/LoginButton$Item;

    iput-object p7, p0, Lcom/kakao/usermgmt/LoginButton$2;->val$itemList:Ljava/util/List;

    invoke-direct {p0, p2, p3, p4, p5}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;II[Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    const/4 v5, 0x0

    .line 126
    invoke-super {p0, p1, p2, p3}, Landroid/widget/ArrayAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 127
    .local v2, "v":Landroid/view/View;
    const v3, 0x1020014

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 129
    .local v1, "tv":Landroid/widget/TextView;
    iget-object v3, p0, Lcom/kakao/usermgmt/LoginButton$2;->val$items:[Lcom/kakao/usermgmt/LoginButton$Item;

    aget-object v3, v3, p1

    iget v3, v3, Lcom/kakao/usermgmt/LoginButton$Item;->textId:I

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(I)V

    .line 130
    const/high16 v3, -0x1000000

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 131
    const/high16 v3, 0x41700000    # 15.0f

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setTextSize(F)V

    .line 132
    const/16 v3, 0x11

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setGravity(I)V

    .line 133
    invoke-virtual {p0}, Lcom/kakao/usermgmt/LoginButton$2;->getContext()Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Lcom/kakao/usermgmt/LoginButton$2;->val$items:[Lcom/kakao/usermgmt/LoginButton$Item;

    aget-object v4, v4, p1

    iget v4, v4, Lcom/kakao/usermgmt/LoginButton$Item;->contentDescId:I

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 134
    iget-object v3, p0, Lcom/kakao/usermgmt/LoginButton$2;->val$itemList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    if-ne p1, v3, :cond_0

    .line 135
    sget v3, Lcom/kakao/usermgmt/R$drawable;->kakao_cancel_button_background:I

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 139
    :goto_0
    iget-object v3, p0, Lcom/kakao/usermgmt/LoginButton$2;->val$items:[Lcom/kakao/usermgmt/LoginButton$Item;

    aget-object v3, v3, p1

    iget v3, v3, Lcom/kakao/usermgmt/LoginButton$Item;->icon:I

    invoke-virtual {v1, v3, v5, v5, v5}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 141
    const/high16 v3, 0x40a00000    # 5.0f

    iget-object v4, p0, Lcom/kakao/usermgmt/LoginButton$2;->this$0:Lcom/kakao/usermgmt/LoginButton;

    invoke-virtual {v4}, Lcom/kakao/usermgmt/LoginButton;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    iget v4, v4, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v3, v4

    const/high16 v4, 0x3f000000    # 0.5f

    add-float/2addr v3, v4

    float-to-int v0, v3

    .line 142
    .local v0, "dp5":I
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setCompoundDrawablePadding(I)V

    .line 144
    return-object v2

    .line 137
    .end local v0    # "dp5":I
    :cond_0
    sget v3, Lcom/kakao/usermgmt/R$drawable;->kakao_account_button_background:I

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setBackgroundResource(I)V

    goto :goto_0
.end method
