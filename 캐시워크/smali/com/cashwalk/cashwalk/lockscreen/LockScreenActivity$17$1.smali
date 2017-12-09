.class Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity$17$1;
.super Ljava/lang/Object;
.source "LockScreenActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity$17;->onLongClick(Landroid/view/View;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity$17;


# direct methods
.method constructor <init>(Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity$17;)V
    .locals 0
    .param p1, "this$1"    # Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity$17;

    .prologue
    .line 619
    iput-object p1, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity$17$1;->this$1:Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity$17;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 622
    iget-object v0, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity$17$1;->this$1:Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity$17;

    iget-object v0, v0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity$17;->this$0:Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity;

    iget-object v1, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity$17$1;->this$1:Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity$17;

    iget-object v1, v1, Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity$17;->val$pkgName:Ljava/lang/String;

    iget-object v2, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity$17$1;->this$1:Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity$17;

    iget-object v2, v2, Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity$17;->val$title:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity;->access$2300(Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity;Ljava/lang/String;Ljava/lang/String;)V

    .line 623
    return-void
.end method
