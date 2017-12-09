.class Lcom/cashwalk/cashwalk/lockscreen/AppDialog$1;
.super Ljava/lang/Object;
.source "AppDialog.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cashwalk/cashwalk/lockscreen/AppDialog;-><init>(Landroid/content/Context;Landroid/os/Handler;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cashwalk/cashwalk/lockscreen/AppDialog;

.field final synthetic val$handler:Landroid/os/Handler;


# direct methods
.method constructor <init>(Lcom/cashwalk/cashwalk/lockscreen/AppDialog;Landroid/os/Handler;)V
    .locals 0
    .param p1, "this$0"    # Lcom/cashwalk/cashwalk/lockscreen/AppDialog;

    .prologue
    .line 61
    iput-object p1, p0, Lcom/cashwalk/cashwalk/lockscreen/AppDialog$1;->this$0:Lcom/cashwalk/cashwalk/lockscreen/AppDialog;

    iput-object p2, p0, Lcom/cashwalk/cashwalk/lockscreen/AppDialog$1;->val$handler:Landroid/os/Handler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 3
    .param p2, "view"    # Landroid/view/View;
    .param p3, "i"    # I
    .param p4, "l"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 64
    .local p1, "adapterView":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget-object v1, p0, Lcom/cashwalk/cashwalk/lockscreen/AppDialog$1;->this$0:Lcom/cashwalk/cashwalk/lockscreen/AppDialog;

    invoke-static {v1}, Lcom/cashwalk/cashwalk/lockscreen/AppDialog;->access$000(Lcom/cashwalk/cashwalk/lockscreen/AppDialog;)Lcom/cashwalk/cashwalk/lockscreen/AppDialog$AppDialogAdapter;

    move-result-object v1

    add-int/lit8 v2, p3, -0x1

    invoke-virtual {v1, v2}, Lcom/cashwalk/cashwalk/lockscreen/AppDialog$AppDialogAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ApplicationInfo;

    .line 66
    .local v0, "info":Landroid/content/pm/ApplicationInfo;
    iget-object v1, p0, Lcom/cashwalk/cashwalk/lockscreen/AppDialog$1;->this$0:Lcom/cashwalk/cashwalk/lockscreen/AppDialog;

    iget-object v2, p0, Lcom/cashwalk/cashwalk/lockscreen/AppDialog$1;->val$handler:Landroid/os/Handler;

    invoke-static {v1, v0, v2}, Lcom/cashwalk/cashwalk/lockscreen/AppDialog;->access$100(Lcom/cashwalk/cashwalk/lockscreen/AppDialog;Landroid/content/pm/ApplicationInfo;Landroid/os/Handler;)V

    .line 67
    return-void
.end method
