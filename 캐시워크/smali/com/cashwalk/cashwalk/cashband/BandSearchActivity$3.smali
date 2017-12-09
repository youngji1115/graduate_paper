.class Lcom/cashwalk/cashwalk/cashband/BandSearchActivity$3;
.super Ljava/lang/Object;
.source "BandSearchActivity.java"

# interfaces
.implements Landroid/view/MenuItem$OnMenuItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cashwalk/cashwalk/cashband/BandSearchActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cashwalk/cashwalk/cashband/BandSearchActivity;


# direct methods
.method constructor <init>(Lcom/cashwalk/cashwalk/cashband/BandSearchActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/cashwalk/cashwalk/cashband/BandSearchActivity;

    .prologue
    .line 200
    iput-object p1, p0, Lcom/cashwalk/cashwalk/cashband/BandSearchActivity$3;->this$0:Lcom/cashwalk/cashwalk/cashband/BandSearchActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 2
    .param p1, "mi"    # Landroid/view/MenuItem;

    .prologue
    .line 203
    iget-object v0, p0, Lcom/cashwalk/cashwalk/cashband/BandSearchActivity$3;->this$0:Lcom/cashwalk/cashwalk/cashband/BandSearchActivity;

    invoke-static {v0}, Lcom/cashwalk/cashwalk/cashband/BandSearchActivity;->access$600(Lcom/cashwalk/cashwalk/cashband/BandSearchActivity;)Landroid/support/v7/widget/RecyclerView;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setVisibility(I)V

    .line 204
    iget-object v0, p0, Lcom/cashwalk/cashwalk/cashband/BandSearchActivity$3;->this$0:Lcom/cashwalk/cashwalk/cashband/BandSearchActivity;

    invoke-static {v0}, Lcom/cashwalk/cashwalk/cashband/BandSearchActivity;->access$200(Lcom/cashwalk/cashwalk/cashband/BandSearchActivity;)Landroid/view/MenuItem;

    move-result-object v0

    const-string v1, ""

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setTitle(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 205
    iget-object v0, p0, Lcom/cashwalk/cashwalk/cashband/BandSearchActivity$3;->this$0:Lcom/cashwalk/cashwalk/cashband/BandSearchActivity;

    invoke-static {v0}, Lcom/cashwalk/cashwalk/cashband/BandSearchActivity;->access$700(Lcom/cashwalk/cashwalk/cashband/BandSearchActivity;)V

    .line 206
    const/4 v0, 0x1

    return v0
.end method
