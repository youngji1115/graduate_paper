.class Lcom/cashwalk/cashwalk/util/PhotoViewActivity$1;
.super Ljava/lang/Object;
.source "PhotoViewActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cashwalk/cashwalk/util/PhotoViewActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cashwalk/cashwalk/util/PhotoViewActivity;


# direct methods
.method constructor <init>(Lcom/cashwalk/cashwalk/util/PhotoViewActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/cashwalk/cashwalk/util/PhotoViewActivity;

    .prologue
    .line 89
    iput-object p1, p0, Lcom/cashwalk/cashwalk/util/PhotoViewActivity$1;->this$0:Lcom/cashwalk/cashwalk/util/PhotoViewActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 92
    iget-object v0, p0, Lcom/cashwalk/cashwalk/util/PhotoViewActivity$1;->this$0:Lcom/cashwalk/cashwalk/util/PhotoViewActivity;

    iget-object v1, p0, Lcom/cashwalk/cashwalk/util/PhotoViewActivity$1;->this$0:Lcom/cashwalk/cashwalk/util/PhotoViewActivity;

    invoke-static {v1}, Lcom/cashwalk/cashwalk/util/PhotoViewActivity;->access$000(Lcom/cashwalk/cashwalk/util/PhotoViewActivity;)Lcom/cashwalk/cashwalk/util/network/model/TimelineItem;

    move-result-object v1

    iget-object v1, v1, Lcom/cashwalk/cashwalk/util/network/model/TimelineItem;->id:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/cashwalk/cashwalk/util/PhotoViewActivity;->access$100(Lcom/cashwalk/cashwalk/util/PhotoViewActivity;Ljava/lang/String;)V

    .line 93
    return-void
.end method
