.class Lcom/cashwalk/cashwalk/activity/ShopCategoryActivity$ListAdapter$ViewHolder;
.super Ljava/lang/Object;
.source "ShopCategoryActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cashwalk/cashwalk/activity/ShopCategoryActivity$ListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ViewHolder"
.end annotation


# instance fields
.field public brand:Landroid/widget/TextView;

.field public content:Landroid/widget/LinearLayout;

.field public img:Landroid/widget/ImageView;

.field public price:Landroid/widget/TextView;

.field public root:Landroid/widget/RelativeLayout;

.field public section:Landroid/widget/TextView;

.field final synthetic this$1:Lcom/cashwalk/cashwalk/activity/ShopCategoryActivity$ListAdapter;

.field public title:Landroid/widget/TextView;


# direct methods
.method private constructor <init>(Lcom/cashwalk/cashwalk/activity/ShopCategoryActivity$ListAdapter;)V
    .locals 0

    .prologue
    .line 312
    iput-object p1, p0, Lcom/cashwalk/cashwalk/activity/ShopCategoryActivity$ListAdapter$ViewHolder;->this$1:Lcom/cashwalk/cashwalk/activity/ShopCategoryActivity$ListAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/cashwalk/cashwalk/activity/ShopCategoryActivity$ListAdapter;Lcom/cashwalk/cashwalk/activity/ShopCategoryActivity$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/cashwalk/cashwalk/activity/ShopCategoryActivity$ListAdapter;
    .param p2, "x1"    # Lcom/cashwalk/cashwalk/activity/ShopCategoryActivity$1;

    .prologue
    .line 312
    invoke-direct {p0, p1}, Lcom/cashwalk/cashwalk/activity/ShopCategoryActivity$ListAdapter$ViewHolder;-><init>(Lcom/cashwalk/cashwalk/activity/ShopCategoryActivity$ListAdapter;)V

    return-void
.end method
