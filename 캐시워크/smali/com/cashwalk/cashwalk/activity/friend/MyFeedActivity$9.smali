.class Lcom/cashwalk/cashwalk/activity/friend/MyFeedActivity$9;
.super Ljava/lang/Object;
.source "MyFeedActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cashwalk/cashwalk/activity/friend/MyFeedActivity;->deleteFriend(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cashwalk/cashwalk/activity/friend/MyFeedActivity;


# direct methods
.method constructor <init>(Lcom/cashwalk/cashwalk/activity/friend/MyFeedActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/cashwalk/cashwalk/activity/friend/MyFeedActivity;

    .prologue
    .line 592
    iput-object p1, p0, Lcom/cashwalk/cashwalk/activity/friend/MyFeedActivity$9;->this$0:Lcom/cashwalk/cashwalk/activity/friend/MyFeedActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 595
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 596
    return-void
.end method
