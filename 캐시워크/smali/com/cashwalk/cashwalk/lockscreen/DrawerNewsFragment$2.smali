.class Lcom/cashwalk/cashwalk/lockscreen/DrawerNewsFragment$2;
.super Ljava/lang/Object;
.source "DrawerNewsFragment.java"

# interfaces
.implements Landroid/support/v4/widget/SwipeRefreshLayout$OnRefreshListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cashwalk/cashwalk/lockscreen/DrawerNewsFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cashwalk/cashwalk/lockscreen/DrawerNewsFragment;


# direct methods
.method constructor <init>(Lcom/cashwalk/cashwalk/lockscreen/DrawerNewsFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/cashwalk/cashwalk/lockscreen/DrawerNewsFragment;

    .prologue
    .line 100
    iput-object p1, p0, Lcom/cashwalk/cashwalk/lockscreen/DrawerNewsFragment$2;->this$0:Lcom/cashwalk/cashwalk/lockscreen/DrawerNewsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onRefresh()V
    .locals 2

    .prologue
    .line 103
    iget-object v0, p0, Lcom/cashwalk/cashwalk/lockscreen/DrawerNewsFragment$2;->this$0:Lcom/cashwalk/cashwalk/lockscreen/DrawerNewsFragment;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/cashwalk/cashwalk/lockscreen/DrawerNewsFragment;->access$000(Lcom/cashwalk/cashwalk/lockscreen/DrawerNewsFragment;Z)V

    .line 104
    return-void
.end method
