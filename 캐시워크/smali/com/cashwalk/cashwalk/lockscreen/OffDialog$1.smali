.class Lcom/cashwalk/cashwalk/lockscreen/OffDialog$1;
.super Ljava/lang/Object;
.source "OffDialog.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cashwalk/cashwalk/lockscreen/OffDialog;-><init>(Landroid/content/Context;Landroid/os/Handler;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cashwalk/cashwalk/lockscreen/OffDialog;


# direct methods
.method constructor <init>(Lcom/cashwalk/cashwalk/lockscreen/OffDialog;)V
    .locals 0
    .param p1, "this$0"    # Lcom/cashwalk/cashwalk/lockscreen/OffDialog;

    .prologue
    .line 44
    iput-object p1, p0, Lcom/cashwalk/cashwalk/lockscreen/OffDialog$1;->this$0:Lcom/cashwalk/cashwalk/lockscreen/OffDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 1
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
    .line 47
    .local p1, "adapterView":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget-object v0, p0, Lcom/cashwalk/cashwalk/lockscreen/OffDialog$1;->this$0:Lcom/cashwalk/cashwalk/lockscreen/OffDialog;

    invoke-static {v0, p3}, Lcom/cashwalk/cashwalk/lockscreen/OffDialog;->access$002(Lcom/cashwalk/cashwalk/lockscreen/OffDialog;I)I

    .line 48
    return-void
.end method

.method public onNothingSelected(Landroid/widget/AdapterView;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 53
    .local p1, "adapterView":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    return-void
.end method
