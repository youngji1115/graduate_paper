.class Lcom/cashwalk/cashwalk/lockscreen/AppDialog$2;
.super Landroid/os/AsyncTask;
.source "AppDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cashwalk/cashwalk/lockscreen/AppDialog;-><init>(Landroid/content/Context;Landroid/os/Handler;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cashwalk/cashwalk/lockscreen/AppDialog;


# direct methods
.method constructor <init>(Lcom/cashwalk/cashwalk/lockscreen/AppDialog;)V
    .locals 0
    .param p1, "this$0"    # Lcom/cashwalk/cashwalk/lockscreen/AppDialog;

    .prologue
    .line 70
    iput-object p1, p0, Lcom/cashwalk/cashwalk/lockscreen/AppDialog$2;->this$0:Lcom/cashwalk/cashwalk/lockscreen/AppDialog;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 70
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/cashwalk/cashwalk/lockscreen/AppDialog$2;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 3
    .param p1, "voids"    # [Ljava/lang/Void;

    .prologue
    .line 74
    iget-object v0, p0, Lcom/cashwalk/cashwalk/lockscreen/AppDialog$2;->this$0:Lcom/cashwalk/cashwalk/lockscreen/AppDialog;

    new-instance v1, Lcom/cashwalk/cashwalk/lockscreen/AppDialog$AppDialogAdapter;

    iget-object v2, p0, Lcom/cashwalk/cashwalk/lockscreen/AppDialog$2;->this$0:Lcom/cashwalk/cashwalk/lockscreen/AppDialog;

    invoke-direct {v1, v2}, Lcom/cashwalk/cashwalk/lockscreen/AppDialog$AppDialogAdapter;-><init>(Lcom/cashwalk/cashwalk/lockscreen/AppDialog;)V

    invoke-static {v0, v1}, Lcom/cashwalk/cashwalk/lockscreen/AppDialog;->access$002(Lcom/cashwalk/cashwalk/lockscreen/AppDialog;Lcom/cashwalk/cashwalk/lockscreen/AppDialog$AppDialogAdapter;)Lcom/cashwalk/cashwalk/lockscreen/AppDialog$AppDialogAdapter;

    .line 76
    iget-object v0, p0, Lcom/cashwalk/cashwalk/lockscreen/AppDialog$2;->this$0:Lcom/cashwalk/cashwalk/lockscreen/AppDialog;

    invoke-virtual {v0}, Lcom/cashwalk/cashwalk/lockscreen/AppDialog;->getOwnerActivity()Landroid/app/Activity;

    move-result-object v0

    new-instance v1, Lcom/cashwalk/cashwalk/lockscreen/AppDialog$2$1;

    invoke-direct {v1, p0}, Lcom/cashwalk/cashwalk/lockscreen/AppDialog$2$1;-><init>(Lcom/cashwalk/cashwalk/lockscreen/AppDialog$2;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 85
    const/4 v0, 0x0

    return-object v0
.end method
