.class Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity$20$1;
.super Ljava/lang/Object;
.source "LockScreenActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity$20;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity$20;


# direct methods
.method constructor <init>(Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity$20;)V
    .locals 0
    .param p1, "this$1"    # Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity$20;

    .prologue
    .line 728
    iput-object p1, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity$20$1;->this$1:Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity$20;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 731
    iget-object v0, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity$20$1;->this$1:Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity$20;

    iget-object v0, v0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity$20;->this$0:Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity;

    iget-object v1, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity$20$1;->this$1:Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity$20;

    iget-object v1, v1, Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity$20;->this$0:Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity;

    const v2, 0x7f0901ab

    invoke-virtual {v1, v2}, Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "%s"

    iget-object v3, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity$20$1;->this$1:Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity$20;

    iget-object v3, v3, Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity$20;->val$title:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 732
    iget-object v0, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity$20$1;->this$1:Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity$20;

    iget-object v0, v0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity$20;->this$0:Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity;

    invoke-static {v0}, Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity;->access$1500(Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity;)V

    .line 733
    return-void
.end method
