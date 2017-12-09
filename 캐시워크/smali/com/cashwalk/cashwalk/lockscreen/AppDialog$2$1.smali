.class Lcom/cashwalk/cashwalk/lockscreen/AppDialog$2$1;
.super Ljava/lang/Object;
.source "AppDialog.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cashwalk/cashwalk/lockscreen/AppDialog$2;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/cashwalk/cashwalk/lockscreen/AppDialog$2;


# direct methods
.method constructor <init>(Lcom/cashwalk/cashwalk/lockscreen/AppDialog$2;)V
    .locals 0
    .param p1, "this$1"    # Lcom/cashwalk/cashwalk/lockscreen/AppDialog$2;

    .prologue
    .line 76
    iput-object p1, p0, Lcom/cashwalk/cashwalk/lockscreen/AppDialog$2$1;->this$1:Lcom/cashwalk/cashwalk/lockscreen/AppDialog$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 79
    iget-object v0, p0, Lcom/cashwalk/cashwalk/lockscreen/AppDialog$2$1;->this$1:Lcom/cashwalk/cashwalk/lockscreen/AppDialog$2;

    iget-object v0, v0, Lcom/cashwalk/cashwalk/lockscreen/AppDialog$2;->this$0:Lcom/cashwalk/cashwalk/lockscreen/AppDialog;

    invoke-static {v0}, Lcom/cashwalk/cashwalk/lockscreen/AppDialog;->access$200(Lcom/cashwalk/cashwalk/lockscreen/AppDialog;)Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    move-result-object v0

    iget-object v1, p0, Lcom/cashwalk/cashwalk/lockscreen/AppDialog$2$1;->this$1:Lcom/cashwalk/cashwalk/lockscreen/AppDialog$2;

    iget-object v1, v1, Lcom/cashwalk/cashwalk/lockscreen/AppDialog$2;->this$0:Lcom/cashwalk/cashwalk/lockscreen/AppDialog;

    invoke-static {v1}, Lcom/cashwalk/cashwalk/lockscreen/AppDialog;->access$000(Lcom/cashwalk/cashwalk/lockscreen/AppDialog;)Lcom/cashwalk/cashwalk/lockscreen/AppDialog$AppDialogAdapter;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 80
    iget-object v0, p0, Lcom/cashwalk/cashwalk/lockscreen/AppDialog$2$1;->this$1:Lcom/cashwalk/cashwalk/lockscreen/AppDialog$2;

    iget-object v0, v0, Lcom/cashwalk/cashwalk/lockscreen/AppDialog$2;->this$0:Lcom/cashwalk/cashwalk/lockscreen/AppDialog;

    invoke-static {v0}, Lcom/cashwalk/cashwalk/lockscreen/AppDialog;->access$300(Lcom/cashwalk/cashwalk/lockscreen/AppDialog;)Landroid/widget/ProgressBar;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 81
    iget-object v0, p0, Lcom/cashwalk/cashwalk/lockscreen/AppDialog$2$1;->this$1:Lcom/cashwalk/cashwalk/lockscreen/AppDialog$2;

    iget-object v0, v0, Lcom/cashwalk/cashwalk/lockscreen/AppDialog$2;->this$0:Lcom/cashwalk/cashwalk/lockscreen/AppDialog;

    invoke-static {v0}, Lcom/cashwalk/cashwalk/lockscreen/AppDialog;->access$500(Lcom/cashwalk/cashwalk/lockscreen/AppDialog;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/cashwalk/cashwalk/lockscreen/AppDialog$2$1;->this$1:Lcom/cashwalk/cashwalk/lockscreen/AppDialog$2;

    iget-object v1, v1, Lcom/cashwalk/cashwalk/lockscreen/AppDialog$2;->this$0:Lcom/cashwalk/cashwalk/lockscreen/AppDialog;

    invoke-static {v1}, Lcom/cashwalk/cashwalk/lockscreen/AppDialog;->access$400(Lcom/cashwalk/cashwalk/lockscreen/AppDialog;)Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0901a9

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 82
    return-void
.end method
