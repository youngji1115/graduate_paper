.class Lcom/cashwalk/cashwalk/cashband/BandSearchActivity$4;
.super Ljava/lang/Object;
.source "BandSearchActivity.java"

# interfaces
.implements Landroid/support/v4/view/ViewPropertyAnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cashwalk/cashwalk/cashband/BandSearchActivity;->startAnim(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cashwalk/cashwalk/cashband/BandSearchActivity;

.field final synthetic val$fade:I


# direct methods
.method constructor <init>(Lcom/cashwalk/cashwalk/cashband/BandSearchActivity;I)V
    .locals 0
    .param p1, "this$0"    # Lcom/cashwalk/cashwalk/cashband/BandSearchActivity;

    .prologue
    .line 258
    iput-object p1, p0, Lcom/cashwalk/cashwalk/cashband/BandSearchActivity$4;->this$0:Lcom/cashwalk/cashwalk/cashband/BandSearchActivity;

    iput p2, p0, Lcom/cashwalk/cashwalk/cashband/BandSearchActivity$4;->val$fade:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/view/View;)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 272
    return-void
.end method

.method public onAnimationEnd(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 266
    iget-object v0, p0, Lcom/cashwalk/cashwalk/cashband/BandSearchActivity$4;->this$0:Lcom/cashwalk/cashwalk/cashband/BandSearchActivity;

    iget v1, p0, Lcom/cashwalk/cashwalk/cashband/BandSearchActivity$4;->val$fade:I

    mul-int/lit8 v1, v1, -0x1

    invoke-static {v0, v1}, Lcom/cashwalk/cashwalk/cashband/BandSearchActivity;->access$800(Lcom/cashwalk/cashwalk/cashband/BandSearchActivity;I)V

    .line 267
    return-void
.end method

.method public onAnimationStart(Landroid/view/View;)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 262
    return-void
.end method
