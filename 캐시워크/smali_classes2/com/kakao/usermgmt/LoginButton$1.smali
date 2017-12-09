.class Lcom/kakao/usermgmt/LoginButton$1;
.super Ljava/lang/Object;
.source "LoginButton.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kakao/usermgmt/LoginButton;->onAttachedToWindow()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kakao/usermgmt/LoginButton;


# direct methods
.method constructor <init>(Lcom/kakao/usermgmt/LoginButton;)V
    .locals 0
    .param p1, "this$0"    # Lcom/kakao/usermgmt/LoginButton;

    .prologue
    .line 72
    iput-object p1, p0, Lcom/kakao/usermgmt/LoginButton$1;->this$0:Lcom/kakao/usermgmt/LoginButton;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 75
    iget-object v1, p0, Lcom/kakao/usermgmt/LoginButton$1;->this$0:Lcom/kakao/usermgmt/LoginButton;

    invoke-static {v1}, Lcom/kakao/usermgmt/LoginButton;->access$000(Lcom/kakao/usermgmt/LoginButton;)Ljava/util/List;

    move-result-object v0

    .line 76
    .local v0, "authTypes":Ljava/util/List;, "Ljava/util/List<Lcom/kakao/auth/AuthType;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 77
    invoke-static {}, Lcom/kakao/auth/Session;->getCurrentSession()Lcom/kakao/auth/Session;

    move-result-object v3

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/kakao/auth/AuthType;

    iget-object v2, p0, Lcom/kakao/usermgmt/LoginButton$1;->this$0:Lcom/kakao/usermgmt/LoginButton;

    invoke-virtual {v2}, Lcom/kakao/usermgmt/LoginButton;->getContext()Landroid/content/Context;

    move-result-object v2

    check-cast v2, Landroid/app/Activity;

    invoke-virtual {v3, v1, v2}, Lcom/kakao/auth/Session;->open(Lcom/kakao/auth/AuthType;Landroid/app/Activity;)V

    .line 81
    :goto_0
    return-void

    .line 79
    :cond_0
    iget-object v1, p0, Lcom/kakao/usermgmt/LoginButton$1;->this$0:Lcom/kakao/usermgmt/LoginButton;

    invoke-static {v1, v0}, Lcom/kakao/usermgmt/LoginButton;->access$100(Lcom/kakao/usermgmt/LoginButton;Ljava/util/List;)V

    goto :goto_0
.end method
