.class Lcom/melnykov/fab/FloatingActionButton$1;
.super Landroid/view/ViewOutlineProvider;
.source "FloatingActionButton.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/melnykov/fab/FloatingActionButton;->setBackgroundCompat(Landroid/graphics/drawable/Drawable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/melnykov/fab/FloatingActionButton;


# direct methods
.method constructor <init>(Lcom/melnykov/fab/FloatingActionButton;)V
    .locals 0

    .prologue
    .line 194
    iput-object p1, p0, Lcom/melnykov/fab/FloatingActionButton$1;->this$0:Lcom/melnykov/fab/FloatingActionButton;

    invoke-direct {p0}, Landroid/view/ViewOutlineProvider;-><init>()V

    return-void
.end method


# virtual methods
.method public getOutline(Landroid/view/View;Landroid/graphics/Outline;)V
    .locals 4
    .param p1, "view"    # Landroid/view/View;
    .param p2, "outline"    # Landroid/graphics/Outline;

    .prologue
    const/4 v3, 0x0

    .line 197
    iget-object v2, p0, Lcom/melnykov/fab/FloatingActionButton$1;->this$0:Lcom/melnykov/fab/FloatingActionButton;

    iget-object v1, p0, Lcom/melnykov/fab/FloatingActionButton$1;->this$0:Lcom/melnykov/fab/FloatingActionButton;

    invoke-static {v1}, Lcom/melnykov/fab/FloatingActionButton;->access$000(Lcom/melnykov/fab/FloatingActionButton;)I

    move-result v1

    if-nez v1, :cond_0

    sget v1, Lcom/melnykov/fab/R$dimen;->fab_size_normal:I

    :goto_0
    invoke-static {v2, v1}, Lcom/melnykov/fab/FloatingActionButton;->access$100(Lcom/melnykov/fab/FloatingActionButton;I)I

    move-result v0

    .line 199
    .local v0, "size":I
    invoke-virtual {p2, v3, v3, v0, v0}, Landroid/graphics/Outline;->setOval(IIII)V

    .line 200
    return-void

    .line 197
    .end local v0    # "size":I
    :cond_0
    sget v1, Lcom/melnykov/fab/R$dimen;->fab_size_mini:I

    goto :goto_0
.end method
