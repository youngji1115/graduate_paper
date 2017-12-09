.class Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity19$17;
.super Ljava/lang/Object;
.source "LockScreenActivity19.java"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity19;->addApp(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity19;

.field final synthetic val$pkgName:Ljava/lang/String;

.field final synthetic val$title:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity19;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity19;

    .prologue
    .line 628
    iput-object p1, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity19$17;->this$0:Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity19;

    iput-object p2, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity19$17;->val$pkgName:Ljava/lang/String;

    iput-object p3, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity19$17;->val$title:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLongClick(Landroid/view/View;)Z
    .locals 4
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 631
    iget-object v1, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity19$17;->this$0:Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity19;

    invoke-static {v1}, Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity19;->access$2300(Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity19;)Landroid/os/Vibrator;

    move-result-object v1

    const-wide/16 v2, 0x14

    invoke-virtual {v1, v2, v3}, Landroid/os/Vibrator;->vibrate(J)V

    .line 633
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity19$17;->this$0:Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity19;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 634
    .local v0, "alert":Landroid/app/AlertDialog$Builder;
    iget-object v1, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity19$17;->this$0:Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity19;

    const v2, 0x7f090132

    invoke-virtual {v1, v2}, Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity19;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity19$17$1;

    invoke-direct {v2, p0}, Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity19$17$1;-><init>(Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity19$17;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 640
    iget-object v1, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity19$17;->this$0:Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity19;

    const v2, 0x7f090101

    invoke-virtual {v1, v2}, Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity19;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity19$17$2;

    invoke-direct {v2, p0}, Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity19$17$2;-><init>(Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity19$17;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 646
    iget-object v1, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity19$17;->this$0:Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity19;

    const v2, 0x7f0901aa

    invoke-virtual {v1, v2}, Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity19;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "%s"

    iget-object v3, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity19$17;->val$title:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 647
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 648
    const/4 v1, 0x0

    return v1
.end method
