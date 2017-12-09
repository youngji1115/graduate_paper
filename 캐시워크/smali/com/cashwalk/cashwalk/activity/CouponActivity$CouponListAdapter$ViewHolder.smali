.class Lcom/cashwalk/cashwalk/activity/CouponActivity$CouponListAdapter$ViewHolder;
.super Ljava/lang/Object;
.source "CouponActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cashwalk/cashwalk/activity/CouponActivity$CouponListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ViewHolder"
.end annotation


# instance fields
.field public brand:Landroid/widget/TextView;

.field public expire:Landroid/widget/TextView;

.field public image:Landroid/widget/ImageView;

.field public root:Landroid/widget/RelativeLayout;

.field public section:Landroid/widget/TextView;

.field final synthetic this$1:Lcom/cashwalk/cashwalk/activity/CouponActivity$CouponListAdapter;

.field public title:Landroid/widget/TextView;

.field public use:Landroid/widget/TextView;


# direct methods
.method private constructor <init>(Lcom/cashwalk/cashwalk/activity/CouponActivity$CouponListAdapter;)V
    .locals 0

    .prologue
    .line 370
    iput-object p1, p0, Lcom/cashwalk/cashwalk/activity/CouponActivity$CouponListAdapter$ViewHolder;->this$1:Lcom/cashwalk/cashwalk/activity/CouponActivity$CouponListAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/cashwalk/cashwalk/activity/CouponActivity$CouponListAdapter;Lcom/cashwalk/cashwalk/activity/CouponActivity$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/cashwalk/cashwalk/activity/CouponActivity$CouponListAdapter;
    .param p2, "x1"    # Lcom/cashwalk/cashwalk/activity/CouponActivity$1;

    .prologue
    .line 370
    invoke-direct {p0, p1}, Lcom/cashwalk/cashwalk/activity/CouponActivity$CouponListAdapter$ViewHolder;-><init>(Lcom/cashwalk/cashwalk/activity/CouponActivity$CouponListAdapter;)V

    return-void
.end method
