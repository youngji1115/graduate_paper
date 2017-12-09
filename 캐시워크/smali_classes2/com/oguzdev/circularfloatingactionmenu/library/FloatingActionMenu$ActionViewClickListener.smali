.class public Lcom/oguzdev/circularfloatingactionmenu/library/FloatingActionMenu$ActionViewClickListener;
.super Ljava/lang/Object;
.source "FloatingActionMenu.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oguzdev/circularfloatingactionmenu/library/FloatingActionMenu;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ActionViewClickListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oguzdev/circularfloatingactionmenu/library/FloatingActionMenu;


# direct methods
.method public constructor <init>(Lcom/oguzdev/circularfloatingactionmenu/library/FloatingActionMenu;)V
    .locals 0

    .prologue
    .line 324
    iput-object p1, p0, Lcom/oguzdev/circularfloatingactionmenu/library/FloatingActionMenu$ActionViewClickListener;->this$0:Lcom/oguzdev/circularfloatingactionmenu/library/FloatingActionMenu;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 328
    iget-object v0, p0, Lcom/oguzdev/circularfloatingactionmenu/library/FloatingActionMenu$ActionViewClickListener;->this$0:Lcom/oguzdev/circularfloatingactionmenu/library/FloatingActionMenu;

    iget-object v1, p0, Lcom/oguzdev/circularfloatingactionmenu/library/FloatingActionMenu$ActionViewClickListener;->this$0:Lcom/oguzdev/circularfloatingactionmenu/library/FloatingActionMenu;

    invoke-static {v1}, Lcom/oguzdev/circularfloatingactionmenu/library/FloatingActionMenu;->access$000(Lcom/oguzdev/circularfloatingactionmenu/library/FloatingActionMenu;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/oguzdev/circularfloatingactionmenu/library/FloatingActionMenu;->toggle(Z)V

    .line 329
    return-void
.end method
