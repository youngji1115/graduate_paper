.class Lcom/cashwalk/cashwalk/util/AvoidSmartManagerReceiver$1;
.super Ljava/lang/Object;
.source "AvoidSmartManagerReceiver.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cashwalk/cashwalk/util/AvoidSmartManagerReceiver;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cashwalk/cashwalk/util/AvoidSmartManagerReceiver;

.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/cashwalk/cashwalk/util/AvoidSmartManagerReceiver;Landroid/content/Context;)V
    .locals 0
    .param p1, "this$0"    # Lcom/cashwalk/cashwalk/util/AvoidSmartManagerReceiver;

    .prologue
    .line 16
    iput-object p1, p0, Lcom/cashwalk/cashwalk/util/AvoidSmartManagerReceiver$1;->this$0:Lcom/cashwalk/cashwalk/util/AvoidSmartManagerReceiver;

    iput-object p2, p0, Lcom/cashwalk/cashwalk/util/AvoidSmartManagerReceiver$1;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 19
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/cashwalk/cashwalk/util/AvoidSmartManagerReceiver$1;->val$context:Landroid/content/Context;

    const-class v2, Lcom/cashwalk/cashwalk/util/AvoidSmartManagerActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 20
    .local v0, "serviceIntent":Landroid/content/Intent;
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 21
    iget-object v1, p0, Lcom/cashwalk/cashwalk/util/AvoidSmartManagerReceiver$1;->val$context:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 22
    return-void
.end method
