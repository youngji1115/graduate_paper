.class Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity$13;
.super Ljava/lang/Object;
.source "LockScreenActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity;->initDrawer()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity;


# direct methods
.method constructor <init>(Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity;

    .prologue
    .line 520
    iput-object p1, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity$13;->this$0:Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 523
    iget-object v0, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity$13;->this$0:Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity;->closeDrawer(Z)V

    .line 524
    return-void
.end method
