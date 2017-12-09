.class Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity19$8;
.super Ljava/lang/Object;
.source "LockScreenActivity19.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity19;->initDrawer()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity19;


# direct methods
.method constructor <init>(Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity19;)V
    .locals 0
    .param p1, "this$0"    # Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity19;

    .prologue
    .line 427
    iput-object p1, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity19$8;->this$0:Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity19;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 430
    new-instance v0, Lcom/cashwalk/cashwalk/lockscreen/AppDialog;

    iget-object v1, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity19$8;->this$0:Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity19;

    new-instance v2, Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity19$8$1;

    invoke-direct {v2, p0}, Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity19$8$1;-><init>(Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity19$8;)V

    invoke-direct {v0, v1, v2}, Lcom/cashwalk/cashwalk/lockscreen/AppDialog;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    .line 436
    .local v0, "ad":Lcom/cashwalk/cashwalk/lockscreen/AppDialog;
    invoke-virtual {v0}, Lcom/cashwalk/cashwalk/lockscreen/AppDialog;->show()V

    .line 437
    return-void
.end method
