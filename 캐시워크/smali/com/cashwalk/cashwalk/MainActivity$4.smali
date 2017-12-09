.class Lcom/cashwalk/cashwalk/MainActivity$4;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cashwalk/cashwalk/MainActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cashwalk/cashwalk/MainActivity;


# direct methods
.method constructor <init>(Lcom/cashwalk/cashwalk/MainActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/cashwalk/cashwalk/MainActivity;

    .prologue
    .line 338
    iput-object p1, p0, Lcom/cashwalk/cashwalk/MainActivity$4;->this$0:Lcom/cashwalk/cashwalk/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 341
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-gt v0, v1, :cond_0

    .line 342
    iget-object v0, p0, Lcom/cashwalk/cashwalk/MainActivity$4;->this$0:Lcom/cashwalk/cashwalk/MainActivity;

    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/cashwalk/cashwalk/MainActivity$4;->this$0:Lcom/cashwalk/cashwalk/MainActivity;

    const-class v3, Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity19;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Lcom/cashwalk/cashwalk/MainActivity;->startActivity(Landroid/content/Intent;)V

    .line 346
    :goto_0
    iget-object v0, p0, Lcom/cashwalk/cashwalk/MainActivity$4;->this$0:Lcom/cashwalk/cashwalk/MainActivity;

    const v1, 0x7f05001d

    const v2, 0x7f050017

    invoke-virtual {v0, v1, v2}, Lcom/cashwalk/cashwalk/MainActivity;->overridePendingTransition(II)V

    .line 347
    return-void

    .line 344
    :cond_0
    iget-object v0, p0, Lcom/cashwalk/cashwalk/MainActivity$4;->this$0:Lcom/cashwalk/cashwalk/MainActivity;

    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/cashwalk/cashwalk/MainActivity$4;->this$0:Lcom/cashwalk/cashwalk/MainActivity;

    const-class v3, Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Lcom/cashwalk/cashwalk/MainActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method
