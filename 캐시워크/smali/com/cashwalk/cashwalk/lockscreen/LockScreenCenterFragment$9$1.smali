.class Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment$9$1;
.super Ljava/lang/Object;
.source "LockScreenCenterFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment$9;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment$9;


# direct methods
.method constructor <init>(Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment$9;)V
    .locals 0
    .param p1, "this$1"    # Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment$9;

    .prologue
    .line 712
    iput-object p1, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment$9$1;->this$1:Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment$9;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 715
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 716
    return-void
.end method
