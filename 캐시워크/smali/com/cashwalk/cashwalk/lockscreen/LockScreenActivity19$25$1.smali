.class Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity19$25$1;
.super Ljava/lang/Object;
.source "LockScreenActivity19.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity19$25;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity19$25;

.field final synthetic val$key:Ljava/lang/String;

.field final synthetic val$value:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity19$25;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$1"    # Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity19$25;

    .prologue
    .line 830
    iput-object p1, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity19$25$1;->this$1:Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity19$25;

    iput-object p2, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity19$25$1;->val$key:Ljava/lang/String;

    iput-object p3, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity19$25$1;->val$value:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 833
    iget-object v0, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity19$25$1;->this$1:Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity19$25;

    iget-object v0, v0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity19$25;->this$0:Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity19;

    iget-object v1, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity19$25$1;->val$key:Ljava/lang/String;

    iget-object v2, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity19$25$1;->val$value:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity19;->access$2600(Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity19;Ljava/lang/String;Ljava/lang/String;)V

    .line 834
    return-void
.end method
