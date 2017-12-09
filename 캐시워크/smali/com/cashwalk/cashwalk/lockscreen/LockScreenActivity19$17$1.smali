.class Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity19$17$1;
.super Ljava/lang/Object;
.source "LockScreenActivity19.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity19$17;->onLongClick(Landroid/view/View;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity19$17;


# direct methods
.method constructor <init>(Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity19$17;)V
    .locals 0
    .param p1, "this$1"    # Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity19$17;

    .prologue
    .line 634
    iput-object p1, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity19$17$1;->this$1:Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity19$17;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 637
    iget-object v0, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity19$17$1;->this$1:Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity19$17;

    iget-object v0, v0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity19$17;->this$0:Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity19;

    iget-object v1, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity19$17$1;->this$1:Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity19$17;

    iget-object v1, v1, Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity19$17;->val$pkgName:Ljava/lang/String;

    iget-object v2, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity19$17$1;->this$1:Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity19$17;

    iget-object v2, v2, Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity19$17;->val$title:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity19;->access$2400(Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity19;Ljava/lang/String;Ljava/lang/String;)V

    .line 638
    return-void
.end method
