.class Lcom/cashwalk/cashwalk/activity/ProfileActivity$1;
.super Ljava/lang/Object;
.source "ProfileActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cashwalk/cashwalk/activity/ProfileActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cashwalk/cashwalk/activity/ProfileActivity;


# direct methods
.method constructor <init>(Lcom/cashwalk/cashwalk/activity/ProfileActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/cashwalk/cashwalk/activity/ProfileActivity;

    .prologue
    .line 102
    iput-object p1, p0, Lcom/cashwalk/cashwalk/activity/ProfileActivity$1;->this$0:Lcom/cashwalk/cashwalk/activity/ProfileActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 105
    iget-object v0, p0, Lcom/cashwalk/cashwalk/activity/ProfileActivity$1;->this$0:Lcom/cashwalk/cashwalk/activity/ProfileActivity;

    invoke-static {v0}, Lcom/cashwalk/cashwalk/activity/ProfileActivity;->access$000(Lcom/cashwalk/cashwalk/activity/ProfileActivity;)V

    .line 106
    return-void
.end method
