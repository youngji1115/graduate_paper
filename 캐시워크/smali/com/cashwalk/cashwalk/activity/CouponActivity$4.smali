.class Lcom/cashwalk/cashwalk/activity/CouponActivity$4;
.super Ljava/lang/Object;
.source "CouponActivity.java"

# interfaces
.implements Landroid/support/v4/widget/SwipeRefreshLayout$OnRefreshListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cashwalk/cashwalk/activity/CouponActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cashwalk/cashwalk/activity/CouponActivity;


# direct methods
.method constructor <init>(Lcom/cashwalk/cashwalk/activity/CouponActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/cashwalk/cashwalk/activity/CouponActivity;

    .prologue
    .line 123
    iput-object p1, p0, Lcom/cashwalk/cashwalk/activity/CouponActivity$4;->this$0:Lcom/cashwalk/cashwalk/activity/CouponActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onRefresh()V
    .locals 1

    .prologue
    .line 126
    iget-object v0, p0, Lcom/cashwalk/cashwalk/activity/CouponActivity$4;->this$0:Lcom/cashwalk/cashwalk/activity/CouponActivity;

    invoke-static {v0}, Lcom/cashwalk/cashwalk/activity/CouponActivity;->access$100(Lcom/cashwalk/cashwalk/activity/CouponActivity;)V

    .line 127
    return-void
.end method
