.class Lcom/cashwalk/cashwalk/fragment/RequestFriendFragment$1$2;
.super Ljava/lang/Object;
.source "RequestFriendFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cashwalk/cashwalk/fragment/RequestFriendFragment$1;->handleResponse(Lorg/json/JSONObject;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/cashwalk/cashwalk/fragment/RequestFriendFragment$1;


# direct methods
.method constructor <init>(Lcom/cashwalk/cashwalk/fragment/RequestFriendFragment$1;)V
    .locals 0
    .param p1, "this$1"    # Lcom/cashwalk/cashwalk/fragment/RequestFriendFragment$1;

    .prologue
    .line 159
    iput-object p1, p0, Lcom/cashwalk/cashwalk/fragment/RequestFriendFragment$1$2;->this$1:Lcom/cashwalk/cashwalk/fragment/RequestFriendFragment$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 162
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 163
    return-void
.end method
