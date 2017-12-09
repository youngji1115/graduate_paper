.class Lcom/cashwalk/cashwalk/lockscreen/DrawerNewsFragment$3;
.super Ljava/lang/Object;
.source "DrawerNewsFragment.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


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
    .line 107
    iput-object p1, p0, Lcom/cashwalk/cashwalk/lockscreen/DrawerNewsFragment$3;->this$0:Lcom/cashwalk/cashwalk/lockscreen/DrawerNewsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 6
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/16 v5, 0x13

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 111
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 147
    :cond_0
    :goto_0
    return v2

    .line 114
    :pswitch_0
    iget-object v0, p0, Lcom/cashwalk/cashwalk/lockscreen/DrawerNewsFragment$3;->this$0:Lcom/cashwalk/cashwalk/lockscreen/DrawerNewsFragment;

    iget-object v0, v0, Lcom/cashwalk/cashwalk/lockscreen/DrawerNewsFragment;->type:Ljava/lang/String;

    const-string v1, "TOTAL"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 115
    iget-object v0, p0, Lcom/cashwalk/cashwalk/lockscreen/DrawerNewsFragment$3;->this$0:Lcom/cashwalk/cashwalk/lockscreen/DrawerNewsFragment;

    invoke-static {v0}, Lcom/cashwalk/cashwalk/lockscreen/DrawerNewsFragment;->access$100(Lcom/cashwalk/cashwalk/lockscreen/DrawerNewsFragment;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    .line 116
    iget-object v0, p0, Lcom/cashwalk/cashwalk/lockscreen/DrawerNewsFragment$3;->this$0:Lcom/cashwalk/cashwalk/lockscreen/DrawerNewsFragment;

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/cashwalk/cashwalk/lockscreen/DrawerNewsFragment;->access$102(Lcom/cashwalk/cashwalk/lockscreen/DrawerNewsFragment;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    .line 118
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-gt v0, v5, :cond_1

    .line 119
    iget-object v0, p0, Lcom/cashwalk/cashwalk/lockscreen/DrawerNewsFragment$3;->this$0:Lcom/cashwalk/cashwalk/lockscreen/DrawerNewsFragment;

    invoke-virtual {v0}, Lcom/cashwalk/cashwalk/lockscreen/DrawerNewsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity19;

    iget-object v0, v0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity19;->drawerLayout:Landroid/support/v4/widget/DrawerLayout;

    invoke-virtual {v0, v3}, Landroid/support/v4/widget/DrawerLayout;->requestDisallowInterceptTouchEvent(Z)V

    .line 120
    iget-object v0, p0, Lcom/cashwalk/cashwalk/lockscreen/DrawerNewsFragment$3;->this$0:Lcom/cashwalk/cashwalk/lockscreen/DrawerNewsFragment;

    invoke-virtual {v0}, Lcom/cashwalk/cashwalk/lockscreen/DrawerNewsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity19;

    iget-object v0, v0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity19;->drawerLayout:Landroid/support/v4/widget/DrawerLayout;

    invoke-virtual {v0, v4}, Landroid/support/v4/widget/DrawerLayout;->setDrawerLockMode(I)V

    .line 125
    :goto_1
    const-string v0, "#### LOCK_MODE_LOCKED_OPEN"

    invoke-static {v0}, Lcom/cashwalk/cashwalk/util/Utils;->LOG(Ljava/lang/String;)V

    goto :goto_0

    .line 122
    :cond_1
    iget-object v0, p0, Lcom/cashwalk/cashwalk/lockscreen/DrawerNewsFragment$3;->this$0:Lcom/cashwalk/cashwalk/lockscreen/DrawerNewsFragment;

    invoke-virtual {v0}, Lcom/cashwalk/cashwalk/lockscreen/DrawerNewsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity;

    iget-object v0, v0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity;->drawerLayout:Landroid/support/v4/widget/DrawerLayout;

    invoke-virtual {v0, v3}, Landroid/support/v4/widget/DrawerLayout;->requestDisallowInterceptTouchEvent(Z)V

    .line 123
    iget-object v0, p0, Lcom/cashwalk/cashwalk/lockscreen/DrawerNewsFragment$3;->this$0:Lcom/cashwalk/cashwalk/lockscreen/DrawerNewsFragment;

    invoke-virtual {v0}, Lcom/cashwalk/cashwalk/lockscreen/DrawerNewsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity;

    iget-object v0, v0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity;->drawerLayout:Landroid/support/v4/widget/DrawerLayout;

    invoke-virtual {v0, v4}, Landroid/support/v4/widget/DrawerLayout;->setDrawerLockMode(I)V

    goto :goto_1

    .line 132
    :pswitch_1
    iget-object v0, p0, Lcom/cashwalk/cashwalk/lockscreen/DrawerNewsFragment$3;->this$0:Lcom/cashwalk/cashwalk/lockscreen/DrawerNewsFragment;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/cashwalk/cashwalk/lockscreen/DrawerNewsFragment;->access$102(Lcom/cashwalk/cashwalk/lockscreen/DrawerNewsFragment;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    .line 133
    iget-object v0, p0, Lcom/cashwalk/cashwalk/lockscreen/DrawerNewsFragment$3;->this$0:Lcom/cashwalk/cashwalk/lockscreen/DrawerNewsFragment;

    iget-object v0, v0, Lcom/cashwalk/cashwalk/lockscreen/DrawerNewsFragment;->type:Ljava/lang/String;

    const-string v1, "TOTAL"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 135
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-gt v0, v5, :cond_2

    .line 136
    iget-object v0, p0, Lcom/cashwalk/cashwalk/lockscreen/DrawerNewsFragment$3;->this$0:Lcom/cashwalk/cashwalk/lockscreen/DrawerNewsFragment;

    invoke-virtual {v0}, Lcom/cashwalk/cashwalk/lockscreen/DrawerNewsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity19;

    iget-object v0, v0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity19;->drawerLayout:Landroid/support/v4/widget/DrawerLayout;

    invoke-virtual {v0, v2}, Landroid/support/v4/widget/DrawerLayout;->requestDisallowInterceptTouchEvent(Z)V

    .line 137
    iget-object v0, p0, Lcom/cashwalk/cashwalk/lockscreen/DrawerNewsFragment$3;->this$0:Lcom/cashwalk/cashwalk/lockscreen/DrawerNewsFragment;

    invoke-virtual {v0}, Lcom/cashwalk/cashwalk/lockscreen/DrawerNewsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity19;

    iget-object v0, v0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity19;->drawerLayout:Landroid/support/v4/widget/DrawerLayout;

    invoke-virtual {v0, v2}, Landroid/support/v4/widget/DrawerLayout;->setDrawerLockMode(I)V

    .line 142
    :goto_2
    const-string v0, "#### LOCK_MODE_UNLOCKED"

    invoke-static {v0}, Lcom/cashwalk/cashwalk/util/Utils;->LOG(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 139
    :cond_2
    iget-object v0, p0, Lcom/cashwalk/cashwalk/lockscreen/DrawerNewsFragment$3;->this$0:Lcom/cashwalk/cashwalk/lockscreen/DrawerNewsFragment;

    invoke-virtual {v0}, Lcom/cashwalk/cashwalk/lockscreen/DrawerNewsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity;

    iget-object v0, v0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity;->drawerLayout:Landroid/support/v4/widget/DrawerLayout;

    invoke-virtual {v0, v2}, Landroid/support/v4/widget/DrawerLayout;->requestDisallowInterceptTouchEvent(Z)V

    .line 140
    iget-object v0, p0, Lcom/cashwalk/cashwalk/lockscreen/DrawerNewsFragment$3;->this$0:Lcom/cashwalk/cashwalk/lockscreen/DrawerNewsFragment;

    invoke-virtual {v0}, Lcom/cashwalk/cashwalk/lockscreen/DrawerNewsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity;

    iget-object v0, v0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity;->drawerLayout:Landroid/support/v4/widget/DrawerLayout;

    invoke-virtual {v0, v2}, Landroid/support/v4/widget/DrawerLayout;->setDrawerLockMode(I)V

    goto :goto_2

    .line 111
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
